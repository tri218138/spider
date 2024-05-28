```
python script_generate_db_from_schema.py
python script_write_to_pred_sql.py
python evaluation.py --gold ViText2SQL/data/word-level/test_gold.sql --pred benchmark/sql/pred_fewshotcot_word.sql --etype "all" --db benchmark/db/word-level --table ViText2SQL/data/word-level/tables.json
```
