from process_sql import tokenize, scan_alias

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
    "intersect",
    "into",
    "is",
    "join",
    "left",
    "like",
    "max",
    "min",
    "not",
    "null",
    "on",
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

sql_symbols = ["*", ",", ";", "(", ")", ">", "<", "=", "!", ">=", "<=", "!="]


def isfloat(str):
    try:
        float(str)
        return True
    except:
        return False


def add_double_flashes(sql_str):
    global sql_keywords, sql_symbols

    toks = tokenize(sql_str)
    words = []
    aliases = list(scan_alias(toks).keys())
    print(aliases)
    print(toks)
    for tok in toks:
        if tok in sql_keywords + sql_symbols + aliases or isfloat(tok):
            words.append(tok)
        elif (
            tok.count(".") == 1 and " " not in tok and tok[0] != '"' and tok[-1] != '"'
        ):  # case < "Computer Info. Systems"
            alias, name = tok.split(".")
            if alias in aliases:
                words.append(alias + "." + '"' + name + '"')
            else:  # case "vai trò.mô tả về vai trò"
                words.append('"' + alias + '"' + "." + '"' + name + '"')
        else:  # case < "2", = "Hello World"
            words.append('"' + tok + '"')

    sql_str = " ".join(words)
    sql_str = sql_str.replace('" "', " ")
    sql_str = sql_str.replace('""', '"')  # = "Hello World"

    return sql_str


sql_str = """select t1.id tài sản , t1.chi tiết tài sản from tài sản as t1 join bộ phận của tài sản as t2 on t1.id tài sản = t2.id tài sản group by t1.id tài sản having count ( * ) = 2 intersect select t1.id tài sản , t1.chi tiết tài sản from tài sản as t1 join nhật ký lỗi as t2 on t1.id tài sản = t2.id tài sản group by t1.id tài sản having count ( * ) < 'Hello'"""
sql_str = """select t1.id tài sản, t1.chi tiết tài sản  from tài sản as t1  join bộ phận của tài sản as t2 on t1.id tài sản = t2.id tài sản  where t2.id bộ phận in (select id bộ phận from bộ phận của tài sản group by id bộ phận having count ( * ) = 2)  and t1.id tài sản not in (select id tài sản from nhật ký lỗi group by id tài sản having count ( * ) <= 2)"""
sql_str = '''select tiêu đề from sách where tác giả != "Elaine Lee"'''
sql_str = """select count ( * ) from khoa as t1 join khoá học as t2 on t1.mã khoa = t2.mã khoa where tên khoa = "Computer Info. Systems"	college_1"""
sql_str = """select vai trò.mô tả về vai trò , count ( nhân viên.id nhân viên ) from vai trò join nhân viên on nhân viên.mã vai trò = vai trò.mã vai trò group by nhân viên.mã vai trò having count ( nhân viên.id nhân viên ) > 1	cre_Doc_Control_Systems"""
sql_str = '''select count ( * ) from người tham gia as t1 join người tham gia sự kiện as t2 on t1.id người tham gia = t2.id người tham gia where t1.chi tiết người tham gia like "%Dr.%"'''

print(add_double_flashes(sql_str))
