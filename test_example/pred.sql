select t1.id tài khoản , t2.tên tài khoản from giao dịch tài chính as t1 join tài khoản as t2 on t1.id tài khoản = t2.id tài khoản group by t1.id tài khoản having count ( * ) >= 4	customers_and_invoices
