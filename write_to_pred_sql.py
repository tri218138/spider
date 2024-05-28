import os
from datasets import load_dataset
from evaluation import Evaluator

evaluator = Evaluator()

LEVEL = "syllable"

dataset = load_dataset(
    "parquet",
    data_files={
        "test": f"https://huggingface.co/datasets/TeeA/VinAIResearch-ViText2SQL/resolve/main/{LEVEL}-level/test-00000-of-00001.parquet",
    },
    token="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",
)

direct_path = (
    "benchmark/predictions/benchmark__CoT_ViText2SQL_codeLlama_text2sql_syll_r128"
)
print(len(os.listdir(direct_path)))

sql_keywords = [
    "add",
    "all",
    "alter",
    "and",
    "as",
    "asc",
    "avg",
    "between",
    "by",
    "char",
    "column",
    "count",
    "create",
    "delete",
    "desc",
    "distinct",
    "drop",
    "exists",
    "from",
    "group",
    "having",
    "in",
    "index",
    "inner",
    "insert",
    "into",
    "is",
    "join",
    "left",
    "like",
    "max",
    "min",
    "not",
    "null",
    "or",
    "order",
    "outer",
    "select",
    "set",
    "sum",
    "table",
    "union",
    "update",
    "values",
    "where",
]
accept_redundancy_sql_keywords = ["order", "desc", "by", "limit", "asc"]

my_string = "order by mã trạng thái khách hàng desc limit 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
if any(
    f" {keyword} " in my_string
    for keyword in set(sql_keywords) - set(accept_redundancy_sql_keywords)
):
    print("Not accept this redundancy")

import json
from collections import defaultdict

# from IPython.print import
import re

global_logging = defaultdict(int)
IS_print = False
total = 1908  # 1908


def extract_sql_queries(text):
    # Tìm tất cả các chuỗi nằm giữa các cặp dấu ``` trong chuỗi
    sql_queries = re.findall(r"```sql(.*?)```", text, re.DOTALL)
    return sql_queries


def extract_output_sql_queries(prediction):
    _logging = defaultdict(int)
    if prediction.count("CoT") > 1:
        _logging["duplicate_cot"] += 1

    if "===== LƯỢT CỦA BẠN" in prediction:
        _logging["data_redundancy"] += 1

    prediction = prediction.split("===== LƯỢT CỦA BẠN")[0]

    sqls = extract_sql_queries(prediction)
    if len(sqls) == 0:
        _logging["no_sql_in_response"] += 1
        return prediction, _logging

    # prediction = prediction.split('###CoT: ')[1] #.split(';')[0]
    if len(sqls) == 1:
        # print(prediction)
        prediction = sqls[0]

    elif len(sqls) > 1:
        _logging["sub_sql"] += 1
        prediction = sorted(sqls, key=len)[0]

    # correct prediction
    prediction = prediction.replace("\n", " ").strip()

    return prediction, _logging


def extract_tokens(sql):
    removed_tokens = ["(", ")", ";", ","]
    for rm_token in removed_tokens:
        sql = sql.replace(rm_token, " ")
    tokens = sql.split(" ")
    tokens = [item for sublist in tokens for item in sublist.split(".")]
    tokens = [
        token
        for idx, token in enumerate(tokens)
        if not ('"' in token and idx != 0 and tokens[idx - 1] == "=")
    ]
    tokens = [x for x in tokens if x not in removed_tokens + [""]]
    tokens = [x for x in tokens]
    return tokens


predictions = []
for index in range(total):
    # _logging = defaultdict(int)
    ground_truth = dataset["test"][index]["query"]
    with open(f"{direct_path}/{index}.json", encoding="utf-8") as _f:
        data = json.load(_f)
        prediction, _logging = extract_output_sql_queries(data["predict"])
        # prediction = data['predict'].split('###câu sql: ')[1].split(';')[0]

    def log():
        print((f"**[{hardness}] - {question}**"))
        print((f"**GroundTruth**: {ground_truth}"))
        print((f"**Prediction_**: {prediction}"))

    hardness = evaluator.eval_hardness(eval(dataset["test"][index]["sql"]))
    question = dataset["test"][index]["question"]
    if IS_print:
        print("=" * 50)
        print((f"**[{hardness}] - {question}**"))
        print((f"**GroundTruth**: {ground_truth}"))
        print((f"**Prediction_**: {prediction}"))
    # ground_truth = word_tokenize(ground_truth, format='text')
    if prediction == ground_truth:
        _logging[f"0.exact_match__{hardness}"] += 1
        _logging[f"0.total_exact_match"] += 1

    if "00000000000000" in prediction:
        _logging["0.endwith_zero_long"] += 1

    if any(x in ground_truth for x in ["distinct", "DISTINCT"]) and all(
        x not in prediction for x in ["distinct", "DISTINCT"]
    ):
        _logging["0.missing_distinct"] += 1

    # Postprocessor
    # while prediction[-1] == '0':
    #     prediction = prediction[:-1]
    # prediction = prediction.replace(' distinct ', " ").replace(" DISTINCT ", " ")
    # ground_truth = ground_truth.replace(' distinct ', " ").replace(" DISTINCT ", " ")
    prediction = (
        prediction.replace('"', "").replace("'", "").replace("count(*)", "count ( * )")
    )
    ground_truth = ground_truth.replace('"', "").replace("'", "")

    if IS_print:
        print((f"**After Postprocess**"))

    if ground_truth in prediction:
        _logging["1.data_redundancy_after_remove_0"] += 1
        text_after = prediction[len(ground_truth) :]
        text_after = text_after.strip()
        if text_after.startswith("order by"):
            _logging["1.data_redundancy_with_order_by"] += 1
        if any(
            f" {keyword} " in " " + text_after
            for keyword in set(sql_keywords) - set(accept_redundancy_sql_keywords)
        ):
            _logging["1.data_redundancy_denied"] += 1
            # print(ground_truth)
            # print(prediction)
            # print('-'*20)

    if prediction == ground_truth:
        _logging[f"1.exact_match__{hardness}"] += 1
        _logging[f"1.total_exact_match"] += 1
    else:
        if prediction.replace(" ", "") == ground_truth.replace(" ", ""):
            _logging[f"1.match_without_space"] += 1
        elif hardness == "easy":  # index < 500:
            # print(prediction)
            # log()
            pass
        gt_toks = dataset["test"][index]["query_toks"]
        if all(toks in prediction for toks in gt_toks) and len(
            prediction.replace(" ", "")
        ) == len(ground_truth.replace(" ", "")):
            _logging[f"1.tokens_match__{hardness}"] += 1
            log()

    gt_tokens = extract_tokens(ground_truth)
    pr_tokens = extract_tokens(prediction)
    if IS_print:
        print((f"**Tokens Verify**"))
        print(gt_tokens)
        print("-" * 20)
        print(pr_tokens)

    if sorted(gt_tokens) == sorted(pr_tokens):
        _logging["2.match_tokens_fake"] += 1

    if IS_print:
        print((f"**Logging**"))
        print(_logging)
    for key, val in _logging.items():
        global_logging[key] += val

    predictions.append(prediction)

print(global_logging)
with open("pred.sql", "w", encoding='utf-8') as _f:
    _f.write("\n".join(predictions))
