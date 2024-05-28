import os
import sqlite3
from datasets import load_dataset

LEVEL = "syllable"

# tables_dataset = load_dataset("TeeA/VinAIResearch-ViText2SQL", token=HF_TOKEN['TeeA'], name="syllable-level--tables")
tables_dataset = load_dataset(
    "parquet",
    data_files={
        "train": f"https://huggingface.co/datasets/TeeA/VinAIResearch-ViText2SQL/resolve/main/{LEVEL}-level--tables/train-00000-of-00001.parquet"
    },
    token="",
)

global_schema = {
    db_id: schema
    for db_id, schema in zip(
        tables_dataset["train"]["db_id"], tables_dataset["train"]["schema"]
    )
}


databases_dir = "benchmark/db"
os.makedirs(databases_dir, exist_ok=True)

for db_id, schema in global_schema.items():
    # if not db_id in ["academic", "yelp", "bike_1", "cre_Drama_Workshop_Groups"]:
    #     continue
    os.makedirs(databases_dir + "/" + db_id, exist_ok=True)
    # Create a connection to the SQLite3 database
    conn = sqlite3.connect(f"{databases_dir}/{db_id}/{db_id}.sqlite")

    # Create a cursor object to execute SQL commands
    cur = conn.cursor()

    # Execute the schema commands to create the tables
    if db_id == "academic":
        schema = schema.replace(', "số lượng trích dẫn" number', "")
    elif db_id == "yelp":
        schema = schema.replace('"id doanh nghiệp" number, ', "")
        schema = schema.replace('"id người tiêu dùng" number, ', "")
    elif db_id == "bike_1":
        schema = schema.replace('"áp suất mực nước biển tối đa" number, ', "")
    elif db_id == "cre_Drama_Workshop_Groups":
        schema = schema.split(";")
        schema = [
            x
            for x in schema
            if 'CREATE TABLE "khách hàng" ("id khách hàng" text' not in x
        ]
        schema = ";".join(schema)

    print(schema)
    cur.executescript(schema)

    # Commit the changes and close the connection
    conn.commit()
    conn.close()
