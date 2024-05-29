select t1."id tài sản", t1."chi tiết tài sản"  from "tài sản" as t1  join "bộ phận của tài sản" as t2 on t1."id tài sản" = t2."id tài sản"  group by t1."id tài sản"  having count(*) = 2  intersect  select t1."id tài sản", t1."chi tiết tài sản"  from "tài sản" as t1  join "nhật ký lỗi" as t2 on t1."id tài sản" = t2."id tài sản"  group by t1."id tài sản"  having count(*) < 2
select "id hợp đồng bảo trì", count(*)  from "hợp đồng bảo trì" as t1  join "tài sản" as t2 on t1."id hợp đồng bảo trì" = t2."id hợp đồng bảo trì"  group by t1."id hợp đồng bảo trì"
select count(*), "id công ty cung cấp" from "tài sản" as t1 join "công ty bên thứ ba" as t2 on t1."id công ty cung cấp" = t2."id công ty" group by t1."id công ty cung cấp"
select t1."tên công ty", t1."id công ty"  from "công ty bên thứ ba" as t1  join "kỹ sư bảo trì" as t2 on t1."id công ty" = t2."id công ty"  group by t1."id công ty"  having count(*) >= 2 union  select t1."tên công ty", t1."id công ty"  from "công ty bên thứ ba" as t1  join "hợp đồng bảo trì" as t2 on t1."id công ty" = t2."id công ty"  group by t1."id công ty"  having count(*) >= 2
select tên nhân viên , id nhân viên from nhân viên where id nhân viên not in ( select id nhân viên liên lạc from chuyến thăm của kỹ sư )
select "id kỹ sư ghé thăm", "id kỹ sư", "tên", "họ"  from "chuyến thăm của kỹ sư"  group by "id kỹ sư ghé thăm"  order by count(*) desc  limit 1
select tên bộ phận , id bộ phận from lỗi bộ phận group by id bộ phận having count ( * ) > 2 order by count ( * ) desc
select t1.tên , t1.họ , t1.những chi tiết khác , t2.mô tả về kỹ năng from kỹ sư bảo trì as t1 join kỹ năng as t2 on t1.id kỹ sư = t2.id kỹ năng
select t1."tên viết tắt của lỗi", t2."mô tả về kỹ năng"  from "lỗi bộ phận" as t1  join "kỹ năng cần để sửa chữa" as t2  on t1."id kỹ năng" = t2."id kỹ năng"  group by t1."tên viết tắt của lỗi", t2."mô tả về kỹ năng"
select t1.tên bộ phận , count ( * ) from bộ phận as t1 join bộ phận của tài sản as t2 on t1.id bộ phận = t2.id bộ phận group by t2.id bộ phận
select "mô tả về lỗi", "tình trạng lỗi" from "nhật ký lỗi"
select t1."id mục nhập của nhật ký lỗi", count(*)  from "nhật ký lỗi" as t1  join "chuyến thăm của kỹ sư" as t2 on t1."id mục nhập của nhật ký lỗi" = t2."id mục nhập của nhật ký lỗi"  group by t1."id mục nhập của nhật ký lỗi"  order by count(*) desc  limit 1
select distinct họ from kỹ sư bảo trì
select distinct tình trạng lỗi from nhật ký lỗi group by tình trạng lỗi
select t1.tên , t1.họ from nhân viên as t1 where t1.id nhân viên not in ( select t2.id kỹ sư ghé thăm from chuyến thăm của kỹ sư as t2 )
select id tài sản , chi tiết tài sản , thương hiệu tài sản , mẫu mã tài sản from tài sản
select "ngày mua tài sản" from "tài sản" order by "ngày mua tài sản" limit 1
select t1."id bộ phận bị lỗi", t1."tên viết tắt của lỗi"  from "lỗi bộ phận" as t1  join "kỹ năng cần để sửa chữa" as t2  on t1."id bộ phận bị lỗi" = t2."id bộ phận bị lỗi"  group by t1."id bộ phận bị lỗi"  order by count(*) desc  limit 1
select t1."tên bộ phận" from "bộ phận" as t1 join "lỗi bộ phận" as t2 on t1."id bộ phận" = t2."id bộ phận" group by t1."id bộ phận" order by count(*) asc limit 1
select t1.id kỹ sư , t1.tên , t1.họ  from kỹ sư bảo trì as t1  join chuyến thăm của kỹ sư as t2  on t1.id kỹ sư = t2.id kỹ sư ghé thăm  group by t1.id kỹ sư  order by count ( * ) desc  limit 1
select t1.tên nhân viên , t2.tên , t2.họ  from nhân viên as t1  join kỹ sư bảo trì as t2  on t1.id nhân viên liên lạc = t2.id kỹ sư  group by t1.tên nhân viên
select t1."id mục nhập của nhật ký lỗi", t1."mô tả về lỗi", t1."thời gian mục nhập của nhật ký lỗi"  from "nhật ký lỗi" as t1  join "lỗi bộ phận" as t2 on t1."id mục nhập của nhật ký lỗi" = t2."id mục nhập của nhật ký lỗi"  group by t1."id mục nhập của nhật ký lỗi"  order by count(*) desc  limit 1
select t1."id kỹ năng", t1."mô tả về kỹ năng"  from "kỹ năng cần để sửa chữa" as t2  join "kỹ năng" as t1 on t2."id kỹ năng" = t1."id kỹ năng"  group by t2."id kỹ năng"  order by count(*) desc  limit 1
select distinct mẫu mã tài sản from tài sản
select thương hiệu tài sản , mẫu mã tài sản , chi tiết tài sản from tài sản order by ngày thanh lý tài sản
select "id bộ phận", "số tiền phải trả" from "bộ phận" where "số tiền phải trả" = ( select min("số tiền phải trả") from "bộ phận" )
select t1."tên công ty", t2."ngày bắt đầu hợp đồng"  from "công ty bên thứ ba" as t1  join "hợp đồng bảo trì" as t2 on t1."id công ty" = t2."id công ty bên thứ ba"  order by t2."ngày bắt đầu hợp đồng"  limit 1
select t1."tên công ty" from "công ty bên thứ ba" as t1 join "hợp đồng bảo trì" as t2 on t1."id công ty" = t2."id công ty bên thứ ba" order by t2."ngày kết thúc hợp đồng" desc limit 1
select giới tính from nhân viên group by giới tính order by count(*) desc limit 1
select t1."tên nhân viên", count(*)  from "nhân viên" as t1  join "chuyến thăm của kỹ sư" as t2 on t1."id nhân viên" = t2."id nhân viên liên lạc"  group by t1."tên nhân viên"  order by count(*) desc
select mẫu mã tài sản from tài sản where id tài sản not in ( select id tài sản from nhật ký lỗi )
select count(*) from "sách"
select tác giả from sách order by tác giả asc
select tiêu đề from sách order by số lượng phát hành asc
select tiêu đề from sách where tác giả != 'Elaine Lee'
select tiêu đề , số lượng phát hành from sách
select t2.ngày xuất bản from ấn phẩm as t1 join sách as t2 on t1.id sách = t2.id sách order by t1.giá bán desc
select distinct nhà xuất bản from ấn phẩm where giá bán > 5000000
select nhà xuất bản from ấn phẩm order by giá bán desc limit 1
select ngày xuất bản from ấn phẩm order by giá bán limit 3
select t1.tiêu đề , t1.ngày xuất bản from ấn phẩm as t1 join sách as t2 on t1.id sách = t2.id sách
select t1.tác giả from sách as t1 join ấn phẩm as t2 on t1."id sách" = t2."id sách" where t2."giá bán" > 4000000
select tiêu đề from ấn phẩm order by giá bán desc
select nhà xuất bản from ấn phẩm group by nhà xuất bản having count(*) > 1
select nhà xuất bản, count(*) from ấn phẩm group by nhà xuất bản
select ngày xuất bản from ấn phẩm group by ngày xuất bản order by count(*) desc limit 1
select tác giả from sách group by tác giả having count(*) > 1
select tiêu đề from sách except select t1.tiêu đề from sách as t1 join ấn phẩm as t2 on t1."id sách" = t2."id sách"
select nhà xuất bản from ấn phẩm where giá bán > 10000000 intersect select nhà xuất bản from ấn phẩm where giá bán < 5000000
select count ( distinct ngày xuất bản ) from ấn phẩm
select count(distinct "ngày xuất bản") from "ấn phẩm"
select giá bán from ấn phẩm where nhà xuất bản = "Person" or nhà xuất bản = "Wiley"
select "tên bộ phận" from "bộ phận" order by "ngày bắt đầu quản lý"
select t1."tên người phụ thuộc"  from "người phụ thuộc" as t1  join "nhân viên" as t2 on t1."ssn của nhân viên" = t2."ssn"  where t2."mối quan hệ" = 'spouse'
select count(*) from nhân viên where giới tính = "F"
select tên bộ phận from bộ phận where địa điểm bộ phận = "Houston" group by tên bộ phận
select tên , họ from nhân viên where lương > 30000
select giới tính, count(*) from nhân viên where lương < 50000 group by giới tính
select tên , họ , địa chỉ from nhân viên order by ngày sinh
select count(*) from giáo viên
select count(*) from giáo viên
select t1.tên from giáo viên as t1 join sắp xếp khoá học as t2 on t1.id giáo viên = t2.id giáo viên order by t1.tuổi
select tên from giáo viên order by tuổi limit 1
select tuổi, quê quán from giáo viên
select tuổi, quê quán from giáo viên
select tên from giáo viên where quê quán != "Khu đô thị Little Lever" except select tên from giáo viên where quê quán = "Khu đô thị Little Lever"
select tên from giáo viên where quê quán != "Little Lever Village"
select tên from giáo viên where tuổi = 32 or tuổi = 33
select tên from giáo viên where tuổi = 32 or tuổi = 33
select quê quán from giáo viên order by tuổi asc limit 1
select quê quán from giáo viên order by tuổi asc limit 1
select quê quán, count(*) from giáo viên group by quê quán
select quê quán, count(*) from giáo viên group by quê quán
select quê quán from giáo viên group by quê quán order by count(*) desc limit 1
select quê quán from giáo viên group by quê quán order by count(*) desc limit 1
select quê quán from giáo viên group by quê quán having count(*) >= 2
select quê quán from giáo viên group by quê quán having count(*) >= 2
select t1.tên , t2.khoá học from giáo viên as t1 join sắp xếp khoá học as t2 on t1.id giáo viên = t2.id giáo viên group by t1.tên
select t1.tên , t2.khoá học from giáo viên as t1 join sắp xếp khoá học as t2 on t1.id giáo viên = t2.id giáo viên
select t1.tên , t2.khoá học  from giáo viên as t1  join sắp xếp khoá học as t2  on t1."id giáo viên" = t2."id giáo viên"  order by t1.tên
select t1.tên , t2.khoá học  from giáo viên as t1  join sắp xếp khoá học as t2  on t1."id giáo viên" = t2."id giáo viên"  order by t1.tên
select t1.tên from giáo viên as t1 join sắp xếp khoá học as t2 on t1.id giáo viên = t2.id giáo viên where t2.khối lớp = 1
select t1.tên from giáo viên as t1 join sắp xếp khoá học as t2 on t1.id giáo viên = t2.id giáo viên where t2.khối lớp = (select id khoá học from khoá học where khoá học = "Math")
select t1.tên , count(*)  from giáo viên as t1  join sắp xếp khoá học as t2  on t1.id giáo viên = t2.id giáo viên  group by t1.tên
select t1.tên , count(*)  from giáo viên as t1  join sắp xếp khoá học as t2 on t1."id giáo viên" = t2."id giáo viên"  group by t1.tên  order by count(*) desc
select t1.tên from giáo viên as t1 join sắp xếp khoá học as t2 on t1."id giáo viên" = t2."id giáo viên" group by t2."id giáo viên" having count(*) >= 2
select t1.tên from giáo viên as t1 join sắp xếp khoá học as t2 on t1.id giáo viên = t2.id giáo viên group by t2.id giáo viên having count(*) >= 2
select tên from giáo viên where id giáo viên not in (select id giáo viên from sắp xếp khoá học)
select tên from giáo viên except select t1.tên from giáo viên as t1 join sắp xếp khoá học as t2 on t1.id giáo viên = t2.id giáo viên
select count(*) from "thành viên"
select tên from thành viên order by tên asc
select tên, quốc gia from thành viên
select tên from thành viên where quốc gia = 'United States' or quốc gia = 'Canada'
select quốc gia , count(*) from thành viên group by quốc gia
select quốc gia from thành viên group by quốc gia order by count(*) desc limit 1
select quốc gia from thành viên group by quốc gia having count(*) > 2
select "tên lãnh đạo", "địa điểm trường đại học" from "trường đại học"
select t1.tên , t2.tên  from thành viên as t1  join trường đại học as t2  on t1.id đại học = t2.id đại học
select t1.tên , t2.địa điểm trường đại học  from thành viên as t1  join trường đại học as t2  on t1.id đại học = t2.id đại học  order by t1.tên
select t1."tên lãnh đạo"  from "trường đại học" as t1  join "thành viên" as t2 on t1."id đại học" = t2."id đại học"  where t2."quốc gia" = 'Canada'
select t1.tên , t2.chủ đề trang trí from thành viên as t1 join vòng as t2 on t1.id thành viên = t2.id thành viên
select t1.tên from thành viên as t1 join vòng as t2 on t1.id thành viên = t2.id thành viên where t2.xếp hạng từng vòng > 3
select tên from thành viên order by xếp hạng từng vòng
select tên from thành viên where id thành viên not in (select id thành viên from vòng)
select count(*) from "cuộc bầu cử"
select "số lượng phiếu bầu" from "cuộc bầu cử" order by "số lượng phiếu bầu" desc
select "ngày", "tỉ lệ phiếu bầu" from "cuộc bầu cử"
select min("tỉ lệ phiếu bầu"), max("tỉ lệ phiếu bầu") from "cuộc bầu cử"
select tên , đảng from đại diện
select tên from đại diện where đảng != "Republican"
select tuổi thọ from đại diện where tiểu bang = "New York" or tiểu bang = "Indiana"
select t1.tên , t2.ngày  from đại diện as t1  join cuộc bầu cử as t2  on t1."id đại diện" = t2."id đại diện"
select t1.tên from đại diện as t1 join cuộc bầu cử as t2 on t1."id đại diện" = t2."id đại diện" where t2."số lượng phiếu bầu" > 10000
select t1.tên from đại diện as t1 join cuộc bầu cử as t2 on t1."id đại diện" = t2."id đại diện" order by t2."số lượng phiếu bầu" desc
select t2.đảng from cuộc bầu cử as t1 join đại diện as t2 on t1.id đại diện = t2.id đại diện order by t1.số lượng phiếu bầu desc limit 1
select tuổi thọ from đại diện order by tỉ lệ phiếu bầu desc
select avg("số lượng phiếu bầu")  from "cuộc bầu cử" as t1  join "đại diện" as t2 on t1."id đại diện" = t2."id đại diện"  where t2."đảng" = 'Republican'
select đảng , count(*) from đại diện group by đảng
select t2.đảng  from cuộc bầu cử as t1  join đại diện as t2  on t1.id đại diện = t2.id đại diện  group by t2.đảng  order by count(*) desc  limit 1
select t1.đảng from đại diện as t1 join cuộc bầu cử as t2 on t1.đảng = t2.đảng group by t1.đảng having count(*) >= 3
select t1.tiểu bang from đại diện as t1 join cuộc bầu cử as t2 on t1.tiểu bang = t2.tiểu bang group by t1.tiểu bang having count(*) >= 2
select distinct tên from đại diện where "id đại diện" not in (select "id đại diện" from "cuộc bầu cử")
select t2.đảng  from cuộc bầu cử as t1  join đại diện as t2 on t1.id đại diện = t2.id đại diện  where t1.tiểu bang = "New York"  intersect  select t2.đảng  from cuộc bầu cử as t1  join đại diện as t2 on t1.id đại diện = t2.id đại diện  where t1.tiểu bang = "Pennsylvania" group by t2.đảng  having count(*) = 2
select count(distinct đảng) from đại diện
select count(*) from "quốc gia"
select count(*) from "quốc gia"
select "tên quốc gia", "thủ đô" from "quốc gia"
select "tên quốc gia", "thủ đô" from "quốc gia"
select "ngôn ngữ bản địa chính thức" from "quốc gia" where "ngôn ngữ bản địa chính thức" like "%English%"
select "ngôn ngữ bản địa chính thức" from "quốc gia" where "ngôn ngữ bản địa chính thức" like "%english%"
select distinct vị trí from trận đấu trong mùa giải
select distinct vị trí from trận đấu trong mùa giải
select "cầu thủ" from "trận đấu trong mùa giải" where "trường đại học" = 'UCLA'
select t1.cầu thủ from trận đấu trong mùa giải as t1 join cầu thủ as t2 on t1.cầu thủ = t2.id cầu thủ where t1.trường đại học = "UCLA"
select distinct vị trí from trận đấu trong mùa giải where trường đại học = "UCLA" or trường đại học = "Duke"
select distinct vị trí from trận đấu trong mùa giải where trường đại học = "UCLA" or trường đại học = "Duke"
select "mã số tuyển chọn tân binh", "mùa tuyển chọn" from "trận đấu trong mùa giải" where "vị trí" = 'hậu vệ'
select "mã số tuyển chọn tân binh", "mùa tuyển chọn"  from "trận đấu trong mùa giải"  where "vị trí" = 'hậu vệ'
select count(distinct "đội") from "trận đấu trong mùa giải"
select count(distinct "đội") from "trận đấu trong mùa giải"
select cầu thủ, số năm đã chơi from cầu thủ
select distinct cầu thủ , số năm đã chơi from cầu thủ
select tên from đội
select tên from đội
select t1."mùa giải", t1."cầu thủ", t2."tên quốc gia" from "trận đấu trong mùa giải" as t1 join "quốc gia" as t2 on t1."quốc gia" = t2."id quốc gia"
select t1."cầu thủ", t1."mùa giải", t2."tên quốc gia"  from "trận đấu trong mùa giải" as t1  join "cầu thủ" as t2 on t1."id đội" = t2."id đội"  join "quốc gia" as t3 on t1."quốc gia" = t3."id quốc gia"  group by t1."cầu thủ", t1."mùa giải"
select t1.cầu thủ from cầu thủ as t1 join quốc gia as t2 on t1.quốc gia = t2."id quốc gia" where t2."tên quốc gia" = 'Indonesia'
select t1."cầu thủ" from "cầu thủ" as t1 join "quốc gia" as t2 on t1."quốc gia" = t2."id quốc gia" where t2."tên quốc gia" = 'Indonesia'
select distinct t2."vị trí"  from "trận đấu trong mùa giải" as t1  join "quốc gia" as t2 on t1."quốc gia" = t2."id quốc gia"  where t2."thủ đô" = 'Dublin'
select distinct t2."vị trí"  from "trận đấu trong mùa giải" as t1  join "quốc gia" as t2 on t1."quốc gia" = t2."id quốc gia"  where t2."thủ đô" = 'Dublin'
select t1."ngôn ngữ bản địa chính thức"  from "quốc gia" as t1  join "trận đấu trong mùa giải" as t2  on t1."id quốc gia" = t2."quốc gia"  where t2."đội" in (select "id đội" from "đội" where "tên" = 'Maryland' or "tên" = 'Duke')
select t1."ngôn ngữ bản địa chính thức"  from "quốc gia" as t1  join "trận đấu trong mùa giải" as t2  on t1."id quốc gia" = t2."quốc gia"  where t2."trường đại học" in ('Maryland', 'Duke')
select count(distinct t1."ngôn ngữ bản địa chính thức")  from "quốc gia" as t1  join "trận đấu trong mùa giải" as t2  on t1."id quốc gia" = t2."quốc gia"  where t2."vị trí" = 'hậu vệ'
select count(*) from "quốc gia" as t1  join "trận đấu trong mùa giải" as t2 on t1."id quốc gia" = t2."quốc gia"  where t2."vị trí" = 'Hậu vệ'
select t1."mùa giải", t1."cầu thủ", t2."tên"  from "trận đấu trong mùa giải" as t1  join "đội" as t2 on t1."đội" = t2."id đội"
select t1.cầu thủ , t2.tên , t1.mùa giải  from trận đấu trong mùa giải as t1  join cầu thủ as t2 on t1.id cầu thủ = t2.id cầu thủ  join đội as t3 on t1.id đội = t3.id đội  group by t1.cầu thủ , t1.mùa giải
select t2.vị trí from trận đấu trong mùa giải as t1 join đội as t2 on t1.đội = t2.id đội join cầu thủ as t3 on t1.cầu thủ = t3.id cầu thủ where t2.tên = "Ryley Goldner"
select distinct t2.vị trí from trận đấu trong mùa giải as t1 join đội as t2 on t1.đội = t2.id đội join cầu thủ as t3 on t1.cầu thủ = t3.id cầu thủ where t2.tên = "Ryley Goldner"
select count(distinct t1."trường đại học")  from "trận đấu trong mùa giải" as t2  join "đội" as t1 on t2."đội" = t1."id đội"  join "cầu thủ" as t3 on t2."cầu thủ" = t3."id cầu thủ"  where t1."tên" = 'Columbus Crew'
select count(distinct "trường đại học") from "trận đấu trong mùa giải" where "đội" = 1
select t1.cầu thủ, t1.số năm đã chơi  from trận đấu trong mùa giải as t2  join cầu thủ as t1 on t2.cầu thủ = t1.id cầu thủ  where t2.đội = 1
select t1.cầu thủ, t1.số năm đã chơi  from trận đấu trong mùa giải as t1  join cầu thủ as t2 on t1.cầu thủ = t2.id cầu thủ  where t1.đội = 1  order by t1.số năm đã chơi
select vị trí, count(*) from trận đấu trong mùa giải group by vị trí
select vị trí, count(*) from trận đấu trong mùa giải group by vị trí
select t1."tên quốc gia", count(*)  from "quốc gia" as t1  join "cầu thủ" as t2 on t1."id quốc gia" = t2."quốc gia"  group by t2."quốc gia"
select "tên quốc gia", count(*) from "trận đấu trong mùa giải" as t1 join "quốc gia" as t2 on t1."quốc gia" = t2."id quốc gia" group by t1."quốc gia"
select "cầu thủ" from "trận đấu trong mùa giải" order by "trường đại học" asc
select cầu thủ, mùa giải from trận đấu trong mùa giải group by mùa giải order by trường đại học asc
select "vị trí" from "trận đấu trong mùa giải" group by "vị trí" order by count(*) desc limit 1
select vị trí from trận đấu trong mùa giải group by vị trí order by count(*) desc limit 1
select t1."trường đại học", count(*)  from "trận đấu trong mùa giải" as t1  join "cầu thủ" as t2 on t1."cầu thủ" = t2."id cầu thủ"  group by t1."trường đại học"  order by count(*) desc  limit 3
select "trường đại học" from "trận đấu trong mùa giải" group by "trường đại học" order by count(*) desc limit 3
select "trường đại học" from "trận đấu trong mùa giải" group by "trường đại học" having count(*) >= 2
select t1."trường đại học" from "trận đấu trong mùa giải" as t1 join "cầu thủ" as t2 on t1."trường đại học" = t2."trường đại học" group by t1."trường đại học" having count(*) >= 2
select trường đại học from trận đấu trong mùa giải group by trường đại học having count(*) >= 2 order by trường đại học desc
select trường đại học from trận đấu trong mùa giải group by trường đại học having count(*) >= 2 order by trường đại học desc
select tên from đội where id đội not in (select đội from trận đấu trong mùa giải)
select "tên" from "đội" except select "tên" from "trận đấu trong mùa giải"
select t1."tên quốc gia"  from "quốc gia" as t1  join "trận đấu trong mùa giải" as t2  on t1."id quốc gia" = t2."quốc gia"  where t2."vị trí" = 'tiền đạo'  group by t1."tên quốc gia"  having count(*) = (select count(*) from "trận đấu trong mùa giải" where "vị trí" = 'tiền đạo')  intersect  select t1."tên quốc gia"  from "quốc gia" as t1  join "trận đấu trong mùa giải" as t2  on t1."id quốc gia" = t2."quốc gia"  where t2."vị trí" = 'hậu vệ'  group by t1."tên quốc gia"  having count(*) = (select count(*) from "trận đấu trong mùa giải" where "vị trí" = 'hậu vệ')
select t1."tên quốc gia"  from "quốc gia" as t1  join "trận đấu trong mùa giải" as t2  on t1."id quốc gia" = t2."quốc gia"  where t2."vị trí" = 'tiền đạo'  intersect  select t1."tên quốc gia"  from "quốc gia" as t1  join "trận đấu trong mùa giải" as t2  on t1."id quốc gia" = t2."quốc gia"  where t2."vị trí" = 'hậu vệ'
select distinct t2."trường đại học"  from "trận đấu trong mùa giải" as t1  join "cầu thủ" as t2 on t1."đội" = t2."id đội"  where t1."vị trí" = 'tiền vệ'  intersect  select distinct t2."trường đại học"  from "trận đấu trong mùa giải" as t1  join "cầu thủ" as t2 on t1."đội" = t2."id đội"  where t1."vị trí" = 'hậu vệ'
select distinct "trường đại học" from "trận đấu trong mùa giải" where "vị trí" = 'tiền vệ' intersect select distinct "trường đại học" from "trận đấu trong mùa giải" where "vị trí" = 'hậu vệ'
select count(*) from "tội phạm"
select t1.ngày from tội phạm as t1 join cá nhân as t2 on t1.id cá nhân = t2.id cá nhân order by t1.số người bị giết desc
select "số người bị thương" from "tội phạm" order by "số người bị thương" asc
select avg("số người bị thương") from "tội phạm"
select t1."địa điểm"  from "tội phạm" as t1  join "cá nhân" as t2 on t1."id cá nhân" = t2."id cá nhân"  order by t1."số người bị giết" desc  limit 1
select tên from cá nhân order by chiều cao limit 1
select t2.tên from tội phạm as t1 join cá nhân as t2 on t1.id cá nhân = t2.id cá nhân
select t2.tên from tội phạm as t1 join cá nhân as t2 on t1.id cá nhân = t2.id cá nhân where t1.quốc gia != "China"
select t1.tên  from cá nhân as t1  join tội phạm as t2 on t1.id cá nhân = t2.id cá nhân  order by t1.cân nặng desc  limit 1
select sum(t1."số người bị giết")  from "tội phạm" as t1  join "cá nhân" as t2 on t1."id cá nhân" = t2."id cá nhân"  where t2."chiều cao" > 1.84
select t2.tên from tội phạm as t1 join cá nhân as t2 on t1.id cá nhân = t2.id cá nhân where t1.quốc gia = "China" or t1.quốc gia = "Japan"
select t2.chiều cao , t1.số người bị thương  from tội phạm as t1  join cá nhân as t2 on t1.id cá nhân = t2.id cá nhân  group by t1.id cá nhân  order by t1.số người bị thương desc
select quốc gia , count ( * ) from tội phạm as t1 join cá nhân as t2 on t1.id cá nhân = t2.id cá nhân group by t1.quốc gia order by count ( * ) desc
select quốc gia from tội phạm group by quốc gia order by count(*) desc limit 1
select quốc gia from tội phạm group by quốc gia having count(*) >= 2
select t2.tên from tội phạm as t1 join cá nhân as t2 on t1.id cá nhân = t2.id cá nhân order by t1.năm desc
select tên from cá nhân where id cá nhân not in (select id cá nhân from tội phạm)
select quốc gia from tội phạm where số người bị thương > 50 group by quốc gia having count(*) < 20
select count(distinct "địa điểm") from "tội phạm"
select t1.ngày  from tội phạm as t1  join cá nhân as t2 on t1.id cá nhân = t2.id cá nhân  order by t2.chiều cao desc  limit 1
select năm from tội phạm order by ngày desc limit 1
select chính quyền địa phương , dịch vụ from nhà ga
select "số hiệu tàu", "tên" from "tàu hoả" order by "thời gian" limit 2
select t1.thời gian , t1.số hiệu tàu  from tàu hoả as t1  join lộ trình as t2 on t1.id = t2.id tàu  where t2.id nhà ga in ( select id from nhà ga where đích = "Chennai" )  order by t1.thời gian
select count(*) from "tàu hoả" where "tên" like "%Express%"
select t1."số hiệu tàu", t1."thời gian"  from "tàu hoả" as t1  join "lộ trình" as t2 on t1."id" = t2."id tàu"  where t2."id nhà ga" in (select id from "nhà ga" where "tên mạng lưới" = 'Chennai')  and t2."id nhà ga" in (select id from "nhà ga" where "tên mạng lưới" = 'Guruvayur')
select "điểm khởi hành", count(*) from "tàu hoả" group by "điểm khởi hành"
select t1.tên from tàu hoả as t1 join lộ trình as t2 on t1.id = t2.id tàu hoả group by t2.id tàu order by count(*) desc limit 1
select distinct t1."tên mạng lưới", count(*)  from "nhà ga" as t1  join "lộ trình" as t2 on t1."id" = t2."id nhà ga"  group by t1."tên mạng lưới"
select "ngày trong tuần", avg("nhiệt độ cao") from "thời tiết hàng tuần"
select max(nhiệt độ thấp), avg(lượng mưa) from thời tiết hàng tuần where id nhà ga = 1
select t1.tên , t1.thời gian  from tàu hoả as t1  join lộ trình as t2 on t1.id = t2.id tàu hoả  join nhà ga as t3 on t2.id nhà ga = t3.id  where t3.chính quyền địa phương = "Chiltern"
select count(distinct "dịch vụ") from "nhà ga"
select t1.id, t1.chính quyền địa phương  from lộ trình as t2  join thời tiết hàng tuần as t1  on t2.id nhà ga = t1.id nhà ga  group by t1.id  order by avg(t1.nhiệt độ cao) desc  limit 1
select t1.id , t1.chính quyền địa phương  from nhà ga as t1  join thời tiết hàng tuần as t2  on t1.id = t2.id nhà ga  where t2.lượng mưa > 50
select min(nhiệt độ thấp), max(tốc độ gió mph) from thời tiết hàng tuần
select t1."điểm khởi hành" from "tàu hoả" as t1 join "lộ trình" as t2 on t1."id" = t2."id tàu" group by t1."điểm khởi hành" having count(*) > 1
select count(*) from "nhà thờ" where "ngày mở cửa" < 1850
select tên , ngày mở cửa , được tổ chức bởi from nhà thờ
select tên from nhà thờ order by ngày mở cửa desc
select "ngày mở cửa" from "nhà thờ" group by "ngày mở cửa" having count(*) >= 2
select "được tổ chức bởi", "tên" from "nhà thờ" where "ngày mở cửa" between 1830 and 1840
select "ngày mở cửa", count(*) from "nhà thờ" group by "ngày mở cửa"
select tên , ngày mở cửa from nhà thờ order by ngày mở cửa desc limit 3
select count(*) from "cá nhân" where "là nam hay nữ" = "nữ" and "tuổi" > 30
select "quốc gia" from "cá nhân" where "tuổi" > 30 group by "quốc gia" having count(*) > 0 intersect select "quốc gia" from "cá nhân" where "tuổi" < 25 group by "quốc gia" having count(*) > 0
select min(tuổi), max(tuổi), avg(tuổi) from "cá nhân"
select "tên", "quốc gia" from "cá nhân" where "tuổi" < (select avg("tuổi") from "cá nhân")
select t1.tên , t2.tên from cá nhân as t1 join lễ cưới as t2 on t1."id cá nhân" = t2."id nam" where t2."năm" > 2014 union select t1.tên , t2.tên from cá nhân as t1 join lễ cưới as t2 on t1."id cá nhân" = t2."id nữ" where t2."năm" > 2014
select tên , tuổi from cá nhân where "là nam hay nữ" = 'nam' and "id cá nhân" not in ( select "id nam" from lễ cưới )
select tên from nhà thờ where id nhà thờ not in ( select id nhà thờ from lễ cưới where năm = 2015 )
select t1.tên  from nhà thờ as t1  join lễ cưới as t2 on t1."id nhà thờ" = t2."id nhà thờ"  group by t2."id nhà thờ"  having count(*) >= 2
select t1.tên  from "cá nhân" as t1  join "lễ cưới" as t2 on t1."id cá nhân" = t2."id nữ"  where t1."là nam hay nữ" = 'female' and t1."quốc gia" = 'Canada' and t2."năm" = 2016
select count(*) from lễ cưới where năm = 2016
select t1.tên  from nhà thờ as t1  join lễ cưới as t2 on t1."id nhà thờ" = t2."id nhà thờ"  join cá nhân as t3 on t2."id nam" = t3."id cá nhân"  where t3."tuổi" > 30
select "quốc gia", count(*) from "cá nhân" group by "quốc gia"
select count(*) from "nhà thờ" as t1 join "lễ cưới" as t2 on t1."id nhà thờ" = t2."id nhà thờ" where t2."năm" = 2016
select count(*) from giảng viên
select count(*) from giảng viên
select ngạch from giảng viên
select ngạch from giảng viên
select toà nhà from giảng viên where toà nhà like "%department%"
select toà nhà from giảng viên where toà nhà like "%Khoa%" group by toà nhà having count(*) > 0
select tên , họ from giảng viên
select tên , ngạch from giảng viên
select tên , số điện thoại from giảng viên where giới tính = "F"
select tên , họ , số điện thoại from giảng viên where giới tính = "F"
select "id giảng viên" from "giảng viên" where "giới tính" = 'M'
select "id giảng viên" from "giảng viên" where "giới tính" = 'M'
select count(*) from giảng viên where giới tính = "F"
select count(*) from giảng viên where giới tính = "F"
select số điện thoại , số phòng , toà nhà from giảng viên where tên = "Prince Jerry"
select số phòng , toà nhà from giảng viên where tên = "Prince Jerry"
select count(*) from giảng viên where toà nhà = "NEB"
select count(*) from giảng viên where toà nhà = "NEB"
select tên , họ from giảng viên
select tên , họ from giảng viên
select toà nhà , count ( * ) from giảng viên group by toà nhà
select toà nhà , count ( * ) from giảng viên group by toà nhà
select toà nhà from giảng viên group by toà nhà order by count(*) desc limit 1
select toà nhà from giảng viên group by toà nhà order by count(*) desc limit 1
select toà nhà from giảng viên group by toà nhà having count(*) >= 10
select toà nhà from giảng viên group by toà nhà having count(*) >= 10
select ngạch, count(*) from giảng viên group by ngạch
select ngạch, count(*) from giảng viên group by ngạch
select ngạch, count(*) from giảng viên where giới tính = "M" group by ngạch union select ngạch, count(*) from giảng viên where giới tính = "F" group by ngạch
select ngạch, giới tính, count(*) from giảng viên group by ngạch, giới tính
select t2.ngạch from giảng viên as t1 join giảng viên tham gia vào as t2 on t1.id giảng viên = t2.id giảng viên group by t2.ngạch order by count(*) desc limit 1
select ngạch from giảng viên group by ngạch order by count(*) asc limit 1
select giới tính , count(*) from giảng viên where giới tính = "F" group by giới tính
select count(*) from giảng viên where giới tính = 'M' union select count(*) from giảng viên where giới tính = 'F'
select t2.tên , t2.họ  from giảng viên as t2  join sinh viên as t1 on t2.id giảng viên = t1.cố vấn  where t1.tên = "Linda" and t1.họ = "Smith"
select tên , họ from sinh viên where id sinh viên = ( select cố vấn from sinh viên where tên = "Linda" and họ = "Smith" )
select "id sinh viên" from "sinh viên" where "cố vấn" in (select "id giảng viên" from "giảng viên" where "ngạch" = 'Prof')
select t1."id sinh viên" from "sinh viên" as t1 join "giảng viên" as t2 on t1."cố vấn" = t2."id giảng viên" where t2."ngạch" = 'Prof'
select t1.tên , t1.họ  from sinh viên as t1  join giảng viên as t2 on t1.cố vấn = t2.id giảng viên  where t2.tên = "Micheal Goodrich"
select t1.tên , t1.họ  from giảng viên as t2  join sinh viên as t1  on t2.id giảng viên = t1.cố vấn  where t2.tên = "Micheal" and t2.họ = "Goodrich"
select "id giảng viên", count(*) from "giảng viên" as t1 join "sinh viên" as t2 on t1."id giảng viên" = t2."cố vấn" group by t1."id giảng viên"
select t1."id giảng viên", count(*)  from "giảng viên" as t1  join "sinh viên" as t2 on t1."id giảng viên" = t2."cố vấn"  group by t1."id giảng viên"
select t2.ngạch, count(*)  from giảng viên as t1  join sinh viên as t2 on t1.id giảng viên = t2.cố vấn  group by t2.ngạch
select count(*), t2.ngạch  from giảng viên as t1  join sinh viên as t2 on t1.id giảng viên = t2.cố vấn  group by t2.ngạch
select t1.họ, t1.tên  from giảng viên as t1  join sinh viên as t2 on t1.id giảng viên = t2.cố vấn  group by t2.cố vấn  order by count(*) desc  limit 1
select t1.tên , t1.họ  from giảng viên as t1  join sinh viên as t2 on t1.id giảng viên = t2.cố vấn  group by t2.cố vấn  order by count(*) desc  limit 1
select t1."id giảng viên"  from "giảng viên" as t1  join "sinh viên" as t2 on t1."id giảng viên" = t2."cố vấn"  group by t1."id giảng viên"  having count(*) >= 2
select t1."id giảng viên"  from "giảng viên tham gia vào" as t1  join "sinh viên" as t2 on t1."id giảng viên" = t2."cố vấn"  group by t1."id giảng viên"  having count(*) >= 2
select "id giảng viên" from "giảng viên" except select "cố vấn" from "sinh viên"
select "id giảng viên" from "giảng viên" except select "cố vấn" from "sinh viên"
select "tên hoạt động" from "hoạt động"
select "tên hoạt động" from "hoạt động"
select count(*) from "hoạt động"
select count(*) from "hoạt động"
select count(distinct t1.id giảng viên) from giảng viên tham gia vào as t2 join giảng viên as t1 on t2.id giảng viên = t1.id giảng viên
select count(distinct t1.id giảng viên) from giảng viên tham gia vào as t2 join giảng viên as t1 on t2.id giảng viên = t1.id giảng viên
select "id giảng viên" from "giảng viên" except select "id giảng viên" from "giảng viên tham gia vào"
select "id giảng viên" from "giảng viên" except select "id giảng viên" from "giảng viên tham gia vào"
select t1."id giảng viên"  from "giảng viên tham gia vào" as t2  join "giảng viên" as t1 on t2."id giảng viên" = t1."id giảng viên"  join "sinh viên" as t3 on t2."id hoạt động" = t3."id hoạt động"  where t2."id hoạt động" in (select "id hoạt động" from "giảng viên tham gia vào")
select "id giảng viên" from "giảng viên" where "id giảng viên" not in (select "id giảng viên" from "giảng viên tham gia vào")
select count(*)  from giảng viên as t1  join giảng viên tham gia vào as t2 on t1.id giảng viên = t2.id giảng viên  where t1.tên = "Mark" and t1.họ = "Giuliano"
select count(*)  from giảng viên as t1  join giảng viên tham gia vào as t2 on t1.id giảng viên = t2.id giảng viên  where t1.tên = "Mark" and t1.họ = "Giuliano"
select distinct t3."tên hoạt động"  from "giảng viên" as t1  join "giảng viên tham gia vào" as t2 on t1."id giảng viên" = t2."id giảng viên"  join "hoạt động" as t3 on t2."id hoạt động" = t3."id hoạt động"  where t1."họ" = 'Giuliano' and t1."tên" = 'Mark'
select t2."tên hoạt động"  from "giảng viên" as t1  join "giảng viên tham gia vào" as t2 on t1."id giảng viên" = t2."id giảng viên"  where t1."họ" = 'Mark' and t1."tên" = 'Giuliano'
select t1.tên , t1.họ , count(*)  from giảng viên as t1  join giảng viên tham gia vào as t2  on t1.id giảng viên = t2.id giảng viên  group by t1.tên , t1.họ
select t1.tên , count(*)  from giảng viên tham gia vào as t2  join giảng viên as t1 on t2.id giảng viên = t1.id giảng viên  join hoạt động as t3 on t2.id hoạt động = t3.id hoạt động  group by t1.tên  order by count(*) desc  limit 10
select t1."tên hoạt động", count(*)  from "hoạt động" as t1  join "giảng viên tham gia vào" as t2  on t1."id hoạt động" = t2."id hoạt động"  group by t1."tên hoạt động"
select t1."tên hoạt động", count(*)  from "giảng viên tham gia vào" as t2  join "hoạt động" as t1 on t2."id hoạt động" = t1."id hoạt động"  group by t1."tên hoạt động"
select t1.tên , t1.họ from giảng viên as t1 join giảng viên tham gia vào as t2 on t1.id giảng viên = t2.id giảng viên group by t2.id giảng viên order by count ( * ) desc limit 1
select t2.tên , t2.họ  from giảng viên tham gia vào as t1  join giảng viên as t2 on t1.id giảng viên = t2.id giảng viên  group by t1.id giảng viên  order by count(*) desc  limit 1
select "tên hoạt động" from "giảng viên tham gia vào" as t1 join "hoạt động" as t2 on t1."id hoạt động" = t2."id hoạt động" group by t2."tên hoạt động" order by count(*) desc limit 1
select t1."tên hoạt động" from "hoạt động" as t1 join "giảng viên tham gia vào" as t2 on t1."id hoạt động" = t2."id hoạt động" group by t2."id hoạt động" order by count(*) desc limit 1
select "id sinh viên" from "sinh viên" except select "id sinh viên" from "tham gia vào"
select "id sinh viên" from "sinh viên" except select "id sinh viên" from "tham gia vào"
select t1."id sinh viên" from "sinh viên" as t1 join "tham gia vào" as t2 on t1."id sinh viên" = t2."id sinh viên" where t1."tuổi" < 20
select distinct t1.id sinh viên from sinh viên as t1 join tham gia vào as t2 on t1.id sinh viên = t2.id sinh viên where t1.tuổi < 20
select t1.tên , t1.họ  from sinh viên as t1  join tham gia vào as t2 on t1.id sinh viên = t2.id sinh viên  group by t2.id sinh viên  order by count ( * ) desc  limit 1
select t1.tên , t1.họ  from sinh viên as t1  join tham gia vào as t2 on t1."id sinh viên" = t2."id sinh viên"  group by t1."id sinh viên"  order by count(*) desc  limit 1
select "tên hoạt động" from "hoạt động" as t1 join "tham gia vào" as t2 on t1."id hoạt động" = t2."id hoạt động" group by "tên hoạt động" order by count(*) desc limit 1
select t1."tên hoạt động"  from "hoạt động" as t1  join "tham gia vào" as t2 on t1."id hoạt động" = t2."id hoạt động"  group by t2."id hoạt động"  order by count(*) desc  limit 1
select t2.tên from giảng viên tham gia vào as t1 join hoạt động as t2 on t1.id hoạt động = t2.id hoạt động where t2.tên hoạt động = "Swim" or t2.tên hoạt động = "Kayaking"
select t1.tên  from giảng viên tham gia vào as t2  join hoạt động as t1 on t2.id hoạt động = t1.id hoạt động  where t1.tên hoạt động = "Surfing" or t1.tên hoạt động = "Kayaking"
select tên from giảng viên where id giảng viên not in (select t1.id giảng viên from giảng viên tham gia vào as t1 join hoạt động as t2 on t1.id hoạt động = t2.id hoạt động where t2.tên hoạt động = "Swim" or t2.tên hoạt động = "Kayaking")
select tên from giảng viên where id giảng viên not in (select t1.id giảng viên from giảng viên tham gia vào as t1 join hoạt động as t2 on t1.id hoạt động = t2.id hoạt động where t2.tên hoạt động = "Rowing" or t2.tên hoạt động = "Kayaking")
select t1.tên  from giảng viên as t1  join giảng viên tham gia vào as t2 on t1.id giảng viên = t2.id giảng viên  where t2.id hoạt động in (select id hoạt động from hoạt động where tên hoạt động = "Swimming")  intersect  select t1.tên  from giảng viên as t1  join giảng viên tham gia vào as t2 on t1.id giảng viên = t2.id giảng viên  where t2.id hoạt động in (select id hoạt động from hoạt động where tên hoạt động = "Kayaking")
select t2.tên  from giảng viên tham gia vào as t1  join giảng viên as t2 on t1.id giảng viên = t2.id giảng viên  where t1.id hoạt động in (select id hoạt động from hoạt động where tên hoạt động = "Swimming")  intersect  select t2.tên  from giảng viên tham gia vào as t1  join giảng viên as t2 on t1.id giảng viên = t2.id giảng viên  where t1.id hoạt động in (select id hoạt động from hoạt động where tên hoạt động = "Kayaking")
select t1."id sinh viên"  from "tham gia vào" as t1  join "hoạt động" as t2 on t1."id hoạt động" = t2."id hoạt động"  where t2."tên hoạt động" = 'Swim'  intersect  select t1."id sinh viên"  from "tham gia vào" as t1  join "hoạt động" as t2 on t1."id hoạt động" = t2."id hoạt động"  where t2."tên hoạt động" = 'Kayaking'
select distinct t1."id sinh viên"  from "tham gia vào" as t2  join "hoạt động" as t1 on t2."id hoạt động" = t1."id hoạt động"  where t1."tên hoạt động" = 'Swim'  intersect  select distinct t1."id sinh viên"  from "tham gia vào" as t2  join "hoạt động" as t1 on t2."id hoạt động" = t1."id hoạt động"  where t1."tên hoạt động" = 'Kayaking'
select count(*) from "người luyện thể hình"
select tổng from người luyện thể hình order by tổng asc
select "cử giật", "cử đẩy" from "người luyện thể hình" order by "cử giật" asc
select avg(cử giật) from "người luyện thể hình"
select t2."cử đẩy"  from "người luyện thể hình" as t1  join "cá nhân" as t2 on t1."id cá nhân" = t2."id cá nhân"  order by t1."tổng" desc  limit 1
select "ngày sinh" from "cá nhân" order by "chiều cao"
select t1.tên from cá nhân as t1 join người luyện thể hình as t2 on t1.id cá nhân = t2.id cá nhân
select t1.tên from cá nhân as t1 join người luyện thể hình as t2 on t1.id cá nhân = t2.id cá nhân where t2.tổng > 300
select t1.tên  from "cá nhân" as t1  join "người luyện thể hình" as t2  on t1."id cá nhân" = t2."id cá nhân"  order by t2."cân nặng" desc  limit 1
select t2.ngày sinh , t2.nơi sinh  from người luyện thể hình as t1  join cá nhân as t2 on t1.id cá nhân = t2.id cá nhân  order by t1.tổng desc  limit 1
select t2.chiều cao from người luyện thể hình as t1 join cá nhân as t2 on t1.id cá nhân = t2.id cá nhân where t1.tổng < 315
select avg(t1."tổng")  from "người luyện thể hình" as t1  join "cá nhân" as t2 on t1."id cá nhân" = t2."id cá nhân"  where t2."chiều cao" > 200
select t1.tên  from cá nhân as t1  join người luyện thể hình as t2  on t1."id cá nhân" = t2."id cá nhân"  order by t2."tổng" desc
select nơi sinh, count(*) from cá nhân group by nơi sinh
select nơi sinh from cá nhân group by nơi sinh order by count(*) desc limit 1
select distinct nơi sinh from cá nhân group by nơi sinh having count(*) >= 2
select chiều cao, cân nặng from cá nhân order by chiều cao desc limit 1
select t2.tên , t1.cử giật , t1.cử đẩy , t1.tổng  from người luyện thể hình as t1  join cá nhân as t2 on t1.id cá nhân = t2.id cá nhân
select tên , nơi sinh from cá nhân except select t1.tên , t1.nơi sinh from cá nhân as t1 join người luyện thể hình as t2 on t1.id cá nhân = t2.id cá nhân
select count(distinct nơi sinh) from cá nhân
select count(*) from "cá nhân" where "id cá nhân" not in (select "id cá nhân" from "người luyện thể hình")
select t2.cân nặng from người luyện thể hình as t1 join cá nhân as t2 on t1.id cá nhân = t2.id cá nhân where t1.cử giật > 140 or t2.chiều cao > 200
select tổng  from người luyện thể hình as t1  join cá nhân as t2 on t1.id cá nhân = t2.id cá nhân  where t2.ngày sinh like "%-01-%"
select min(cử giật) from "người luyện thể hình"
select count(*) from "ứng cử viên"
select count(*) from "ứng cử viên"
select "nguồn thăm dò ý kiến" from "ứng cử viên" group by "nguồn thăm dò ý kiến" order by count(*) desc limit 1
select "nguồn thăm dò ý kiến" from "ứng cử viên" group by "nguồn thăm dò ý kiến" order by count(*) desc limit 1
select "tỷ lệ ủng hộ" from "ứng cử viên" order by "tỷ lệ ủng hộ" desc limit 3
select "tỷ lệ ủng hộ" from "ứng cử viên" order by "tỷ lệ ủng hộ" desc limit 3
select "id ứng cử viên" from "ứng cử viên" order by "tỷ lệ phản đối" asc limit 1
select "id ứng cử viên" from "ứng cử viên" order by "tỷ lệ phản đối" asc limit 1
select "tỷ lệ ủng hộ", "tỷ lệ xem xét", "tỷ lệ phản đối" from "ứng cử viên" order by "tỷ lệ không chắc chắn" asc
select "tỷ lệ ủng hộ", "tỷ lệ xem xét", "tỷ lệ phản đối", "tỷ lệ không chắc chắn" from "ứng cử viên" order by "tỷ lệ không chắc chắn" asc
select "nguồn thăm dò ý kiến" from "ứng cử viên" order by "tỷ lệ phản đối" desc limit 1
select t2."nguồn thăm dò ý kiến"  from "ứng cử viên" as t1  join "cá nhân" as t2 on t1."id cá nhân" = t2."id cá nhân"  order by t1."tỷ lệ phản đối" desc  limit 1
select tên , ngày sinh from cá nhân order by ngày sinh
select tên , ngày sinh from cá nhân order by ngày sinh
select avg(chiều cao), avg(cân nặng) from cá nhân where giới tính = "M"
select avg(chiều cao), avg(cân nặng) from cá nhân where giới tính = "M"
select tên from cá nhân where chiều cao > 200 union select tên from cá nhân where chiều cao < 190
select tên from cá nhân where chiều cao > 200 or chiều cao < 190
select avg(cân nặng), min(cân nặng) from cá nhân group by giới tính
select giới tính, avg(cân nặng), min(cân nặng) from cá nhân group by giới tính
select t1.tên , t1.giới tính  from "cá nhân" as t1  join "ứng cử viên" as t2  on t1."id cá nhân" = t2."id cá nhân"  order by t2."tỷ lệ ủng hộ" desc  limit 1
select t1.tên , t1.giới tính  from "cá nhân" as t1  join "ứng cử viên" as t2  on t1."id cá nhân" = t2."id cá nhân"  order by t2."tỷ lệ ủng hộ" desc  limit 1
select t1.tên , t2.giới tính  from ứng cử viên as t1  join cá nhân as t2  on t1.id cá nhân = t2.id cá nhân  group by t2.giới tính  order by min ( t1.tỷ lệ phản đối )  limit 1
select t1.tên , t1.giới tính  from "cá nhân" as t1  join "ứng cử viên" as t2  on t1."id cá nhân" = t2."id cá nhân"  order by t2."tỷ lệ phản đối"  limit 1
select giới tính from ứng cử viên group by giới tính order by avg(tỷ lệ không chắc chắn) desc limit 1
select t2.giới tính  from ứng cử viên as t1  join cá nhân as t2 on t1.id cá nhân = t2.id cá nhân  group by t2.giới tính  order by avg(t1.tỷ lệ không chắc chắn) desc  limit 1
select t1.tên from cá nhân as t1 where t1.id cá nhân not in (select t2.id cá nhân from ứng cử viên as t2)
select tên from cá nhân where id cá nhân not in (select id cá nhân from ứng cử viên)
select tên from ứng cử viên where tỷ lệ ủng hộ < tỷ lệ phản đối
select tên from ứng cử viên where tỷ lệ ủng hộ < tỷ lệ phản đối
select giới tính, count(*) from cá nhân where cân nặng > 85 group by giới tính
select giới tính, count(*) from cá nhân where cân nặng > 85
select max(tỷ lệ ủng hộ), min(tỷ lệ xem xét), min(tỷ lệ phản đối) from ứng cử viên group by tỷ lệ ủng hộ, tỷ lệ xem xét, tỷ lệ phản đối
select max(tỷ lệ ủng hộ), min(tỷ lệ xem xét), min(tỷ lệ phản đối) from ứng cử viên group by tỷ lệ ủng hộ order by tỷ lệ ủng hộ desc
select tên from ứng cử viên where giới tính = "F" order by tên
select tên from ứng cử viên where giới tính = "F" order by tên
select tên from cá nhân where chiều cao < (select avg(chiều cao) from cá nhân)
select tên from cá nhân where chiều cao < (select avg(chiều cao) from cá nhân)
select * from cá nhân
select * from cá nhân
select t1."id thành phố"  from "thành phố chủ nhà" as t1  join "trận đấu" as t2 on t1."id trận đấu" = t2."id trận đấu"  where t1."năm" = (select max("năm") from "thành phố chủ nhà")
select "id thành phố chủ nhà" from "thành phố chủ nhà" where "năm" = ( select max("năm") from "thành phố chủ nhà" )
select "id trận đấu" from "trận đấu" where "giải đấu" = 'Vòng loại FIFA World Cup 1994'
select "id trận đấu" from "trận đấu" where "giải đấu" = 'vòng loại FIFA World Cup 1994'
select distinct t1.thành phố chủ nhà  from thành phố chủ nhà as t1  join trận đấu as t2 on t1.id trận đấu = t2.id trận đấu  where t2.năm > 2010
select distinct t1.thành phố chủ nhà  from thành phố chủ nhà as t1  join trận đấu as t2 on t1.id trận đấu = t2.id trận đấu  where t2.năm > 2010
select t1.thành phố from thành phố chủ nhà as t1 join trận đấu as t2 on t1.id trận đấu = t2.id trận đấu group by t1.thành phố order by count(*) desc limit 1
select t1.thành phố chủ nhà  from thành phố chủ nhà as t1  join trận đấu as t2 on t1.id trận đấu = t2.id trận đấu  group by t1.thành phố chủ nhà  order by count(*) desc  limit 1
select t1."địa điểm"  from "trận đấu" as t1  join "giải đấu" as t2 on t1."giải đấu" = t2."giải đấu"  join "thành phố chủ nhà" as t3 on t1."id trận đấu" = t3."id trận đấu"  where t2."giải đấu" = 'Vòng loại FIFA World Cup 1994' and t3."thành phố chủ nhà" = 'Nam Kinh (Giang Tô)'
select distinct t1."địa điểm"  from "trận đấu" as t1  join "thành phố" as t2 on t1."id thành phố" = t2."id thành phố"  where t1."giải đấu" = 'Vòng loại FIFA World Cup 1994' and t2."thành phố" = 'Nam Kinh (Giang Tô)'
select t1."tháng một" from "nhiệt độ" as t1 join "thành phố" as t2 on t1."id thành phố" = t2."id thành phố" where t2."thành phố" = 'Thượng Hải'
select t1."tháng một" from "nhiệt độ" as t1 join "thành phố" as t2 on t1."id thành phố" = t2."id thành phố" where t2."thành phố" = 'Thượng Hải'
select distinct t1.năm from thành phố chủ nhà as t1 join thành phố as t2 on t1.id trận đấu = t2."id thành phố" where t2."thành phố" = 'Thái Châu (Chiết Giang)'
select năm from thành phố chủ nhà where thành phố chủ nhà = "Thái Châu (Chiết Giang)"
select "thành phố", "dân số khu vực" from "thành phố" order by "dân số khu vực" desc limit 3
select "thành phố" from "thành phố" order by "dân số khu vực" desc limit 3
select "thành phố", "gdp" from "thành phố" order by "gdp" asc limit 1
select "thành phố", "gdp" from "thành phố" order by "gdp" limit 1
select t1.thành phố from thành phố as t1 join nhiệt độ as t2 on t1."id thành phố" = t2."id thành phố" order by t2."tháng hai" desc limit 1
select t1.thành phố from thành phố as t1 join nhiệt độ as t2 on t1."id thành phố" = t2."id thành phố" where t2."tháng hai" = ( select max ( "tháng hai" ) from nhiệt độ )
select t1.thành phố from thành phố as t1 join nhiệt độ as t2 on t1."id thành phố" = t2."id thành phố" where t2."tháng ba" < ( select "tháng ba" from nhiệt độ where "tháng tư" = 10 ) or t2."tháng ba" > ( select "tháng ba" from nhiệt độ where "tháng tư" = 10 )
select t1.thành phố from thành phố as t1 join nhiệt độ as t2 on t1."id thành phố" = t2."id thành phố" where t2."tháng ba" < ( select "tháng ba" from nhiệt độ where "tháng mười" = 7 ) or t2."tháng ba" > ( select "tháng ba" from nhiệt độ where "tháng mười" = 10 )
select t3.thành phố  from thành phố as t3  join nhiệt độ as t2 on t3."id thành phố" = t2."id thành phố"  join thành phố chủ nhà as t1 on t1."id trận đấu" = t2."id trận đấu"  where t2."tháng ba" < t2."tháng bảy" and t1."thành phố chủ nhà" = t3."thành phố"
select t1.thành phố from thành phố as t1 join nhiệt độ as t2 on t1."id thành phố" = t2."id thành phố" where t2."tháng ba" < t2."tháng bảy" and t1."id thành phố" in (select "id thành phố" from thành phố chủ nhà)
select "thành phố" from "thành phố" as t1  join "nhiệt độ" as t2 on t1."id thành phố" = t2."id thành phố"  where t2."tháng ba" < t2."tháng mười hai"  except  select "thành phố chủ nhà" from "thành phố chủ nhà" as t3  join "trận đấu" as t4 on t3."id trận đấu" = t4."id trận đấu"  join "thành phố" as t5 on t5."id thành phố" = t4."id thành phố"
select t1.thành phố from thành phố as t1 join nhiệt độ as t2 on t1."id thành phố" = t2."id thành phố" where t2."tháng ba" < t2."tháng mười hai" and t1."id thành phố" not in (select "thành phố chủ nhà" from thành phố chủ nhà)
select t1.thành phố from thành phố as t1 join nhiệt độ as t2 on t1."id thành phố" = t2."id thành phố" where t2."tháng hai" > t2."tháng sáu" or t1."id thành phố" in (select "id thành phố" from thành phố chủ nhà)
select t1.thành phố from thành phố as t1 join nhiệt độ as t2 on t1."id thành phố" = t2."id thành phố" where t2."tháng hai" > t2."tháng sáu" or t1."id thành phố" in (select "thành phố chủ nhà" from thành phố chủ nhà)
select "thành phố" from "thành phố" where "dân số khu vực" > 10000000
select "thành phố" from "thành phố" where "dân số khu vực" > 10000000
select "thành phố" from "thành phố" where "dân số khu vực" > 8000000 or "dân số khu vực" < 5000000
select "thành phố" from "thành phố" where "dân số khu vực" > 8000000 or "dân số khu vực" < 5000000
select giải đấu , count(*) from trận đấu group by giải đấu
select giải đấu , count(*) from trận đấu group by giải đấu
select địa điểm from trận đấu order by ngày desc
select địa điểm from trận đấu order by ngày desc
select gdp from nhiệt độ where "thành phố chủ nhà" = (select "thành phố chủ nhà" from thành phố order by "dân số khu vực" desc limit 1)
select gdp from thành phố where id thành phố = (select id thành phố from thành phố order by dân số khu vực desc limit 1)
select t1.gdp , t1.dân số khu vực  from thành phố as t1  join thành phố chủ nhà as t2  on t1."id thành phố" = t2."id thành phố"  group by t2."id thành phố"  having count(*) > 1
select t1.gdp , t1.dân số khu vực  from thành phố as t1  join thành phố chủ nhà as t2  on t1."id thành phố" = t2."id thành phố"  group by t2."id thành phố"  having count(*) > 1
select count(*) from giáo sư where mã khoa = 'ACCT'
select count(*) from giáo sư as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa where t2.tên khoa = "Accounting"
select count(*) from lớp học as t1 join giáo sư as t2 on t1."mã số nhân viên của giáo sư" = t2."mã số nhân viên" where t1."mã khoá học" = 'ACCT-211'
select count(*) from lớp học as t1 join giáo sư as t2 on t1."mã số nhân viên của giáo sư" = t2."mã số nhân viên" where t1."mã khoá học" = 'ACCT-211'
select t1.họ của nhân viên , t1.tên của nhân viên  from giáo sư as t1  join khoa as t2 on t1.mã khoa = t2.mã khoa  where t2.tên khoa = "Sinh học"
select t1.họ của nhân viên , t1.tên của nhân viên  from giáo sư as t1  join khoa as t2 on t1.mã khoa = t2.mã khoa  where t2.tên khoa = "Sinh học"
select t3.tên của giáo sư , t3.ngày sinh của giáo sư  from lớp học as t1  join khoá học as t2 on t1.mã khoá học = t2.mã khoá học  join giáo sư as t3 on t1.mã số nhân viên của giáo sư = t3.mã số nhân viên  where t2.mô tả về khoá học = "ACCT-211"
select t1.họ của nhân viên , t1.ngày sinh của nhân viên  from giáo sư as t1  join lớp học as t2 on t1.mã số nhân viên = t2.mã số nhân viên  where t2.mã khoá học = 'ACCT-211'
select count(*)  from "lớp học" as t1  join "giáo sư" as t2 on t1."mã số nhân viên của giáo sư" = t2."mã số nhân viên"  where t2."họ của nhân viên" = 'Graztevski'
select count(*) from giáo sư as t1 join lớp học as t2 on t1.mã số nhân viên = t2.mã số nhân viên where t1.họ của nhân viên = "Graztevski"
select t1."mã lớp học"  from "lớp học" as t1  join "khoa" as t2 on t1."mã khoa" = t2."mã khoa"  where t2."tên khoa" = 'Kế toán'
select distinct "mã lớp học" from "lớp học" as t1 join "khoa" as t2 on t1."mã khoa" = t2."mã khoa" where t2."tên khoa" = 'Accounting'
select "số lượng tín chỉ của khoá học", "mô tả về khoá học" from "khoá học" where "mã khoá học" = 'CIS-220'
select "mô tả về khoá học", "số lượng tín chỉ của khoá học" from "khoá học" where "mã khoá học" = 'CIS-220'
select địa chỉ khoa from khoa where tên khoa = "History"
select địa chỉ khoa from khoa where tên khoa = "History"
select count(distinct "địa chỉ khoa") from "khoa" where "mã trường" = 'BUS'
select count(distinct "địa chỉ khoa") from "khoa" where "mã trường" = 'BUS'
select count(distinct "địa chỉ khoa"), "mã trường" from "khoa" group by "mã trường"
select count(distinct "địa chỉ khoa") from "khoa"
select "mô tả về khoá học", "số lượng tín chỉ của khoá học" from "khoá học" where "mã khoá học" = 'QM-261'
select "số lượng tín chỉ của khoá học", "mô tả về khoá học" from "khoá học" where "mã khoá học" = 'QM-261'
select count(*), mã trường from khoa group by mã trường
select count(*), t1."mã trường"  from "khoa" as t1  join "lớp học" as t2 on t1."mã trường" = t2."mã trường"  group by t2."mã trường"
select count(*), distinct "mã trường" from "khoa" as t1 join "lớp học" as t2 on t1."mã trường" = t2."mã trường" group by t2."mã trường" having count(*) < 5
select count(*), t1."mã trường"  from "khoa" as t1  join "lớp học" as t2 on t1."mã trường" = t2."mã trường"  group by t1."mã trường"  having count(*) < 5
select "mã khoá học", count(*) from "lớp học" group by "mã khoá học"
select count(*), "mã khoá học" from "lớp học" as t1 join "khoá học" as t2 on t1."mã khoá học" = t2."mã khoá học" group by t1."mã khoá học"
select sum(t1."số lượng tín chỉ của khoá học"), t2."tên khoa"  from "khoá học" as t1  join "khoa" as t2 on t1."mã khoa" = t2."mã khoa"  group by t2."tên khoa"
select sum(số lượng tín chỉ của khoá học), mã khoa from khoá học group by mã khoa
select count(*), phòng học from lớp học group by phòng học having count(*) >= 2
select phòng học , count(*) from lớp học group by phòng học having count(*) >= 2
select "mã khoa", count(*) from "lớp học" as t1 join "khoa" as t2 on t1."mã khoa" = t2."mã khoa" group by t1."mã khoa"
select count(*), t1."mã khoa"  from "lớp học" as t1  join "khoa" as t2 on t1."mã khoa" = t2."mã khoa"  group by t1."mã khoa"
select mã khoa , count ( * ) from lớp học group by mã khoa
select "mã khoa", count(*) from "lớp học" group by "mã khoa"
select count(distinct "mã số nhân viên"), "mã trường" from "giáo sư" as t1 join "khoa" as t2 on t1."mã trường" = t2."mã trường" group by "mã trường"
select count(distinct mã số nhân viên), mã trường from giáo sư group by mã trường
select "mã công việc của nhân viên", count(*)  from "nhân viên" as t1  join "giáo sư" as t2 on t1."mã số nhân viên" = t2."mã số nhân viên"  group by t2."mã công việc của nhân viên"  order by count(*) desc  limit 1
select "mã công việc của nhân viên", count(*) from "nhân viên" group by "mã công việc của nhân viên" order by count(*) desc limit 1
select t1."mã trường" from "khoa" as t1 join "giáo sư" as t2 on t1."mã trường" = t2."mã trường" group by t1."mã trường" order by count(*) asc limit 1
select t1."mã trường", count(*)  from "khoa" as t1  join "giáo sư" as t2 on t1."mã trường" = t2."mã trường"  group by t1."mã trường"  order by count(*)  limit 1
select "mã khoa", count(*)  from "giáo sư"  where "bằng cấp cao nhất" = 'Tiến sĩ'  group by "mã khoa"
select count(*), t1."mã khoa"  from "giáo sư" as t1  join "khoa" as t2 on t1."mã khoa" = t2."mã khoa"  where t1."bằng cấp cao nhất" = 'Tiến sĩ'  group by t1."mã khoa"
select "mã khoa", count(*) from "khoa" as t1 join "sinh viên" as t2 on t1."mã khoa" = t2."mã khoa" group by t1."mã khoa"
select count(*), t1."mã khoa"  from "sinh viên" as t1  join "khoa" as t2 on t1."mã khoa" = t2."mã khoa"  group by t1."mã khoa"
select sum(giờ học của sinh viên), tên khoa  from sinh viên as t1  join khoa as t2 on t1.mã khoa = t2.mã khoa  group by tên khoa
select sum(giờ học của sinh viên), mã khoa  from sinh viên  group by mã khoa
select t1.mã khoa , avg ( t1.gpa của sinh viên ) , max ( t1.gpa của sinh viên ) , min ( t1.gpa của sinh viên )  from sinh viên as t1  join khoa as t2 on t1.mã khoa = t2.mã khoa  group by t1.mã khoa  order by max ( t1.gpa của sinh viên ) , min ( t1.gpa của sinh viên )
select t1.mã khoa , max ( t1.gpa của sinh viên ) , min ( t1.gpa của sinh viên ) , avg ( t1.gpa của sinh viên )  from sinh viên as t1  join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên  group by t1.mã khoa
select tên khoa , avg ( gpa của sinh viên ) from sinh viên group by tên khoa order by avg ( gpa của sinh viên ) desc limit 1
select "mã khoa", avg("gpa của sinh viên") from "sinh viên" group by "mã khoa" order by avg("gpa của sinh viên") desc limit 1
select count(*) from khoa
select count(distinct "mã trường") from "khoa"
select count(distinct "mã lớp học") from "lớp học"
select count(distinct "mã lớp học") from "lớp học"
select count(*) from "khoá học"
select count(distinct "mã khoá học") from "khoá học"
select count(*) from khoa
select count(distinct "mã khoa") from "khoa"
select count(*) from khoá học as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa where t2.tên khoa = "Computer Science"
select count(*) from khoa as t1 join khoá học as t2 on t1.mã khoa = t2.mã khoa where t1.tên khoa = "Computer Systems"
select count(*) from "lớp học" where "mã khoá học" = 'ACCT-211'
select count(distinct lớp học phần) from lớp học where mã khoá học = "ACCT-211"
select sum("số lượng tín chỉ của khoá học") from "khoá học" group by "mã khoa"
select sum("số lượng tín chỉ của khoá học") from "khoá học" group by "mã khoa"
select t1."tên khoa" from "khoa" as t1 join "khoá học" as t2 on t1."mã khoa" = t2."mã khoa" group by t2."mã khoa" order by sum(t2."số lượng tín chỉ của khoá học") desc limit 1
select "mã khoa" from "khoá học" group by "mã khoa" order by sum("số lượng tín chỉ của khoá học") desc limit 1
select count(*) from "đăng ký khoá học" as t1 join "sinh viên" as t2 on t1."mã số sinh viên" = t2."mã số sinh viên" where t1."mã khoá học" = 'ACCT-211'
select count(*) from "đăng ký khoá học" as t1 join "sinh viên" as t2 on t1."mã số sinh viên" = t2."mã số sinh viên" where t1."mã khoá học" = 'ACCT-211' group by t1."mã số sinh viên"
select t1.tên của sinh viên from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên where t2.mã khoá học = "ACCT-211"
select t1.tên của sinh viên from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên where t2.mã khoá học = "ACCT-211"
select t1.tên của sinh viên from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên where t2.mã khoá học = "ACCT-211" and t2.điểm số = "C"
select t1.tên của sinh viên from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên where t2.mã khoá học = "ACCT-211" and t2.điểm số = "C"
select "số lượng nhân viên" from "nhân viên"
select count(*) from "nhân viên"
select count(*) from giáo sư where bằng cấp cao nhất = "Tiến sĩ"
select count(mã số nhân viên) from giáo sư where bằng cấp cao nhất = 'Tiến sĩ'
select count(distinct t1."mã số sinh viên")  from "lớp học" as t2  join "khoa" as t3 on t2."mã khoa" = t3."mã khoa"  join "giáo sư" as t4 on t2."mã số nhân viên của giáo sư" = t4."mã số nhân viên"  join "sinh viên" as t1 on t1."mã lớp học" = t2."mã lớp học"  where t3."tên khoa" = 'Accounting'
select count(*)  from "lớp học" as t1  join "khoa" as t2 on t1."mã khoa" = t2."mã khoa"  join "giáo sư" as t3 on t1."mã số nhân viên của giáo sư" = t3."mã số nhân viên"  join "sinh viên" as t4 on t4."mã lớp học" = t1."mã lớp học"  where t2."tên khoa" = 'Kế toán'
select t1."tên khoa" from "khoa" as t1 join "sinh viên" as t2 on t1."mã khoa" = t2."mã khoa" group by t2."mã khoa" order by count(*) desc limit 1
select t1."mã khoa", count(*)  from "sinh viên" as t1  join "khoa" as t2 on t1."mã khoa" = t2."mã khoa"  group by t1."mã khoa"  order by count(*) desc  limit 1
select tên khoa from khoa order by tên khoa asc
select tên khoa from khoa order by tên khoa
select "mã khoá học" from "lớp học" where "phòng học" = 'KLR 209'
select t1."mã khoá học"  from "lớp học" as t2  join "khoá học" as t1 on t2."mã khoá học" = t1."mã khoá học"  where t2."phòng học" = 'KLR 209'
select tên của nhân viên from nhân viên where mã công việc của nhân viên = 'Giáo sư' order by ngày sinh của nhân viên
select tên của nhân viên from nhân viên where mã công việc của nhân viên = "Giáo sư" order by ngày sinh của nhân viên limit 1
select tên của giáo sư , văn phòng giáo sư from giáo sư order by tên của giáo sư asc
select tên của giáo sư , văn phòng giáo sư from giáo sư order by tên của giáo sư
select "họ của nhân viên", "tên của nhân viên" from "nhân viên" order by "ngày sinh của nhân viên" desc limit 1
select "họ của nhân viên", "tên của nhân viên" from "nhân viên" order by "ngày sinh của nhân viên" limit 1
select tên của sinh viên , họ của sinh viên , gpa của sinh viên from sinh viên where gpa của sinh viên > 3 order by gpa của sinh viên limit 1
select tên của sinh viên , họ của sinh viên , gpa của sinh viên from sinh viên where gpa của sinh viên > 3 order by gpa của sinh viên limit 1
select t1.tên của sinh viên from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên where t2.điểm số = "C"
select t1.tên của sinh viên from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên where t2.điểm số = "C"
select t1."tên khoa" from "khoa" as t1 join "giáo sư" as t2 on t1."mã khoa" = t2."mã khoa" group by t2."mã khoa" order by count(*) desc limit 1
select t1."tên khoa" from "khoa" as t1 join "giáo sư" as t2 on t1."mã khoa" = t2."mã khoa" group by t1."tên khoa" order by count(*) limit 1
select t1."mã khoa", count(*)  from "giáo sư" as t1  join "khoa" as t2 on t1."mã khoa" = t2."mã khoa"  where t1."bằng cấp cao nhất" = 'Ph.D.'  group by t1."mã khoa"  order by count(*) desc  limit 1
select t1."mã khoa", count(*)  from "giáo sư" as t1  join "khoa" as t2 on t1."mã khoa" = t2."mã khoa"  where t1."bằng cấp cao nhất" = 'Ph.D.'  group by t1."mã khoa"  order by count(*) desc  limit 1
select tên của nhân viên from giáo sư except select t1.tên của nhân viên from giáo sư as t1 join lớp học as t2 on t1.mã số nhân viên = t2.mã số nhân viên
select tên của nhân viên from giáo sư except select t2.tên của nhân viên from giáo sư as t1 join đăng ký khoá học as t2 on t1.mã số nhân viên = t2.mã số giáo sư
select t1.tên của nhân viên from giáo sư as t1 join lớp học as t2 on t1.mã số nhân viên = t2.mã số nhân viên where t1.mã khoa = "History" and t2.mã lớp học is null
select tên của nhân viên from giáo sư where mã khoa = "History" and mã số nhân viên not in (select mã số nhân viên from đăng ký khoá học)
select họ của giáo sư , văn phòng giáo sư from giáo sư where mã khoa = ( select mã khoa from khoa where tên khoa = "History" )
select t1.họ của nhân viên , t1.văn phòng giáo sư from giáo sư as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa where t2.tên khoa = "History"
select t2.văn phòng giáo sư , t1.mã khoa  from giáo sư as t1  join khoa as t2  on t1.mã khoa = t2.mã khoa  where t1.họ của nhân viên = "Heffington"
select t1.mã khoa , t1.văn phòng giáo sư from giáo sư as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa where t1.họ của nhân viên = "Heffington"
select họ của nhân viên , ngày bắt đầu công việc của nhân viên from giáo sư where văn phòng giáo sư = "DRE 102"
select t1.họ của nhân viên , t1.ngày bắt đầu công việc của nhân viên  from giáo sư as t1  join lớp học as t2 on t1.mã số nhân viên = t2.mã số nhân viên  where t2.văn phòng giáo sư = "DRE 102"
select distinct t2."mã khoá học"  from "sinh viên" as t1  join "đăng ký khoá học" as t2  on t1."mã số sinh viên" = t2."mã số sinh viên"  where t1."họ của sinh viên" = 'Smithson'
select t2."mã khoá học"  from "sinh viên" as t1  join "đăng ký khoá học" as t2  on t1."mã số sinh viên" = t2."mã số sinh viên"  where t1."họ của sinh viên" = 'Smithson'
select t1."mô tả về khoá học", count(t1."số lượng tín chỉ của khoá học")  from "khoá học" as t1  join "đăng ký khoá học" as t2 on t1."mã khoá học" = t2."mã khoá học"  join "sinh viên" as t3 on t2."mã số sinh viên" = t3."mã số sinh viên"  where t3."họ của sinh viên" = 'Smithson'  group by t1."mã khoá học"
select t1."mô tả về khoá học", count(t1."mô tả về khoá học")  from "khoá học" as t1  join "đăng ký khoá học" as t2 on t1."mã khoá học" = t2."mã khoá học"  join "sinh viên" as t3 on t3."mã số sinh viên" = t2."mã số sinh viên"  where t3."họ của sinh viên" = 'Smithson'  group by t1."mô tả về khoá học"
select count(*) from giáo sư where bằng cấp cao nhất = "Tiến sĩ" or bằng cấp cao nhất = "Thạc sĩ"
select count(*) from giáo sư where bằng cấp cao nhất = "Tiến sĩ" or bằng cấp cao nhất = "Thạc sĩ"
select count(*)  from giáo sư as t1  join khoa as t2 on t1.mã khoa = t2.mã khoa  where t2.tên khoa = "Accounting" or t2.tên khoa = "Sinh học"
select count(*) from giáo sư where mã khoa = "Computer Science" or mã khoa = "Sinh học"
select t2.tên của giáo sư  from lớp học as t1  join giáo sư as t2 on t1.mã số nhân viên của giáo sư = t2.mã số nhân viên  join khoá học as t3 on t1.mã khoá học = t3.mã khoá học  where t3.mã khoá học = 'CIS-220' and t1.lớp học phần = 'QM-261'
select distinct t3.tên của nhân viên  from lớp học as t1  join khoá học as t2 on t1.mã khoá học = t2.mã khoá học  join giáo sư as t3 on t1.mã số nhân viên của giáo sư = t3.mã số nhân viên  where t2.mã khoá học = 'CIS-220' and t2.mã khoá học = 'QM-261'
select t1.tên của sinh viên from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên where t2.mã khoa = "Computer Science" intersect select t1.tên của sinh viên from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên where t2.mã khoa = "Information Systems"
select t1.tên của sinh viên from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên where t2.mã khoa = "Computer Science" intersect select t1.tên của sinh viên from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên where t2.mã khoa = "Information Systems"
select avg(t1.gpa của sinh viên)  from sinh viên as t1  join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên  where t2.mã khoá học = "ACCT-211"
select avg(t1.gpa của sinh viên)  from sinh viên as t1  join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên  where t2.mã khoá học = "ACCT-211"
select tên của sinh viên , gpa của sinh viên , số điện thoại của sinh viên from sinh viên order by gpa của sinh viên desc limit 5
select tên của sinh viên , gpa của sinh viên , số điện thoại của sinh viên from sinh viên group by tên của sinh viên order by gpa của sinh viên desc limit 5
select t1."mã khoa", min(t2."điểm số")  from "sinh viên" as t1  join "đăng ký khoá học" as t2 on t1."mã số sinh viên" = t2."mã số sinh viên"  group by t1."mã khoa"
select t1."mã khoa", avg(t1."gpa của sinh viên")  from "sinh viên" as t1  join "đăng ký khoá học" as t2 on t1."mã số sinh viên" = t2."mã số sinh viên"  group by t1."mã khoa"  order by avg(t1."gpa của sinh viên")  limit 1
select tên của sinh viên , gpa của sinh viên from sinh viên where gpa của sinh viên < ( select avg( gpa của sinh viên ) from sinh viên )
select tên của sinh viên , gpa của sinh viên from sinh viên where gpa của sinh viên < ( select avg ( gpa của sinh viên ) from sinh viên )
select t1.tên khoa , t1.địa chỉ khoa from khoa as t1 join sinh viên as t2 on t1.mã khoa = t2.mã khoa group by t2.mã khoa order by count ( * ) desc limit 1
select t1.tên khoa , t1.địa chỉ khoa from khoa as t1 join sinh viên as t2 on t1.mã khoa = t2.mã khoa group by t1.tên khoa order by count ( * ) desc limit 1
select t1.tên khoa , t1.địa chỉ khoa , t1.số lượng nhân viên  from khoa as t1  join sinh viên as t2 on t1.mã khoa = t2.mã khoa  group by t2.mã khoa  order by count(*) desc  limit 3
select t1.tên khoa , t1.địa chỉ khoa , count ( * ) from khoa as t1 join sinh viên as t2 on t1.mã khoa = t2.mã khoa group by t1.mã khoa order by count ( * ) desc limit 3
select t2.tên khoa , t1.văn phòng giáo sư  from giáo sư as t1  join khoa as t2  on t1.mã khoa = t2.mã khoa  where t2.tên khoa = "History" and t1.bằng cấp cao nhất = "Ph.D."
select tên của giáo sư , văn phòng giáo sư from giáo sư where mã khoa = "History" and bằng cấp cao nhất = "Ph.D."
select t1.tên của giảng viên , t2.mã khoá học  from giáo sư as t1  join lớp học as t2  on t1.mã số nhân viên = t2.mã số nhân viên của giáo sư
select t1.tên của nhân viên , t2.mã khoá học  from giáo sư as t1  join lớp học as t2  on t1.mã số nhân viên = t2.mã số nhân viên của giáo sư  where t2.lớp học phần = "Fall"
select t1.tên của giáo sư , t2.mô tả về khoá học  from giáo sư as t1  join lớp học as t2  on t1.mã số nhân viên của giáo sư = t2.mã số nhân viên của giáo sư
select t1.tên của nhân viên , t2.mô tả về khoá học  from giáo sư as t1  join lớp học as t2  on t1.mã số nhân viên = t2.mã số nhân viên của giáo sư  where t2.mã lớp học in ( select mã lớp học from đăng ký khoá học )
select t1.tên của giáo sư , t1.văn phòng giáo sư , t2.mô tả về khoá học  from giáo sư as t1  join khoá học as t2  on t1.mã khoá học = t2.mã khoá học
select t1.tên của giáo sư , t1.văn phòng giáo sư , t2.mô tả về khoá học  from giáo sư as t1  join đăng ký khoá học as t2  on t1.mã số nhân viên = t2.mã số nhân viên  where t2.mã số nhân viên in ( select mã số nhân viên from giáo sư )
select t1.tên của giáo sư , t1.văn phòng giáo sư , t2.mô tả về khoá học , t2.mã khoa  from giáo sư as t1  join khoá học as t2  on t1.mã số nhân viên = t2.mã số nhân viên
select t1.tên của giáo sư , t1.văn phòng giáo sư , t2.mô tả về khoá học , t1.mã khoa from giáo sư as t1 join khoá học as t2 on t1.mã khoa = t2.mã khoá học
select t1.tên của sinh viên , t1.họ của sinh viên , t2.mô tả về khoá học  from sinh viên as t1  join đăng ký khoá học as t2  on t1.mã số sinh viên = t2.mã số sinh viên  join khoá học as t3  on t2.mã khoá học = t3.mã khoá học
select distinct t1.tên của sinh viên , t1.họ của sinh viên , t2.mô tả về khoá học  from sinh viên as t1  join đăng ký khoá học as t2  on t1.mã số sinh viên = t2.mã số sinh viên  group by t1.mã số sinh viên
select t1.tên của sinh viên from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên where t2.điểm số = "A" or t2.điểm số = "C"
select t1.tên của sinh viên from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên where t2.điểm số = "A" or t2.điểm số = "C"
select t1.tên của giáo sư , t2.phòng học  from giáo sư as t1  join lớp học as t2  on t1.mã số nhân viên của giáo sư = t2.mã số nhân viên của giáo sư  where t1.mã khoa = "ACCT" and t2.lớp học phần = "Y"
select t1.tên khoa, t2.tên của giáo sư, t3.phòng học  from khoa as t1  join giáo sư as t2 on t1.mã khoa = t2.mã khoa  join lớp học as t3 on t3.mã lớp học = t2.mã lớp học  where t1.tên khoa = "Accounting"
select t1.tên của giáo sư , t1.bằng cấp cao nhất  from giáo sư as t1  join lớp học as t2 on t1.mã số nhân viên = t2.mã số nhân viên của giáo sư  where t2.mã khoa = 'Computer Science'
select tên của giáo sư , bằng cấp cao nhất from giáo sư where mã khoa = "Computer Science"
select t1.họ của sinh viên from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên where t2.điểm số = "A" and t2.mã lớp = "10018"
select t1.họ của sinh viên from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên where t2.điểm số = "A" and t2.mã lớp = "10018"
select tên khoa , văn phòng giáo sư from giáo sư join khoa on giáo sư . mã khoa = khoa . mã khoa where tên khoa = "History" and bằng cấp cao nhất != "Ph.D."
select tên của giáo sư , văn phòng giáo sư from giáo sư where mã khoa = "History" and bằng cấp cao nhất != "Ph.D."
select t1.tên của nhân viên from giáo sư as t1 join lớp học as t2 on t1.mã số nhân viên của giáo sư = t2.mã số nhân viên group by t1.mã số nhân viên having count(*) > 1
select t1.tên của nhân viên from nhân viên as t1 join lớp học as t2 on t1.mã số nhân viên = t2.mã số nhân viên group by t1.mã số nhân viên having count(*) > 1
select t1.tên của sinh viên from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên group by t1.mã số sinh viên having count(*) = 1
select t1.tên của sinh viên from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên group by t1.mã số sinh viên having count(*) = 1
select t1."tên khoa" from "khoa" as t1 join "khoá học" as t2 on t1."mã khoa" = t2."mã khoa" where t2."mô tả về khoá học" like '%Statistics%'
select t1."tên khoa" from "khoa" as t1 join "khoá học" as t2 on t1."mã khoa" = t2."mã khoa" where t2."mô tả về khoá học" like '%Statistics%'
select t1.tên của sinh viên from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên where t1.chữ cái đầu của tên sinh viên = "S" and t2.mã khoá học = "ACCT-211"
select t1.tên của sinh viên from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên where t1.chữ cái đầu của tên sinh viên = "S" and t2.mã khoá học = "ACCT-211"
select "mã trạng thái tài liệu" from "trạng thái của tài liệu"
select "mô tả về trạng thái tài liệu" from "tài liệu" where "mã trạng thái tài liệu" = 'đang được xử lý'
select "mã loại tài liệu" from "loại tài liệu"
select t2."mô tả về loại tài liệu"  from "tài liệu" as t1  join "loại tài liệu" as t2  on t1."mã loại tài liệu" = t2."mã loại tài liệu"  where t1."mã loại tài liệu" = 'Letter'
select "tên đại lý vận chuyển" from "đại lý vận chuyển tài liệu"
select "mã đại lý vận chuyển" from "đại lý vận chuyển tài liệu" where "tên đại lý vận chuyển" = 'UPS'
select "mã vai trò" from "vai trò"
select "mô tả về vai trò" from "vai trò" where "mã vai trò" = 'ED'
select count(*) from nhân viên
select t2."mô tả về vai trò" from "nhân viên" as t1 join "vai trò" as t2 on t1."mã vai trò" = t2."mã vai trò" where t1."tên nhân viên" = 'Koby'
select id tài liệu , ngày lập biên lai from tài liệu
select "mô tả về vai trò", "id vai trò", count(*)  from "vai trò" as t1  join "nhân viên" as t2 on t1."mã vai trò" = t2."mã vai trò"  group by t1."mã vai trò"
select "mô tả về vai trò", count(*)  from "vai trò" as t1  join "nhân viên" as t2 on t1."mã vai trò" = t2."mã vai trò"  group by t2."mã vai trò"  having count(*) > 1
select "mô tả về trạng thái tài liệu" from "trạng thái của tài liệu" where "id tài liệu" = 1
select count(*) from tài liệu where "mã trạng thái tài liệu" = 'Đã được hoàn thành'
select "mã loại tài liệu" from "tài liệu" where "id tài liệu" = 2
select "id tài liệu" from "tài liệu" where "mã trạng thái tài liệu" = 'Đã được hoàn thành' and "mã loại tài liệu" = 'Giấy'
select t2."tên đại lý vận chuyển"  from "đại lý vận chuyển tài liệu" as t2  join "tài liệu" as t1 on t2."mã đại lý vận chuyển" = t1."mã đại lý vận chuyển"  where t1."id tài liệu" = 2
select count(*) from tài liệu as t  join đại lý vận chuyển tài liệu as dl  on t.mã đại lý vận chuyển = dl.mã đại lý vận chuyển  where dl.tên đại lý vận chuyển = "USPS"
select t2."tên đại lý vận chuyển", count(*)  from "đại lý vận chuyển tài liệu" as t2  join "tài liệu" as t1 on t2."mã đại lý vận chuyển" = t1."mã đại lý vận chuyển"  group by t1."mã đại lý vận chuyển"  order by count(*) desc  limit 1
select "ngày lập biên lai" from "tài liệu" where "id tài liệu" = 3
select t2.chi tiết địa chỉ  from tài liệu được gửi as t1  join địa chỉ as t2  on t1.gửi đến địa chỉ có id = t2.id địa chỉ  where t1.id tài liệu = 4
select ngày gửi from tài liệu được gửi where id tài liệu = 7
select t1."id tài liệu"  from "tài liệu" as t1  join "trạng thái của tài liệu" as t2 on t1."mã trạng thái tài liệu" = t2."mã trạng thái tài liệu"  join "loại tài liệu" as t3 on t1."mã loại tài liệu" = t3."mã loại tài liệu"  join "đại lý vận chuyển tài liệu" as t4 on t1."mã đại lý vận chuyển" = t4."mã đại lý vận chuyển"  where t2."mô tả về trạng thái tài liệu" = 'Đã được hoàn thành' and t3."mô tả về loại tài liệu" = 'Giấy' and t4."tên đại lý vận chuyển" != 'USPS'
select t1."id tài liệu"  from "tài liệu" as t1  join "trạng thái của tài liệu" as t2 on t1."mã trạng thái tài liệu" = t2."mã trạng thái tài liệu"  join "loại tài liệu" as t3 on t1."mã loại tài liệu" = t3."mã loại tài liệu"  join "đại lý vận chuyển tài liệu" as t4 on t1."mã đại lý vận chuyển" = t4."mã đại lý vận chuyển"  join "lịch sử lưu hành" as t5 on t1."id tài liệu" = t5."id tài liệu"  where t2."mô tả về trạng thái tài liệu" = 'Đã được hoàn thành' and t3."mô tả về loại tài liệu" = 'Giấy' and t4."tên đại lý vận chuyển" = 'USPS'
select chi tiết dự thảo from bản dự thảo của tài liệu where id tài liệu = 7
select count(*) from bản sao where id tài liệu = 2
select t1."id tài liệu", count(*)  from "tài liệu" as t1  join "bản sao" as t2 on t1."id tài liệu" = t2."id tài liệu"  group by t1."id tài liệu"  order by count(*) desc  limit 1
select t1."id tài liệu", count(*)  from "tài liệu" as t1  join "bản sao" as t2 on t1."id tài liệu" = t2."id tài liệu"  group by t1."id tài liệu"  having count(*) > 1
select distinct t2.tên nhân viên from lịch sử lưu hành as t1 join nhân viên as t2 on t1.id nhân viên = t2.id nhân viên where t1.id tài liệu = 1
select tên nhân viên from nhân viên where id nhân viên not in (select id nhân viên from lịch sử lưu hành)
select t1.tên nhân viên , count ( * ) from lịch sử lưu hành as t2 join nhân viên as t1 on t2.id nhân viên = t1.id nhân viên group by t2.id nhân viên order by count ( * ) desc limit 1
select t1."id tài liệu", count(t2."id nhân viên")  from "lịch sử lưu hành" as t1  join "tài liệu" as t2 on t1."id tài liệu" = t2."id tài liệu"  group by t1."id tài liệu"
select count(*) from "lượt đặt hàng"
select count(*) from lượt đặt hàng where mã trạng thái = "Đã đặt hàng"
select ngày đặt hàng from lượt đặt hàng
select ngày đặt hàng from lượt đặt hàng
select
select "ngày giao hàng theo kế hoạch", "ngày giao hàng thực tế" from "lượt đặt hàng"
select count(*) from khách hàng
select count(distinct t1."id khách hàng") from "khách hàng" as t1 join "lượt đặt hàng của khách hàng" as t2 on t1."id khách hàng" = t2."id khách hàng"
select số điện thoại khách hàng , địa chỉ email khách hàng from khách hàng where tên khách hàng = "Harold"
select địa chỉ email khách hàng , số điện thoại khách hàng from khách hàng where tên khách hàng = "Harold"
select t1.tên cửa hàng from cửa hàng as t1 join nhóm hội thảo kịch as t2 on t1.id cửa hàng = t2.id cửa hàng
select t1.tên cửa hàng from cửa hàng as t1 join nhóm hội thảo kịch as t2 on t1.id cửa hàng = t2.id cửa hàng
select min(số lượng đặt hàng), avg(số lượng đặt hàng), max(số lượng đặt hàng) from hoá đơn group by id hoá đơn
select min(t1.số lượng đặt hàng), avg(t1.số lượng đặt hàng), max(t1.số lượng đặt hàng) from mặt hàng trong hoá đơn as t1 group by t1.id hoá đơn
select "mã phương thức thanh toán", count(*)  from "hoá đơn" as t1  join "phương thức thanh toán" as t2  on t1."mã phương thức thanh toán" = t2."mã phương thức thanh toán"  group by t1."mã phương thức thanh toán"
select distinct t1."mã phương thức thanh toán" from "phương thức thanh toán" as t1 join "hoá đơn" as t2 on t1."mã phương thức thanh toán" = t2."mã phương thức thanh toán" group by t1."mã phương thức thanh toán"
select "mô tả về khu vực tiếp thị" from "khu vực tiếp thị" where "tên khu vực tiếp thị" = 'Trung Quốc'
select "mô tả về khu vực tiếp thị" from "khu vực tiếp thị" where "tên khu vực tiếp thị" = 'Trung Quốc'
select distinct tên sản phẩm from các sản phẩm where giá sản phẩm > ( select avg ( giá sản phẩm ) from các sản phẩm )
select tên sản phẩm from các sản phẩm where giá sản phẩm > ( select avg(giá sản phẩm) from các sản phẩm )
select tên sản phẩm from các sản phẩm where giá sản phẩm = ( select max ( giá sản phẩm ) from các sản phẩm ) group by tên sản phẩm order by giá sản phẩm desc
select "tên sản phẩm" from "các sản phẩm" order by "giá sản phẩm" desc limit 1
select "tên sản phẩm" from "các sản phẩm" order by "giá sản phẩm" asc
select "tên sản phẩm" from "các sản phẩm" order by "giá sản phẩm" asc
select số điện thoại khách hàng from khách hàng where tên khách hàng = "Ashley"
select số điện thoại khách hàng from khách hàng where tên khách hàng = "Ashley"
select t1."mã phương thức thanh toán", count(*)  from "lượt đặt hàng" as t1  join "phương thức thanh toán" as t2  on t1."mã phương thức thanh toán" = t2."mã phương thức thanh toán"  group by t1."mã phương thức thanh toán"
select t1."mã phương thức thanh toán", count(*)  from "lượt đặt hàng" as t2  join "phương thức thanh toán" as t1  on t2."mã phương thức thanh toán" = t1."mã phương thức thanh toán"  group by t1."mã phương thức thanh toán"
select t1."mã phương thức thanh toán"  from "lượt đặt hàng" as t2  join "phương thức thanh toán" as t1  on t2."mã phương thức thanh toán" = t1."mã phương thức thanh toán"  group by t1."mã phương thức thanh toán"  order by count(*) desc  limit 1
select t1."mã phương thức thanh toán"  from "hoá đơn" as t1  join "phương thức thanh toán" as t2  on t1."mã phương thức thanh toán" = t2."mã phương thức thanh toán"  group by t1."mã phương thức thanh toán"  order by count(*) desc  limit 1
select distinct t2."thành phố thị trấn"  from "cửa hàng" as t1  join "địa chỉ" as t2 on t1."id địa chỉ" = t2."id địa chỉ"  where t1."tên cửa hàng" = 'FJM Filming'
select t2.thành phố thị trấn from cửa hàng as t1 join địa chỉ as t2 on t1.id địa chỉ = t2.id địa chỉ where t1.tên cửa hàng = "FJA Filming"
select t2.quận hạt from địa chỉ as t1 join cửa hàng as t2 on t1.id địa chỉ = t2.id địa chỉ where t2.mã khu vực tiếp thị = "CA"
select t1.quận hạt from địa chỉ as t1 join cửa hàng as t2 on t1.id địa chỉ = t2.id địa chỉ where t2.mã khu vực tiếp thị = "CA"
select t2."mã khu vực tiếp thị", t2."tên khu vực tiếp thị"  from "cửa hàng" as t1  join "khu vực tiếp thị" as t2  on t1."mã khu vực tiếp thị" = t2."mã khu vực tiếp thị"  where t1."tên cửa hàng" = 'Rob Dinning'
select t1."mã khu vực tiếp thị"  from "cửa hàng" as t1  join "khu vực tiếp thị" as t2  on t1."mã khu vực tiếp thị" = t2."mã khu vực tiếp thị"  where t1."tên cửa hàng" = 'Rob Dinning'
select t2."mô tả về loại dịch vụ"  from "loại dịch vụ" as t2  join "các sản phẩm" as t1 on t2."mã loại dịch vụ" = t1."mã loại dịch vụ"  where t1."giá sản phẩm" > 100
select "mô tả về loại dịch vụ" from "loại dịch vụ" where "giá sản phẩm" > 100
select "mô tả về loại dịch vụ", "mã loại dịch vụ", count(*) from "loại dịch vụ" group by "mã loại dịch vụ"
select "mô tả về loại dịch vụ", "mã loại dịch vụ", count(*) from "loại dịch vụ" group by "mã loại dịch vụ"
select t2."mô tả về loại dịch vụ", t1."mã loại dịch vụ"  from "loại dịch vụ" as t1  join "dịch vụ" as t2  on t1."mã loại dịch vụ" = t2."mã loại dịch vụ"  group by t1."mã loại dịch vụ"  order by count(*) desc  limit 1
select t2."mô tả về loại dịch vụ", t1."mã loại dịch vụ"  from "dịch vụ" as t1  join "loại dịch vụ" as t2  on t1."mã loại dịch vụ" = t2."mã loại dịch vụ"  group by t1."mã loại dịch vụ"  order by count(*) desc  limit 1
select t1.số điện thoại cửa hàng , t1.địa chỉ email cửa hàng  from nhóm hội thảo kịch as t1  join dịch vụ as t2 on t1.id nhóm hội thảo kịch = t2.id nhóm hội thảo kịch
select t1."địa chỉ email cửa hàng", t1."số điện thoại cửa hàng"  from "nhóm hội thảo kịch" as t1  join "dịch vụ" as t2 on t1."id nhóm hội thảo kịch" = t2."id nhóm hội thảo kịch"
select t1.số điện thoại cửa hàng , t1.địa chỉ email cửa hàng  from nhóm hội thảo kịch as t1  join dịch vụ as t2 on t1.id nhóm hội thảo kịch = t2.id nhóm hội thảo kịch  join các sản phẩm as t3 on t2.id sản phẩm = t3.id sản phẩm  where t3.tên sản phẩm = "phim"
select distinct t1."id nhóm hội thảo kịch"  from "dịch vụ" as t2  join "các sản phẩm" as t1 on t2."id sản phẩm" = t1."id sản phẩm"  where t1."tên sản phẩm" = 'phim'
select tên sản phẩm , avg ( giá sản phẩm ) from các sản phẩm group by tên sản phẩm
select tên sản phẩm , avg ( giá sản phẩm ) from các sản phẩm group by tên sản phẩm
select tên sản phẩm from các sản phẩm where giá sản phẩm < 1000000
select "tên sản phẩm" from "các sản phẩm" where "giá sản phẩm" < 1000000
select sum(t2.số lượng đặt hàng)  from dịch vụ as t1  join các sản phẩm as t2 on t1.id sản phẩm = t2.id sản phẩm  where t1.mã loại dịch vụ = "Painting"
select sum(t1."số lượng đặt hàng")  from "dịch vụ đặt hàng" as t1  join "dịch vụ" as t2 on t1."id sản phẩm" = t2."id sản phẩm"  where t2."mã loại dịch vụ" = 'Pic'
select t2.chi tiết khác về dịch vụ sản phẩm  from các sản phẩm as t1  join dịch vụ đặt hàng as t2  on t1.id sản phẩm = t2.id sản phẩm  where t1.giá sản phẩm > 2000
select t1.chi tiết khác về dịch vụ sản phẩm  from các sản phẩm as t1  join dịch vụ đặt hàng as t2  on t1.id sản phẩm = t2.id sản phẩm  where t1.giá sản phẩm > 2000
select t1."ngày giao hàng thực tế"  from "lượt đặt hàng" as t1  join "mặt hàng được đặt" as t2 on t1."id đơn hàng" = t2."id đơn hàng"  where t2."số lượng đặt hàng" = 1
select t1."ngày giao hàng thực tế"  from "lượt đặt hàng" as t1  join "mặt hàng được đặt" as t2 on t1."id đơn hàng" = t2."id đơn hàng"  where t2."số lượng đặt hàng" = 1
select t1."ngày đặt hàng"  from "lượt đặt hàng" as t1  join "mặt hàng được đặt" as t2 on t1."id đơn hàng" = t2."id đơn hàng"  where t2."giá sản phẩm" > 1000
select distinct t1."ngày đặt hàng" from "lượt đặt hàng" as t1 join "dịch vụ đặt hàng" as t2 on t1."id đơn hàng" = t2."id đơn hàng" where t2."giá sản phẩm" > 1000
select count(distinct "mã tiền tệ") from "nhóm hội thảo kịch"
select count(distinct "mã tiền tệ") from "nhóm hội thảo kịch"
select t1."tên cửa hàng"  from "nhóm hội thảo kịch" as t1  join "địa chỉ" as t2 on t1."id địa chỉ" = t2."id địa chỉ"  where t2."thành phố thị trấn" = 'Feliciaberg'
select t1."tên cửa hàng" from "nhóm hội thảo kịch" as t1 join "địa chỉ" as t2 on t1."id địa chỉ" = t2."id địa chỉ" where t2."thành phố thị trấn" = 'Feliciaberg'
select t1."địa chỉ email cửa hàng"  from "nhóm hội thảo kịch" as t1  join "địa chỉ" as t2 on t1."id địa chỉ" = t2."id địa chỉ"  where t2."quận hạt" = 'Alaska'
select t1."địa chỉ email cửa hàng"  from "nhóm hội thảo kịch" as t1  join "khu vực tiếp thị" as t2 on t1."mã khu vực tiếp thị" = t2."mã khu vực tiếp thị"  where t2."tên khu vực tiếp thị" = 'Alaska'
select t1."thành phố thị trấn", count(*)  from "địa chỉ" as t1  join "nhóm hội thảo kịch" as t2  on t1."id địa chỉ" = t2."id địa chỉ"  group by t1."thành phố thị trấn"
select t2."thành phố thị trấn", count(*)  from "nhóm hội thảo kịch" as t1  join "địa chỉ" as t2 on t1."id địa chỉ" = t2."id địa chỉ"  group by t2."thành phố thị trấn"
select t1."mã khu vực tiếp thị"  from "khu vực tiếp thị" as t1  join "nhóm hội thảo kịch" as t2  on t1."id khu vực tiếp thị" = t2."mã khu vực tiếp thị"  group by t1."mã khu vực tiếp thị"  order by count(*) desc  limit 1
select t1."mã khu vực tiếp thị"  from "nhóm hội thảo kịch" as t2  join "khu vực tiếp thị" as t1  on t2."mã khu vực tiếp thị" = t1."id khu vực tiếp thị"  group by t1."mã khu vực tiếp thị"  order by count(*) desc  limit 1
select "thành phố thị trấn" from "địa chỉ" where "thành phố thị trấn" not in ( select "thành phố thị trấn" from "địa chỉ" as t1 join "người biểu diễn" as t2 on t1."id địa chỉ" = t2."id địa chỉ" ) group by "thành phố thị trấn" having count ( * ) >= 1
select "thành phố thị trấn" from "địa chỉ" where "thành phố thị trấn" not in ( select "thành phố thị trấn" from "địa chỉ" as t1 join "người biểu diễn" as t2 on t1."id địa chỉ" = t2."id địa chỉ" group by t1."thành phố thị trấn" having count(*) > 0 ) group by "thành phố thị trấn" having count(*) > 0
select mã trạng thái from lượt đặt hàng group by mã trạng thái order by count(*) desc limit 1
select "mã trạng thái" from "lượt đặt hàng" group by "mã trạng thái" order by count(*) desc limit 1
select t1."tên cửa hàng" from "lượt đặt hàng" as t2 join "nhóm hội thảo kịch" as t1 on t2."id nhóm hội thảo kịch" = t1."id nhóm hội thảo kịch" where t2."mã trạng thái" = 'dừng'
select t2.tên cửa hàng from lượt đặt hàng as t1 join nhóm hội thảo kịch as t2 on t1.id nhóm hội thảo kịch = t2.id nhóm hội thảo kịch where t1.mã trạng thái = "dừng"
select tên khách hàng from khách hàng except select t1.tên khách hàng from khách hàng as t1 join lượt đặt hàng as t2 on t1.id khách hàng = t2.id khách hàng
select "tên khách hàng" from "khách hàng" except select "tên khách hàng" from "lượt đặt hàng"
select avg(t1."số lượng đặt hàng")  from "hoá đơn" as t1  join "phương thức thanh toán" as t2  on t1."mã phương thức thanh toán" = t2."mã phương thức thanh toán"  where t2."mô tả về phương thức thanh toán" = 'Mastercard'
select avg(t1."số lượng đặt hàng") from "hoá đơn" as t1  join "phương thức thanh toán" as t2 on t1."mã phương thức thanh toán" = t2."mã phương thức thanh toán"  where t2."mô tả về phương thức thanh toán" = 'Mastercard'
select t1.id sản phẩm from mặt hàng được đặt as t1 join mặt hàng trong hoá đơn as t2 on t1.id mặt hàng được đặt = t2.id mặt hàng được đặt group by t1.id sản phẩm order by count(*) desc limit 1
select t1."id sản phẩm"  from "mặt hàng được đặt" as t1  join "mặt hàng trong hoá đơn" as t2 on t1."id mặt hàng được đặt" = t2."id mặt hàng được đặt"  group by t1."id sản phẩm"  order by count(*) desc  limit 1
select "mô tả về loại dịch vụ" from "loại dịch vụ" where "mã loại dịch vụ mẹ" != 'Pict'
select t1."mô tả về loại dịch vụ"  from "loại dịch vụ" as t1  join "dịch vụ đặt hàng" as t2 on t1."mã loại dịch vụ" = t2."mã loại dịch vụ"  join "các sản phẩm" as t3 on t2."id sản phẩm" = t3."id sản phẩm"  where t3."tên sản phẩm" = 'ảnh' or t3."tên sản phẩm" = 'phim'
select count(*) from "tài khoản"
select count(*) from tài khoản
select count(distinct "id khách hàng") from "khách hàng" as t1 join "tài khoản" as t2 on t1."id khách hàng" = t2."id khách hàng"
select count(distinct t1."tên khách hàng") from "khách hàng" as t1 join "tài khoản" as t2 on t1."id khách hàng" = t2."id khách hàng"
select "id tài khoản", "ngày mở tài khoản", "tên tài khoản", "chi tiết khác về tài khoản" from "tài khoản"
select "id tài khoản", "ngày mở tài khoản", "tên tài khoản", "chi tiết khác về tài khoản" from "tài khoản"
select t1."id tài khoản", t1."tên tài khoản", t1."ngày mở tài khoản", t1."chi tiết khác về tài khoản"  from "tài khoản" as t1  join "khách hàng" as t2 on t1."id khách hàng" = t2."id khách hàng"  where t2."tên khách hàng" = 'Mea Afghanistan'
select t1."id tài khoản", t1."tên tài khoản", t1."ngày mở tài khoản", t1."chi tiết khác về tài khoản"  from "tài khoản" as t1  join "khách hàng" as t2 on t1."id khách hàng" = t2."id khách hàng"  where t2."tên khách hàng" = 'Mea Afghanistan'
select t1."tên tài khoản", t1."chi tiết khác về tài khoản"  from "tài khoản" as t1  join "khách hàng" as t2 on t1."id khách hàng" = t2."id khách hàng"  where t2."tên khách hàng" = 'Mea Afghanistan' and t2."họ của khách hàng" = 'Keeling'
select t1."tên tài khoản", t1."chi tiết khác về tài khoản"  from "tài khoản" as t1  join "khách hàng" as t2 on t1."id khách hàng" = t2."id khách hàng"  where t2."tên khách hàng" = 'Mea Afghanistan Keeling'
select t1."tên khách hàng", t1."họ của khách hàng"  from "khách hàng" as t1  join "tài khoản" as t2 on t1."id khách hàng" = t2."id khách hàng"  where t2."tên tài khoản" = 900
select t1."tên khách hàng", t1."họ của khách hàng"  from "khách hàng" as t1  join "tài khoản" as t2 on t1."id khách hàng" = t2."id khách hàng"  where t2."tên tài khoản" = '900'
select count(*) from "khách hàng" except select count(*) from "tài khoản"
select count(*) from "khách hàng" where "id khách hàng" not in (select "id khách hàng" from "tài khoản")
select distinct t1."tên khách hàng", t1."họ của khách hàng", t1."số điện thoại"  from "khách hàng" as t1  join "tài khoản" as t2 on t1."id khách hàng" = t2."id khách hàng"
select distinct t1."tên khách hàng", t1."chữ cái đầu của tên đệm khách hàng", t1."họ của khách hàng", t1."số điện thoại"  from "khách hàng" as t1  join "tài khoản" as t2 on t1."id khách hàng" = t2."id khách hàng"
select "id khách hàng" from "khách hàng" except select "id khách hàng" from "tài khoản"
select "id khách hàng" from "khách hàng" where "id khách hàng" not in (select "id khách hàng" from "tài khoản")
select count(*), t1."id khách hàng"  from "tài khoản" as t1  join "khách hàng" as t2 on t1."id khách hàng" = t2."id khách hàng"  group by t1."id khách hàng"
select t1."id khách hàng", count(*)  from "khách hàng" as t1  join "tài khoản" as t2 on t1."id khách hàng" = t2."id khách hàng"  group by t1."id khách hàng"
select t1."tên khách hàng", t1."chữ cái đầu của tên đệm khách hàng", t1."id khách hàng"  from "khách hàng" as t1  join "tài khoản" as t2 on t1."id khách hàng" = t2."id khách hàng"  group by t2."id khách hàng"  order by count(*) desc  limit 1
select t1."id khách hàng", t1."tên khách hàng", t1."chữ cái đầu của tên đệm khách hàng", t1."họ của khách hàng"  from "khách hàng" as t1  join "tài khoản" as t2 on t1."id khách hàng" = t2."id khách hàng"  group by t1."id khách hàng"  order by count(*) desc  limit 1
select t1."id khách hàng", t1."tên khách hàng", t1."họ của khách hàng", count(*)  from "khách hàng" as t1  join "tài khoản" as t2 on t1."id khách hàng" = t2."id khách hàng"  group by t1."id khách hàng"
select t1."tên đầy đủ của khách hàng", t1."id khách hàng", count(*)  from "khách hàng" as t1  join "tài khoản" as t2 on t1."id khách hàng" = t2."id khách hàng"  group by t1."id khách hàng"
select t1."tên khách hàng", t1."id khách hàng"  from "khách hàng" as t1  join "tài khoản" as t2 on t1."id khách hàng" = t2."id khách hàng"  group by t1."id khách hàng"  having count(*) >= 2
select t1."tên khách hàng", t1."id khách hàng"  from "khách hàng" as t1  join "tài khoản" as t2 on t1."id khách hàng" = t2."id khách hàng"  group by t1."id khách hàng"  having count(*) > 1
select count(*) from "khách hàng"
select count(*) from "khách hàng"
select giới tính , count(*) from khách hàng group by giới tính
select giới tính , count(*) from khách hàng group by giới tính
select count(*) from giao dịch tài chính
select count(*) from giao dịch tài chính
select count(*), "id tài khoản" from "giao dịch tài chính" group by "id tài khoản"
select "id tài khoản", count(*) from "giao dịch tài chính" as t1 join "tài khoản" as t2 on t1."id tài khoản" = t2."id tài khoản" group by t1."id tài khoản"
select count(*) from giao dịch tài chính as t1 join tài khoản as t2 on t1.id tài khoản = t2.id tài khoản where t2.tên tài khoản = "337"
select count(*) from giao dịch tài chính as t1 join tài khoản as t2 on t1.id tài khoản = t2.id tài khoản where t2.tên tài khoản = "337"
select avg(số tiền giao dịch), min(số tiền giao dịch), max(số tiền giao dịch), sum(số tiền giao dịch) from giao dịch tài chính
select avg(số tiền giao dịch), min(số tiền giao dịch), max(số tiền giao dịch), sum(số tiền giao dịch) from giao dịch tài chính
select "id giao dịch" from "giao dịch tài chính" where "số tiền giao dịch" > (select avg("số tiền giao dịch") from "giao dịch tài chính")
select "id giao dịch" from "giao dịch tài chính" where "số tiền giao dịch" > (select avg("số tiền giao dịch") from "giao dịch tài chính")
select loại giao dịch , sum ( số tiền giao dịch ) from giao dịch tài chính group by loại giao dịch
select sum(số tiền giao dịch), loại giao dịch from giao dịch tài chính group by loại giao dịch
select t1."tên tài khoản", t1."id tài khoản", count(*)  from "tài khoản" as t1  join "giao dịch tài chính" as t2 on t1."id tài khoản" = t2."id tài khoản"  group by t1."id tài khoản"
select t1."tên tài khoản", t1."id tài khoản", count(*)  from "tài khoản" as t1  join "giao dịch tài chính" as t2 on t1."id tài khoản" = t2."id tài khoản"  group by t1."id tài khoản"
select "id tài khoản" from "giao dịch tài chính" group by "id tài khoản" order by count(*) desc limit 1
select "id tài khoản" from "giao dịch tài chính" group by "id tài khoản" order by count(*) desc limit 1
select t1."tên tài khoản", t1."id tài khoản"  from "tài khoản" as t1  join "giao dịch tài chính" as t2 on t1."id tài khoản" = t2."id tài khoản"  group by t2."id tài khoản"  having count(*) >= 4
select t1."tên tài khoản", t1."id tài khoản"  from "tài khoản" as t1  join "giao dịch tài chính" as t2 on t1."id tài khoản" = t2."id tài khoản"  group by t2."id tài khoản"  having count(*) >= 4
select distinct kích thước sản phẩm from sản phẩm
select distinct kích thước sản phẩm from sản phẩm
select distinct màu sản phẩm from sản phẩm
select distinct màu sản phẩm from sản phẩm group by màu sản phẩm having count(*) > 1
select t1."số hoá đơn", count(*)  from "hoá đơn" as t1  join "giao dịch tài chính" as t2 on t1."số hoá đơn" = t2."số hoá đơn"  group by t1."số hoá đơn"
select count(*), t1."số hoá đơn"  from "giao dịch tài chính" as t2  join "hoá đơn" as t1 on t2."số hoá đơn" = t1."id hoá đơn"  group by t1."số hoá đơn"
select t1."số hoá đơn", t1."ngày lập hoá đơn"  from "hoá đơn" as t1  join "giao dịch tài chính" as t2 on t1."số hoá đơn" = t2."số hoá đơn"  group by t1."số hoá đơn"  order by count(*) desc  limit 1
select t1."số hoá đơn", t1."ngày lập hoá đơn"  from "hoá đơn" as t1  join "giao dịch tài chính" as t2 on t1."số hoá đơn" = t2."số hoá đơn"  order by t2."số tiền giao dịch" desc  limit 1
select count(*) from hoá đơn
select count(*) from hoá đơn
select "ngày lập hoá đơn", "id đơn hàng", "chi tiết của tất cả các hoá đơn" from "hoá đơn"
select ngày lập hoá đơn , id đơn hàng , chi tiết đặt hàng from hoá đơn
select t1."id đơn hàng", count(*)  from "đơn đặt hàng" as t1  join "hoá đơn" as t2 on t1."id đơn hàng" = t2."id đơn hàng"  group by t1."id đơn hàng"
select count(*), "id đơn hàng" from "hoá đơn" as t1 join "đơn đặt hàng" as t2 on t1."id đơn hàng" = t2."id đơn hàng" group by t1."id đơn hàng"
select t1."id đơn hàng", t1."chi tiết đặt hàng"  from "đơn đặt hàng" as t1  join "hoá đơn" as t2 on t1."id đơn hàng" = t2."id đơn hàng"  group by t1."id đơn hàng"  having count(*) > 2
select t1."id đơn hàng", t1."chi tiết đặt hàng"  from "đơn đặt hàng" as t1  join "hoá đơn" as t2 on t1."id đơn hàng" = t2."id đơn hàng"  group by t1."id đơn hàng"  having count(*) > 1
select t1."id khách hàng", t1."họ của khách hàng", t1."số điện thoại"  from "khách hàng" as t1  join "đơn đặt hàng" as t2 on t1."id khách hàng" = t2."id khách hàng"  group by t2."id khách hàng"  order by count(*) desc  limit 1
select t1."họ của khách hàng", t1."id khách hàng", t1."số điện thoại"  from "khách hàng" as t1  join "đơn đặt hàng" as t2 on t1."id khách hàng" = t2."id khách hàng"  group by t1."id khách hàng"  order by count(*) desc  limit 1
select "tên sản phẩm" from "sản phẩm" except select "tiêu đề sản phẩm" from "mặt hàng được đặt"
select "tên sản phẩm" from "sản phẩm" except select "tên sản phẩm" from "mặt hàng được đặt"
select t1.tên sản phẩm , sum ( t2.số lượng sản phẩm )  from sản phẩm as t1  join mặt hàng được đặt as t2  on t1.id sản phẩm = t2.id sản phẩm  group by t1.id sản phẩm
select t1."tên sản phẩm", sum(t2."số lượng sản phẩm")  from "sản phẩm" as t1  join "mặt hàng được đặt" as t2 on t1."id sản phẩm" = t2."id sản phẩm"  group by t1."tên sản phẩm"
select t1."id đơn hàng", count(*)  from "đơn đặt hàng" as t1  join "mặt hàng được đặt" as t2 on t1."id đơn hàng" = t2."id đơn hàng"  group by t1."id đơn hàng"
select count(*), "id đơn hàng" from "mặt hàng được đặt" as t1 join "đơn đặt hàng" as t2 on t1."id đơn hàng" = t2."id đơn hàng" group by t1."id đơn hàng"
select t1."id sản phẩm", count(distinct t2."id đơn hàng")  from "mặt hàng được đặt" as t1  join "đơn đặt hàng" as t2 on t1."id đơn hàng" = t2."id đơn hàng"  group by t1."id sản phẩm"
select count(distinct "id đơn hàng") from "mặt hàng được đặt" as t1 join "sản phẩm" as t2 on t1."id sản phẩm" = t2."id sản phẩm" group by t1."id sản phẩm"
select distinct t1.tên sản phẩm , count ( * ) from sản phẩm as t1 join mặt hàng được đặt as t2 on t1.id sản phẩm = t2.id sản phẩm group by t1.tên sản phẩm
select distinct t1.tên sản phẩm , count ( * )  from sản phẩm as t1  join mặt hàng được đặt as t2  on t1.id sản phẩm = t2.id sản phẩm  group by t1.tên sản phẩm
select t1."id đơn hàng", count(*)  from "đơn đặt hàng" as t1  join "mặt hàng được đặt" as t2 on t1."id đơn hàng" = t2."id đơn hàng"  group by t1."id đơn hàng"
select "id đơn hàng", count(*)  from "mặt hàng được đặt" as t1  join "sản phẩm" as t2 on t1."id sản phẩm" = t2."id sản phẩm"  group by t1."id đơn hàng"
select t1."id đơn hàng", sum(t2."số lượng sản phẩm")  from "đơn đặt hàng" as t1  join "mặt hàng được đặt" as t2 on t1."id đơn hàng" = t2."id đơn hàng"  group by t1."id đơn hàng"
select "id đơn hàng", sum("số lượng sản phẩm")  from "mặt hàng được đặt"  group by "id đơn hàng"
select count(*) from "sản phẩm" where "id sản phẩm" not in (select "id sản phẩm" from "mặt hàng được đặt")
select count(*) from "sản phẩm" where "id sản phẩm" not in (select "id sản phẩm" from "mặt hàng được đặt")
select count(*) from "địa chỉ" where "quốc gia" = 'United States'
select distinct thành phố from địa chỉ
select tiểu bang , count(*) from địa chỉ group by tiểu bang
select tên khách hàng , điện thoại khách hàng from khách hàng where "id khách hàng" not in ( select "id khách hàng" from "lịch sử địa chỉ khách hàng" )
select t1."tên khách hàng"  from "lượt đặt hàng của khách hàng" as t2  join "khách hàng" as t1 on t2."id khách hàng" = t1."id khách hàng"  group by t2."id khách hàng"  order by count(*) desc  limit 1
select "mã loại sản phẩm" from "sản phẩm" group by "mã loại sản phẩm" having count(*) >= 2
select t1.tên khách hàng from lượt đặt hàng của khách hàng as t1 join khách hàng as t2 on t1.id khách hàng = t2.id khách hàng where t1.mã trạng thái đơn hàng = "Đã hoàn thành" group by t1.tên khách hàng having count(*) = 1
select tên khách hàng , điện thoại khách hàng , mã phương thức thanh toán from khách hàng order by mã số khách hàng desc
select t1."tên sản phẩm", sum(t2."số lượng đặt hàng")  from "sản phẩm" as t1  join "mặt hàng được đặt" as t2 on t1."id sản phẩm" = t2."id sản phẩm"  group by t1."id sản phẩm"
select max(giá sản phẩm), min(giá sản phẩm), avg(giá sản phẩm) from sản phẩm group by mã loại sản phẩm
select count(*) from sản phẩm where giá sản phẩm > (select avg(giá sản phẩm) from sản phẩm)
select t3."tên khách hàng", t2."thành phố", t1."từ ngày", t1."đến ngày" from "lịch sử địa chỉ khách hàng" as t1 join "khách hàng" as t3 on t1."id khách hàng" = t3."id khách hàng" join "địa chỉ" as t2 on t1."id địa chỉ" = t2."id địa chỉ" group by t3."tên khách hàng", t2."thành phố"
select t1."tên khách hàng"  from "khách hàng" as t1  join "lượt đặt hàng của khách hàng" as t2  on t1."id khách hàng" = t2."id khách hàng"  where t2."mã phương thức thanh toán" = 'Credit Card'  group by t1."tên khách hàng"  having count(*) > 2
select t1.tên khách hàng , t1.điện thoại khách hàng  from khách hàng as t1  join lượt đặt hàng của khách hàng as t2  on t1.id khách hàng = t2.id khách hàng  group by t2.id khách hàng  order by count(*) desc  limit 1
select distinct "mã loại sản phẩm", "tên sản phẩm" from "sản phẩm" where "giá sản phẩm" > 1000 or "giá sản phẩm" < 500
select count(*) from bộ trưởng where tuổi > 56
select tên, sinh ra ở tiểu bang, tuổi from bộ trưởng order by tuổi
select "năm thành lập", "tên", "ngân sách tính theo tỷ" from "các bộ"
select max("ngân sách tính theo tỷ"), min("ngân sách tính theo tỷ") from "các bộ"
select avg("số lượng nhân viên") from "các bộ" where "xếp hạng" between 10 and 15
select tên from bộ trưởng where sinh ra ở tiểu bang <> 'California'
select distinct t1."năm thành lập"  from "các bộ" as t1  join "bộ trưởng" as t2 on t1."id các bộ" = t2."id người đứng đầu"  where t2."sinh ra ở tiểu bang" = 'Alabama'
select t1.sinh ra ở tiểu bang  from bộ trưởng as t1  join sự quản lý as t2 on t1.id người đứng đầu = t2.id người đứng đầu  group by t1.sinh ra ở tiểu bang  having count(*) >= 3
select "năm thành lập" from "các bộ" group by "năm thành lập" order by count(*) desc limit 1
select t1.tên , t1.số lượng nhân viên  from các bộ as t1  join sự quản lý as t2  on t1.id các bộ = t2.id các bộ  where t2.vai trò tạm thời = "Acting"
select count(distinct vai trò tạm thời) from sự quản lý
select count(*) from "các bộ" where "id các bộ" not in (select "id các bộ" from "sự quản lý")
select distinct tuổi from sự quản lý
select distinct t1.sinh ra ở tiểu bang  from bộ trưởng as t1  join sự quản lý as t2 on t1.id người đứng đầu = t2.id người đứng đầu  where t2.vai trò tạm thời = "Bộ tài chính"  intersect  select distinct t1.sinh ra ở tiểu bang  from bộ trưởng as t1  join sự quản lý as t2 on t1.id người đứng đầu = t2.id người đứng đầu  where t2.vai trò tạm thời = "Bộ an ninh nội địa"
select t1."id các bộ", t1."tên", count(*)  from "các bộ" as t1  join "bộ trưởng" as t2 on t1."id các bộ" = t2."id các bộ"  group by t1."id các bộ"  having count(*) > 1
select "id người đứng đầu", "tên" from "bộ trưởng" where "tên" like "%Ha%"
select id from xe
select id from xe
select count(*) from "xe"
select count(*) from "xe"
select "chi tiết về xe" from "xe" where id = 1
select "chi tiết về xe" from "xe" where "id" = 1
select tên , tên đệm , họ from nhân viên
select * from nhân viên
select "ngày sinh" from "nhân viên" where "tên" = 'Janessa' and "họ" = 'Sawayn'
select ngày sinh from nhân viên where tên = "Janessa" and họ = "Sawayn"
select "ngày nhân viên gia nhập" from "nhân viên" where "tên" = 'Janessa' and "họ" = 'Sawayn'
select "ngày nhân viên gia nhập" from "nhân viên" where "tên" = 'Janessa' and "họ" = 'Sawayn'
select "ngày nhân viên rời đi" from "nhân viên" where "tên" = 'Janessa' and "họ" = 'Sawayn'
select "ngày nhân viên rời đi" from "nhân viên" where "tên" = 'Janessa' and "họ" = 'Sawayn'
select count(*) from nhân viên where tên = "Ludie"
select count(*) from nhân viên where tên = "Ludie"
select biệt danh from nhân viên where tên = "Janessa" and họ = "Sawayn"
select biệt danh from nhân viên where tên = "Janessa" and họ = "Sawayn"
select count(*) from nhân viên
select count(*) from nhân viên
select t2.thành phố  from nhân viên as t1  join địa chỉ nhân viên as t2  on t1.id địa chỉ nhân viên = t2.id địa chỉ nhân viên  where t1.tên = "Janessa" and t1.họ = "Sawayn"
select t2.thành phố  from nhân viên as t1  join địa chỉ nhân viên as t2  on t1.id địa chỉ nhân viên = t2.id địa chỉ nhân viên  where t1.tên = "Janessa" and t1.họ = "Sawayn"
select t2."quốc gia", t2."tiểu bang"  from "nhân viên" as t1  join "địa chỉ" as t2 on t1."id địa chỉ nhân viên" = t2."id địa chỉ"  where t1."tên" = 'Janessa' and t1."họ" = 'Sawayn'
select t2.quốc gia , t2.tiểu bang  from nhân viên as t1  join địa chỉ as t2 on t1.id địa chỉ nhân viên = t2.id địa chỉ  where t1.tên = "Janessa" and t1.họ = "Sawayn"
select t1."id khách hàng", count(*)  from "khách hàng" as t1  join "bài giảng" as t2 on t1."id khách hàng" = t2."id khách hàng"  where t1."tên" = 'Rylan' and t1."họ" = 'Goodwin'  group by t1."id khách hàng"
select sum(t2."giờ học")  from "khách hàng" as t1  join "bài giảng" as t2 on t1."id khách hàng" = t2."id khách hàng"  where t1."tên" = 'Rylan' and t1."họ" = 'Goodwin'
select t2."mã bưu điện"  from "nhân viên" as t1  join "địa chỉ nhân viên" as t2 on t1."id địa chỉ nhân viên" = t2."id địa chỉ nhân viên"  where t1."tên" = 'Janessa' and t1."họ" = 'Sawayn'
select t2."mã bưu điện"  from "nhân viên" as t1  join "địa chỉ nhân viên" as t2 on t1."id địa chỉ nhân viên" = t2."id địa chỉ nhân viên"  where t1."tên" = 'Janessa' and t1."họ" = 'Sawayn'
select count(*) from nhân viên where tiểu bang = "Georgia"
select count(*) from nhân viên as t1 join địa chỉ as t2 on t1."id địa chỉ nhân viên" = t2."id địa chỉ" where t2."tiểu bang" = 'Georgia'
select t1.tên , t1.họ  from nhân viên as t1  join địa chỉ as t2 on t1.id địa chỉ nhân viên = t2.id địa chỉ  where t2.thành phố = "Damianfort"
select t1.tên , t1.họ  from nhân viên as t1  join địa chỉ as t2 on t1.id địa chỉ nhân viên = t2.id địa chỉ  where t2.thành phố = "Damianfort"
select t2.thành phố , count(*)  from nhân viên as t1  join địa chỉ as t2 on t1.id địa chỉ nhân viên = t2.id địa chỉ  group by t2.thành phố  order by count(*) desc  limit 1
select t2.thành phố , count(*)  from địa chỉ as t2  join nhân viên as t1 on t2."id địa chỉ nhân viên" = t1."id địa chỉ nhân viên"  group by t2.thành phố  order by count(*) desc  limit 1
select tiểu bang from địa chỉ nhân viên group by tiểu bang having count ( * ) between 2 and 4
select t1."tiểu bang"  from "địa chỉ" as t1  join "nhân viên" as t2 on t1."id địa chỉ" = t2."id địa chỉ nhân viên"  group by t1."tiểu bang"  having count(*) between 2 and 4
select tên , họ from khách hàng
select tên, họ from khách hàng
select địa chỉ email , ngày sinh from khách hàng where tên = "Carole"
select địa chỉ email , ngày sinh from khách hàng where tên = "Carole"
select t1.số điện thoại , t1.địa chỉ email  from khách hàng as t1  join khoản thanh toán của khách hàng as t2  on t1.id khách hàng = t2.id khách hàng  where t2.số tiền còn thiếu > 2000
select t1.số điện thoại , t1.địa chỉ email  from khách hàng as t1  join khoản thanh toán của khách hàng as t2  on t1.id khách hàng = t2.id khách hàng  where t2.số tiền còn thiếu > 2000
select mã trạng thái khách hàng , số điện thoại di động , địa chỉ email from khách hàng where họ = "Kohler" or tên = "Marina"
select mã trạng thái khách hàng , số điện thoại di động , địa chỉ email from khách hàng where họ = "Kohler" or tên = "Marina"
select ngày sinh from khách hàng where mã trạng thái khách hàng = "Khách hàng tốt"
select ngày sinh from khách hàng where mã trạng thái khách hàng = 'Good Customer'
select "ngày trở thành khách hàng" from "khách hàng" where "tên" = 'Carole' and "họ" = 'Bernhard'
select t2."ngày trở thành khách hàng"  from "nhân viên" as t1  join "khách hàng" as t2 on t1."id nhân viên" = t2."id khách hàng"  where t1."tên" = 'Carole' and t1."họ" = 'Bernhard'  order by t2."ngày trở thành khách hàng"  limit 1
select count(*) from khách hàng
select count(*) from khách hàng
select "mã trạng thái khách hàng", count(*) from "khách hàng" group by "mã trạng thái khách hàng"
select "mã trạng thái khách hàng", count(*) from "khách hàng" group by "mã trạng thái khách hàng"
select "mã trạng thái khách hàng" from "khách hàng" group by "mã trạng thái khách hàng" order by count(*) limit 1
select t1."mã trạng thái khách hàng", t2."mã trạng thái khách hàng"  from "khách hàng" as t1  join "khoản thanh toán của khách hàng" as t2  on t1."id khách hàng" = t2."id khách hàng"  group by t1."mã trạng thái khách hàng"  order by count(*) desc  limit 1
select count(*)  from bài giảng as t1  join khách hàng as t2 on t1.id khách hàng = t2.id khách hàng  where t2.tên = "Rylan" and t2.họ = "Goodwin"
select count(*)  from bài giảng as t1  join nhân viên as t2 on t1.id nhân viên = t2.id nhân viên  where t2.tên = "Rylan" and t2.họ = "Goodwin"
select max(số tiền còn thiếu), min(số tiền còn thiếu), avg(số tiền còn thiếu) from khách hàng
select t1.tên , max(t1."số tiền còn thiếu" ) , min(t1."số tiền còn thiếu" ) , avg(t1."số tiền còn thiếu" )  from "khách hàng" as t1  join "khoản thanh toán của khách hàng" as t2 on t1."id khách hàng" = t2."id khách hàng"  group by t1."tên"
select tên , họ from khách hàng where số tiền còn thiếu between 1000 and 3000
select tên , họ from khách hàng where số tiền còn thiếu between 1000 and 3000
select t1.tên , t1.họ  from khách hàng as t1  join địa chỉ as t2 on t1.id địa chỉ khách hàng = t2.id địa chỉ  where t2.thành phố = "Lockmanfurt"
select t1.tên , t1.họ  from khách hàng as t1  join địa chỉ khách hàng as t2 on t1.id địa chỉ khách hàng = t2.id địa chỉ khách hàng  where t2.thành phố = "Lockmanfurt"
select t3.quốc gia from khách hàng as t1 join địa chỉ khách hàng as t2 on t1.id địa chỉ khách hàng = t2.id địa chỉ khách hàng join địa chỉ as t3 on t2.id địa chỉ = t3.id địa chỉ where t1.tên = "Carole" and t1.họ = "Bernhard"
select t3."quốc gia"  from "khách hàng" as t1  join "địa chỉ khách hàng" as t2 on t1."id địa chỉ khách hàng" = t2."id địa chỉ khách hàng"  join "địa chỉ" as t3 on t2."id địa chỉ" = t3."id địa chỉ"  where t1."tên" = 'Carole' and t1."họ" = 'Bernhard'
select "mã bưu điện" from "khách hàng" where "tên" = 'Carole' and "họ" = 'Bernhard'
select t2.mã bưu điện from khách hàng as t1 join địa chỉ khách hàng as t2 on t1.id địa chỉ khách hàng = t2.id địa chỉ khách hàng where t1.tên = "Carole" and t1.họ = "Bernhard"
select t1.thành phố from địa chỉ as t1 join khách hàng as t2 on t1."id địa chỉ" = t2."id địa chỉ khách hàng" group by t1.thành phố order by count(*) desc limit 1
select t2.thành phố  from khách hàng as t1  join địa chỉ as t2  on t1.id địa chỉ khách hàng = t2.id địa chỉ  group by t2.thành phố  order by count(*) desc  limit 1
select sum("số tiền thanh toán")  from "khoản thanh toán của khách hàng" as t1  join "khách hàng" as t2 on t1."id khách hàng" = t2."id khách hàng"  where t2."tên" = 'Carole' and t2."họ" = 'Bernhard'
select sum("số tiền thanh toán")  from "khoản thanh toán của khách hàng" as t1  join "khách hàng" as t2 on t1."id khách hàng" = t2."id khách hàng"  where t2."tên" = 'Carole' and t2."họ" = 'Bernhard'
select count(*) from khách hàng except select count(*) from khách hàng where id khách hàng in (select id khách hàng from khoản thanh toán của khách hàng)
select "id khách hàng" from "khách hàng" except select "id khách hàng" from "khoản thanh toán của khách hàng"
select t1.tên , t1.họ  from khách hàng as t1  join khoản thanh toán của khách hàng as t2  on t1.id khách hàng = t2.id khách hàng  group by t1.id khách hàng  having count(*) > 2
select t1.tên , t1.họ  from khách hàng as t1  join khoản thanh toán của khách hàng as t2  on t1."id khách hàng" = t2."id khách hàng"  group by t2."id khách hàng"  having count(*) > 2
select "mã phương thức thanh toán", count(*) from "khoản thanh toán của khách hàng" group by "mã phương thức thanh toán"
select "mã phương thức thanh toán", count(*) from "khoản thanh toán của khách hàng" group by "mã phương thức thanh toán"
select count(*) from bài giảng where mã trạng thái bài giảng = "Đã huỷ bỏ"
select count(*) from bài giảng where mã trạng thái bài giảng = "Đã huỷ"
select t1."id bài giảng"  from "bài giảng" as t1  join "nhân viên" as t2 on t1."id nhân viên" = t2."id nhân viên"  where t2."tên" = 'Janessa' and t2."họ" = 'Sawayn' and t2."biệt danh" like '%s%'
select t1."id bài giảng"  from "bài giảng" as t1  join "nhân viên" as t2 on t1."id nhân viên" = t2."id nhân viên"  where t2."tên" = 'Janessa' and t2."họ" = 'Sawayn' and t2."biệt danh" like '%s%'
select count(*)  from bài giảng as t1  join nhân viên as t2 on t1.id nhân viên = t2.id nhân viên  where t2.tên like "%a%"
select count(*) from bài giảng as t1 join nhân viên as t2 on t1.id nhân viên = t2.id nhân viên where t2.tên like "%a%"
select sum(t2."giờ học")  from "nhân viên" as t1  join "bài giảng" as t2 on t1."id nhân viên" = t2."id nhân viên"  where t1."tên" = 'Janessa' and t1."họ" = 'Sawayn'
select sum(t2."giờ học")  from "nhân viên" as t1  join "bài giảng" as t2 on t1."id nhân viên" = t2."id nhân viên"  where t1."tên" = 'Janessa' and t1."họ" = 'Sawayn'
select avg(t2.giá)  from nhân viên as t1  join bài giảng as t2 on t1.id nhân viên = t2.id nhân viên  where t1.tên = "Janessa" and t1.họ = "Sawayn"
select avg(t2.giá)  from nhân viên as t1  join bài giảng as t2 on t1.id nhân viên = t2.id nhân viên  where t1.tên = "Janessa" and t1.họ = "Sawayn"
select count(*)  from bài giảng as t1  join khách hàng as t2 on t1.id khách hàng = t2.id khách hàng  where t2.tên = "Ray"
select count(*)  from bài giảng as t1  join khách hàng as t2 on t1.id khách hàng = t2.id khách hàng  where t2.tên = "Ray"
select distinct t1.họ from khách hàng as t1 join nhân viên as t2 on t1.họ = t2.họ
select distinct t2.họ from khách hàng as t1 join nhân viên as t2 on t1.họ = t2.họ
select tên from nhân viên where id nhân viên not in (select id nhân viên from bài giảng)
select tên from nhân viên except select t1.tên from nhân viên as t1 join bài giảng as t2 on t1.id nhân viên = t2.id nhân viên
select t1."id xe", t1."chi tiết về xe"  from "bài giảng" as t2  join "xe" as t1 on t2."id xe" = t1."id"  group by t2."id xe"  order by count(*) desc  limit 1
select count(*) from "nhân viên"
select count(*) from "nhân viên"
select tên from nhân viên order by tuổi asc
select tên, tuổi from nhân viên order by tuổi
select thành phố, count(*) from nhân viên group by thành phố
select count(*), thành phố from nhân viên group by thành phố
select t2.thành phố  from nhân viên as t1  join cửa hàng as t2  on t1."id cửa hàng" = t2."id cửa hàng"  where t1."tuổi" < 30  group by t2."thành phố"  having count(*) > 1
select t2.thành phố  from nhân viên as t1  join cửa hàng as t2  on t1."id cửa hàng" = t2."id cửa hàng"  where t1."tuổi" < 30  group by t2."thành phố"  having count(*) > 1
select địa điểm, count(*) from cửa hàng group by địa điểm
select địa điểm, count(*) from cửa hàng group by địa điểm
select t1."tên người quản lý", t1."quận"  from "cửa hàng" as t1  join "tuyển dụng" as t2 on t1."id cửa hàng" = t2."id cửa hàng"  order by t2."số lượng sản phẩm" desc  limit 1
select "tên người quản lý", "quận" from "cửa hàng" where "số lượng sản phẩm" = ( select max("số lượng sản phẩm") from "cửa hàng" )
select "số lượng sản phẩm" from "cửa hàng" order by "số lượng sản phẩm" desc limit 2
select "số lượng sản phẩm" from "cửa hàng" order by "số lượng sản phẩm" desc limit 2
select tên , địa điểm , quận from cửa hàng order by số lượng sản phẩm desc
select tên , địa điểm , quận from cửa hàng order by số lượng sản phẩm desc group by tên
select tên from cửa hàng where số lượng sản phẩm > ( select avg( số lượng sản phẩm ) from cửa hàng )
select tên from cửa hàng where số lượng sản phẩm > ( select avg(số lượng sản phẩm) from cửa hàng )
select t1.tên from nhân viên as t1 join đánh giá as t2 on t1."id nhân viên" = t2."id nhân viên" group by t2."id nhân viên" order by count(*) desc limit 1
select t1.tên from nhân viên as t1 join đánh giá as t2 on t1."id nhân viên" = t2."id nhân viên" group by t2."id nhân viên" order by count(*) desc limit 1
select tên from đánh giá order by tiền thưởng desc limit 1
select t1.tên , t2.id nhân viên  from nhân viên as t1  join đánh giá as t2  on t1.id nhân viên = t2.id nhân viên  order by t2.tiền thưởng desc  limit 1
select tên from nhân viên except select t1.tên from nhân viên as t1 join đánh giá as t2 on t1."id nhân viên" = t2."id nhân viên"
select tên from nhân viên except select t1.tên from nhân viên as t1 join đánh giá as t2 on t1."id nhân viên" = t2."id nhân viên"
select t1.tên from cửa hàng as t1 join tuyển dụng as t2 on t1."id cửa hàng" = t2."id cửa hàng" group by t2."id cửa hàng" order by count(*) desc limit 1
select t1.tên  from cửa hàng as t1  join tuyển dụng as t2 on t1."id cửa hàng" = t2."id cửa hàng"  group by t2."id cửa hàng"  order by count(*) desc  limit 1
select tên from cửa hàng where "id cửa hàng" not in (select "id cửa hàng" from tuyển dụng)
select tên from cửa hàng where "id cửa hàng" not in (select "id cửa hàng" from tuyển dụng)
select t1.tên , count ( * ) from cửa hàng as t1 join tuyển dụng as t2 on t1.id cửa hàng = t2.id cửa hàng group by t2.id cửa hàng
select tên , count(*) from cửa hàng group by tên
select sum(tiền thưởng) from đánh giá
select sum(tiền thưởng) from đánh giá
select * from tuyển dụng
select * from tuyển dụng
select quận from cửa hàng where số lượng sản phẩm < 3000 intersect select quận from cửa hàng where số lượng sản phẩm > 10000
select quận from cửa hàng where số lượng sản phẩm < 3000 and số lượng sản phẩm > 10000 group by quận having count(*) = 2
select count ( distinct địa điểm ) from cửa hàng
select count(distinct địa điểm) from cửa hàng
select t1."quốc gia"  from "hãng hàng không" as t1  join "sân bay" as t2 on t1."id hãng hàng không" = t2."id hãng hàng không"  where t1."tên hãng hàng không" = 'JetBlue Airways'
select t1."quốc gia"  from "hãng hàng không" as t2  join "sân bay" as t1 on t2."id hãng hàng không" = t1."id hãng hàng không"  where t2."tên hãng hàng không" = 'Jetblue Airways'
select "tên viết tắt" from "hãng hàng không" where "tên hãng hàng không" = 'JetBlue Airways'
select "tên viết tắt" from "hãng hàng không" where "tên hãng hàng không" = 'Jetblue Airways'
select "tên hãng hàng không", "tên viết tắt" from "hãng hàng không" where "quốc gia" = 'United States'
select "tên hãng hàng không", "tên viết tắt" from "hãng hàng không" where "quốc gia" = 'United States'
select "mã sân bay", "tên sân bay" from "sân bay" where "thành phố" = 'Anthony'
select "mã sân bay", "tên sân bay" from "sân bay" where "thành phố" = 'Anthony'
select count(*) from "hãng hàng không"
select count(*) from "hãng hàng không"
select count(*) from "sân bay"
select count(*) from "sân bay"
select count(*) from "chuyến bay"
select count(*) from "chuyến bay"
select "tên hãng hàng không" from "hãng hàng không" where "tên viết tắt" = 'UAL'
select "tên hãng hàng không" from "hãng hàng không" where "tên viết tắt" = 'UAL'
select count(*) from "hãng hàng không" as t1 join "sân bay" as t2 on t1."id hãng hàng không" = t2."id hãng hàng không" where t2."quốc gia" = 'United States'
select count(*) from "hãng hàng không" as t1 join "sân bay" as t2 on t1."quốc gia" = t2."quốc gia" where t2."quốc gia" = 'United States'
select thành phố , quốc gia from sân bay where tên sân bay = "Alton"
select thành phố, quốc gia from sân bay where tên sân bay = "Alton"
select "tên sân bay" from "sân bay" where "mã sân bay" = 'AKO'
select "tên sân bay" from "sân bay" where "mã sân bay" = 'AKO'
select tên sân bay from sân bay where thành phố = "Aberdeen"
select tên sân bay from sân bay where thành phố = "Aberdeen"
select count(*) from chuyến bay as t1 join sân bay as t2 on t1.sân bay khởi hành = t2.mã sân bay where t2.mã sân bay = "APG"
select count("số hiệu chuyến bay") from "chuyến bay" where "sân bay khởi hành" = 'APG'
select count(*) from chuyến bay as t1 join sân bay as t2 on t1.sân bay đích = t2.mã sân bay where t2.tên sân bay = "ATO"
select count(*)  from chuyến bay as t1  join sân bay as t2 on t1.sân bay đích = t2.mã sân bay  where t2.mã sân bay = 'ATO'
select count(*)  from "chuyến bay" as t1  join "sân bay" as t2 on t1."sân bay khởi hành" = t2."mã sân bay"  where t2."thành phố" = 'Aberdeen'
select count(*) from chuyến bay where sân bay khởi hành = 'Aberdeen'
select count(*)  from chuyến bay as t1  join sân bay as t2 on t1.sân bay khởi hành = t2.mã sân bay  where t2.thành phố = "Aberdeen"
select count(*) from "chuyến bay" where "sân bay đích" = 'Aberdeen'
select count(*) from chuyến bay where "sân bay khởi hành" = 'Aberdeen' and "sân bay đích" = 'Ashley'
select count(*)  from "sân bay" as t1  join "chuyến bay" as t2 on t1."mã sân bay" = t2."sân bay khởi hành"  where t1."thành phố" = 'Aberdeen' and t2."sân bay đích" = 'Ashley'
select count(*) from "chuyến bay" as t1 join "hãng hàng không" as t2 on t1."hãng hàng không" = t2."id hãng hàng không" where t2."tên hãng hàng không" = 'JetBlue Airways'
select count(*) from chuyến bay as t1 join hãng hàng không as t2 on t1.hãng hàng không = t2.id hãng hàng không where t2.tên hãng hàng không = 'Jetblue Airways'
select count(*)  from "chuyến bay" as t1  join "sân bay" as t2 on t1."sân bay đích" = t2."mã sân bay"  join "hãng hàng không" as t3 on t1."hãng hàng không" = t3."id hãng hàng không"  where t2."tên sân bay" = 'ASY' and t3."tên hãng hàng không" = 'United Airlines'
select count(*)  from chuyến bay as t1  join sân bay as t2 on t1.sân bay đích = t2.mã sân bay  join hãng hàng không as t3 on t1.hãng hàng không = t3.id hãng hàng không  where t2.tên sân bay = "ASY" and t3.tên hãng hàng không = "United Airlines"
select count(*)  from "chuyến bay" as t1  join "sân bay" as t2 on t1."sân bay khởi hành" = t2."mã sân bay"  join "hãng hàng không" as t3 on t1."hãng hàng không" = t3."id hãng hàng không"  where t2."tên sân bay" = 'AHD' and t3."tên hãng hàng không" = 'United Airlines'
select count(*)  from "chuyến bay" as t1  join "sân bay" as t2 on t1."sân bay khởi hành" = t2."mã sân bay"  join "hãng hàng không" as t3 on t1."hãng hàng không" = t3."id hãng hàng không"  where t2."tên sân bay" = 'AHD' and t3."tên hãng hàng không" = 'United Airlines'
select count(*)  from "chuyến bay" as t1  join "sân bay" as t2 on t1."sân bay khởi hành" = t2."mã sân bay"  join "sân bay" as t3 on t1."sân bay đích" = t3."mã sân bay"  join "hãng hàng không" as t4 on t1."hãng hàng không" = t4."id hãng hàng không"  where t4."tên hãng hàng không" = 'United Airlines' and t2."thành phố" = 'Aberdeen'
select count(*)  from "chuyến bay" as t1  join "sân bay" as t2 on t1."sân bay đích" = t2."mã sân bay"  join "hãng hàng không" as t3 on t1."hãng hàng không" = t3."id hãng hàng không"  where t2."thành phố" = 'Aberdeen' and t3."tên hãng hàng không" = 'United Airlines'
select t1."thành phố"  from "sân bay" as t1  join "chuyến bay" as t2 on t1."mã sân bay" = t2."sân bay khởi hành"  group by t1."thành phố"  order by count(*) desc  limit 1
select t1."thành phố"  from "sân bay" as t1  join "chuyến bay" as t2 on t1."mã sân bay" = t2."sân bay đích"  group by t1."thành phố"  order by count(*) desc  limit 1
select t1."thành phố"  from "sân bay" as t2  join "chuyến bay" as t1 on t2."mã sân bay" = t1."sân bay khởi hành"  group by t1."thành phố"  order by count(*) desc  limit 1
select t1."thành phố"  from "sân bay" as t2  join "chuyến bay" as t1 on t2."mã sân bay" = t1."sân bay khởi hành"  group by t1."sân bay khởi hành"  order by count(*) desc  limit 1
select t1."mã sân bay" from "sân bay" as t1 join "chuyến bay" as t2 on t1."mã sân bay" = t2."sân bay khởi hành" group by t2."sân bay khởi hành" order by count(*) desc limit 1
select t1."mã sân bay" from "sân bay" as t1 join "chuyến bay" as t2 on t1."mã sân bay" = t2."sân bay khởi hành" group by t2."sân bay khởi hành" order by count(*) desc limit 1
select "mã sân bay" from "sân bay" as t1 join "chuyến bay" as t2 on t1."mã sân bay" = t2."sân bay khởi hành" group by t2."sân bay khởi hành" order by count(*) desc limit 1
select t1."mã sân bay"  from "sân bay" as t1  join "chuyến bay" as t2 on t1."mã sân bay" = t2."sân bay khởi hành"  group by t1."mã sân bay"  order by count(*)  limit 1
select "tên hãng hàng không" from "chuyến bay" as t1 join "hãng hàng không" as t2 on t1."hãng hàng không" = t2."id hãng hàng không" group by t1."hãng hàng không" order by count(*) desc limit 1
select "tên hãng hàng không" from "chuyến bay" as t1 join "hãng hàng không" as t2 on t1."hãng hàng không" = t2."id hãng hàng không" group by t1."hãng hàng không" order by count(*) desc limit 1
select t1."tên viết tắt", t1."quốc gia"  from "hãng hàng không" as t1  join "chuyến bay" as t2 on t1."id hãng hàng không" = t2."hãng hàng không"  group by t2."hãng hàng không"  order by count(*) desc  limit 1
select t1."tên viết tắt", t1."quốc gia"  from "hãng hàng không" as t1  join "chuyến bay" as t2 on t1."id hãng hàng không" = t2."hãng hàng không"  group by t2."hãng hàng không"  order by count(*) desc  limit 1
select distinct t1."tên hãng hàng không"  from "hãng hàng không" as t1  join "chuyến bay" as t2 on t1."id hãng hàng không" = t2."hãng hàng không"  where t2."sân bay khởi hành" = 'AHD'
select distinct t1."id hãng hàng không", t2."tên hãng hàng không"  from "chuyến bay" as t1  join "sân bay" as t2 on t1."sân bay khởi hành" = t2."mã sân bay"  where t2."tên sân bay" = 'AHD'
select distinct t1."tên hãng hàng không"  from "hãng hàng không" as t1  join "chuyến bay" as t2 on t1."id hãng hàng không" = t2."hãng hàng không"  where t2."sân bay đích" = 'AHD'
select distinct t1."id hãng hàng không"  from "chuyến bay" as t1  join "sân bay" as t2 on t1."sân bay đích" = t2."mã sân bay"  where t2."tên sân bay" = 'AHD'
select t1."id hãng hàng không", t1."tên hãng hàng không"  from "hãng hàng không" as t1  join "chuyến bay" as t2 on t1."id hãng hàng không" = t2."hãng hàng không"  where t2."sân bay khởi hành" in (select "mã sân bay" from "sân bay" where "tên sân bay" = 'APG')  intersect  select t1."id hãng hàng không", t1."tên hãng hàng không"  from "hãng hàng không" as t1  join "chuyến bay" as t2 on t1."id hãng hàng không" = t2."hãng hàng không"  where t2."sân bay khởi hành" in (select "mã sân bay" from "sân bay" where "tên sân bay" = 'CVO')
select "hãng hàng không" from "chuyến bay" where "sân bay khởi hành" in (select "mã sân bay" from "sân bay" where "tên sân bay" = 'APG') intersect select "hãng hàng không" from "chuyến bay" where "sân bay khởi hành" in (select "mã sân bay" from "sân bay" where "tên sân bay" = 'CVO')
select "tên hãng hàng không" from "chuyến bay" as t1 join "sân bay" as t2 on t1."sân bay khởi hành" = t2."mã sân bay" where t1."sân bay khởi hành" = 'CVO' group by "tên hãng hàng không" having count(*) > 0 except select "tên hãng hàng không" from "chuyến bay" as t1 join "sân bay" as t2 on t1."sân bay khởi hành" = t2."mã sân bay" where t1."sân bay khởi hành" = 'APG' group by "tên hãng hàng không" having count(*) > 0
select "id hãng hàng không", "tên hãng hàng không"  from "hãng hàng không"  where "id hãng hàng không" in (      select "hãng hàng không"      from "chuyến bay"      where "sân bay khởi hành" = 'CVO'      except      select "hãng hàng không"      from "chuyến bay"      where "sân bay khởi hành" = 'APG' )
select t1."tên hãng hàng không" from "hãng hàng không" as t1 join "chuyến bay" as t2 on t1."id hãng hàng không" = t2."hãng hàng không" group by t2."hãng hàng không" having count(*) >= 10
select t1."tên hãng hàng không" from "hãng hàng không" as t1 join "chuyến bay" as t2 on t1."id hãng hàng không" = t2."hãng hàng không" group by t2."hãng hàng không" having count(*) >= 10
select t1."tên hãng hàng không"  from "hãng hàng không" as t1  join "chuyến bay" as t2 on t1."id hãng hàng không" = t2."hãng hàng không"  group by t2."hãng hàng không"  having count(*) < 200
select t1."tên hãng hàng không" from "hãng hàng không" as t1 join "chuyến bay" as t2 on t1."id hãng hàng không" = t2."hãng hàng không" group by t2."hãng hàng không" having count(*) < 200
select t1."số hiệu chuyến bay"  from "chuyến bay" as t1  join "hãng hàng không" as t2 on t1."hãng hàng không" = t2."id hãng hàng không"  where t2."tên hãng hàng không" = 'United Airlines'
select t1."số hiệu chuyến bay" from "chuyến bay" as t1 join "hãng hàng không" as t2 on t1."hãng hàng không" = t2."id hãng hàng không" where t2."tên hãng hàng không" = 'United Airlines'
select t1."số hiệu chuyến bay" from "chuyến bay" as t1 join "sân bay" as t2 on t1."sân bay khởi hành" = t2."mã sân bay" where t2."tên sân bay" = 'APG'
select t1."số hiệu chuyến bay" from "chuyến bay" as t1 join "sân bay" as t2 on t1."sân bay khởi hành" = t2."mã sân bay" where t2."tên sân bay" = 'APG'
select t1."số hiệu chuyến bay" from "chuyến bay" as t1 join "sân bay" as t2 on t1."sân bay đích" = t2."mã sân bay" where t2."tên sân bay" = 'APG'
select t1."số hiệu chuyến bay" from "chuyến bay" as t1 join "sân bay" as t2 on t1."sân bay khởi hành" = t2."mã sân bay" where t2."tên sân bay" = 'APG'
select t1."số hiệu chuyến bay" from "chuyến bay" as t1 join "sân bay" as t2 on t1."sân bay khởi hành" = t2."mã sân bay" where t2."thành phố" = 'Aberdeen'
select số hiệu chuyến bay from chuyến bay where sân bay khởi hành in (select id sân bay from sân bay where thành phố = "Aberdeen")
select t1."số hiệu chuyến bay"  from "chuyến bay" as t1  join "sân bay" as t2 on t1."sân bay đích" = t2."mã sân bay"  where t2."thành phố" = 'Aberdeen'
select t1."số hiệu chuyến bay" from "chuyến bay" as t1 join "sân bay" as t2 on t1."sân bay đích" = t2."mã sân bay" where t2."thành phố" = 'Aberdeen'
select count(*)  from "sân bay" as t1  join "chuyến bay" as t2 on t1."mã sân bay" = t2."sân bay khởi hành"  where t1."thành phố" = 'Aberdeen' or t1."thành phố" = 'Abilene'
select count(*)  from "sân bay" as t1  join "chuyến bay" as t2 on t1."mã sân bay" = t2."sân bay khởi hành"  where t1."thành phố" = 'Aberdeen' or t1."thành phố" = 'Abilene'
select "tên sân bay" from "sân bay" except select "sân bay khởi hành" from "chuyến bay"
select "mã sân bay", "tên sân bay" from "sân bay" except select "sân bay khởi hành", "sân bay đích" from "chuyến bay"
select count(*) from "trận đấu" where "mùa giải" > 2007
select ngày from trận đấu order by đội chủ nhà desc
select mùa giải , đội chủ nhà , đội khách from trận đấu
select avg("trận đấu sân nhà"), max("trận đấu sân nhà"), min("trận đấu sân nhà") from "sân vận động"
select "số lượng người tham dự trung bình" from "sân vận động" where "phần trăm sức chứa" > 100
select cầu thủ , số lượng trận đấu , nguồn thông tin from trận đấu except select cầu thủ , số lượng trận đấu , nguồn thông tin from chấn thương where chấn thương = "Head"
select t1.mùa giải from trận đấu as t1 join chấn thương as t2 on t1.id = t2.id trận đấu where t2.cầu thủ = "Walter Samuel"
select t1.id , t1.tỉ số , t1.ngày  from trận đấu as t1  join chấn thương as t2 on t1.id = t2.id trận đấu  group by t1.id  having count ( * ) >= 2
select t1.id , t1.tên  from "sân vận động" as t1  join "chấn thương" as t2 on t1.id = t2."id sân vận động"  group by t2."id sân vận động"  order by count(*) desc  limit 1
select t1.id , t1.tên  from "sân vận động" as t1  join "chấn thương" as t2 on t1.id = t2."id sân vận động"  group by t2."id sân vận động"  order by count(*) desc  limit 1
select t1.mùa giải , t2.tên  from trận đấu as t1  join chấn thương as t2 on t1.id = t2.id trận đấu  where t2.chấn thương like "%foot%" or t2.chấn thương like "%head%"
select count(distinct "nguồn thông tin") from "chấn thương"
select count(*) from "trận đấu" where "id" not in (select "id trận đấu" from "chấn thương")
select count(distinct chấn thương) from chấn thương where mùa giải > 2010
select t2.tên  from chấn thương as t1  join sân vận động as t2  on t1.id sân vận động = t2.id  where t1.cầu thủ = "Walter Samuel"  intersect  select t2.tên  from chấn thương as t1  join sân vận động as t2  on t1.id sân vận động = t2.id  where t1.cầu thủ = "Thiago Motta" group by t2.tên
select tên , số lượng khán giả trung bình , tổng số khán giả  from sân vận động  where id not in ( select id sân vận động from chấn thương )
select tên from sân vận động where tên like "%bank%"
select count(*), t1.id  from "sân vận động" as t1  join "trận đấu" as t2 on t1.id = t2."id sân vận động"  group by t1.id
select t2.cầu thủ, t1.ngày  from chấn thương as t1  join trận đấu as t2 on t1.id trận đấu = t2.id  where t1.chấn thương = "khoác áo"  order by t1.mùa giải desc
select năm phát hành from bộ phim where tiêu đề = "Trò chơi bắt chước"
select năm phát hành from bộ phim where tiêu đề = "The Chess Game"
select năm sinh from diễn viên where tên = "Benedict Cumberbatch"
select năm sinh from diễn viên where tên = "Benedict Cumberbatch"
select quốc tịch from diễn viên where tên = "Christoph Waltz"
select quốc tịch from diễn viên where tên = "Christoph Waltz"
select tiêu đề from bộ phim where năm phát hành = 2015
select tên from diễn viên where nơi sinh = 'Tehran'
select tên from diễn viên where nơi sinh = "Tehran"
select tên from diễn viên where nơi sinh = "Tehran"
select tên from diễn viên where quốc tịch = "Afghanistan"
select tên from diễn viên where quốc tịch = "Afghanistan"
select tên from diễn viên where quốc tịch = "Afghanistan"
select tên from diễn viên where năm sinh = 1984
select năm sinh from diễn viên where tên = "Kevin Spacey"
select năm sinh from diễn viên where tên = "Kevin Spacey"
select nơi sinh from diễn viên where tên = "Kevin Spacey"
select nơi sinh from diễn viên where tên = "Kevin Spacey"
select quốc tịch from diễn viên where tên = "Kevin Spacey"
select ngân sách from bộ phim where tiêu đề = "Finding Nemo"
select t3.tiêu đề  from đạo diễn bởi as t1  join đạo diễn as t2 on t1.id đạo diễn = t2.id đạo diễn  join bộ phim as t3 on t1.id sê-ri phim = t3.id bộ phim  where t2.tên = "Steven Spielberg" and t3.năm phát hành > 2006
select t2.tên  from đạo diễn bởi as t1  join đạo diễn as t2 on t1.id đạo diễn = t2.id đạo diễn  join bộ phim as t3 on t1.id sê-ri phim = t3.id bộ phim  where t3.tiêu đề = "James Bond"
select distinct t2.tên  from đạo diễn bởi as t1  join đạo diễn as t2 on t1.id đạo diễn = t2.id đạo diễn  join bộ phim as t3 on t1.id sê-ri phim = t3.id bộ phim  where t3.tiêu đề = "James Bond"
select t2.tên  from đạo diễn bởi as t1  join đạo diễn as t2 on t1.id đạo diễn = t2.id đạo diễn  join bộ phim as t3 on t1.id sê-ri phim = t3.id bộ phim  where t3.tiêu đề = "James Bond"
select t2.giới tính , t2.tên  from phân vai as t1  join diễn viên as t2 on t1.id diễn viên = t2.id diễn viên  join bộ phim as t3 on t1.id sê-ri phim = t3.id bộ phim  join được làm bởi as t4 on t4.id sê-ri phim = t3.id bộ phim  where t1.vai diễn = "Alan Turing" and t3.tiêu đề = "The Imitation Game"
select t2.tên from phân vai as t1 join diễn viên as t2 on t1.id diễn viên = t2.id diễn viên join bộ phim as t3 on t1.id sê-ri phim = t3.id bộ phim where t1.vai diễn = "Alan Turing" and t3.tiêu đề = "The Imitation Game"
select t2.tên from phân vai as t1 join diễn viên as t2 on t1.id diễn viên = t2.id diễn viên join bộ phim as t3 on t1.id sê-ri phim = t3.id bộ phim where t1.vai diễn = "Alan Turing" and t3.tiêu đề = "Trò chơi bắt chước"
select t2.tên , t2.giới tính  from phân vai as t1  join diễn viên as t2 on t1.id diễn viên = t2.id diễn viên  join bộ phim as t3 on t1.id sê-ri phim = t3.id bộ phim  where t3.tiêu đề = "The Imitation Game" and t1.vai diễn = "Alan Turing"
select t2.tên  from diễn viên as t2  join phân vai as t3 on t2.id diễn viên = t3.id diễn viên  join bộ phim as t4 on t3.id sê-ri phim = t4.id bộ phim  join được làm bởi as t5 on t5.id sê-ri phim = t4.id bộ phim  where t3.vai diễn = "Alan Turing" and t4.tiêu đề = "The Imitation Game"
select t2.thể loại  from bộ phim as t1  join phân loại as t2 on t1.id bộ phim = t2.id sê-ri phim  where t1.tiêu đề = "Jura Park"
select t2.tên  from đạo diễn bởi as t1  join đạo diễn as t2 on t1.id đạo diễn = t2.id đạo diễn  join bộ phim as t3 on t1.id sê-ri phim = t3.id bộ phim  join phim truyền hình nhiều tập as t4 on t3.id sê-ri phim = t4.id sê-ri phim  where t4.tiêu đề = "Joy" and t4.năm phát hành = 2015
select t3.tiêu đề  from được viết bởi as t2  join đạo diễn as t1 on t2.id đạo diễn = t1.id đạo diễn  join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim  where t1.tên = "Matt Damon"
select t3.tiêu đề  from được viết bởi as t1  join đạo diễn as t2 on t1.id đạo diễn = t2.id đạo diễn  join được làm bởi as t3 on t1.id sê-ri phim = t3.id sê-ri phim  where t2.tên = "Woody Allen"  group by t3.tiêu đề
select t2.tiêu đề  from diễn viên as t1  join phân vai as t2 on t1.id diễn viên = t2.id diễn viên  join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim  where t1.tên = "Robin Wright"
select t3.tiêu đề  from diễn viên as t1  join phân vai as t2 on t1.id diễn viên = t2.id diễn viên  join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim  where t1.tên = "Robin Wright"
select distinct t3.tiêu đề , t2.số tập phim  from diễn viên as t1  join phân vai as t2 on t1.id diễn viên = t2.id diễn viên  join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim  where t1.tên = "Robin Wright"
select t2.ngân sách  from bộ phim as t1  join phim truyền hình nhiều tập as t2  on t1.id bộ phim = t2.id sê-ri phim  where t1.tiêu đề = "Juno" and t2.năm phát hành = 2007
select t2.tiêu đề  from phim truyền hình nhiều tập as t2  join phân loại as t3 on t2.id sê-ri phim = t3.id sê-ri phim  where t3.id thể loại = (select id thể loại from thể loại where thể loại = "Sci-fi")  and t2.năm phát hành = 2010
select t1.tiêu đề from bộ phim as t1 join phân loại as t2 on t1.id bộ phim = t2.id sê-ri phim where t2.id thể loại = ( select id thể loại from thể loại where thể loại = "Sci-fi" ) and t1.năm phát hành = 2010
select tên from diễn viên where nơi sinh = "Austin" and năm sinh > 1980
select tên from diễn viên where nơi sinh = 'Austin' and năm sinh > 1980
select tên from diễn viên where nơi sinh = "Austin" and năm sinh > 1980
select t2.tiêu đề  from đạo diễn as t1  join đạo diễn bởi as t2 on t1.id đạo diễn = t2.id  join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim  where t1.nơi sinh = "Los Angeles"
select tên from diễn viên where nơi sinh = 'New York' and năm sinh = 1984
select t1.tiêu đề from bộ phim as t1 join phân loại as t2 on t1.id bộ phim = t2.id sê-ri phim where t2.id thể loại = ( select id thể loại from thể loại where thể loại = "Sci-fi" )
select t1.tiêu đề from bộ phim as t1 join nhãn as t2 on t1.id sê-ri phim = t2.id sê-ri phim where t2.id từ khoá in (select id from từ khoá where từ khoá = "Vũ khí hạt nhân")
select t3.tiêu đề  from đạo diễn as t2  join đạo diễn bởi as t1 on t2.id đạo diễn = t1.id đạo diễn  join bộ phim as t3 on t1.id sê-ri phim = t3.id bộ phim  where t2.tên = "Alfred Hitchcock"
select t3.tiêu đề  from đạo diễn bởi as t1  join đạo diễn as t2 on t1.id đạo diễn = t2.id đạo diễn  join phân vai as t3 on t1.id = t3.id  join diễn viên as t4 on t3.id diễn viên = t4.id diễn viên  where t2.tên = "Asghar Farhadi" and t4.tên = "Taraneh Alidoosti"
select t2.tiêu đề  from đạo diễn bởi as t1  join đạo diễn as t2 on t1.id đạo diễn = t2.id đạo diễn  join phân vai as t3 on t1.id = t3.id  join diễn viên as t4 on t3.id diễn viên = t4.id diễn viên  join bộ phim as t5 on t5.id sê-ri phim = t3.id sê-ri phim  where t2.tên = "Asghar Farhadi" and t4.tên = "Taraneh Alidoosti"  group by t5.tiêu đề
select t3.tiêu đề  from đạo diễn bởi as t1  join đạo diễn as t2 on t1.id đạo diễn = t2.id đạo diễn  join phân vai as t3 on t1.id = t3.id  join diễn viên as t4 on t3.id diễn viên = t4.id diễn viên  where t2.tên = "Asghar Farhadi" and t4.tên = "Taraneh Alidoosti"
select t3.tiêu đề  from đạo diễn bởi as t1  join đạo diễn as t2 on t1.id đạo diễn = t2.id đạo diễn  join phân vai as t3 on t1.id sê-ri phim = t3.id sê-ri phim  join diễn viên as t4 on t3.id diễn viên = t4.id diễn viên  where t2.tên = "Asghar Farhad" and t4.tên = "Taraneh Alidoosti"
select t2.tiêu đề  from đạo diễn bởi as t1  join đạo diễn as t2 on t1.id đạo diễn = t2.id đạo diễn  join bộ phim as t3 on t1.id sê-ri phim = t3.id bộ phim  where t2.tên = "Shonda Rhimes"
select t2.tên from phân vai as t1  join diễn viên as t2 on t1.id diễn viên = t2.id diễn viên  join bộ phim as t3 on t1.id sê-ri phim = t3.id bộ phim  where t1.vai diễn = "Olivia Pope" and t3.tiêu đề = "Scandal"
select t2.tên  from được viết bởi as t1  join đạo diễn bởi as t2 on t1.id = t2.id  join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim  where t3.tiêu đề = "The Truman Show"
select t2.tên from được viết bởi as t1 join đạo diễn as t2 on t1.id đạo diễn = t2.id đạo diễn join bộ phim as t3 on t1.id sê-ri phim = t3.id bộ phim where t3.tiêu đề = "The Truman Show"
select t3.tiêu đề  from diễn viên as t1  join phân vai as t2 on t1.id diễn viên = t2.id diễn viên  join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim  where t1.tên = "Scott Foley"
select t2.tiêu đề from phân vai as t1 join diễn viên as t2 on t1.id diễn viên = t2.id diễn viên where t2.tên = "Scott Foley" join bộ phim as t3 on t1.id sê-ri phim = t3.id bộ phim
select distinct t3.id đạo diễn from phân vai as t1 join diễn viên as t2 on t1.id diễn viên = t2.id diễn viên join bộ phim as t3 on t1.id sê-ri phim = t3.id bộ phim where t2.tên = "Kate Winslet"
select distinct t3.id đạo diễn bởi, t4.tiêu đề  from đạo diễn bởi as t3  join phân vai as t2 on t3.id = t2.id đạo diễn bởi  join diễn viên as t1 on t2.id diễn viên = t1.id diễn viên  join bộ phim as t4 on t2.id sê-ri phim = t4.id bộ phim  where t1.tên = "Kate Winslet"
select t2.tên , t3.năm phát hành  from đạo diễn bởi as t1  join đạo diễn as t2 on t1.id đạo diễn = t2.id đạo diễn  join phim truyền hình nhiều tập as t3 on t1.id sê-ri phim = t3.id sê-ri phim  where t3.tiêu đề = "The Political Game" and t3.năm phát hành = 2013
select tên from diễn viên where giới tính = "female" and nơi sinh = "Austin"
select tên from diễn viên where quốc tịch = 'Italy' and năm sinh > 1980
select tên from diễn viên where giới tính = 'Female' and nơi sinh = 'New York' and năm sinh > 1980
select t1.tên from diễn viên as t1 join phân vai as t2 on t1."id diễn viên" = t2."id diễn viên" where t1."giới tính" = 'F' and t2."id sê-ri phim" in (select t3."id sê-ri phim" from bộ phim as t3 where t3."tiêu đề" = 'Ryan''s Rescue Rangers')
select tên from đạo diễn where quốc tịch = "Afghanistan"
select t2.tên  from phân vai as t1  join diễn viên as t2 on t1.id diễn viên = t2.id diễn viên  join bộ phim as t3 on t1.id sê-ri phim = t3.id bộ phim  where t3.tiêu đề = "Nữ binh sĩ"
select t2.tên  from được làm bởi as t1  join diễn viên as t2 on t1.id diễn viên = t2.id diễn viên  join bộ phim as t3 on t1.id sê-ri phim = t3.id bộ phim  where t2.quốc tịch = "Canada" and t3.tiêu đề = "James Bond"
select t3.tiêu đề  from diễn viên as t1  join phân vai as t2 on t1.id diễn viên = t2.id diễn viên  join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim  where t1.tên = "Rowan Atkinson" and t2.vai diễn = "Ngài Bean"
select distinct t3.nơi sinh  from đạo diễn bởi as t2  join đạo diễn as t1 on t2.id đạo diễn = t1.id đạo diễn  join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim  where t3.tiêu đề = "Past"
select distinct t1.tên from diễn viên as t1 join phân vai as t2 on t1.id diễn viên = t2.id diễn viên where t2.vai diễn = "Ngài Bean"
select t3."thể loại"  from "đạo diễn bởi" as t1  join "đạo diễn" as t2 on t1."id đạo diễn" = t2."id đạo diễn"  join "phân loại" as t3 on t1."id sê-ri phim" = t3."id sê-ri phim"  join "bộ phim" as t4 on t3."id sê-ri phim" = t4."id bộ phim"  where t2."tên" = 'Asghar Farhadi'
select t3.tiêu đề  from phân vai as t1  join diễn viên as t2 on t1.id diễn viên = t2.id diễn viên  join bộ phim as t3 on t1.id sê-ri phim = t3.id bộ phim  where t2.tên = "Daffy Duck"
select t1.vai diễn from phân vai as t1 join bộ phim as t2 on t1.id sê-ri phim = t2.id bộ phim where t2.tiêu đề = "The Long Arm" and t1.vai diễn = 1
select distinct t2.tên  from đạo diễn bởi as t1  join đạo diễn as t2 on t1.id đạo diễn = t2.id đạo diễn  join phim truyền hình nhiều tập as t3 on t1.id sê-ri phim = t3.id sê-ri phim  where t3.tiêu đề like "%Nuclear Weapon%"
select count(*)  from "diễn viên" as t1  join "phân vai" as t2 on t1."id diễn viên" = t2."id diễn viên"  join "bộ phim" as t3 on t2."id sê-ri phim" = t3."id bộ phim"  where t1."tên" = 'Jennifer Aniston' and t3."năm phát hành" > 2010
select count(*)  from diễn viên as t1  join phân vai as t2 on t1."id diễn viên" = t2."id diễn viên"  where t2."id sê-ri phim" in (select "id sê-ri phim" from bộ phim where "tiêu đề" = 'Ryan''s Rescue Rangers')
select count(*)  from diễn viên as t1  join phân vai as t2 on t1."id diễn viên" = t2."id diễn viên"  where t2."id sê-ri phim" in (select "id sê-ri phim" from bộ phim where "tiêu đề" = 'Ryan''s Rescue Rangers')
select count(*)  from đạo diễn as t1  join đạo diễn bởi as t2 on t1.id đạo diễn = t2.id đạo diễn  join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim  where t1.tên = "Steven Spielberg"
select count(*) from bộ phim where năm phát hành = 2013
select count(tiêu đề) from bộ phim where năm phát hành = 2013
select t2.năm phát hành , count ( * ) from đạo diễn as t1 join đạo diễn bởi as t2 on t1.id đạo diễn = t2.id đạo diễn join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim where t1.tên = "Woody Allen" group by t2.năm phát hành
select count(*)  from diễn viên as t1  join phân vai as t2 on t1."id diễn viên" = t2."id diễn viên"  join bộ phim as t3 on t2."id sê-ri phim" = t3."id bộ phim"  where t1."tên" = 'Shahab Hosseini'
select count(*)  from đạo diễn as t1  join đạo diễn bởi as t2 on t1.id đạo diễn = t2.id đạo diễn  join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim  where t1.tên = "Shahab Hosseini"
select count(*)  from đạo diễn as t1  join đạo diễn bởi as t2 on t1.id đạo diễn = t2.id  join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim  where t1.tên = "Shahab Hosseini"
select count(*)  from diễn viên as t1  join phân vai as t2 on t1.id diễn viên = t2.id diễn viên  join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim  where t1.tên = "Shahab Hosseini"
select count(*) from diễn viên where nơi sinh = "Los Angeles" and năm sinh > 2000
select count(*)  from diễn viên as t1  join phân vai as t2 on t1.id diễn viên = t2.id diễn viên  join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim  where t1.tên = "Humphrey Bogart" and t3.năm phát hành < 1942
select t2.năm phát hành , count ( * ) from diễn viên as t1 join phân vai as t2 on t1.id diễn viên = t2.id diễn viên join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim where t1.tên = "Brad Pitt" group by t2.năm phát hành
select count(*)  from bộ phim as t1  join được làm bởi as t2 on t1.id bộ phim = t2.id sê-ri phim  join nhà sản xuất as t3 on t2.id nhà sản xuất = t3.id nhà sản xuất  where t1.năm phát hành = 2015 and t3.tên = "Chiến tranh Iraq"
select count(*)  from "phân loại" as t1  join "bộ phim" as t2 on t1."id sê-ri phim" = t2."id bộ phim"  where t1."id thể loại" in (select "id thể loại" from "thể loại" where "thể loại" = 'Ba Tư')  and t2."năm phát hành" > 1990
select count(*)  from đạo diễn as t1  join đạo diễn bởi as t2 on t1.id đạo diễn = t2.id  join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim  where t3.năm phát hành > 2010 and t1.tên = "Quentin Tarantino"
select count(*)  from đạo diễn as t1  join đạo diễn bởi as t2 on t1.id đạo diễn = t2.id  join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim  where t3.năm phát hành < 2010 and t1.tên = "Quentin Tarantino"
select count(*)  from đạo diễn as t1  join đạo diễn bởi as t2 on t1.id đạo diễn = t2.id  join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim  where t1.tên = "Quentin Tarantino" and t3.năm phát hành < 2002 and t3.năm phát hành > 2010
select count(*) from diễn viên where giới tính = "F" and năm sinh > 1980 and nơi sinh = "New York"
select count(*)  from diễn viên as t1  join đạo diễn bởi as t2 on t1."id diễn viên" = t2."id diễn viên"  join đạo diễn as t3 on t2."id đạo diễn" = t3."id đạo diễn"  join bộ phim as t4 on t2."id sê-ri phim" = t4."id bộ phim"  where t1."quốc tịch" = 'Iran' and t3."tên" = 'Jim Jarmusch'
select count(*)  from diễn viên as t1  join phân vai as t2 on t1."id diễn viên" = t2."id diễn viên"  join bộ phim as t3 on t2."id sê-ri phim" = t3."id bộ phim"  where t1."quốc tịch" = 'China' and t3."tiêu đề" = 'The Peak Hour 3'
select t2.tiêu đề  from diễn viên as t1  join phân vai as t2 on t1.id diễn viên = t2.id diễn viên  join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim  where t1.tên = "Woody Strode" or t1.tên = "Jason Robards"
select t2.tiêu đề  from diễn viên as t1  join phân vai as t2 on t1.id diễn viên = t2.id diễn viên  join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim  where t1.tên = "Woody Strode" or t1.tên = "Jason Robards"
select t2.tiêu đề  from diễn viên as t1  join phân vai as t2 on t1.id diễn viên = t2.id diễn viên  join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim  where t1.tên = "Woody Strode"  intersect  select t2.tiêu đề  from diễn viên as t1  join phân vai as t2 on t1.id diễn viên = t2.id diễn viên  join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim  where t1.tên = "Jason Robards"
select t2.tiêu đề  from diễn viên as t1  join phân vai as t2 on t1.id diễn viên = t2.id diễn viên  join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim  where t1.tên = "Woody Strode"  intersect  select t2.tiêu đề  from diễn viên as t1  join phân vai as t2 on t1.id diễn viên = t2.id diễn viên  join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim  where t1.tên = "Jason Robards"
select t2.tên from diễn viên as t1 join phân vai as t2 on t1.id diễn viên = t2.id diễn viên join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim where t1.tên = "Tom Hanks"
select t2.tiêu đề from đạo diễn bởi as t1 join đạo diễn as t2 on t1.id đạo diễn = t2.id đạo diễn join bộ phim as t3 on t1.id sê-ri phim = t3.id bộ phim where t3.tiêu đề = "The Road Warrior"
select t2.tiêu đề  from phân loại as t1  join bộ phim as t2  on t1.id sê-ri phim = t2.id bộ phim  group by t1.id sê-ri phim  order by count(*) desc  limit 1
select t2.tiêu đề  from phân vai as t1  join diễn viên as t2 on t1.id diễn viên = t2.id diễn viên  where t2.quốc tịch = "China"  group by t1.id sê-ri phim  order by count(*) desc  limit 1
select t2.tên  from đạo diễn bởi as t1  join đạo diễn as t2 on t1.id đạo diễn = t2.id đạo diễn  join bộ phim as t3 on t1.id sê-ri phim = t3.id bộ phim  where t2.tên = "Quentin Tarantino"  order by t3.năm phát hành desc  limit 1
select t2.tiêu đề , t2.ngân sách  from đạo diễn bởi as t1  join đạo diễn as t2 on t1.id đạo diễn = t2.id đạo diễn  where t1.id đạo diễn = ( select id đạo diễn from đạo diễn where tên = "Quentin Tarantino" )  order by t2.năm phát hành desc  limit 1
select t2.tiêu đề  from đạo diễn as t1  join đạo diễn bởi as t3 on t1.id đạo diễn = t3.id đạo diễn  join bộ phim as t2 on t3.id sê-ri phim = t2.id bộ phim  where t1.tên = "Jim Jarmusch"  order by t2.năm phát hành desc  limit 1
select t2.id nhà sản xuất  from được làm bởi as t1  join đạo diễn bởi as t2 on t1.id sê-ri phim = t2.id  group by t2.id nhà sản xuất  order by count(*) desc  limit 1
select t3.tiêu đề  from phân vai as t1  join diễn viên as t2 on t1.id diễn viên = t2.id diễn viên  join bộ phim as t3 on t1.id sê-ri phim = t3.id bộ phim  where t2.tên = "Gabriele Ferzetti"  order by t3.năm phát hành desc  limit 1
select "chi tiết khách hàng" from "khách hàng" order by "chi tiết khách hàng"
select "chi tiết khách hàng" from "khách hàng" order by "chi tiết khách hàng"
select t1."mã loại chính sách"  from "chính sách" as t1  join "khách hàng" as t2 on t1."id khách hàng" = t2."id khách hàng"  where t2."chi tiết khách hàng" = 'Dayana Robel'
select t1."mã loại chính sách"  from "chính sách" as t1  join "khách hàng" as t2 on t1."id khách hàng" = t2."id khách hàng"  where t2."chi tiết khách hàng" = 'Dayana Robel'
select t1."mã loại chính sách"  from "chính sách" as t1  join "tiêu đề của yêu cầu" as t2  on t1."id chính sách" = t2."id chính sách"  group by t1."mã loại chính sách"  order by count(*) desc  limit 1
select "mã loại chính sách" from "chính sách" group by "mã loại chính sách" order by count(*) desc limit 1
select t1."mã loại chính sách"  from "chính sách" as t1  join "khách hàng" as t2 on t1."id khách hàng" = t2."id khách hàng"  group by t1."mã loại chính sách"  having count(*) > 2
select t1."mã loại chính sách"  from "chính sách" as t1  join "khách hàng" as t2 on t1."id khách hàng" = t2."id khách hàng"  group by t1."mã loại chính sách"  having count(*) > 2
select sum("số tiền được trả"), avg("số tiền được trả") from "tiêu đề của yêu cầu" as t1 join "tài liệu của yêu cầu" as t2 on t1."id tiêu đề của yêu cầu" = t2."id yêu cầu" group by t1."id tiêu đề của yêu cầu"
select sum(số tiền được trả), avg(số tiền được trả) from tiêu đề của yêu cầu
select "số tiền được yêu cầu" from "tài liệu của yêu cầu" order by "ngày tạo ra" desc limit 1
select sum("số tiền được yêu cầu")  from "tài liệu của yêu cầu"  where "id yêu cầu" in (      select "id yêu cầu"      from "tiêu đề của yêu cầu"      order by "ngày tạo ra" desc      limit 1 )
select t1."chi tiết khách hàng"  from "khách hàng" as t1  join "tiêu đề của yêu cầu" as t2 on t1."id khách hàng" = t2."id khách hàng"  join "chính sách" as t3 on t2."id chính sách" = t3."id chính sách"  order by t2."số tiền được yêu cầu" desc  limit 1
select t1."chi tiết khách hàng"  from "khách hàng" as t1  join "chính sách" as t2 on t1."id khách hàng" = t2."id khách hàng"  join "tiêu đề của yêu cầu" as t3 on t2."id chính sách" = t3."id chính sách"  group by t1."id khách hàng"  order by sum(t3."số tiền được yêu cầu") desc  limit 1
select t1."chi tiết khách hàng"  from "khách hàng" as t1  join "chính sách" as t2 on t1."id khách hàng" = t2."id khách hàng"  join "tiêu đề của yêu cầu" as t3 on t2."id chính sách" = t3."id chính sách"  join "tài liệu của yêu cầu" as t4 on t3."id yêu cầu" = t4."id yêu cầu"  order by t4."số tiền được trả" asc  limit 1
select t1."chi tiết khách hàng"  from "khách hàng" as t1  join "tiêu đề của yêu cầu" as t2 on t1."id khách hàng" = t2."id khách hàng"  join "chính sách" as t3 on t2."id chính sách" = t3."id chính sách"  group by t2."id khách hàng"  order by sum(t2."số tiền được trả")  limit 1
select "chi tiết khách hàng" from "khách hàng" where "id khách hàng" not in (select "id khách hàng" from "chính sách")
select "chi tiết khách hàng" from "khách hàng" where "id khách hàng" not in (select "id khách hàng" from "chính sách")
select count(*) from "giai đoạn xử lý yêu cầu"
select count(distinct "id giai đoạn yêu cầu tiếp theo") from "giai đoạn xử lý yêu cầu"
select t1."mã giai đoạn xử lý yêu cầu", count(*)  from "xử lý yêu cầu" as t1  join "tiêu đề của yêu cầu" as t2 on t1."id yêu cầu" = t2."id tiêu đề của yêu cầu"  group by t1."mã giai đoạn xử lý yêu cầu"  order by count(*) desc  limit 1
select t1."mã tình trạng yêu cầu", count(*)  from "tiêu đề của yêu cầu" as t1  join "xử lý yêu cầu" as t2 on t1."id tiêu đề của yêu cầu" = t2."id yêu cầu"  group by t1."mã tình trạng yêu cầu"  order by count(*) desc  limit 1
select "chi tiết khách hàng" from "khách hàng" where "chi tiết khách hàng" like "%Diana%"
select "chi tiết khách hàng" from "khách hàng" where "chi tiết khách hàng" like "%Diana%"
select t1."chi tiết khách hàng" from "khách hàng" as t1 join "chính sách" as t2 on t1."id khách hàng" = t2."id khách hàng" where t2."mã loại chính sách" = 'Uỷ quyền'
select t1."chi tiết khách hàng" from "khách hàng" as t1 join "chính sách" as t2 on t1."id khách hàng" = t2."id khách hàng" where t2."mã loại chính sách" = 'Uỷ quyền'
select t1."chi tiết khách hàng" from "khách hàng" as t1 join "chính sách" as t2 on t1."id khách hàng" = t2."id khách hàng" where t2."mã loại chính sách" = 'Uỷ quyền' or t2."mã loại chính sách" = 'Thống nhất'
select t1."chi tiết khách hàng"  from "khách hàng" as t1  join "chính sách" as t2 on t1."id khách hàng" = t2."id khách hàng"  where t2."mã loại chính sách" = 'Uỷ quyền' or t2."mã loại chính sách" = 'Thống nhất'
select * from khách hàng join nhân viên on khách hàng.id khách hàng = nhân viên.id nhân viên
select t1."chi tiết khách hàng", t2."chi tiết nhân viên"  from "khách hàng" as t1  join "nhân viên" as t2 on t1."id khách hàng" = t2."id nhân viên"
select mã loại chính sách, count(*) from chính sách group by mã loại chính sách
select "mã loại chính sách", count(*) from "chính sách" group by "mã loại chính sách"
select t1."chi tiết khách hàng" from "khách hàng" as t1 join "chính sách" as t2 on t1."id khách hàng" = t2."id khách hàng" group by t1."id khách hàng" order by count(*) desc limit 1
select t1."chi tiết khách hàng" from "khách hàng" as t1 join "chính sách" as t2 on t1."id khách hàng" = t2."id khách hàng" group by t2."id khách hàng" order by count(*) desc limit 1
select mô tả về tình trạng yêu cầu from tiêu đề của yêu cầu where mã tình trạng yêu cầu = "Mở"
select "mô tả về tình trạng yêu cầu" from "tiêu đề của yêu cầu" where "mã tình trạng yêu cầu" = 'Mở'
select count(*), "id yêu cầu" from "tiêu đề của yêu cầu" as t1 join "xử lý yêu cầu" as t2 on t1."id yêu cầu" = t2."id yêu cầu" group by t1."id yêu cầu"
select count(*), "mã kết quả của yêu cầu" from "xử lý yêu cầu" group by "mã kết quả của yêu cầu" order by count(*) desc
select t1."chi tiết khách hàng"  from "khách hàng" as t1  join "chính sách" as t2  on t1."id khách hàng" = t2."id khách hàng"  order by t2."ngày bắt đầu" desc  limit 1
select t1."chi tiết khách hàng"  from "khách hàng" as t1  join "chính sách" as t2 on t1."id khách hàng" = t2."id khách hàng"  order by t2."ngày bắt đầu" desc  limit 1
select t2.chi tiết sự kiện  from dịch vụ as t1  join sự kiện as t2 on t1."id dịch vụ" = t2."id dịch vụ"  where t1."mã loại dịch vụ" = 'Wedding'
select t1."id sự kiện", t1."chi tiết sự kiện"  from "sự kiện" as t1  join "người tham gia sự kiện" as t2 on t1."id sự kiện" = t2."id sự kiện"  group by t1."id sự kiện"  having count(*) > 1
select "id người tham gia", "mã loại người tham gia", count(*)  from "người tham gia" as t1  join "người tham gia sự kiện" as t2 on t1."id người tham gia" = t2."id người tham gia"  group by t1."id người tham gia"
select "id người tham gia", "mã loại người tham gia", "chi tiết người tham gia" from "người tham gia"
select count(*) from "người tham gia" where "mã loại người tham gia" = 'Người tổ chức'
select "mã loại dịch vụ" from "dịch vụ" order by "mã loại dịch vụ"
select t1."id dịch vụ", t2."chi tiết sự kiện"  from "dịch vụ" as t1  join "sự kiện" as t2  on t1."id dịch vụ" = t2."id dịch vụ"
select count(*)  from sự kiện as t1  join người tham gia sự kiện as t2 on t1."id sự kiện" = t2."id sự kiện"  join người tham gia as t3 on t2."id người tham gia" = t3."id người tham gia"  where t3."chi tiết người tham gia" like "%Dr%"
select "mã loại người tham gia" from "người tham gia" group by "mã loại người tham gia" order by count(*) desc limit 1
select t1."id dịch vụ", t1."mã loại dịch vụ"  from "dịch vụ" as t1  join "sự kiện" as t2 on t1."id dịch vụ" = t2."id dịch vụ"  join "người tham gia sự kiện" as t3 on t2."id sự kiện" = t3."id sự kiện"  group by t2."id dịch vụ"  order by count(*)  limit 1
select "id sự kiện" from "người tham gia sự kiện" group by "id sự kiện" order by count(*) desc limit 1
select "id sự kiện" from "sự kiện" where "id sự kiện" not in (select "id sự kiện" from "người tham gia sự kiện" where "chi tiết người tham gia" = 'Kenyatta Kuhn')
select t1."mã loại dịch vụ"  from "dịch vụ" as t1  join "sự kiện" as t2 on t1."id dịch vụ" = t2."id dịch vụ"  where t2."chi tiết sự kiện" = 'Thành công'  intersect  select t1."mã loại dịch vụ"  from "dịch vụ" as t1  join "sự kiện" as t2 on t1."id dịch vụ" = t2."id dịch vụ"  where t2."chi tiết sự kiện" = 'Thất bại'
select count(*) from "sự kiện" where "id sự kiện" not in (select "id sự kiện" from "người tham gia sự kiện")
select count(distinct "id người tham gia") from "người tham gia sự kiện" as t1 join "sự kiện" as t2 on t1."id sự kiện" = t2."id sự kiện" group by t1."id sự kiện"
select count(*) from "kỹ thuật viên"
select count(*) from "kỹ thuật viên"
select tên from kỹ thuật viên order by tuổi limit 1
select tên from kỹ thuật viên order by tuổi
select đội , năm bắt đầu from kỹ thuật viên
select đội , min ( năm bắt đầu ) from kỹ thuật viên group by đội
select tên from kỹ thuật viên where đội != "NYY"
select tên from kỹ thuật viên where đội != "NYY"
select tên from kỹ thuật viên where tuổi = 36 union select tên from kỹ thuật viên where tuổi = 37
select tên from kỹ thuật viên where tuổi = 36 or tuổi = 37
select năm bắt đầu from kỹ thuật viên order by tuổi desc limit 1
select năm bắt đầu from kỹ thuật viên order by năm bắt đầu desc limit 1
select đội , count(*) from kỹ thuật viên group by đội
select đội, count(*) from kỹ thuật viên group by đội
select t2.đội  from kỹ thuật viên as t1  join máy móc as t2  on t1.id kỹ thuật viên = t2.id kỹ thuật viên  group by t2.đội  order by count(*) desc  limit 1
select t2.đội  from kỹ thuật viên as t1  join máy móc as t2  on t1.id kỹ thuật viên = t2.id kỹ thuật viên  group by t2.đội  order by count(*) desc  limit 1
select t1.đội from kỹ thuật viên as t1 join máy móc as t2 on t1.id kỹ thuật viên = t2.id kỹ thuật viên group by t1.đội having count(*) >= 2
select t1.đội from kỹ thuật viên as t1 join máy móc as t2 on t1.đội = t2.đội group by t1.đội having count(*) >= 2
select t1.tên , t2.loạt máy  from kỹ thuật viên as t1  join phân công sửa chữa as t2  on t1.id kỹ thuật viên = t2.id kỹ thuật viên  join máy móc as t3  on t2.id máy = t3.id máy
select t1.tên , t2.loạt máy  from kỹ thuật viên as t1  join phân công sửa chữa as t2  on t1.id kỹ thuật viên = t2.id kỹ thuật viên
select t1.tên from kỹ thuật viên as t1 join phân công sửa chữa as t2 on t1.id kỹ thuật viên = t2.id kỹ thuật viên join máy móc as t3 on t2.id máy = t3.id máy order by t3.xếp hạng chất lượng
select t1.tên, t2.xếp hạng chất lượng  from kỹ thuật viên as t1  join phân công sửa chữa as t2 on t1.id kỹ thuật viên = t2.id kỹ thuật viên  join lượt sửa chữa as t3 on t2.id lượt sửa chữa = t3.id lượt sửa chữa  order by t2.xếp hạng chất lượng
select t1.tên from kỹ thuật viên as t1 join phân công sửa chữa as t2 on t1.id kỹ thuật viên = t2.id kỹ thuật viên join máy móc as t3 on t2.id máy = t3.id máy where t3.điểm giá trị > 70
select distinct t1.tên  from kỹ thuật viên as t1  join phân công sửa chữa as t2 on t1.id kỹ thuật viên = t2.id kỹ thuật viên  join máy móc as t3 on t2.id máy = t3.id máy  where t3.điểm giá trị > 70
select t1.tên , count(*) from kỹ thuật viên as t1 join phân công sửa chữa as t2 on t1.id kỹ thuật viên = t2.id kỹ thuật viên group by t1.tên
select tên , count(*) from kỹ thuật viên as t1 join phân công sửa chữa as t2 on t1.id kỹ thuật viên = t2.id kỹ thuật viên group by t1.tên
select tên from kỹ thuật viên except select t1.tên from kỹ thuật viên as t1 join phân công sửa chữa as t2 on t1.id kỹ thuật viên = t2.id kỹ thuật viên
select tên from kỹ thuật viên where id kỹ thuật viên not in (select id kỹ thuật viên from phân công sửa chữa)
select năm bắt đầu from kỹ thuật viên where đội = "CLE" group by năm bắt đầu having count ( * ) >= 1 intersect select năm bắt đầu from kỹ thuật viên where đội = "CWS" group by năm bắt đầu having count ( * ) >= 1
select distinct năm bắt đầu from kỹ thuật viên where đội = 'CLE' group by năm bắt đầu having count(*) >= 1 intersect select distinct năm bắt đầu from kỹ thuật viên where đội = 'CWS' group by năm bắt đầu having count(*) >= 1
select count(*) from "ống kính máy ảnh" where "độ dài tiêu cự theo mm" > 15
select nhãn hiệu, tên from ống kính máy ảnh order by khẩu độ tối đa desc
select id, màu sắc, tên from ảnh
select max(chiều cao), avg(chiều cao) from núi
select avg(độ nổi) from núi where quốc gia = "Morocco"
select tên, chiều cao, độ nổi from núi where dãy núi != "Aberdare"
select t1.id, t1.tên  from ảnh as t1  join núi as t2 on t1.id núi = t2.id  where t2.chiều cao > 4000
select t1.tên , t1.id  from núi as t1  join ảnh as t2 on t1.id = t2.id núi  group by t2.id núi  having count(*) >= 2
select t2."tên"  from "núi" as t1  join "ảnh" as t2 on t1."id" = t2."id núi"  where t1."chiều cao" = (select max("chiều cao") from "núi")
select t2.tên  from ống kính máy ảnh as t1  join ảnh as t2 on t1.id = t2.id ống kính máy ảnh  where t1.nhãn hiệu = "Sigma" or t1.nhãn hiệu = "Olympus"
select count(distinct nhãn hiệu) from ống kính máy ảnh
select count(*) from "ống kính máy ảnh" where "id" not in (select "id ống kính máy ảnh" from "ảnh")
select count(distinct t1."id"), t1."nhãn hiệu"  from "ống kính máy ảnh" as t1  join "ảnh" as t2 on t1."id" = t2."id ống kính máy ảnh"  where t2."quốc gia" = 'Ethiopia'  group by t1."nhãn hiệu"
select t2.nhãn hiệu  from núi as t1  join ảnh as t2 on t1.id = t2.id núi  where t1.dãy núi = "Toubkal Atlas"  intersect  select t2.nhãn hiệu  from núi as t1  join ảnh as t2 on t1.id = t2.id núi  where t1.dãy núi = "Lasta Massif"
select tên , độ nổi from núi except select t2.tên , t2.độ nổi from núi as t1 join ảnh as t2 on t1.id = t2.id núi where t2.id ống kính máy ảnh in ( select id from ống kính máy ảnh where nhãn hiệu = "Sigma" )
select tên from ống kính máy ảnh where tên like "%Digital%"
select t1.tên, count(*)  from ống kính máy ảnh as t1  join ảnh as t2 on t1.id = t2.id ống kính máy ảnh  group by t2.id ống kính máy ảnh  order by count(*) desc
select count(*) from "ban nhạc"
select count(*) from ban nhạc
select hãng thu âm from album
select hãng thu âm from album
select * from album where năm = 2012
select tiêu đề from album where năm = 2012
select t2."vị trí trên sân khấu"  from "buổi biểu diễn" as t1  join "ban nhạc" as t2 on t1."nghệ sĩ trong ban nhạc" = t2."id"  where t2."tên" = 'Solveig'
select t2."vị trí trên sân khấu"  from "buổi biểu diễn" as t1  join "ban nhạc" as t2 on t1."nghệ sĩ trong ban nhạc" = t2."id"  where t2."tên" = "Solveig"
select count(*) from "bài hát"
select count(*) from "bài hát"
select t1."id bài hát"  from "buổi biểu diễn" as t2  join "ban nhạc" as t1 on t2."nghệ sĩ trong ban nhạc" = t1."id"  where t1."họ" = 'Heilo'
select t2.tiêu đề  from ban nhạc as t1  join buổi biểu diễn as t2 on t1.id = t2.nghệ sĩ trong ban nhạc  where t1.họ = "Hello"
select count(distinct t3."id nghệ sĩ trong ban nhạc")  from "bài hát" as t1  join "buổi biểu diễn" as t2 on t1."id bài hát" = t2."id bài hát"  join "nghệ sĩ trong ban nhạc" as t3 on t2."nghệ sĩ trong ban nhạc" = t3."id nghệ sĩ trong ban nhạc"  where t1."tiêu đề" = 'Flash'
select count(distinct t3."id nghệ sĩ trong ban nhạc")  from "bài hát" as t1  join "buổi biểu diễn" as t2 on t1."id bài hát" = t2."id bài hát"  join "nghệ sĩ trong ban nhạc" as t3 on t2."nghệ sĩ trong ban nhạc" = t3."id nghệ sĩ trong ban nhạc"  where t1."tiêu đề" = 'Flash'
select t1."id bài hát" from "bài hát" as t1 join "ban nhạc" as t2 on t1."id bài hát" = t2."id" where t2."tên" = 'Marianne'
select t1.tiêu đề from bài hát as t1 join ban nhạc as t2 on t1."id bài hát" = t2."id" where t2.tên = "Marianne"
select t3.tên , t3.họ  from buổi biểu diễn as t1  join bài hát as t2 on t1.id bài hát = t2.id bài hát  join ban nhạc as t3 on t1.nghệ sĩ trong ban nhạc = t3.id  where t2.tiêu đề = "Badlands"
select t2.tên , t2.họ  from buổi biểu diễn as t1  join ban nhạc as t2  on t1.nghệ sĩ trong ban nhạc = t2.id  where t1.id bài hát in ( select id bài hát from bài hát where tiêu đề = "Badlands" )
select t2.tên , t2.họ  from buổi biểu diễn as t1  join bài hát as t2 on t1.id bài hát = t2.id bài hát  join nghệ sĩ trong ban nhạc as t3 on t1.nghệ sĩ trong ban nhạc = t3.id  where t1.vị trí trên sân khấu = "hậu trường" and t2.tiêu đề = "Badlands"
select t1.tên , t1.họ  from ban nhạc as t1  join buổi biểu diễn as t2 on t1.id = t2.nghệ sĩ trong ban nhạc  join bài hát as t3 on t2.id bài hát = t3.id bài hát  where t2.vị trí trên sân khấu = "hậu trường" and t3.tiêu đề = "Badlands"
select count(distinct "hãng thu âm") from "album"
select count(distinct "hãng thu âm") from "album"
select "hãng thu âm" from "album" group by "hãng thu âm" order by count(*) desc limit 1
select "hãng thu âm" from "album" group by "hãng thu âm" order by count(*) desc limit 1
select t1.họ from ban nhạc as t1 join nhạc cụ as t2 on t1.id = t2.id nghệ sĩ trong ban nhạc group by t2.id nghệ sĩ trong ban nhạc order by count(*) desc limit 1
select t2.họ from nhạc cụ as t1 join ban nhạc as t2 on t1.id nghệ sĩ trong ban nhạc = t2.id group by t1.id nghệ sĩ trong ban nhạc order by count(*) desc limit 1
select t2.họ  from buổi biểu diễn as t1  join ban nhạc as t2 on t1.nghệ sĩ trong ban nhạc = t2.id  where t1.vị trí trên sân khấu = "hậu trường"  group by t1.vị trí trên sân khấu  order by count(*) desc  limit 1
select t1.tên , t1.họ  from ban nhạc as t1  join buổi biểu diễn as t2 on t1.id = t2.nghệ sĩ trong ban nhạc  where t2.vị trí trên sân khấu = "hậu trường"  group by t1.tên , t1.họ  order by count(*) desc  limit 1
select * from bài hát where tiêu đề like "%the%"
select tiêu đề from bài hát where tiêu đề like "%the%"
select t1.nhạc cụ from nhạc cụ as t1 join buổi biểu diễn as t2 on t1.id bài hát = t2.id bài hát where t2.vị trí trên sân khấu is not null
select t1.nhạc cụ from nhạc cụ as t1 join buổi biểu diễn as t2 on t1.id bài hát = t2.id bài hát
select t3."nhạc cụ"  from "nhạc cụ" as t3  join "ban nhạc" as t2 on t3."id nghệ sĩ trong ban nhạc" = t2."id"  join "bài hát" as t1 on t2."id bài hát" = t1."id bài hát"  where t2."họ" = 'Heilo' and t1."tiêu đề" = 'Le Pop'
select t3."nhạc cụ"  from "nhạc cụ" as t3  join "ban nhạc" as t2 on t3."id nghệ sĩ trong ban nhạc" = t2."id"  join "bài hát" as t1 on t3."id bài hát" = t1."id bài hát"  join "giọng hát" as t4 on t4."id bài hát" = t1."id bài hát"  where t2."họ" = 'Heilo' and t1."tiêu đề" = 'Le Pop'
select nhạc cụ from nhạc cụ group by nhạc cụ order by count(*) desc limit 1
select t1.nhạc cụ from nhạc cụ as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát group by t1.nhạc cụ order by count(*) desc limit 1
select count(*) from nhạc cụ as t1 join bài hát as t2 on t1."id bài hát" = t2."id bài hát" where t1."nhạc cụ" = 'guitar'
select count(*) from nhạc cụ as t1 join bài hát as t2 on t1."id bài hát" = t2."id bài hát" where t1."nhạc cụ" = 'trống'
select t3.nhạc cụ from bài hát as t1 join giọng hát as t2 on t1."id bài hát" = t2."id bài hát" join nhạc cụ as t3 on t2."id bài hát" = t3."id bài hát" where t1."tiêu đề" = 'Le Pop' group by t3.nhạc cụ
select t3.nhạc cụ from bài hát as t1  join giọng hát as t2 on t1."id bài hát" = t2."id bài hát"  join nhạc cụ as t3 on t2."id bài hát" = t3."id bài hát"  where t1."tiêu đề" = 'Le Pop'
select count(distinct t3."nhạc cụ")  from "bài hát" as t1  join "nhạc cụ" as t3 on t1."id bài hát" = t3."id bài hát"  where t1."tiêu đề" = 'Le Pop'
select distinct nhạc cụ from nhạc cụ as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where t2.tiêu đề = "Le Pop"
select count(distinct t2.nhạc cụ)  from nhạc cụ as t2  join ban nhạc as t1 on t2.id nghệ sĩ trong ban nhạc = t1.id  where t1.họ = "Heilo"
select count(distinct t2.nhạc cụ)  from nhạc cụ as t2  join ban nhạc as t1 on t2.id nghệ sĩ trong ban nhạc = t1.id  where t1.họ = "Hello"
select t1.nhạc cụ from nhạc cụ as t1 join ban nhạc as t2 on t1.id nghệ sĩ trong ban nhạc = t2.id where t2.họ = "Heilo"
select t2.nhạc cụ from nhạc cụ as t2 join ban nhạc as t1 on t2.id nghệ sĩ trong ban nhạc = t1.id where t1.họ = "Hello" group by t2.nhạc cụ
select t1."id bài hát", count(*)  from "giọng hát" as t1  join "bài hát" as t2 on t1."id bài hát" = t2."id bài hát"  group by t1."id bài hát"  order by count(*) desc  limit 1
select t1."id bài hát"  from "giọng hát" as t1  join "bài hát" as t2 on t1."id bài hát" = t2."id bài hát"  group by t1."id bài hát"  order by count(*) desc  limit 1
select loại from giọng hát group by loại order by count(*) desc limit 1
select loại from giọng hát group by loại order by count(*) desc limit 1
select t3.loại  from giọng hát as t3  join ban nhạc as t2 on t3.nghệ sĩ trong ban nhạc = t2.id  join nhạc cụ as t1 on t3.id bài hát = t1.id bài hát  where t2.họ = "Hello"  group by t3.loại  order by count(*) desc  limit 1
select t3.loại  from giọng hát as t3  join ban nhạc as t2 on t3.nghệ sĩ trong ban nhạc = t2.id  join nhạc cụ as t1 on t1.id bài hát = t3.id bài hát  where t2.họ = "Hello"  group by t3.loại  order by count(*) desc  limit 1
select distinct t1."loại"  from "giọng hát" as t1  join "bài hát" as t2 on t1."id bài hát" = t2."id bài hát"  where t2."tiêu đề" = 'Le Pop'
select t3.loại  from bài hát as t1  join buổi biểu diễn as t2 on t1."id bài hát" = t2."id bài hát"  join giọng hát as t3 on t2."id bài hát" = t3."id bài hát"  where t1."tiêu đề" = 'Le Pop'
select count(t2.loại) from bài hát as t1 join giọng hát as t2 on t1."id bài hát" = t2."id bài hát" where t1."tiêu đề" = "Demon Kitty Rag"
select count(*) from giọng hát as t1 join bài hát as t2 on t1."id bài hát" = t2."id bài hát" where t2."tiêu đề" = 'Demon Kitty Rag'
select count(*) from giọng hát as t1 join bài hát as t2 on t1."id bài hát" = t2."id bài hát" where t1."loại" = 'chính'
select count(*) from giọng hát as t1 join bài hát as t2 on t1."id bài hát" = t2."id bài hát" where t1."loại" = 'chính'
select t3."loại"  from "giọng hát" as t3  join "ban nhạc" as t2 on t3."nghệ sĩ trong ban nhạc" = t2."id"  join "bài hát" as t1 on t3."id bài hát" = t1."id bài hát"  join "buổi biểu diễn" as t4 on t3."id bài hát" = t4."id bài hát"  where t2."tên" = 'Solveig' and t1."tiêu đề" = 'Amsterdam Bar'
select t3."loại"  from "giọng hát" as t3  join "ban nhạc" as t2 on t3."nghệ sĩ trong ban nhạc" = t2."id"  join "bài hát" as t1 on t2."id bài hát" = t1."id bài hát"  join "buổi biểu diễn" as t4 on t4."id bài hát" = t1."id bài hát"  where t2."tên" = 'Solveig' and t1."tiêu đề" = 'Amsterdam Bar'
select * from "bài hát" except select * from "bài hát" where "id bài hát" in (select "id bài hát" from "giọng hát" where "loại" = 'chính')
select tiêu đề from bài hát except select t3.tiêu đề from giọng hát as t3 join bài hát as t2 on t3.id bài hát = t2.id bài hát where t3.loại = "chính"
select distinct loại from giọng hát
select distinct loại from giọng hát
select tiêu đề, năm from album where năm = 2010
select tiêu đề, năm from album where năm = 2010
select t2.tên  from buổi biểu diễn as t1  join bài hát as t2 on t1.id bài hát = t2.id bài hát  join ban nhạc as t3 on t1.nghệ sĩ trong ban nhạc = t3.id  where t2.tiêu đề = "Le Pop"
select t1.tên , t1.họ  from ban nhạc as t1  join buổi biểu diễn as t2 on t1.id = t2.nghệ sĩ trong ban nhạc  where t2.tiêu đề = "Le Pop"
select t2.họ from nhạc cụ as t1 join ban nhạc as t2 on t1.id nghệ sĩ trong ban nhạc = t2.id group by t1.id nghệ sĩ trong ban nhạc order by count(*) desc limit 1
select t2.họ from nhạc cụ as t1 join ban nhạc as t2 on t1.id nghệ sĩ trong ban nhạc = t2.id group by t1.id nghệ sĩ trong ban nhạc order by count(*) desc limit 1
select t3."nhạc cụ"  from "nhạc cụ" as t3  join "ban nhạc" as t2 on t3."id nghệ sĩ trong ban nhạc" = t2."id"  join "bài hát" as t1 on t2."id bài hát" = t1."id bài hát"  join "giọng hát" as t4 on t4."id bài hát" = t1."id bài hát"  where t2."họ" = 'Heilo' and t1."tiêu đề" = 'Badlands'
select t3."nhạc cụ"  from "nhạc cụ" as t3  join "ban nhạc" as t2 on t3."id nghệ sĩ trong ban nhạc" = t2."id"  join "bài hát" as t1 on t2."id bài hát" = t1."id bài hát"  join "giọng hát" as t4 on t4."id bài hát" = t1."id bài hát"  where t4."nghệ sĩ trong ban nhạc" = 'Hello' and t1."tiêu đề" = 'Badlands'
select count(*) from nhạc cụ as t1 join bài hát as t2 on t1."id bài hát" = t2."id bài hát" where t2."tiêu đề" = 'Badlands'
select distinct count(t2.nhạc cụ)  from bài hát as t1  join nhạc cụ as t2 on t1."id bài hát" = t2."id bài hát"  where t1."tiêu đề" = 'Badlands'
select t3.loại  from giọng hát as t3  join buổi biểu diễn as t2 on t3.id bài hát = t2.id bài hát  join bài hát as t1 on t2.id bài hát = t1.id bài hát  where t1.tiêu đề = "Badlands"
select distinct t3.loại from bài hát as t1 join giọng hát as t2 on t1."id bài hát" = t2."id bài hát" join bài hát as t3 on t2."id bài hát" = t3."id bài hát" where t1."tiêu đề" = 'Badlands'
select t1.loại from giọng hát as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where t2.tiêu đề = "Le Pop" group by t1.loại
select count(distinct t2.loại)  from bài hát as t1  join giọng hát as t2 on t1."id bài hát" = t2."id bài hát"  where t1."tiêu đề" = 'Le Pop'
select count(*) from giọng hát as t1 join bài hát as t2 on t1."id bài hát" = t2."id bài hát" group by t1."id bài hát" having count(*) > 1
select count(distinct t1."id bài hát")  from "giọng hát" as t1  join "bài hát" as t2 on t1."id bài hát" = t2."id bài hát"  group by t1."id bài hát"  having count(*) > 1
select "id bài hát" from "giọng hát" where "loại" = 'bass' except select "id bài hát" from "giọng hát"
select "tiêu đề" from "bài hát" where "id bài hát" not in (select "id bài hát" from "giọng hát" where "loại" = 'phụ')
select t3."loại"  from "giọng hát" as t3  join "ban nhạc" as t2 on t3."id bài hát" = t2."id"  join "nhạc cụ" as t1 on t2."id" = t1."id nghệ sĩ trong ban nhạc"  where t1."tên" = 'Solveig'  group by t3."loại"  order by count(*) desc  limit 1
select t3.loại  from giọng hát as t3  join ban nhạc as t2 on t3.nghệ sĩ trong ban nhạc = t2.id  join nhạc cụ as t1 on t2.id = t1.id nghệ sĩ trong ban nhạc  where t2.tên = "Solveig"  group by t3.loại  order by count(*) desc  limit 1
select t3."loại"  from "giọng hát" as t3  join "ban nhạc" as t2 on t3."nghệ sĩ trong ban nhạc" = t2."id"  join "bài hát" as t1 on t3."id bài hát" = t1."id bài hát"  join "buổi biểu diễn" as t4 on t4."nghệ sĩ trong ban nhạc" = t2."id"  where t2."họ" = 'Hello' and t1."tiêu đề" = 'Der Kapitan'
select t3."loại"  from "giọng hát" as t3  join "ban nhạc" as t2 on t3."nghệ sĩ trong ban nhạc" = t2."id"  join "bài hát" as t1 on t3."id bài hát" = t1."id bài hát"  join "nhạc cụ" as t4 on t4."id bài hát" = t1."id bài hát"  where t2."họ" = 'Hello' and t1."tiêu đề" = 'Der Kapitan'
select t1.tên , t1.họ from ban nhạc as t1 join buổi biểu diễn as t2 on t1.id = t2.nghệ sĩ trong ban nhạc group by t2.nghệ sĩ trong ban nhạc order by count ( * ) desc limit 1
select t1.tên , t1.họ  from ban nhạc as t1  join buổi biểu diễn as t2  on t1.id = t2.nghệ sĩ trong ban nhạc  group by t2.nghệ sĩ trong ban nhạc  order by count(*) desc  limit 1
select t3.loại  from giọng hát as t3  join ban nhạc as t2 on t3.id nghệ sĩ trong ban nhạc = t2.id  where t2.tên = "Marianne"  group by t3.loại  order by count(*) desc  limit 1
select t1.loại  from giọng hát as t1  join ban nhạc as t2 on t1.id nghệ sĩ trong ban nhạc = t2.id  where t2.tên = "Marianne"  group by t1.loại  order by count(*) desc  limit 1
select t3.tên , t3.họ  from buổi biểu diễn as t1  join bài hát as t2 on t1.id bài hát = t2.id bài hát  join nghệ sĩ trong ban nhạc as t3 on t1.nghệ sĩ trong ban nhạc = t3.id  where t2.tiêu đề = "Der Kapitan" and t1.vị trí trên sân khấu = "hậu trường"
select t1.tên , t1.họ  from ban nhạc as t1  join buổi biểu diễn as t2 on t1.id = t2.nghệ sĩ trong ban nhạc  join bài hát as t3 on t2.id bài hát = t3.id bài hát  where t3.tiêu đề = "Der Kapitan" and t2.vị trí trên sân khấu = "hậu trường"
select tiêu đề from bài hát except select t3.tiêu đề from giọng hát as t3 join bài hát as t2 on t3.id bài hát = t2.id bài hát where t3.loại = "phụ"
select tiêu đề from bài hát where id bài hát not in (select id bài hát from giọng hát where loại = "phụ")
select t3."tiêu đề"  from "album" as t1  join "danh sách bài hát" as t2 on t1."id album" = t2."id album"  join "bài hát" as t3 on t2."id bài hát" = t3."id bài hát"  where t1."tiêu đề" = 'A Wedding Before You Leave Hamburg'
select t3."tiêu đề"  from "album" as t1  join "danh sách bài hát" as t2 on t1."id album" = t2."id album"  join "bài hát" as t3 on t2."id bài hát" = t3."id bài hát"  where t1."tiêu đề" = 'A Wedding Before You Leave : Living in Hamburg'
select t3.tiêu đề from album as t1 join danh sách bài hát as t2 on t1.id album = t2.id album join bài hát as t3 on t2.id bài hát = t3.id bài hát where t1.hãng thu âm = "Universal Music Group"
select t3."tiêu đề"  from "danh sách bài hát" as t2  join "bài hát" as t3 on t2."id bài hát" = t3."id bài hát"  join "album" as t1 on t1."id album" = t2."id album"  where t1."hãng thu âm" = 'Universal Music Group'
select count(*)  from album as t1  join danh sách bài hát as t2 on t1."id album" = t2."id album"  where t1."loại" = 'phòng thu'
select count(*) from album as t1 join danh sách bài hát as t2 on t1."id album" = t2."id album" where t1."loại" = 'phòng thu'
select t1.khách hàng tốt hay xấu  from khách hàng as t1  join phiếu giảm giá as t2  on t1.id phiếu giảm giá = t2.id phiếu giảm giá  where t2.số tiền giảm giá = 500
select t1."id khách hàng", t1."tên", count(*)  from "lượt đặt mua" as t1  join "khách hàng" as t2 on t1."id khách hàng" = t2."id khách hàng"  group by t1."id khách hàng"
select t1."id khách hàng", sum("số tiền phải trả")  from "khách hàng" as t1  join "lượt đặt mua" as t2 on t1."id khách hàng" = t2."id khách hàng"  group by t1."id khách hàng"  order by sum("số tiền phải trả") desc  limit 1
select t1."id đặt mua", t1."số tiền hoàn trả"  from "lượt đặt mua" as t1  join "thanh toán" as t2 on t1."id đặt mua" = t2."id đặt mua"  group by t1."id đặt mua"  order by count(*) desc  limit 1
select t1."id sản phẩm"  from "sản phẩm được đặt" as t1  join "sản phẩm cho thuê" as t2 on t1."id sản phẩm" = t2."id sản phẩm"  group by t1."id sản phẩm"  having count(*) = 3
select t2.mô tả Sản phẩm  from sản phẩm được đặt as t1  join sản phẩm cho thuê as t2  on t1.id sản phẩm = t2.id sản phẩm  where t1.số tiền đã đặt = 102.76
select t1.ngày bắt đầu đặt mua, t1.ngày kết thúc đặt mua  from lượt đặt mua as t1  join sản phẩm được đặt as t2 on t1.id đặt mua = t2.id đặt mua  where t2.tên sản phẩm = "Bộ sưu tập sách"
select tên sản phẩm from sản phẩm có sẵn where có sẵn hay không = "có"
select count(distinct "mã loại sản phẩm") from "sản phẩm cho thuê"
select tên , họ , giới tính from khách hàng where khách hàng tốt hay xấu = "tốt" order by họ
select avg("số tiền nợ") from "thanh toán"
select số lượng đặt mua from sản phẩm được đặt group by số lượng đặt mua order by số lượng đặt mua desc limit 1
select distinct "mã loại thanh toán" from "thanh toán"
select chi phí thuê hàng ngày from sản phẩm cho thuê where tên sản phẩm like "%Book%"
select distinct id sản phẩm from sản phẩm được đặt as t1 join sản phẩm có sẵn as t2 on t1.id sản phẩm = t2.id sản phẩm where t1.đã trả lại hay chưa = "Không" and t2.số tiền đã đặt > 200 order by t2.số tiền đã đặt desc
select t1."số tiền giảm giá"  from "phiếu giảm giá" as t1  join "khách hàng" as t2 on t1."id phiếu giảm giá" = t2."id phiếu giảm giá"  where t2."khách hàng tốt hay xấu" = 'good'  intersect  select t1."số tiền giảm giá"  from "phiếu giảm giá" as t1  join "khách hàng" as t2 on t1."id phiếu giảm giá" = t2."id phiếu giảm giá"  where t2."khách hàng tốt hay xấu" = 'bad'
select ngày thanh toán from thanh toán where số tiền đã trả > 300 or mã loại thanh toán = 'Giao dịch'
select tên sản phẩm , mô tả Sản phẩm from sản phẩm cho thuê where mã loại sản phẩm = "Dao kéo" and chi phí thuê hàng ngày < 20 group by tên sản phẩm , mô tả Sản phẩm
select "tên nhà hàng" from "nhà hàng"
select t1."địa chỉ"  from "nhà hàng" as t1  join "loại nhà hàng" as t2 on t1."id nhà hàng" = t2."id nhà hàng"  where t2."tên loại nhà hàng" = 'Subway'
select t1."đánh giá xếp hạng"  from "nhà hàng" as t1  join "loại của nhà hàng" as t2 on t1."id nhà hàng" = t2."id nhà hàng"  join "loại nhà hàng" as t3 on t2."id loại nhà hàng" = t3."id loại nhà hàng"  where t3."tên loại nhà hàng" = 'Subway'
select "tên loại nhà hàng" from "loại nhà hàng"
select mô tả về loại nhà hàng from loại nhà hàng where tên loại nhà hàng = "Sandwich"
select t1."tên nhà hàng", t1."đánh giá xếp hạng"  from "nhà hàng" as t1  join "loại của nhà hàng" as t2 on t1."id nhà hàng" = t2."id nhà hàng"  order by t1."đánh giá xếp hạng" desc  limit 1
select tuổi from sinh viên where tên = "Linda" and họ = "Smith"
select giới tính from sinh viên where tên = "Linda" and họ = "Smith"
select tên , họ from sinh viên where chuyên ngành = 600
select t1."mã thành phố"  from "sinh viên" as t1  join "nhà hàng" as t2 on t1."id sinh viên" = t2."cố vấn"  where t1."tên" = 'Linda' and t1."họ" = 'Smith'
select count("id sinh viên") from "sinh viên" where "cố vấn" = 1121
select t1.cố vấn , count(*)  from "sinh viên" as t1  join "nhà hàng" as t2 on t1."cố vấn" = t2."id nhà hàng"  group by t1."cố vấn"  order by count(*) desc  limit 1
select t1."chuyên ngành", count(*)  from "sinh viên" as t1  join "chuyên ngành" as t2 on t1."chuyên ngành" = t2."id chuyên ngành"  group by t1."chuyên ngành"  order by count(*) desc  limit 1
select chuyên ngành, count(*) from sinh viên group by chuyên ngành having count(*) between 2 and 30
select tên , họ from sinh viên where tuổi > 18 and chuyên ngành = 600
select tên, họ from sinh viên where tuổi > 18 and giới tính = 'F' and chuyên ngành <> 600
select count(*) from "loại nhà hàng" as t1 join "nhà hàng" as t2 on t1."id nhà hàng" = t2."id nhà hàng" where t1."tên loại nhà hàng" = 'Sandwich'
select sum(t2."thời gian dành ra")  from "sinh viên" as t1  join "lượt ghé thăm nhà hàng" as t2 on t1."id sinh viên" = t2."id sinh viên"  join "nhà hàng" as t3 on t3."id nhà hàng" = t2."id nhà hàng"  where t1."tên" = 'Linda' and t1."họ" = 'Smith'
select count(*)  from "lượt ghé thăm nhà hàng" as t1  join "nhà hàng" as t2 on t1."id nhà hàng" = t2."id nhà hàng"  join "sinh viên" as t3 on t1."id sinh viên" = t3."id sinh viên"  where t3."tên" = 'Linda' and t3."họ" = 'Smith' and t2."tên nhà hàng" = 'Subway'
select t3."thời gian", t2."tên nhà hàng"  from "sinh viên" as t1  join "lượt ghé thăm nhà hàng" as t3 on t1."id sinh viên" = t3."id sinh viên"  join "nhà hàng" as t2 on t2."id nhà hàng" = t3."id nhà hàng"  join "loại của nhà hàng" as t4 on t4."id nhà hàng" = t2."id nhà hàng"  join "loại nhà hàng" as t5 on t5."id loại nhà hàng" = t4."id loại nhà hàng"  where t1."tên" = 'Linda' and t1."họ" = 'Smith' and t5."tên loại nhà hàng" = 'Subway'
select t1."tên nhà hàng", sum(t2."thời gian dành ra")  from "nhà hàng" as t1  join "lượt ghé thăm nhà hàng" as t2 on t1."id nhà hàng" = t2."id nhà hàng"  group by t2."id nhà hàng"  order by sum(t2."thời gian dành ra")  limit 1
select t1.tên , t1.họ  from "sinh viên" as t1  join "lượt ghé thăm nhà hàng" as t2  on t1."id sinh viên" = t2."id sinh viên"  group by t2."id sinh viên"  order by count(*) desc  limit 1
select count(distinct "họ") from "diễn viên" where "tên" = "Male" union select count(distinct "họ") from "diễn viên" where "tên" = "Female"
select count(distinct họ) from diễn viên
select t1.tên from diễn viên as t1 join diễn viên điện ảnh as t2 on t1.id diễn viên = t2.id diễn viên group by t1.tên order by count(*) desc limit 1
select t1.tên from diễn viên as t1 join diễn viên điện ảnh as t2 on t1.id diễn viên = t2.id diễn viên group by t1.tên order by count(*) desc limit 1
select t1.tên , t1.họ , count(*)  from diễn viên as t1  join diễn viên điện ảnh as t2 on t1.id diễn viên = t2.id diễn viên  group by t1.tên , t1.họ  order by count(*) desc  limit 1
select t1.tên , t1.họ  from diễn viên as t1  join diễn viên điện ảnh as t2 on t1."id diễn viên" = t2."id diễn viên"  group by t1.tên , t1.họ  order by count(*) desc  limit 1
select t1.quận from địa chỉ as t1 join thành phố as t2 on t1.id thành phố = t2.id thành phố group by t1.quận having count(*) >= 2
select quận from địa chỉ group by quận having count(*) >= 2
select số điện thoại , mã bưu điện from địa chỉ where địa chỉ = "1031 Daugavpils Parkway"
select số điện thoại , mã bưu điện from địa chỉ where địa chỉ = "1031 Daugavpils Parkway"
select t1.thành phố , count(*) , t1.id thành phố  from thành phố as t1  join địa chỉ as t2 on t1.id thành phố = t2.id thành phố  group by t1.id thành phố  order by count(*) desc  limit 1
select t1.thành phố , t1.id thành phố , count(*)  from thành phố as t1  join địa chỉ as t2 on t1.id thành phố = t2.id thành phố  group by t1.id thành phố  order by count(*) desc  limit 1
select count(*) from địa chỉ where quận = "California"
select count(*) from địa chỉ where id thành phố in (select id thành phố from thành phố where thành phố = "California")
select t3.tiêu đề , t1.id phim  from lượt cho thuê as t1  join hàng tồn kho as t2 on t1.id hàng tồn kho = t2.id hàng tồn kho  join phim as t3 on t1.id phim = t3.id phim  where t2.số lượng trong kho < 3 and t3.giá thay thế = 0,99
select t1.tiêu đề , t1.id phim  from phim as t1  join hàng tồn kho as t2 on t1.id phim = t2.id phim  where t1.giá cho thuê = 0,99 and t2.số lượng hàng tồn kho < 3
select count(*) from thành phố as t1 join quốc gia as t2 on t1.id thành phố = t2.id thành phố where t2.quốc gia = "Australia"
select count(*) from thành phố where thành phố = "Australia"
select t1.quốc gia from thành phố as t1 join quốc gia as t2 on t1.id thành phố = t2.id thành phố group by t1.id thành phố having count(*) >= 3
select t1.id quốc gia  from thành phố as t1  join quốc gia as t2 on t1.id quốc gia = t2.id quốc gia  group by t1.id quốc gia  having count(*) >= 3
select t1.ngày thanh toán  from khoản thanh toán as t1  join nhân viên as t2 on t1.id nhân viên = t2.id nhân viên  where t1.số tiền > 10 and t2.tên = "Elsa"
select t1."ngày thanh toán"  from "khoản thanh toán" as t1  join "nhân viên" as t2 on t1."id nhân viên" = t2."id nhân viên"  where t1."số tiền" > 10 or t2."tên" = 'Elsa'
select count(*) from khách hàng where có hoạt động không = 1
select count(*) from khách hàng where có hoạt động không = 'true'
select giá cho thuê from phim order by giá cho thuê desc limit 1
select tiêu đề , giá cho thuê from phim order by giá cho thuê desc limit 1
select t2.tiêu đề , t2.id phim , t2.mô tả  from diễn viên điện ảnh as t1  join phim as t2 on t1.id phim = t2.id phim  group by t1.id phim  order by count(*) desc  limit 1
select t2.tiêu đề , t1.id phim , t2.mô tả  from diễn viên điện ảnh as t1  join phim as t2 on t1.id phim = t2.id phim  group by t1.id phim  order by count(*) desc  limit 1
select t1.tên , t1.họ  from diễn viên as t1  join diễn viên điện ảnh as t2 on t1.id diễn viên = t2.id diễn viên  group by t2.id diễn viên  order by count(*) desc  limit 1
select t1.tên , t1.họ , t2.id diễn viên  from diễn viên as t1  join diễn viên điện ảnh as t2 on t1.id diễn viên = t2.id diễn viên  join phim as t3 on t2.id phim = t3.id phim  group by t2.id diễn viên  order by count(*) desc  limit 1
select t1.tên , t1.họ  from diễn viên as t1  join diễn viên điện ảnh as t2 on t1.id diễn viên = t2.id diễn viên  group by t2.id diễn viên  having count ( * ) > 30
select t1.tên , t1.họ  from diễn viên as t1  join diễn viên điện ảnh as t2 on t1.id diễn viên = t2.id diễn viên  group by t2.id diễn viên  having count(*) > 30
select t1.id cửa hàng from cửa hàng as t1 join hàng tồn kho as t2 on t1.id cửa hàng = t2.id cửa hàng group by t1.id cửa hàng order by count(*) desc limit 1
select t1."id cửa hàng", count(*)  from "hàng tồn kho" as t1  join "cửa hàng" as t2 on t1."id cửa hàng" = t2."id cửa hàng"  group by t1."id cửa hàng"  order by count(*) desc  limit 1
select sum(số tiền) from khoản thanh toán
select sum(số tiền) from khoản thanh toán
select t1.id khách hàng , t1.tên , t1.họ  from khách hàng as t1  join khoản thanh toán as t2  on t1.id khách hàng = t2.id khách hàng  group by t1.id khách hàng  having count ( * ) >= 1  order by t2.số tiền  limit 1
select t1.tên , t1.họ , t1.id khách hàng  from khách hàng as t1  join khoản thanh toán as t2 on t1.id khách hàng = t2.id khách hàng  group by t1.id khách hàng  order by sum(t2.số tiền)  limit 1
select t2.tên from phim as t1 join danh mục phim as t2 on t1.id phim = t2.id phim where t1.tiêu đề = "HUNGER ROOF"
select distinct t2.tên from phim as t1 join danh mục phim as t2 on t1.id phim = t2.id phim where t1.tiêu đề = "HUNGER ROOF"
select t1.tên , t1.id danh mục , count(*) as số lượng phim  from danh mục as t1  join danh mục phim as t2 on t1.id danh mục = t2.id danh mục  group by t1.id danh mục
select distinct t1.tên , t1.id danh mục , count ( * ) from danh mục as t1 join danh mục phim as t2 on t1.id danh mục = t2.id danh mục group by t1.id danh mục
select t1.tiêu đề , t1.id phim from văn bản phim as t1 join hàng tồn kho as t2 on t1.id phim = t2.id phim group by t1.id phim order by count ( * ) desc limit 1
select t1.tiêu đề , t1.id phim  from văn bản phim as t1  join hàng tồn kho as t2 on t1.id phim = t2.id phim  group by t1.id phim  order by count(*) desc  limit 1
select t2.tiêu đề , t1.id hàng tồn kho  from hàng tồn kho as t1  join lượt cho thuê as t2 on t1.id hàng tồn kho = t2.id hàng tồn kho  group by t2.id hàng tồn kho  order by count ( * ) desc  limit 1
select t2.tiêu đề , t1.id hàng tồn kho  from hàng tồn kho as t1  join lượt cho thuê as t2 on t1.id hàng tồn kho = t2.id hàng tồn kho  group by t2.id hàng tồn kho  order by count ( * ) desc  limit 1
select count(*) from (select t1."id ngôn ngữ" from "phim" as t1 join "ngôn ngữ" as t2 on t1."id ngôn ngữ" = t2."id ngôn ngữ" group by t1."id ngôn ngữ")
select count(distinct t1.id ngôn ngữ) from phim as t1 join ngôn ngữ as t2 on t1.id ngôn ngữ = t2.id ngôn ngữ
select t1.tiêu đề from phim as t1 join văn bản phim as t2 on t1.id phim = t2.id phim where t2.đánh giá xếp hạng = "R"
select tiêu đề from phim where đánh giá xếp hạng = "R"
select t2.địa chỉ from cửa hàng as t1 join địa chỉ as t2 on t1.id địa chỉ = t2.id địa chỉ where t1.id cửa hàng = 1
select địa chỉ from cửa hàng where id cửa hàng = 1
select t1.tên , t1.họ , t1.id nhân viên  from nhân viên as t1  join khoản thanh toán as t2  on t1.id nhân viên = t2.id nhân viên  group by t1.id nhân viên  order by count ( * ) desc  limit 1
select t1.tên , t1.họ , t1."id nhân viên"  from "nhân viên" as t1  join "khoản thanh toán" as t2 on t1."id nhân viên" = t2."id nhân viên"  group by t2."id nhân viên"  order by count(*)  limit 1
select t2.tên from phim as t1 join văn bản phim as t2 on t1.id phim = t2.id phim where t1.tiêu đề = "AIRPORT POLLOCK"
select t3.tên from phim as t1  join danh mục phim as t2 on t1.id phim = t2.id phim  join ngôn ngữ as t3 on t2.id ngôn ngữ = t3.id ngôn ngữ  where t1.tiêu đề = "AIRPORT POLLOCK"
select count(*) from cửa hàng
select count(*) from cửa hàng
select count(distinct đánh giá xếp hạng) from phim
select count(distinct đánh giá xếp hạng) from phim
select tên from phim where tính năng đặc biệt like "%Cảnh đã xoá%"
select tiêu đề from phim where tính năng đặc biệt like "% Cảnh đã xoá %"
select count(*) from hàng tồn kho where id cửa hàng = (select id cửa hàng from cửa hàng where id cửa hàng = 1)
select count(*) from hàng tồn kho as t1 join cửa hàng as t2 on t1.id cửa hàng = t2.id cửa hàng join phim as t3 on t1.id phim = t3.id phim where t2.id cửa hàng = 1
select ngày thanh toán from khoản thanh toán order by ngày thanh toán limit 1
select ngày thanh toán from khoản thanh toán order by ngày thanh toán limit 1
select t2.email from khách hàng as t1 join địa chỉ as t2 on t1.id địa chỉ = t2.id địa chỉ where t1.tên = "Linda"
select t1.địa chỉ , t1.email from khách hàng as t1 join địa chỉ as t2 on t1.id địa chỉ = t2.id địa chỉ where t1.tên = "Linda"
select tiêu đề from phim where thời lượng thuê > 100 and đánh giá xếp hạng = "PG" and giá thay thế < 200
select t1.tiêu đề from phim as t1 join văn bản phim as t2 on t1.id phim = t2.id phim where t1.thời lượng thuê > 100 or t1.đánh giá xếp hạng = "PG" and t1.giá thay thế < 200
select t1.tên , t1.họ  from khách hàng as t1  join lượt cho thuê as t2 on t1.id khách hàng = t2.id khách hàng  order by t2.ngày cho thuê  limit 1
select t1.tên , t1.họ  from khách hàng as t1  join lượt cho thuê as t2 on t1.id khách hàng = t2.id khách hàng  order by t2.ngày cho thuê  limit 1
select t1.tên , t1.họ  from nhân viên as t1  join lượt cho thuê as t2 on t1.id nhân viên = t2.id nhân viên  join khách hàng as t3 on t2.id khách hàng = t3.id khách hàng  where t3.tên = "April" and t3.họ = "Burns"
select t2.tên , t2.họ  from khách hàng as t1  join lượt cho thuê as t3 on t1.id khách hàng = t3.id khách hàng  join phim as t4 on t3.id phim = t4.id phim  join nhân viên as t2 on t3.id nhân viên = t2.id nhân viên  where t1.tên = "April" and t1.họ = "Burns"
select t1."id cửa hàng", count(*)  from "khách hàng" as t1  join "cửa hàng" as t2 on t1."id cửa hàng" = t2."id cửa hàng"  group by t1."id cửa hàng"  order by count(*) desc  limit 1
select t1."id cửa hàng"  from "khách hàng" as t1  join "cửa hàng" as t2  on t1."id cửa hàng" = t2."id cửa hàng"  group by t1."id cửa hàng"  order by count(*) desc  limit 1
select số tiền , id khoản thanh toán from khoản thanh toán order by số tiền desc limit 1
select max("số tiền") from "khoản thanh toán"
select t2.địa chỉ  from nhân viên as t1  join địa chỉ as t2 on t1.id địa chỉ = t2.id địa chỉ  where t1.tên = "Elsa"
select t2.địa chỉ  from nhân viên as t1  join địa chỉ as t2 on t1.id địa chỉ = t2.id địa chỉ  where t1.tên = "Elsa"
select tên from khách hàng where id khách hàng not in ( select t1.id khách hàng from lượt cho thuê as t1 join phim as t2 on t1.id phim = t2.id phim where t2.năm phát hành > "2005-08-23 02:06:01" )
select t1.tên from khách hàng as t1 join lượt cho thuê as t2 on t1.id khách hàng = t2.id khách hàng where t2.ngày cho thuê < '2005-08-23 02:06:01'
select count(*) from "tài xế"
select tên, thành phố quê hương, tuổi from tài xế
select đảng, count(*) from tài xế group by đảng
select tên from tài xế order by tuổi desc
select distinct thành phố quê hương from tài xế
select thành phố quê hương from tài xế group by thành phố quê hương order by count(*) desc limit 1
select t1."đảng" from "tài xế" as t1 join "trường học" as t2 on t1."id tài xế" = t2."id tài xế" where t1."thành phố quê hương" = 'Hartford' and t1."tuổi" > 40
select "thành phố quê hương" from "tài xế" where "tuổi" > 40 group by "thành phố quê hương" having count(*) >= 2
select thành phố quê hương from tài xế where tuổi > 40 except select thành phố quê hương from tài xế
select tên from tài xế where "id tài xế" not in (select "id tài xế" from xe buýt của trường học)
select t1."loại hình"  from "trường học" as t1  join "xe buýt của trường học" as t2 on t1."id trường học" = t2."id trường học"  group by t1."loại hình"  having count(*) = 2
select t1."trường học", t2."tên"  from "trường học" as t1  join "xe buýt của trường học" as t2  on t1."id trường học" = t2."id trường học"
select avg("số năm làm việc"), max("số năm làm việc"), min("số năm làm việc") from "xe buýt của trường học"
select trường học, loại hình from trường học where id trường học not in (select id trường học from xe buýt của trường học)
select t1."loại hình", count(*)  from "trường học" as t1  join "xe buýt của trường học" as t2 on t1."id trường học" = t2."id trường học"  group by t1."loại hình"
select count(*) from "tài xế" where "thành phố quê hương" = 'Hartford' or "tuổi" < 40
select tên from tài xế where thành phố quê hương = "Hartford" and tuổi < 40
select distinct t1.tên from tài xế as t1 join xe buýt của trường học as t2 on t1."id tài xế" = t2."id tài xế" order by t2."số năm làm việc" desc limit 1
select count(*) from "trường học"
select count(*) from "trường học"
select địa điểm from trường học order by số lượng nhập học asc limit 1
select địa điểm, số lượng nhập học from trường học order by số lượng nhập học asc
select địa điểm from trường học order by năm thành lập desc limit 1
select địa điểm from trường học order by năm thành lập desc
select "số lượng nhập học" from "trường học" where "tôn giáo" != 'Công giáo'
select số lượng nhập học from trường học where tôn giáo != "Công giáo"
select avg("số lượng nhập học") from "trường học"
select avg("số lượng nhập học") from "trường học"
select đội from cầu thủ order by đội asc
select đội from cầu thủ order by đội asc
select count(distinct vị trí) from cầu thủ
select count(distinct vị trí) from cầu thủ
select t1.đội  from cầu thủ as t1  join trường học as t2 on t1.id trường = t2.id trường  where t1.tuổi = (select max(tuổi) from cầu thủ)  order by t1.tuổi desc  limit 1
select t1.đội  from cầu thủ as t1  join trường học as t2 on t1.id trường = t2.id trường  order by t1.tuổi desc  limit 1
select t2.đội  from cầu thủ as t1  join trường học as t2  on t1.id trường = t2.id trường  order by t1.tuổi desc  limit 5
select t1.đội  from cầu thủ as t1  join trường học as t2 on t1.id trường = t2.id trường  order by t1.tuổi desc  limit 5
select t2.đội , t1.địa điểm  from trường học as t1  join cầu thủ as t2  on t1.id trường = t2.id trường
select t2.đội , t1.địa điểm  from trường học as t1  join cầu thủ as t2  on t1.id trường = t2.id trường
select t1."địa điểm"  from "trường học" as t1  join "cầu thủ" as t2 on t1."id trường" = t2."id trường"  group by t1."id trường"  having count(*) > 1
select t1.địa điểm from trường học as t1 join cầu thủ as t2 on t1.id trường = t2.id trường group by t1.id trường having count(*) > 1
select t1.tôn giáo from trường học as t1 join cầu thủ as t2 on t1."id trường" = t2."id trường" group by t2."id trường" order by count(*) desc limit 1
select t2.tôn giáo from trường học as t2 join cầu thủ as t1 on t2."id trường" = t1."id trường" group by t1."id trường" order by count(*) desc limit 1
select t1.địa điểm , t2.biệt danh from trường học as t1 join chi tiết trường học as t2 on t1.id trường = t2.id trường
select t2.biệt danh , t1.địa điểm from trường học as t1 join chi tiết trường học as t2 on t1.id trường = t2.id trường
select tôn giáo, count(*) from trường học group by tôn giáo
select tôn giáo , count ( * ) from trường học group by tôn giáo
select tôn giáo, count(*) from trường học group by tôn giáo order by count(*) desc
select tôn giáo, count(*) from trường học group by tôn giáo order by count(*) desc
select t1."màu của trường" from "trường học" as t1 join "chi tiết trường học" as t2 on t1."id trường" = t2."id trường" where t1."số lượng nhập học" = ( select max("số lượng nhập học") from "trường học" )
select t1.màu của trường , t2.màu sắc  from trường học as t1  join chi tiết trường học as t2  on t1.id trường = t2.id trường  where t1.số lượng nhập học = ( select max ( số lượng nhập học ) from trường học )
select địa điểm from trường học except select id trường from cầu thủ
select địa điểm from trường học except select t1."id trường" from trường học as t1 join cầu thủ as t2 on t1."id trường" = t2."id trường"
select tôn giáo from trường học where năm thành lập < 1890 intersect select tôn giáo from trường học where năm thành lập > 1900
select distinct t2.tôn giáo from trường học as t1 join chi tiết trường học as t2 on t1.id trường = t2.id trường where t1.năm thành lập < 1890 intersect select distinct t2.tôn giáo from trường học as t1 join chi tiết trường học as t2 on t1.id trường = t2.id trường where t1.năm thành lập > 1900
select biệt danh from chi tiết trường học where phân hạng <> 1
select biệt danh from chi tiết trường học where phân hạng <> 1
select tôn giáo from trường học group by tôn giáo having count(*) > 1
select tôn giáo from trường học group by tôn giáo having count(*) > 1
select t1.tên , t2.tên from quốc gia as t1 join giải đấu as t2 on t1.id = t2.id quốc gia
select count(*) from giải đấu as t1 join quốc gia as t2 on t1.id quốc gia = t2.id where t2.tên = "England"
select avg(cân nặng) from cầu thủ
select cân nặng from cầu thủ order by cân nặng desc limit 1
select tên cầu thủ from đặc điểm của cầu thủ where đánh giá tổng thể > ( select avg ( đánh giá tổng thể ) from đặc điểm của cầu thủ )
select tên cầu thủ from đặc điểm của cầu thủ order by rê bóng desc limit 1
select tên cầu thủ from đặc điểm của cầu thủ where tạt bóng > 90 and chân thuận = "r" group by tên cầu thủ
select tên cầu thủ from đặc điểm của cầu thủ where chân thuận = "left" and đánh giá tổng thể >= 85 and đánh giá tổng thể <= 90 group by tên cầu thủ
select avg(tiềm năng), avg(chân thuận) from "đặc điểm của cầu thủ" where "chân thuận" = 'r'
select count(*) from "đặc điểm của cầu thủ" where "đánh giá tổng thể" > 80
select "id cầu thủ api của fifa", "id cầu thủ api", "ngày", "đánh giá tổng thể" from "đặc điểm của cầu thủ" where "chiều cao" >= 180 and "đánh giá tổng thể" > 85 group by "id cầu thủ api của fifa" having "đánh giá tổng thể" > 85
select id from đặc điểm của cầu thủ where chân thuận = "left" and chiều cao between 180 and 190 group by id
select tên cầu thủ from đặc điểm của cầu thủ order by đánh giá tổng thể desc limit 3
select tên cầu thủ , ngày sinh from đặc điểm của cầu thủ order by tiềm năng desc limit 1
select distinct tên quận from quận order by diện tích của các thành phố desc
select tên quận from quận order by diện tích của các thành phố desc limit 1
select "kích thước trang tối đa" from "sản phẩm" group by "kích thước trang tối đa" having count(*) > 3
select t1."kích thước trang tối đa"  from "sản phẩm" as t1  join "sản phẩm của cửa hàng" as t2 on t1."id sản phẩm" = t2."id sản phẩm"  group by t1."kích thước trang tối đa"  having count(*) > 3
select tên quận, dân số thành phố from quận where dân số thành phố >= 200000 and dân số thành phố <= 20000000
select tên quận , dân số thành phố from quận where dân số thành phố between 200000 and 2000000 group by tên quận having count ( * ) = 1
select tên quận from quận where diện tích của các thành phố > 10 or dân số thành phố > 100000
select tên quận from quận where diện tích của các thành phố > 10 or dân số thành phố > 100000 group by tên quận having count(*) > 1
select tên quận from quận order by dân số thành phố desc limit 1
select tên quận from quận order by dân số thành phố desc limit 1
select "tên quận" from "quận" order by "diện tích của các thành phố" asc limit 1
select tên quận from quận order by diện tích của các thành phố asc limit 1
select sum(dân số thành phố) from quận order by diện tích của các thành phố desc limit 3
select sum(dân số thành phố) from quận where id quận in (select id quận from quận của cửa hàng group by id quận order by diện tích của các thành phố desc limit 3)
select loại, count(*) from cửa hàng group by loại
select loại , count(*) from cửa hàng group by loại
select t1."tên cửa hàng"  from "cửa hàng" as t1  join "quận của cửa hàng" as t2  on t1."id cửa hàng" = t2."id cửa hàng"  where t2."id quận" = (select "id quận" from "quận" where "tên quận" = 'Khanewal')
select t1."tên cửa hàng"  from "cửa hàng" as t1  join "quận của cửa hàng" as t2  on t1."id cửa hàng" = t2."id cửa hàng"  where t2."id quận" = (select "id quận" from "quận" where "tên quận" = 'Khanewal')
select t1."tên cửa hàng"  from "cửa hàng" as t1  join "quận của cửa hàng" as t2 on t1."id cửa hàng" = t2."id cửa hàng"  join "quận" as t3 on t2."id quận" = t3."id quận"  where t3."dân số thành phố" = (select max("dân số thành phố") from "quận")
select t1.tên quận , t2.tên cửa hàng  from quận as t1  join quận của cửa hàng as t3 on t1.id quận = t3.id quận  join cửa hàng as t2 on t3.id cửa hàng = t2.id cửa hàng  group by t1.tên quận  order by count ( * ) desc  limit 1
select t2.thành phố của các trụ sở  from cửa hàng as t1  join quận as t2 on t1.id cửa hàng = t2.id quận  where t1.tên cửa hàng = "Blackville"
select t2.thành phố của các trụ sở  from cửa hàng as t1  join quận as t2  on t1.id cửa hàng = t2.id quận  where t1.tên cửa hàng = "Blackville"
select t1.tên quận , count(*)  from quận as t1  join quận của cửa hàng as t2  on t1.id quận = t2.id quận  group by t1.tên quận
select t1.tên quận , count ( * ) from quận as t1 join quận của cửa hàng as t2 on t1.id quận = t2.id quận group by t1.tên quận
select t1."tên quận"  from "quận" as t1  join "quận của cửa hàng" as t2 on t1."id quận" = t2."id quận"  group by t1."tên quận"  order by count(*) desc  limit 1
select t1."tên quận"  from "quận" as t1  join "quận của cửa hàng" as t2 on t1."id quận" = t2."id quận"  group by t1."tên quận"  order by count(*) desc  limit 1
select avg("số trang màu trên từng phút") from "sản phẩm"
select avg("số trang màu trên từng phút") from "sản phẩm"
select t2."sản phẩm"  from "sản phẩm của cửa hàng" as t1  join "sản phẩm" as t2 on t1."id sản phẩm" = t2."id sản phẩm"  join "cửa hàng" as t3 on t1."id cửa hàng" = t3."id cửa hàng"  where t3."tên cửa hàng" = 'Miramichi'
select t2."sản phẩm"  from "sản phẩm của cửa hàng" as t1  join "sản phẩm" as t2 on t1."id sản phẩm" = t2."id sản phẩm"  join "cửa hàng" as t3 on t1."id cửa hàng" = t3."id cửa hàng"  where t3."tên cửa hàng" = 'Miramichi'
select "sản phẩm" from "sản phẩm" where "kích thước trang tối đa" = 'A 4' and "số trang màu trên từng phút" < 5
select "sản phẩm" from "sản phẩm" where "kích thước trang tối đa" = 'A 4' and "số trang màu trên từng phút" < 5
select * from sản phẩm where kích thước trang tối đa = 'A 4' or số trang màu trên từng phút < 5
select "sản phẩm" from "sản phẩm" where "kích thước trang tối đa" = 'A 4' or "số trang màu trên từng phút" < 5
select "sản phẩm" from "sản phẩm" where "sản phẩm" like "%Scanner%"
select "sản phẩm" from "sản phẩm" where "sản phẩm" like "%Scanner%"
select "kích thước trang tối đa" from "sản phẩm" group by "kích thước trang tối đa" order by count(*) desc limit 1
select "kích thước trang tối đa" from "sản phẩm" group by "kích thước trang tối đa" order by count(*) desc limit 1
select "sản phẩm" from "sản phẩm" where "kích thước trang tối đa" = ( select max("số trang màu trên từng phút") from "sản phẩm" ) except select "sản phẩm" from "sản phẩm" where "kích thước trang tối đa" = ( select max("số trang màu trên từng phút") from "sản phẩm" ) group by "sản phẩm" order by count("số trang màu trên từng phút") desc
select "sản phẩm" from "sản phẩm" where "kích thước trang tối đa" != 'A4'
select sum(dân số thành phố) from quận where diện tích của các thành phố > (select avg(diện tích của các thành phố) from quận)
select sum(dân số thành phố) from quận where diện tích của các thành phố > (select avg(diện tích của các thành phố) from quận)
select t1.tên quận from quận as t1 join quận của cửa hàng as t2 on t1.id quận = t2.id quận where t2.id cửa hàng in ( select id cửa hàng from cửa hàng where loại = "trung tâm mua sắm" ) and t2.id quận in ( select id quận from quận where tên quận = "Bình dân" )
select t1.id quận from quận as t1 join cửa hàng as t2 on t1.id quận = t2.id quận where t2.loại = "trung tâm mua sắm" group by t1.id quận having count(*) = (select count(*) from cửa hàng where id quận = t1.id quận and loại = "trung tâm mua sắm") and count(*) = (select count(*) from cửa hàng where id quận = t1.id quận and loại = "cửa hàng bình dân")
select count(*) from "khu vực"
select count(*) from khu vực
select "mã khu vực", "tên khu vực" from "khu vực" order by "mã khu vực"
select "mã khu vực", "tên khu vực" from "khu vực" order by "mã khu vực"
select tên khu vực from khu vực order by tên khu vực
select "tên khu vực" from "khu vực" order by "tên khu vực"
select tên khu vực from khu vực where tên khu vực != "Scotland" except select tên khu vực from khu vực where tên khu vực = "Scotland"
select tên khu vực from khu vực where tên khu vực != "Scotland"
select count(*) from "bão" where "số lượng người chết" > 0
select count(*) from "bão" where "số lượng người chết" > 0
select tên , ngày hoạt động , số lượng người chết from bão group by tên having số lượng người chết >= 1
select tên , ngày hoạt động , số lượng người chết  from bão  where số lượng người chết >= 1  group by tên  having count ( * ) >= 1
select tên, avg(thiệt hại theo triệu usd), max(thiệt hại theo triệu usd)  from bão  where tốc độ tối đa > 1000  group by tên
select avg("thiệt hại theo triệu usd"), max("thiệt hại theo triệu usd") from "bão" where "tốc độ tối đa" > 1000
select count(*) from "bão" where "tốc độ tối đa" > (select avg("tốc độ tối đa") from "bão")
select sum("số lượng người chết"), sum("thiệt hại theo triệu usd")  from "bão"  where "tốc độ tối đa" > (select avg("tốc độ tối đa") from "bão")
select tên , thiệt hại theo triệu usd from bão order by tốc độ tối đa desc
select tên , thiệt hại theo triệu usd from bão order by tốc độ tối đa desc
select count(*) from khu vực bị ảnh hưởng
select count(distinct t1."id khu vực") from "khu vực bị ảnh hưởng" as t2  join "khu vực" as t1 on t2."id khu vực" = t1."id khu vực"
select "tên khu vực" from "khu vực" except select "tên khu vực" from "khu vực" where "id khu vực" in (select "id khu vực" from "khu vực bị ảnh hưởng" join "bão" on "id bão" = "id cơn bão")
select "tên khu vực" from "khu vực" except select "tên khu vực" from "khu vực bị ảnh hưởng"
select t1."tên khu vực", count(*)  from "khu vực" as t1  join "khu vực bị ảnh hưởng" as t2 on t1."id khu vực" = t2."id khu vực"  group by t1."tên khu vực"
select count(*), t1."tên khu vực"  from "khu vực bị ảnh hưởng" as t2  join "khu vực" as t1 on t2."id khu vực" = t1."id khu vực"  join "bão" as t3 on t2."id bão" = t3."id cơn bão"  group by t1."tên khu vực"
select t1.tên , count(*)  from bão as t1  join khu vực bị ảnh hưởng as t2  on t1."id cơn bão" = t2."id bão"  group by t1."id cơn bão"
select t1.tên , count(*) from bão as t1 join khu vực bị ảnh hưởng as t2 on t1."id cơn bão" = t2."id bão" group by t1."id cơn bão"
select t1.tên , t1.tốc độ tối đa  from bão as t1  join khu vực bị ảnh hưởng as t2  on t1.id cơn bão = t2.id bão  group by t2.id bão  order by count ( * ) desc  limit 1
select t1.tên , t1.tốc độ tối đa  from bão as t1  join khu vực bị ảnh hưởng as t2 on t1.id cơn bão = t2.id bão  group by t2.id bão  order by count ( * ) desc  limit 1
select tên from bão except select t1.tên from bão as t1 join khu vực bị ảnh hưởng as t2 on t1."id cơn bão" = t2."id bão"
select tên from bão where "id cơn bão" not in (select "id cơn bão" from khu vực bị ảnh hưởng)
select t1.tên  from bão as t1  join khu vực bị ảnh hưởng as t2 on t1."id cơn bão" = t2."id bão"  join khu vực as t3 on t2."id khu vực" = t3."id khu vực"  group by t1."id cơn bão"  having count(*) >= 2 and count(*) <= 10
select t1.tên  from bão as t1  join khu vực bị ảnh hưởng as t2 on t1."id cơn bão" = t2."id bão"  join khu vực as t3 on t2."id khu vực" = t3."id khu vực"  group by t1."id cơn bão"  having count(*) >= 2 and sum(t2."số thành phố bị ảnh hưởng") >= 10
select tên from bão except select t1.tên from bão as t1 join khu vực bị ảnh hưởng as t2 on t1."id cơn bão" = t2."id bão" group by t2."id bão" having count(*) >= 2
select t1.tên from bão as t1  join khu vực bị ảnh hưởng as t2 on t1."id cơn bão" = t2."id bão"  group by t1."id cơn bão"  having count(*) > 2
select t1."tên khu vực"  from "khu vực bị ảnh hưởng" as t2  join "khu vực" as t1 on t2."id khu vực" = t1."id khu vực"  join "bão" as t3 on t2."id bão" = t3."id cơn bão"  where t3."số lượng người chết" >= 10
select t1."tên khu vực"  from "khu vực" as t1  join "khu vực bị ảnh hưởng" as t2 on t1."id khu vực" = t2."id khu vực"  join "bão" as t3 on t2."id bão" = t3."id cơn bão"  where t3."số lượng người chết" >= 10
select t1.tên  from bão as t1  join khu vực bị ảnh hưởng as t2 on t1."id cơn bão" = t2."id bão"  join khu vực as t3 on t2."id khu vực" = t3."id khu vực"  where t3."tên khu vực" = 'Scotland'
select t1.tên from bão as t1 join khu vực bị ảnh hưởng as t2 on t1."id cơn bão" = t2."id bão" join khu vực as t3 on t2."id khu vực" = t3."id khu vực" where t3."mã khu vực" = 'DK'
select t1."tên khu vực"  from "khu vực" as t1  join "khu vực bị ảnh hưởng" as t2  on t1."id khu vực" = t2."id khu vực"  group by t2."id khu vực"  having count(*) >= 2
select t1."tên khu vực"  from "khu vực" as t1  join "khu vực bị ảnh hưởng" as t2  on t1."id khu vực" = t2."id khu vực"  group by t2."id khu vực"  having count(*) >= 2
select t1."tên khu vực"  from "khu vực" as t1  join "khu vực bị ảnh hưởng" as t2 on t1."id khu vực" = t2."id khu vực"  join "bão" as t3 on t2."id bão" = t3."id cơn bão"  order by t3."số lượng người chết" desc  limit 1
select t1."tên khu vực"  from "khu vực" as t1  join "khu vực bị ảnh hưởng" as t2 on t1."id khu vực" = t2."id khu vực"  join "bão" as t3 on t2."id bão" = t3."id cơn bão"  order by t3."số lượng người chết" desc  limit 1
select t1.tên  from bão as t1  join khu vực bị ảnh hưởng as t2 on t1."id cơn bão" = t2."id bão"  join khu vực as t3 on t2."id khu vực" = t3."id khu vực"  where t3."tên khu vực" = 'Afghanistan' and t3."mã khu vực" = 'ALB'
select distinct t1.tên from bão as t1 join khu vực bị ảnh hưởng as t2 on t1."id cơn bão" = t2."id bão" join khu vực as t3 on t2."id khu vực" = t3."id khu vực" where t3."tên khu vực" = 'Afghanistan' and t3."mã khu vực" = 'ALB'
select count(*) from "danh sách"
select count(*) from "danh sách"
select họ from danh sách where phòng học = 111
select họ from danh sách where phòng học = 111
select tên from danh sách where phòng học = 108
select tên from danh sách where phòng học = 108
select tên from danh sách where phòng học = 107
select distinct tên from danh sách where phòng học = 107
select phòng học , khối lớp from danh sách
select phòng học , khối lớp from danh sách
select khối lớp from danh sách where phòng học = 103
select khối lớp from danh sách where phòng học = 103
select distinct khối lớp from danh sách where phòng học = 105
select khối lớp from danh sách where phòng học = 105
select distinct phòng học from danh sách where khối lớp = 4
select distinct phòng học from danh sách where khối lớp = 4
select distinct phòng học from danh sách where khối lớp = 5
select distinct phòng học from danh sách where khối lớp = 5
select họ from giáo viên where khối lớp = 5
select họ from giáo viên where khối lớp = 5
select distinct t1.tên from giáo viên as t1 join danh sách as t2 on t1.phòng học = t2.phòng học where t2.khối lớp = 1
select t1.tên from giáo viên as t1 join danh sách as t2 on t1.phòng học = t2.phòng học where t2.khối lớp = 1
select tên from giáo viên where phòng học = 110
select tên from giáo viên where phòng học = 110
select họ from giáo viên where phòng học = 109
select "họ" from "giáo viên" where "phòng học" = 109
select tên, họ from giáo viên
select tên, họ from giáo viên
select tên, họ from danh sách
select tên, họ from danh sách
select t1.tên , t1.họ from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t2.tên = "OTHA" and t2.họ = "MOYER"
select t1.tên , t1.họ from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t2.tên = "OTHA" and t2.họ = "MOYER"
select t1.tên , t1.họ from giáo viên as t2 join danh sách as t1 on t2.phòng học = t1.phòng học where t2.tên = "MARROTTE" and t2.họ = "KIRK"
select t1.tên , t1.họ from giáo viên as t2 join danh sách as t1 on t2.phòng học = t1.phòng học where t2.tên = "MARROTTE" and t2.họ = "KIRK"
select distinct t2.tên , t2.họ  from danh sách as t1  join giáo viên as t2  on t1.phòng học = t2.phòng học  where t1.tên = "EVELINA" and t1.họ = "BROMLEY"
select t2.tên , t2.họ  from danh sách as t1  join giáo viên as t2  on t1.phòng học = t2.phòng học  where t1.tên = "EVELINA" and t1.họ = "BROMLEY"
select t1.họ from giáo viên as t1 join danh sách as t2 on t1.phòng học = t2.phòng học where t2.tên = "GELL TAMI"
select t2.họ from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t1.tên = "GELL" and t1.họ = "TAMI"
select count(*) from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t2.họ = "LORIA" and t2.tên = "ONDERSMA"
select count(*) from "danh sách" as t1 join "giáo viên" as t2 on t1."phòng học" = t2."phòng học" where t2."tên" = 'LORIA ONDERSMA'
select count(*) from "danh sách" as t1 join "giáo viên" as t2 on t1."phòng học" = t2."phòng học" where t2."tên" = 'KAWA' and t2."họ" = 'GORDON'
select count(*) from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t2.tên = "KAWA" and t2.họ = "GORDON"
select count(*) from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t2.tên = "TARRING" and t2.họ = "LEIA"
select count(*)  from "danh sách" as t1  join "giáo viên" as t2 on t1."phòng học" = t2."phòng học"  where t2."tên" = 'TARRING' and t2."họ" = 'LEIA'
select count(*) from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t1.tên = "CHRISSY" and t1.họ = "NABOZNY"
select t1.tên , t1.họ , count(*)  from giáo viên as t1  join danh sách as t2 on t1.phòng học = t2.phòng học  where t2.tên = "CHRISSY" and t2.họ = "NABOZNY"  group by t1.tên , t1.họ
select count(*) from "danh sách" as t1 join "giáo viên" as t2 on t1."phòng học" = t2."phòng học" where t1."tên" = 'MADLOCK' and t1."họ" = 'RAY'
select count(*)  from "danh sách" as t1  join "giáo viên" as t2 on t1."phòng học" = t2."phòng học"  where t1."tên" = 'MADLOCK' and t2."tên" = 'RAY'
select tên , họ from danh sách where khối lớp = 1 and phòng học not in ( select phòng học from giáo viên where tên = "OTHA MOYER" )
select "họ" from "danh sách" where "khối lớp" = 1 except select "họ" from "danh sách" where "phòng học" in (select "phòng học" from "giáo viên" where "tên" = 'OTHA MOYER')
select "họ" from "danh sách" where "khối lớp" = 3 and "phòng học" not in (select "phòng học" from "giáo viên" where "tên" = "COVIN JEROME")
select t1.họ from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t1.khối lớp = 3 and t2.tên != "COVIN JEROME"
select khối lớp, count(*), count(distinct tên) from danh sách group by khối lớp
select "khối lớp", "phòng học", count(*)  from "danh sách" as t1  join "giáo viên" as t2 on t1."phòng học" = t2."phòng học"  group by t1."khối lớp"
select phòng học , count ( * ) from danh sách group by phòng học
select phòng học , count ( distinct khối lớp ) from danh sách group by phòng học
select phòng học from danh sách group by phòng học order by count(*) desc limit 1
select phòng học from danh sách group by phòng học order by count(*) desc limit 1
select phòng học, count(*) from danh sách group by phòng học
select count(*), "phòng học" from "danh sách" group by "phòng học"
select count(*), sum(phòng học) from danh sách where khối lớp = 0
select "phòng học", count(*) from "danh sách" where "khối lớp" = 0 group by "phòng học"
select count(*), phòng học from danh sách where khối lớp = 4 group by phòng học
select t1."phòng học", count(*)  from "danh sách" as t1  join "giáo viên" as t2 on t1."phòng học" = t2."phòng học"  where t1."khối lớp" = 4  group by t1."phòng học"
select t1.tên , t1.họ from giáo viên as t1 join danh sách as t2 on t1.phòng học = t2.phòng học group by t1.tên order by count(*) desc limit 1
select t1.tên , t1.họ from giáo viên as t1 join danh sách as t2 on t1.phòng học = t2.phòng học group by t1.tên order by count ( * ) desc limit 1
select phòng học, count(*) from danh sách group by phòng học
select phòng học, count(*) from danh sách group by phòng học
select t1."id khoá học", count(*)  from "lượt đăng ký khoá học của sinh viên" as t2  join "khoá học" as t1 on t2."id khoá học" = t1."id khoá học"  group by t1."id khoá học"  order by count(*) desc  limit 1
select t1."tên khoá học" from "lượt đăng ký khoá học của sinh viên" as t2  join "khoá học" as t1 on t2."id khoá học" = t1."id khoá học"  group by t2."id khoá học"  order by count(*) desc  limit 1
select t1."id sinh viên"  from "lượt đăng ký khoá học của sinh viên" as t1  join "sinh viên" as t2 on t1."id sinh viên" = t2."id sinh viên"  group by t1."id sinh viên"  having count(*) > 0  order by count(*)  limit 1
select "id sinh viên" from "lượt đăng ký khoá học của sinh viên" group by "id sinh viên" having count(*) > 0
select tên, họ from ứng cử viên
select tên , họ from ứng cử viên
select "id sinh viên" from "lần tham dự khoá học của sinh viên" except select "id sinh viên" from "lần tham dự khoá học của sinh viên"
select "id sinh viên" from "lần tham dự khoá học của sinh viên" except select "id sinh viên" from "lần tham dự khoá học của sinh viên"
select distinct "id sinh viên" from "lần tham dự khoá học của sinh viên" group by "id sinh viên" having count(*) > 0
select "id sinh viên" from "lần tham dự khoá học của sinh viên" group by "id sinh viên" having count(*) >= 1
select t1."id sinh viên", t2."tên khoá học"  from "lượt đăng ký khoá học của sinh viên" as t1  join "khoá học" as t2 on t1."id khoá học" = t2."id khoá học"
select t1.chi tiết sinh viên  from sinh viên as t1  join lượt đăng ký khoá học của sinh viên as t2  on t1.id sinh viên = t2.id sinh viên  order by t2.ngày đăng kí desc  limit 1
select t1.chi tiết sinh viên  from sinh viên as t1  join lượt đăng ký khoá học của sinh viên as t2  on t1.id sinh viên = t2.id sinh viên  order by t2.ngày đăng kí desc  limit 1
select count(*) from "lần tham dự khoá học của sinh viên" as t1  join "khoá học" as t2 on t1."id khoá học" = t2."id khoá học"  where t2."tên khoá học" = 'English'
select count(*)  from "lượt đăng ký khoá học của sinh viên" as t1  join "khoá học" as t2 on t1."id khoá học" = t2."id khoá học"  where t2."tên khoá học" = 'English'
select count(*) from "lần tham dự khoá học của sinh viên" where "id sinh viên" = 171
select count(*)  from "lần tham dự khoá học của sinh viên" as t1  join "sinh viên" as t2 on t1."id sinh viên" = t2."id sinh viên"  where t2."id sinh viên" = 171
select "id ứng cử viên" from "cá nhân" where "địa chỉ email" = 'stanley.monahan@example.org'
select t1."id ứng cử viên"  from "ứng cử viên" as t1  join "cá nhân" as t2 on t1."id cá nhân" = t2."id cá nhân"  where t2."địa chỉ email" = 'stanley.monahan@example.org'
select t1."id ứng cử viên"  from "lần tham dự khoá học của sinh viên" as t2  join "ứng cử viên" as t1 on t2."id ứng cử viên" = t1."id ứng cử viên"  order by t2."ngày tham dự" desc  limit 1
select t1."id ứng cử viên"  from "lần tham dự khoá học của sinh viên" as t2  join "ứng cử viên" as t1 on t2."id ứng cử viên" = t1."id ứng cử viên"  order by t2."ngày tham dự" desc  limit 1
select t1.chi tiết sinh viên  from sinh viên as t1  join lượt đăng ký khoá học của sinh viên as t2  on t1.id sinh viên = t2.id sinh viên  group by t2.id sinh viên  order by count(*) desc  limit 1
select t1.chi tiết sinh viên  from sinh viên as t1  join lượt đăng ký khoá học của sinh viên as t2  on t1.id sinh viên = t2.id sinh viên  group by t2.id sinh viên  order by count(*) desc  limit 1
select "id sinh viên", count(*) from "lượt đăng ký khoá học của sinh viên" group by "id sinh viên"
select distinct count(*), "id sinh viên" from "lượt đăng ký khoá học của sinh viên" as "t1" join "sinh viên" as "t2" on "t1"."id sinh viên" = "t2"."id sinh viên" group by "id sinh viên"
select t1."tên khoá học", count(*)  from "lượt đăng ký khoá học của sinh viên" as t2  join "khoá học" as t1 on t2."id khoá học" = t1."id khoá học"  group by t2."id khoá học"
select t1."id khoá học", t1."tên khoá học", count(*)  from "lượt đăng ký khoá học của sinh viên" as t2  join "khoá học" as t1 on t2."id khoá học" = t1."id khoá học"  group by t1."id khoá học"
select "id ứng cử viên" from "đánh giá ứng cử viên" where "mã kết quả đánh giá" = 'Đạt'
select "id ứng cử viên" from "đánh giá ứng cử viên" where "mã kết quả đánh giá" = 'Đạt'
select t1.số di động from cá nhân as t1 join đánh giá ứng cử viên as t2 on t1.id cá nhân = t2.id ứng cử viên where t2.mã kết quả đánh giá = "Skipped"
select t1.số di động from ứng cử viên as t1 join cá nhân as t2 on t1.id ứng cử viên = t2.id cá nhân where t1.mã kết quả đánh giá = "Skipped"
select "id sinh viên" from "lượt đăng ký khoá học của sinh viên" where "id khoá học" = 301
select "id sinh viên" from "lượt đăng ký khoá học của sinh viên" where "id khoá học" = 301
select "id sinh viên" from "lần tham dự khoá học của sinh viên" where "id khoá học" = 301 order by "ngày tham dự" desc limit 1
select "id sinh viên" from "lần tham dự khoá học của sinh viên" where "id khoá học" = 301 order by "ngày tham dự" desc limit 1
select distinct thành phố from địa chỉ cá nhân group by thành phố
select distinct thành phố from địa chỉ
select distinct t3.thành phố from địa chỉ cá nhân as t1  join cá nhân as t2 on t1.id cá nhân = t2.id cá nhân  join địa chỉ as t3 on t1.id địa chỉ = t3.id địa chỉ  group by t3.thành phố having count(*) > 1
select distinct thành phố from địa chỉ cá nhân
select "tên khoá học" from "khoá học" order by "tên khoá học"
select "tên khoá học" from "khoá học" order by "tên khoá học"
select tên from cá nhân order by tên
select tên from cá nhân order by tên
select "id sinh viên" from "lượt đăng ký khoá học của sinh viên" union select "id sinh viên" from "lần tham dự khoá học của sinh viên" distinct
select distinct t1."id sinh viên"  from "lượt đăng ký khoá học của sinh viên" as t1  join "lần tham dự khoá học của sinh viên" as t2  on t1."id sinh viên" = t2."id sinh viên"
select distinct t1."id khoá học"  from "lượt đăng ký khoá học của sinh viên" as t2  join "lần tham dự khoá học của sinh viên" as t1  on t2."id khoá học" = t1."id khoá học"  where t2."id sinh viên" = 121
select "id khoá học" from "lượt đăng ký khoá học của sinh viên" where "id sinh viên" = 121 union select "id khoá học" from "lần tham dự khoá học của sinh viên" where "id sinh viên" = 121
select * from sinh viên where id sinh viên in (select id sinh viên from lượt đăng ký khoá học của sinh viên except select id sinh viên from lần tham dự khoá học của sinh viên)
select "chi tiết sinh viên" from "lượt đăng ký khoá học của sinh viên" except select "chi tiết sinh viên" from "lượt đăng ký khoá học của sinh viên" where "id sinh viên" in (select "id sinh viên" from "lần tham dự khoá học của sinh viên")
select t1."id sinh viên"  from "lượt đăng ký khoá học của sinh viên" as t1  join "khoá học" as t2 on t1."id khoá học" = t2."id khoá học"  where t2."tên khoá học" = 'Statistics'  order by t1."ngày đăng kí"
select t1."id sinh viên" from "lượt đăng ký khoá học của sinh viên" as t1  join "khoá học" as t2 on t1."id khoá học" = t2."id khoá học"  where t2."tên khoá học" = 'Statistics'  order by t1."ngày đăng kí"
select t1."id sinh viên"  from "lần tham dự khoá học của sinh viên" as t1  join "khoá học" as t2 on t1."id khoá học" = t2."id khoá học"  where t2."tên khoá học" = 'Statistics'  order by t1."ngày tham dự"
select t1."id sinh viên"  from "lần tham dự khoá học của sinh viên" as t2  join "khoá học" as t1 on t2."id khoá học" = t1."id khoá học"  where t1."tên khoá học" = 'Statistics'  order by t2."ngày tham dự"
select count(*) from "lượt nộp bài"
select count(*) from "lượt nộp bài"
select tác giả from lượt nộp bài order by số điểm
select t1.tác giả from lượt nộp bài as t1 join chấp thuận as t2 on t1.id lượt nộp bài = t2.id lượt nộp bài order by t1.số điểm
select t1.tác giả , t1.trường đại học from lượt nộp bài as t1 join chấp thuận as t2 on t1.id lượt nộp bài = t2.id lượt nộp bài group by t1.tác giả
select tác giả , trường đại học from lượt nộp bài
select tác giả from lượt nộp bài where trường đại học = "Florida" or trường đại học = "Temple"
select tác giả from lượt nộp bài where trường đại học = "Florida" or trường đại học = "Temple"
select avg("số điểm") from "lượt nộp bài"
select avg("số điểm") from "lượt nộp bài"
select t1.tác giả from lượt nộp bài as t1 join chấp thuận as t2 on t1.id lượt nộp bài = t2.id lượt nộp bài order by t1.số điểm desc limit 1
select t1.tác giả from lượt nộp bài as t1 join chấp thuận as t2 on t1.id lượt nộp bài = t2.id lượt nộp bài order by t1.số điểm desc limit 1
select trường đại học, count(*) from lượt nộp bài group by trường đại học
select t1."trường đại học", count(*)  from "lượt nộp bài" as t1  join "trường đại học" as t2 on t1."trường đại học" = t2."id trường đại học"  group by t1."trường đại học"
select t1."trường đại học"  from "lượt nộp bài" as t1  join "chấp thuận" as t2 on t1."id lượt nộp bài" = t2."id lượt nộp bài"  group by t1."trường đại học"  order by count(*) desc  limit 1
select t1."trường đại học"  from "lượt nộp bài" as t1  join "chấp thuận" as t2 on t1."id lượt nộp bài" = t2."id lượt nộp bài"  group by t1."trường đại học"  order by count(*) desc  limit 1
select t1."trường đại học"  from "lượt nộp bài" as t1  join "chấp thuận" as t2 on t1."id lượt nộp bài" = t2."id lượt nộp bài"  where t1."số điểm" > 90  group by t1."trường đại học"  having count(*) > 1  intersect  select t1."trường đại học"  from "lượt nộp bài" as t1  join "chấp thuận" as t2 on t1."id lượt nộp bài" = t2."id lượt nộp bài"  where t1."số điểm" < 80  group by t1."trường đại học"  having count(*) > 1
select t1."trường đại học"  from "lượt nộp bài" as t1  join "chấp thuận" as t2 on t1."id lượt nộp bài" = t2."id lượt nộp bài"  where t1."số điểm" > 90  intersect  select t1."trường đại học"  from "lượt nộp bài" as t1  join "chấp thuận" as t2 on t1."id lượt nộp bài" = t2."id lượt nộp bài"  where t1."số điểm" < 80 group by t1."trường đại học"  having count(*) = 2
select t1.tác giả, t2.kết quả  from lượt nộp bài as t1  join chấp thuận as t2  on t1.id lượt nộp bài = t2.id lượt nộp bài
select t1.tác giả , t2.kết quả  from lượt nộp bài as t1  join chấp thuận as t2  on t1.id lượt nộp bài = t2.id lượt nộp bài
select t1.kết quả  from lượt nộp bài as t1  join chấp thuận as t2 on t1.id lượt nộp bài = t2.id lượt nộp bài  order by t1.số điểm desc  limit 1
select t1.kết quả  from lượt nộp bài as t1  join chấp thuận as t2 on t1.id lượt nộp bài = t2.id lượt nộp bài  order by t1.số điểm desc  limit 1
select tác giả, count(*)  from lượt nộp bài as t1  join chấp thuận as t2 on t1."id lượt nộp bài" = t2."id lượt nộp bài"  group by tác giả
select tác giả , count(*)  from lượt nộp bài as t1  join chấp thuận as t2 on t1.id lượt nộp bài = t2.id lượt nộp bài  group by tác giả
select t1.tác giả from lượt nộp bài as t1 join chấp thuận as t2 on t1.id lượt nộp bài = t2.id lượt nộp bài group by t1.tác giả having count(*) > 1
select t1.tác giả from lượt nộp bài as t1 join chấp thuận as t2 on t1.id lượt nộp bài = t2.id lượt nộp bài group by t1.tác giả having count(*) > 1
select ngày, địa điểm from hội thảo order by địa điểm
select "ngày", "địa điểm" from "hội thảo" order by "địa điểm"
select tác giả from lượt nộp bài except select tác giả from lượt nộp bài
select tác giả from lượt nộp bài except select tác giả from chấp thuận
select t1.tên from doanh nghiệp as t1 join đánh giá as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t2.đánh giá xếp hạng > 4.5
select t1.tên from doanh nghiệp as t1 join đánh giá as t2 on t1."id doanh nghiệp" = t2."id doanh nghiệp" where t2."đánh giá xếp hạng" = 3.5
select "id người tiêu dùng" from "người tiêu dùng" where "tên" = 'Michelle'
select t1.tiểu bang  from loại hình as t2  join doanh nghiệp as t1 on t2.id doanh nghiệp = t1.id doanh nghiệp  where t2.tên loại hình = "Whataburger"
select t2.thành phố  from loại hình as t1  join doanh nghiệp as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  where t1.tên loại hình = "MGM Steakhouse"
select thành phố from doanh nghiệp where đánh giá xếp hạng < 1,5
select t2.thành phố from doanh nghiệp as t1 join loại hình as t2 on t1."id doanh nghiệp" = t2."id doanh nghiệp" where t2."tên loại hình" = 'Taj Mahal'
select văn bản from đánh giá where đánh giá xếp hạng < 1
select tên from doanh nghiệp where đánh giá xếp hạng > 3.5
select t1.thành phố from doanh nghiệp as t1 join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t2.tên loại hình = "Restaurant" and t1.tên = "Taj Mahal"
select t2.văn bản from đánh giá as t1 join người tiêu dùng as t2 on t1.id người tiêu dùng = t2.id người tiêu dùng where t2.tên = "Niloofar"
select t1.tên from doanh nghiệp as t1 join đánh giá as t2 on t1."id doanh nghiệp" = t2."id doanh nghiệp" where t2."id người tiêu dùng" = 'Niloofar'
select t1.tên from doanh nghiệp as t1 join đánh giá as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t2.đánh giá xếp hạng = 5
select t3.văn bản  from đánh giá as t3  join doanh nghiệp as t2 on t3.id doanh nghiệp = t2.id doanh nghiệp  join người tiêu dùng as t1 on t3.id người tiêu dùng = t1.id người tiêu dùng  where t1.tên = "Michelle" and t2.tên = "Italian Restaurant"
select count(*)  from "đánh giá" as t1  join "doanh nghiệp" as t2 on t1."id doanh nghiệp" = t2."id doanh nghiệp"  where t2."tên" = 'Cafe Zinho' and t2."tiểu bang" = 'Texas'
select t1."id doanh nghiệp", t1."tên"  from "doanh nghiệp" as t1  join "đánh giá" as t2 on t1."id doanh nghiệp" = t2."id doanh nghiệp"  where t2."đánh giá xếp hạng" = 5 and t1."tên loại hình" = 'Italian'
select t1."tên khu phố lân cận"  from "khu vực lân cận" as t1  join "doanh nghiệp" as t2 on t1."id doanh nghiệp" = t2."id doanh nghiệp"  join "loại hình" as t3 on t2."id" = t3."id doanh nghiệp"  where t3."tên loại hình" = 'Italian' and t2."thành phố" = 'Madison'
select t3."tên khu phố lân cận"  from "doanh nghiệp" as t1  join "loại hình" as t2 on t1."id doanh nghiệp" = t2."id doanh nghiệp"  join "khu vực lân cận" as t3 on t1."id doanh nghiệp" = t3."id doanh nghiệp"  where t2."tên loại hình" = 'Italian' and t1."thành phố" = 'Madison' and t2."đánh giá xếp hạng" < 2.5
select "id doanh nghiệp" from "loại hình" where "tên loại hình" = 'restaurant' and "id doanh nghiệp" in (select "id doanh nghiệp" from "doanh nghiệp" where "địa chỉ đầy đủ" like '%Pennsylvania%')
select t1."id doanh nghiệp", t1."tên"  from "doanh nghiệp" as t1  join "loại hình" as t2 on t1."id doanh nghiệp" = t2."id doanh nghiệp"  where t2."tên loại hình" = 'Restaurant' and t1."tiểu bang" = 'Pennsylvania'
select t2.văn bản from đánh giá as t2 join doanh nghiệp as t1 on t2.id doanh nghiệp = t1.id doanh nghiệp join loại hình as t3 on t1.id doanh nghiệp = t3.id doanh nghiệp where t3.tên loại hình = "chải chuốt cho vật nuôi" and t1.số lượng đánh giá > 100
select t1."id doanh nghiệp", t1."tên"  from "doanh nghiệp" as t1  join "loại hình" as t2 on t1."id doanh nghiệp" = t2."id doanh nghiệp"  where t2."tên loại hình" = 'Brewpub' and t1."địa chỉ đầy đủ" like '%Los Angeles%'
select t1.id doanh nghiệp, t1.tên  from doanh nghiệp as t1  join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  where t2.tên loại hình = 'Brewpub' and t1.thành phố = 'Los Angeles'
select t1.tên  from doanh nghiệp as t1  join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  where t2.tên loại hình = 'Brew Pub' and t1.thành phố = 'Los Angeles'
select distinct t2."id người tiêu dùng"  from "đánh giá" as t1  join "doanh nghiệp" as t2 on t1."id doanh nghiệp" = t2."id doanh nghiệp"  where t2."tên" = 'Mesa Grill'
select địa chỉ đầy đủ from doanh nghiệp where tên = "Walmart" and thành phố = "Los Angeles"
select t1.tên  from doanh nghiệp as t1  join đánh giá as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  join người tiêu dùng as t3 on t2.id người tiêu dùng = t3.id người tiêu dùng  where t1.thành phố = "Dallas" and t3.tên = "Patrick"
select t1.tên  from doanh nghiệp as t1  join đánh giá as t2 on t1."id doanh nghiệp" = t2."id doanh nghiệp"  join người tiêu dùng as t3 on t2."id người tiêu dùng" = t3."id người tiêu dùng"  where t3.tên = 'Patrick' and t1."thành phố" = 'Dallas'
select t1."id doanh nghiệp"  from "doanh nghiệp" as t1  join "đánh giá" as t2 on t1."id doanh nghiệp" = t2."id doanh nghiệp"  join "người tiêu dùng" as t3 on t2."id người tiêu dùng" = t3."id người tiêu dùng"  where t3."tên" = 'Patrick'
select t1.tên  from doanh nghiệp as t1  join đánh giá as t2 on t1."id doanh nghiệp" = t2."id doanh nghiệp"  where t2."đánh giá xếp hạng" >= 3
select t3.tên from khoản tiền boa as t1  join doanh nghiệp as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  join người tiêu dùng as t3 on t1.id người tiêu dùng = t3.id người tiêu dùng  where t2.tên = "Barrio Café" and t1.năm = 2015
select t1."id doanh nghiệp"  from "doanh nghiệp" as t1  join "đánh giá" as t2 on t1."id doanh nghiệp" = t2."id doanh nghiệp"  where t1."tiểu bang" = 'Texas' and t2."đánh giá xếp hạng" < 2
select t1.tên  from doanh nghiệp as t1  join loại hình as t2 on t1."id doanh nghiệp" = t2."id doanh nghiệp"  where t2."tên loại hình" = 'restaurant' and t1."địa chỉ đầy đủ" like '%Los Angeles%'
select t1."id doanh nghiệp", t1."tên"  from "doanh nghiệp" as t1  join "loại hình" as t2 on t1."id doanh nghiệp" = t2."id doanh nghiệp"  where t2."tên loại hình" = 'Seafood' and t1."địa chỉ đầy đủ" like '%Los Angeles%'
select t1."id doanh nghiệp"  from "doanh nghiệp" as t1  join "loại hình" as t2 on t1."id doanh nghiệp" = t2."id doanh nghiệp"  where t2."tên loại hình" = 'Hải sản' and t1."địa chỉ đầy đủ" = 'Los Angeles'
select t2.văn bản  from đánh giá as t1  join người tiêu dùng as t2 on t1.id người tiêu dùng = t2.id người tiêu dùng  where t1.đánh giá xếp hạng > 4 and t2.tên = "Patrick"
select t1."id doanh nghiệp"  from "doanh nghiệp" as t1  join "loại hình" as t2 on t1."id doanh nghiệp" = t2."id doanh nghiệp"  where t2."tên loại hình" = 'Apple Store' and t1."thành phố" = 'Los Angeles'
select t1."id doanh nghiệp", t1."tên"  from "doanh nghiệp" as t1  join "đánh giá" as t2 on t1."id doanh nghiệp" = t2."id doanh nghiệp"  where t2."đánh giá xếp hạng" > 4.5 and t1."thành phố" = 'Dallas'
select distinct t3."tên khu phố lân cận"  from "doanh nghiệp" as t1  join "loại hình" as t2 on t1."id doanh nghiệp" = t2."id doanh nghiệp"  join "khu vực lân cận" as t3 on t1."id doanh nghiệp" = t3."id doanh nghiệp"  where t2."tên loại hình" = 'Restaurant' and t1."name" = 'Flat Top Grill'
select t1.văn bản  from khoản tiền boa as t1  join doanh nghiệp as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  where t2.tên = "Vintner Grill" and t1.số lượt thích > 9
select t2.văn bản  from đánh giá as t1  join doanh nghiệp as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  where t2.tên = "Kabob Energy" and t1.năm = 2014
select t1."id người tiêu dùng"  from "khoản tiền boa" as t1  join "doanh nghiệp" as t2 on t1."id doanh nghiệp" = t2."id doanh nghiệp"  where t2."thành phố" = 'Dallas'
select t2.thành phố  from loại hình as t1  join doanh nghiệp as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  where t1.tên loại hình = "MGM Steakhouse" and t2.tiểu bang = "Texas"
select t1.tên from người tiêu dùng as t1  join khoản tiền boa as t2 on t1.id người tiêu dùng = t2.id người tiêu dùng  join doanh nghiệp as t3 on t2.id doanh nghiệp = t3.id doanh nghiệp  join loại hình as t4 on t3.id doanh nghiệp = t4.id doanh nghiệp  where t4.tên loại hình = "chải chuốt cho thú nuôi"
select t1.văn bản  from khoản tiền boa as t1  join doanh nghiệp as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  join đánh giá as t3 on t1.id đánh giá = t3.id đánh giá  where t2.tên = "Cafe Zinho" and t2.tiểu bang = "Texas"
select t1.tên , t2.tên  from đánh giá as t1  join doanh nghiệp as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  join loại hình as t3 on t2.id doanh nghiệp = t3.id doanh nghiệp  where t3.tên loại hình = "Restaurant"
select t2.văn bản  from khoản tiền boa as t1  join doanh nghiệp as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  where t2.tên = "Cafe Zinho" and t2.tiểu bang = "Pennsylvania" and t1.năm = 2010
select t3.tên from đánh giá as t1 join doanh nghiệp as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp join người tiêu dùng as t3 on t1.id người tiêu dùng = t3.id người tiêu dùng where t1.năm = 2010
select t1.văn bản from đánh giá as t1 join khoản tiền boa as t2 on t1.id đánh giá = t2.id đánh giá where t2.năm = 2012
select văn bản from đánh giá where đánh giá xếp hạng = 2.5
select count(*)  from "doanh nghiệp" as t1  join "loại hình" as t2 on t1."id doanh nghiệp" = t2."id doanh nghiệp"  where t1."thành phố" = 'Madison' and t2."tên loại hình" = 'Escape Room'
select count(*)  from "doanh nghiệp" as t1  join "loại hình" as t2 on t1."id doanh nghiệp" = t2."id doanh nghiệp"  where t1."thành phố" = 'Madison' and t2."tên loại hình" = 'Escape Room'
select count(*)  from "doanh nghiệp" as t1  join "loại hình" as t2 on t1."id doanh nghiệp" = t2."id doanh nghiệp"  where t1."thành phố" = 'Madison' and t2."tên loại hình" = 'Escape Room'
select count(*)  from "doanh nghiệp" as t1  join "loại hình" as t2 on t1."id doanh nghiệp" = t2."id doanh nghiệp"  join "khu vực lân cận" as t3 on t1."id doanh nghiệp" = t3."id doanh nghiệp"  where t2."tên loại hình" = 'trò chơi trốn thoát' and t3."tên khu phố lân cận" = 'Madison'
select count(*)  from "doanh nghiệp" as t1  join "loại hình" as t2 on t1."id doanh nghiệp" = t2."id doanh nghiệp"  join "khu vực lân cận" as t3 on t1."id doanh nghiệp" = t3."id doanh nghiệp"  where t2."tên loại hình" = 'trò chơi trốn thoát' and t3."tên khu phố lân cận" = 'Madison'
select count(*) from doanh nghiệp where đánh giá xếp hạng > 3.5
select sum(t2.số lượt đăng ký)  from doanh nghiệp as t1  join lượt đăng ký as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  where t1.tên loại hình = "Mexican" and t1.thành phố = "Los Angeles" group by t1.id doanh nghiệp
select sum(t2."số lượt đăng ký")  from "doanh nghiệp" as t1  join "lượt đăng ký" as t2 on t1."id doanh nghiệp" = t2."id doanh nghiệp"  where t1."tên" = 'Mexican' and t1."thành phố" = 'Los Angeles' and t2."ngày" = 'Friday'
select t2."ngày", sum(t1."số lượng")  from "lượt đăng ký" as t1  join "doanh nghiệp" as t2 on t1."id doanh nghiệp" = t2."id doanh nghiệp"  where t2."tên loại hình" = 'Mexican' and t2."thành phố" = 'Los Angeles'  group by t2."ngày"  order by t2."ngày"
select t1.tiểu bang , sum ( t2.số lượt )  from doanh nghiệp as t1  join lượt đăng ký as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  where t1.tên = "Italian Delis" and t1.thành phố = "San Francisco" and t2.tháng = 6  group by t1.tiểu bang
select count(*)  from đánh giá as t1  join người tiêu dùng as t2 on t1.id người tiêu dùng = t2.id người tiêu dùng  where t2.tên = "Niloofar" and t1.năm = 2015
select avg(t2."đánh giá xếp hạng")  from "đánh giá" as t2  join "người tiêu dùng" as t1 on t2."id người tiêu dùng" = t1."id người tiêu dùng"  where t1."tên" = 'Michelle'
select count(*)  from "lượt đăng ký" as t1  join "doanh nghiệp" as t2 on t1."id doanh nghiệp" = t2."id doanh nghiệp"  where t2."tên" = 'Cafe Zinho' and t1."ngày" = 'Thứ Sáu'
select count(distinct t2."id người tiêu dùng")  from "đánh giá" as t1  join "doanh nghiệp" as t2 on t1."id doanh nghiệp" = t2."id doanh nghiệp"  join "người tiêu dùng" as t3 on t1."id người tiêu dùng" = t3."id người tiêu dùng"  where t2."tên" = 'Sushi Too' and t2."thành phố" = 'Pittsburgh'
select count(*)  from "doanh nghiệp" as t1  join "đánh giá" as t2 on t1."id doanh nghiệp" = t2."id doanh nghiệp"  where t1."thành phố" = 'Pittsburgh' and t2."đánh giá xếp hạng" > 4.5
select count(*) from đánh giá as t1 join khoản tiền boa as t2 on t1.id đánh giá = t2.id đánh giá where t2.năm = 2015
select sum(t2."số lượt thích")  from "khoản tiền boa" as t1  join "đánh giá" as t2 on t1."id đánh giá" = t2."id đánh giá"  where t1."id người tiêu dùng" = 'Niloofar'
select sum(t2."số lượt thích")  from "khoản tiền boa" as t1  join "đánh giá" as t2 on t1."id đánh giá" = t2."id đánh giá"  where t2."tên" = 'Cafe Zinho'
select sum(t3."số lượt thích")  from "khoản tiền boa" as t2  join "đánh giá" as t3 on t2."id đánh giá" = t3."id đánh giá"  join "người tiêu dùng" as t1 on t2."id người tiêu dùng" = t1."id người tiêu dùng"  where t1."tên" = 'Niloofar' and t3."id doanh nghiệp" in (select "id doanh nghiệp" from "doanh nghiệp" where "tên" = 'Cafe Zinho')
select count(*)  from đánh giá as t1  join khoản tiền boa as t2 on t1."id đánh giá" = t2."id đánh giá"  where t2."id người tiêu dùng" in (select "id người tiêu dùng" from người tiêu dùng where "tên" = 'Michelle')  and t2."năm" = 2010
select count(*)  from đánh giá as t1  join khoản tiền boa as t2 on t1."id đánh giá" = t2."id đánh giá"  where t2."id người tiêu dùng" = 'Michelle' and t2."năm" = 2010
select count(*)  from đánh giá as t1  join khoản tiền boa as t2 on t1.id đánh giá = t2.id đánh giá  join người tiêu dùng as t3 on t1.id người tiêu dùng = t3.id người tiêu dùng  where t3.tên = "Michelle" and t2.tháng = "April"
select count(*) from doanh nghiệp where tiểu bang = "Texas"
select count(*)  from "doanh nghiệp" as t1  join "đánh giá" as t2 on t1."id doanh nghiệp" = t2."id doanh nghiệp"  where t1."thành phố" = 'Dallas' and t2."đánh giá xếp hạng" > 3.5
select count(*)  from "doanh nghiệp" as t1  join "đánh giá" as t2 on t1."id doanh nghiệp" = t2."id doanh nghiệp"  where t1."thành phố" = 'Dallas' and t2."đánh giá xếp hạng" > 3.5
select count(distinct t2."id người tiêu dùng")  from "doanh nghiệp" as t1  join "đánh giá" as t2 on t1."id doanh nghiệp" = t2."id doanh nghiệp"  where t1."tên" = 'Texas de Brazil' and t1."thành phố" = 'Dallas'
select count(distinct t2."id người tiêu dùng")  from "đánh giá" as t1  join "doanh nghiệp" as t2 on t1."id doanh nghiệp" = t2."id doanh nghiệp"  where t2."tên" = 'Bistro Di Napoli' and t1."năm" = 2015
select count(*)  from "doanh nghiệp" as t1  join "loại hình" as t2 on t1."id doanh nghiệp" = t2."id doanh nghiệp"  where t2."tên loại hình" = 'restaurant' and t1."địa chỉ đầy đủ" like '%Hazelwood%' and t1."thành phố" = 'Dallas'
select count(*)  from "doanh nghiệp" as t1  join "loại hình" as t2 on t1."id doanh nghiệp" = t2."id doanh nghiệp"  where t2."tên loại hình" = 'Starbucks' and t1."thành phố" = 'Dallas' and t1."tiểu bang" = 'Texas'
select count(*)  from "đánh giá" as t2  join "doanh nghiệp" as t1 on t2."id doanh nghiệp" = t1."id doanh nghiệp"  where t1."tên" = 'Acacia Cafe'
select t1.ngày , avg(t1.số lượt)  from lượt đăng ký as t1  join doanh nghiệp as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  where t2.tên = "Barrio Cafe"  group by t1.ngày
select count(*)  from "doanh nghiệp" as t1  join "khu vực lân cận" as t2 on t1."id doanh nghiệp" = t2."id doanh nghiệp"  where t2."tên khu phố lân cận" = 'Stone Meadows' and t1."thành phố" = 'Madison'
select count(*) from đánh giá as t1 join người tiêu dùng as t2 on t1.id người tiêu dùng = t2.id người tiêu dùng where t2.tên = "Adrienne"
select count(*)  from đánh giá as t1  join người tiêu dùng as t2 on t1.id người tiêu dùng = t2.id người tiêu dùng  where t2.tên = "Michelle" and t1.năm = 2014 and t1.tháng = 3
select count(*)  from đánh giá as t1  join người tiêu dùng as t2 on t1.id người tiêu dùng = t2.id người tiêu dùng  join doanh nghiệp as t3 on t1.id doanh nghiệp = t3.id doanh nghiệp  where t2.tên = "Michelle" and t1.năm = 2010
select count(*)  from "doanh nghiệp" as t1  join "đánh giá" as t2 on t1."id doanh nghiệp" = t2."id doanh nghiệp"  where t1."thành phố" = 'San Diego' and t2."năm" = 2010
select count(*)  from "doanh nghiệp" as t1  join "loại hình" as t2 on t1."id doanh nghiệp" = t2."id doanh nghiệp"  where t1."tên" = 'Target' and t1."địa chỉ đầy đủ" = 'Los Angeles'
select count(distinct t2."id người tiêu dùng")  from "doanh nghiệp" as t1  join "đánh giá" as t2 on t1."id doanh nghiệp" = t2."id doanh nghiệp"  where t1."tên" = 'Ai-len Vineyard' and t1."thành phố" = 'Dallas'
select avg(văn bản) from đánh giá where năm = 2014
select count(*)  from đánh giá as t1  join doanh nghiệp as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  join người tiêu dùng as t3 on t1.id người tiêu dùng = t3.id người tiêu dùng  where t2.tên = "Vintner Grill" and t1.năm = 2010
select t1."id doanh nghiệp", count(t2."id đánh giá")  from "doanh nghiệp" as t1  join "khu vực lân cận" as t3 on t1."id doanh nghiệp" = t3."id doanh nghiệp"  join "đánh giá" as t2 on t2."id doanh nghiệp" = t1."id doanh nghiệp"  where t3."tên khu phố lân cận" = 'South Summerlin'  group by t1."id doanh nghiệp"
select count(*) from người tiêu dùng where tên = "Michelle"
select count(*) from "doanh nghiệp" as t1 join "loại hình" as t2 on t1."id doanh nghiệp" = t2."id doanh nghiệp" where t2."tên loại hình" = 'Restaurant'
select count(distinct t1."thành phố")  from "doanh nghiệp" as t1  join "loại hình" as t2 on t1."id doanh nghiệp" = t2."id doanh nghiệp"  where t2."tên loại hình" = 'Restaurant' and t1."tên" = 'Panda Express'
select count(distinct t1."id đánh giá")  from "đánh giá" as t1  join "khoản tiền boa" as t2 on t1."id đánh giá" = t2."id đánh giá"  where t2."id người tiêu dùng" in (select "id người tiêu dùng" from "người tiêu dùng" where "tên" = 'Michelle')
select t1."tên khu phố lân cận", sum(t2."số lượt đăng ký")  from "khu vực lân cận" as t1  join "doanh nghiệp" as t2 on t1."id doanh nghiệp" = t2."id doanh nghiệp"  join "lượt đăng ký" as t3 on t2."id doanh nghiệp" = t3."id doanh nghiệp"  where t1."tên khu phố lân cận" = 'Brighton Heights'  group by t1."tên khu phố lân cận"
select count("số lượng đánh giá") from "đánh giá" where "tháng" = 3
select count(*), t2.tháng from khoản tiền boa as t1 join đánh giá as t2 on t1.id đánh giá = t2.id đánh giá group by t2.tháng
select count(*)  from khu vực lân cận as t1  join doanh nghiệp as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  where t2.đánh giá xếp hạng = 5 and t2.thành phố = "Madison"
select t1.tên from doanh nghiệp as t1 join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t2.tên loại hình = "restaurant" and t1.địa chỉ đầy đủ like "%Texas%"
select t1.id doanh nghiệp , t1.tên from doanh nghiệp as t1 join lượt đăng ký as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp group by t1.id doanh nghiệp order by count ( * ) desc limit 1
select tên khu phố lân cận from khu vực lân cận as t1 join doanh nghiệp as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp group by tên khu phố lân cận order by count(*) desc limit 1
select t1.tên  from doanh nghiệp as t1  join đánh giá as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  where t1.tên like "%Mexican%" and t2.đánh giá xếp hạng >= 3.5  and t1.thành phố = "Dallas"
select t1.tên  from doanh nghiệp as t1  join đánh giá as t2 on t1."id doanh nghiệp" = t2."id doanh nghiệp"  where t2."đánh giá xếp hạng" >= 3.5  and t1."tên loại hình" = 'Mexican'  and t1."thành phố" = 'Dallas'
select t1.tên  from doanh nghiệp as t1  join loại hình as t2 on t1."id doanh nghiệp" = t2."id doanh nghiệp"  where t2."tên loại hình" = 'dịch vụ đỗ xe'  and t1."địa chỉ đầy đủ" like '%Dallas%' and t1."địa chỉ đầy đủ" like '%Texas%'
select t1.tên  from doanh nghiệp as t1  join khu vực lân cận as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  join loại hình as t3 on t1.id doanh nghiệp = t3.id doanh nghiệp  where t2.tên khu phố lân cận = 'Meadowood' and t2.tiểu bang = 'Madison' and t3.tên loại hình = 'Italian Restaurant'
select t1.tên  from doanh nghiệp as t1  join đánh giá as t2 on t1."id doanh nghiệp" = t2."id doanh nghiệp"  where t1."thành phố" = 'Los Angeles' and t2."số lượng đánh giá" >= 30  group by t2."id doanh nghiệp"  having avg(t2."đánh giá xếp hạng") > 3
select count(*)  from "doanh nghiệp" as t1  join "loại hình" as t2 on t1."id doanh nghiệp" = t2."id doanh nghiệp"  where t2."tên loại hình" = 'restaurant' and t1."địa chỉ đầy đủ" like '%Edinburgh%'
select t1."id người tiêu dùng", avg("đánh giá xếp hạng")  from "đánh giá" as t1  join "người tiêu dùng" as t2 on t1."id người tiêu dùng" = t2."id người tiêu dùng"  group by t1."id người tiêu dùng"  having avg("đánh giá xếp hạng") < 3
select t1."id doanh nghiệp"  from "doanh nghiệp" as t1  join "đánh giá" as t2 on t1."id doanh nghiệp" = t2."id doanh nghiệp"  where t2."tháng" = 4  group by t2."id doanh nghiệp"  order by count(*) desc  limit 1
select t1."id doanh nghiệp", count(*)  from "loại hình" as t2  join "doanh nghiệp" as t1 on t2."id doanh nghiệp" = t1."id doanh nghiệp"  group by t1."id doanh nghiệp"  order by count(*) desc  limit 1