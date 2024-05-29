```
python script_generate_db_from_schema.py
python script_write_to_pred_sql.py
python evaluation.py --gold ViText2SQL/data/word-level/test_gold.sql --pred benchmark/sql/pred_fewshotcot_word.sql --etype "all" --db benchmark/db/word-level --table ViText2SQL/data/word-level/tables.json

python evaluation.py --gold ViText2SQL/data/syllable-level/test_gold.sql --pred benchmark/sql/pred_cot_syll_v2.sql --etype "all" --db benchmark/db/syllable-level --table ViText2SQL/data/syllable-level/tables.json
```
