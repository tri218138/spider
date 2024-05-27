from evaluation import Evaluator
from process_sql import get_schema, Schema, get_sql
import sqlite3
import os


os.makedirs("benchmark", exist_ok=True)

sample = {
    "schema": """CREATE TABLE IF NOT EXISTS table_42529 (
        "Mùa giải" REAL,
        "Division" TEXT,
        "Thắng" REAL,
        "Thua" REAL,
        "Hòa" REAL,
        "Vị trí cuối cùng" TEXT,
        "Ghi chú" TEXT
    )
    """,
    "question": "",
    "query": """SELECT AVG ("Hòa") FROM table_42529 WHERE "Thắng" = '6' AND "Mùa giải" > '2004'""",
    "predict": """SELECT AVG ("Hòa") FROM table_42529 WHERE "Thắng" = '6' AND "Mùa giải" > '2004'""",
    "db_id": "example",
}


def generate_db_file(db_path, schema: str, db_name: str = "example.sqlite"):
    # Step 1: Create a directory named 'db' if it doesn't exist
    os.makedirs(db_path, exist_ok=True)

    # Step 2: Define the path for the SQLite database file
    db_path = os.path.join(db_path, db_name)

    # Step 3: Connect to the SQLite database (or create it if it doesn't exist)
    conn = sqlite3.connect(db_path)

    # Step 4: Create a cursor object
    cursor = conn.cursor()

    # Step 5: Execute the SQL command to create the table
    cursor.execute(schema)

    # Step 6: Commit the changes
    conn.commit()

    # Step 7: Query the table names
    cursor.execute("SELECT name FROM sqlite_master WHERE type='table';")
    tables = cursor.fetchall()

    # Step 8: Print the table names
    print(tables)

    # Step 9: Close the connection
    conn.close()


generate_db_file(
    db_path=f"benchmark/db/{sample['db_id']}",
    db_name=f"{sample['db_id']}.sqlite",
    schema=sample["schema"],
)

schema_dict = get_schema(
    os.path.join(f"benchmark/db/{sample['db_id']}", f"{sample['db_id']}.sqlite")
)
print("schema dict:", schema_dict)

schema = Schema(schema_dict)
g_str = sample["query"]
g_sql = get_sql(schema, g_str)
print("gold sql:", g_sql)

evaluator = Evaluator()
hardness = evaluator.eval_hardness(g_sql)
print("hardness:", hardness)


# def write_pred_gold_to_sql_file(sample):
#     with open(f"benchmark/gold.sql", "w", encoding="utf-8") as file:
#         # Step 3: Write the SQL query to the file
#         file.write(sample["query"] + "\t" + sample["db_id"])
#     with open(f"benchmark/pred.sql", "w", encoding="utf-8") as file:
#         # Step 3: Write the SQL query to the file
#         file.write(sample["predict"])


# write_pred_gold_to_sql_file(sample)

# python evaluation.py --gold benchmark/gold.sql --pred benchmark/pred.sql --etype "all" --db benchmark/db --table benchmark/tables.json
