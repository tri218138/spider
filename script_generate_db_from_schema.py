import os
import sqlite3
import argparse
from datasets import load_dataset

# Parse terminal input
parser = argparse.ArgumentParser(description="Process some integers.")
parser.add_argument(
    "--level",
    type=str,
    default="syllable",
    help="Level of processing (default: syllable)",
)
args = parser.parse_args()

# Set up level
LEVEL = args.level

# tables_dataset = load_dataset("TeeA/VinAIResearch-ViText2SQL", token=HF_TOKEN['TeeA'], name="syllable-level--tables")
tables_dataset = load_dataset(
    "parquet",
    data_files={
        "train": f"https://huggingface.co/datasets/TeeA/VinAIResearch-ViText2SQL/resolve/main/{LEVEL}-level--tables/train-00000-of-00001.parquet"
    },
    token="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",
)

global_schema = {
    db_id: schema
    for db_id, schema in zip(
        tables_dataset["train"]["db_id"], tables_dataset["train"]["schema"]
    )
}

print(f"Generating {LEVEL} level dbs")

databases_dir = f"benchmark/db/{LEVEL}-level"
os.makedirs(databases_dir, exist_ok=True)

# Some database went wrong, like "academic", "yelp", "bike_1", "cre_Drama_Workshop_Groups"
for db_id, schema in global_schema.items():

    os.makedirs(databases_dir + "/" + db_id, exist_ok=True)

    # Create a connection to the SQLite3 database
    conn = sqlite3.connect(f"{databases_dir}/{db_id}/{db_id}.sqlite")

    # Create a cursor object to execute SQL commands
    cur = conn.cursor()

    # Execute the schema commands to create the tables
    if db_id == "academic":
        schema = schema.replace(
            {
                "syllable": ', "số lượng trích dẫn" number',
                "word": ', "số_lượng trích_dẫn" number',
            }[LEVEL],
            "",
        )
    elif db_id == "yelp":
        schema = schema.replace(
            {
                "syllable": '"id doanh nghiệp" number, ',
                "word": '"id doanh_nghiệp" number, ',
            }[LEVEL],
            "",
        )
        schema = schema.replace(
            {
                "syllable": '"id người tiêu dùng" number, ',
                "word": '"id người tiêu_dùng" number, ',
            }[LEVEL],
            "",
        )
    elif db_id == "bike_1":
        schema = schema.replace(
            {
                "syllable": '"áp suất mực nước biển tối đa" number, ',
                "word": '"áp_suất mực nước_biển tối_đa" number, ',
            }[LEVEL],
            "",
        )
    elif db_id == "cre_Drama_Workshop_Groups":
        schema = schema.split(";")
        schema = [
            x
            for x in schema
            if {
                "syllable": 'CREATE TABLE "khách hàng" ("id khách hàng" text',
                "word": 'CREATE TABLE "khách_hàng" ("id khách_hàng" text',
            }[LEVEL]
            not in x
        ]
        schema = ";".join(schema)

    print(schema)
    cur.executescript(schema)

    # Commit the changes and close the connection
    conn.commit()
    conn.close()
