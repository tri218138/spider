select t1.id tài sản, t1.chi tiết tài sản  from tài sản as t1  join bộ phận của tài sản as t2 on t1.id tài sản = t2.id tài sản  where t2.id bộ phận in (select id bộ phận from bộ phận của tài sản group by id bộ phận having count ( * ) = 2)  and t1.id tài sản not in (select id tài sản from nhật ký lỗi group by id tài sản having count ( * ) < 2)
select id hợp đồng bảo trì, count ( * )  from hợp đồng bảo trì as t1  join tài sản as t2 on t1.id hợp đồng bảo trì = t2.id hợp đồng bảo trì  group by t1.id hợp đồng bảo trì
select id công ty cung cấp, count ( * )  from công ty bên thứ ba as t1  join tài sản as t2 on t1.id công ty = t2.id công ty cung cấp  group by t2.id công ty cung cấp
select t1.tên công ty, t1.id công ty  from công ty bên thứ ba as t1  join kỹ sư bảo trì as t2 on t1.id công ty = t2.id công ty  group by t1.id công ty  having count ( * ) >= 2 union select t1.tên công ty, t1.id công ty  from công ty bên thứ ba as t1  join hợp đồng bảo trì as t3 on t1.id công ty = t3.id công ty  group by t1.id công ty  having count ( * ) >= 2
select tên nhân viên , id nhân viên from nhân viên where id nhân viên not in ( select id nhân viên from nhật ký lỗi )
select t1.id kỹ sư , t1.tên , t1.họ  from kỹ sư bảo trì as t1  join chuyến thăm của kỹ sư as t2  on t1.id kỹ sư = t2.id kỹ sư  group by t1.id kỹ sư  order by count ( * ) desc  limit 1
select t1.id bộ phận, t1.tên bộ phận  from lỗi bộ phận as t2  join bộ phận as t1 on t2.id bộ phận bị lỗi = t1.id bộ phận  group by t1.id bộ phận  having count ( * ) > 2
select t1.tên , t1.họ , t1.chi tiết khác về kỹ sư , t2.mô tả về kỹ năng  from kỹ sư bảo trì as t1  join kỹ năng as t2  on t1.id kỹ sư = t2.id kỹ năng
select t1.tên lỗi, t2.mô tả về kỹ năng  from lỗi bộ phận as t1  join kỹ năng cần để sửa chữa as t2  on t1.id kỹ năng cần để sửa chữa = t2.id kỹ năng  group by t1.tên lỗi, t2.mô tả về kỹ năng
select t1.tên bộ phận, count ( * )  from bộ phận as t1  join bộ phận của tài sản as t2  on t1.id bộ phận = t2.id bộ phận  group by t1.tên bộ phận
select mô tả về lỗi , tình trạng lỗi from nhật ký lỗi
select t1.id mục nhập của nhật ký lỗi, count ( * )  from nhật ký lỗi as t1  join chuyến thăm của kỹ sư as t2  on t1.id mục nhập của nhật ký lỗi = t2.id mục nhập của nhật ký lỗi  group by t1.id mục nhập của nhật ký lỗi  order by count ( * ) desc  limit 1
select distinct họ from kỹ sư bảo trì
select distinct tình trạng lỗi from nhật ký lỗi
select tên , họ from kỹ sư bảo trì except select t1.tên , t1.họ from kỹ sư bảo trì as t1 join chuyến thăm của kỹ sư as t2 on t1.id kỹ sư = t2.id kỹ sư
select id tài sản, chi tiết tài sản, thương hiệu tài sản, mẫu mã tài sản from tài sản
select ngày mua tài sản from tài sản order by ngày mua tài sản limit 1
select t1.id bộ phận bị lỗi, t1.tên viết tắt của lỗi  from lỗi bộ phận as t1  join kỹ năng cần để sửa chữa as t2  on t1.id bộ phận bị lỗi = t2.id bộ phận bị lỗi  group by t1.id bộ phận bị lỗi  order by count ( * ) desc  limit 1
select t1.tên bộ phận  from bộ phận as t1  join lỗi bộ phận as t2 on t1.id bộ phận = t2.id bộ phận  group by t1.id bộ phận  order by count ( * )  limit 1
select t1.id kỹ sư , t1.tên , t1.họ  from kỹ sư bảo trì as t1  join chuyến thăm của kỹ sư as t2  on t1.id kỹ sư = t2.id kỹ sư  group by t1.id kỹ sư  order by count ( * ) desc  limit 1
select t1.tên nhân viên , t2.tên , t2.họ  from nhân viên as t1  join kỹ sư bảo trì as t2  on t1.id nhân viên liên lạc = t2.id kỹ sư group by t2.tên , t2.họ
select t1.id mục nhập của nhật ký lỗi, t1.mô tả về lỗi, t1.thời gian mục nhập của nhật ký lỗi  from nhật ký lỗi as t1  join lỗi bộ phận as t2 on t1.id mục nhập của nhật ký lỗi = t2.id mục nhập của nhật ký lỗi  group by t2.id bộ phận bị lỗi  order by count ( * ) desc  limit 1
select t1.id kỹ năng, t1.mô tả về kỹ năng  from kỹ năng as t1  join kỹ năng cần để sửa chữa as t2  on t1.id kỹ năng = t2.id kỹ năng  group by t1.id kỹ năng  order by count ( * ) desc  limit 1
select distinct mẫu mã tài sản from tài sản
select thương hiệu tài sản , mẫu mã tài sản , chi tiết khác về tài sản from tài sản order by ngày thanh lý tài sản
select id bộ phận, số tiền phải trả from bộ phận order by số tiền phải trả desc limit 1
select t1.tên công ty  from công ty bên thứ ba as t1  join hợp đồng bảo trì as t2 on t1.id công ty = t2.id công ty  order by t2.ngày bắt đầu hợp đồng  limit 1
select t1.tên công ty  from công ty bên thứ ba as t1  join hợp đồng bảo trì as t2 on t1.id công ty = t2.id công ty  where t2.ngày kết thúc hợp đồng = (      select max(t2.ngày kết thúc hợp đồng)      from công ty bên thứ ba as t1      join hợp đồng bảo trì as t2 on t1.id công ty = t2.id công ty  )
select giới tính from nhân viên group by giới tính order by count ( * ) desc limit 1
select t1.tên nhân viên , count ( * ) from nhân viên as t1 join chuyến thăm của kỹ sư as t2 on t1.id nhân viên = t2.id nhân viên liên lạc group by t1.tên nhân viên
select mẫu mã tài sản from tài sản except select mẫu mã tài sản from nhật ký lỗi
select count ( * ) from sách
select tác giả from sách order by tác giả asc
select tiêu đề from sách order by số lượng phát hành asc
select tiêu đề from sách where tác giả <> Elaine Lee
select tiêu đề , số lượng phát hành from sách
select ngày xuất bản from ấn phẩm order by giá bán desc
select distinct nhà xuất bản from ấn phẩm where giá bán > 5000000
select nhà xuất bản from ấn phẩm order by giá bán desc limit 1
select ngày xuất bản from ấn phẩm order by giá bán desc limit 3
select t1.tiêu đề , t2.ngày xuất bản from ấn phẩm as t1 join sách as t2 on t1.id sách = t2.id sách
select distinct t1.tác giả  from sách as t1  join ấn phẩm as t2 on t1.id sách = t2.id sách  where t2.giá bán > 4000000
select tiêu đề from ấn phẩm order by giá bán desc
select nhà xuất bản from ấn phẩm group by nhà xuất bản having count ( * ) > 1
select nhà xuất bản, count ( * ) from ấn phẩm group by nhà xuất bản
select ngày xuất bản from ấn phẩm group by ngày xuất bản order by count ( * ) desc limit 1
select tác giả from sách group by tác giả having count ( * ) > 1
select tiêu đề from sách where id sách not in ( select id sách from ấn phẩm )
select nhà xuất bản from ấn phẩm where giá bán > 10000000 union select nhà xuất bản from ấn phẩm where giá bán < 5000000
select count(distinct ngày xuất bản) from ấn phẩm
select count(distinct ngày xuất bản) from ấn phẩm
select giá bán from ấn phẩm where nhà xuất bản = Person or nhà xuất bản = Wiley
select tên bộ phận from bộ phận order by ngày bắt đầu quản lý
select t1.tên người phụ thuộc  from người phụ thuộc as t1  join nhân viên as t2 on t1.ssn của nhân viên = t2.ssn  where t2.mối quan hệ = spouse
select count ( * ) from nhân viên where giới tính = F
select tên bộ phận from bộ phận where địa điểm bộ phận = Houston
select tên , họ from nhân viên where lương > 30000
select giới tính, count ( * ) from nhân viên where lương < 50000 group by giới tính
select tên , họ , địa chỉ from nhân viên order by ngày sinh
select count ( * ) from giáo viên
select count ( * ) from giáo viên
select t1.tên from giáo viên as t1 join sắp xếp khoá học as t2 on t1.id giáo viên = t2.id giáo viên order by t1.tuổi asc
select tên from giáo viên order by tuổi desc limit 1
select tuổi, quê quán from giáo viên
select tuổi, quê quán from giáo viên
select tên from giáo viên where quê quán != Khu đô thị Little Lever
select tên from giáo viên where quê quán <> Little Lever Village
select tên from giáo viên where tuổi = 32 or tuổi = 33
select tên from giáo viên where tuổi = 32 or tuổi = 33
select quê quán from giáo viên order by tuổi limit 1
select quê quán from giáo viên order by tuổi limit 1
select quê quán, count ( * ) from giáo viên group by quê quán
select quê quán, count ( * ) from giáo viên group by quê quán
select quê quán from giáo viên group by quê quán order by count ( * ) desc limit 1
select quê quán from giáo viên group by quê quán order by count ( * ) desc limit 1
select quê quán from giáo viên group by quê quán having count ( * ) >= 2
select quê quán from giáo viên group by quê quán having count ( * ) >= 2
select t1.tên , t2.khoá học  from giáo viên as t1  join sắp xếp khoá học as t2  on t1.id giáo viên = t2.id giáo viên  group by t1.tên
select t1.tên , t2.khoá học from giáo viên as t1 join sắp xếp khoá học as t2 on t1.id giáo viên = t2.id giáo viên
select t1.tên , t2.khoá học  from giáo viên as t1  join sắp xếp khoá học as t2  on t1.id giáo viên = t2.id giáo viên  order by t1.tên
select t1.tên , t2.khoá học  from giáo viên as t1  join sắp xếp khoá học as t2  on t1.id giáo viên = t2.id giáo viên  order by t1.tên
select t1.tên from giáo viên as t1 join sắp xếp khoá học as t2 on t1.id giáo viên = t2.id giáo viên where t2.id khoá học in (select id khoá học from khoá học where khoá học = Math)
select t1.tên from giáo viên as t1 join sắp xếp khoá học as t2 on t1.id giáo viên = t2.id giáo viên join khoá học as t3 on t2.id khoá học = t3.id khoá học where t3.khoá học = Math
select t1.tên , count ( * )  from giáo viên as t1  join sắp xếp khoá học as t2 on t1.id giáo viên = t2.id giáo viên  group by t2.id giáo viên
select t1.tên , count ( * )  from giáo viên as t1  join sắp xếp khoá học as t2  on t1.id giáo viên = t2.id giáo viên  group by t1.id giáo viên
select t1.tên  from giáo viên as t1  join sắp xếp khoá học as t2 on t1.id giáo viên = t2.id giáo viên  group by t1.id giáo viên  having count ( * ) >= 2
select t1.tên from giáo viên as t1 join sắp xếp khoá học as t2 on t1.id giáo viên = t2.id giáo viên group by t2.id giáo viên having count ( * ) >= 2
select tên from giáo viên where id giáo viên not in (select id giáo viên from sắp xếp khoá học)
select tên from giáo viên where id giáo viên not in (select id giáo viên from sắp xếp khoá học)
select count ( * ) from thành viên
select tên from thành viên order by tên asc
select tên, quốc gia from thành viên
select tên from thành viên where quốc gia = United States or quốc gia = Canada
select quốc gia, count ( * ) from thành viên group by quốc gia
select t1.quốc gia  from thành viên as t1  join trường đại học as t2  on t1.id đại học = t2.id đại học  group by t1.quốc gia  order by count ( * ) desc  limit 1
select quốc gia from thành viên group by quốc gia having count ( * ) > 2
select tên lãnh đạo, địa điểm trường đại học from trường đại học
select t1.tên , t2.tên  from thành viên as t1  join trường đại học as t2  on t1.id đại học = t2.id đại học
select t1.tên , t2.địa điểm trường đại học  from thành viên as t1  join trường đại học as t2  on t1.id đại học = t2.id đại học  order by t1.tên
select tên lãnh đạo from trường đại học where id đại học in (select id đại học from thành viên where quốc gia = Canada)
select t1.tên , t2.chủ đề trang trí from thành viên as t1 join vòng as t2 on t1.id thành viên = t2.id thành viên
select t1.tên from thành viên as t1 join vòng as t2 on t1.id thành viên = t2.id thành viên where t2.xếp hạng từng vòng > 3
select tên from thành viên order by xếp hạng từng vòng asc
select tên from thành viên where id thành viên not in (select id thành viên from vòng)
select count ( * ) from cuộc bầu cử
select số lượng phiếu bầu from cuộc bầu cử order by số lượng phiếu bầu desc
select ngày, tỉ lệ phiếu bầu from cuộc bầu cử
select min(tỉ lệ phiếu bầu), max(tỉ lệ phiếu bầu) from cuộc bầu cử
select tên , đảng from đại diện
select tên from đại diện where đảng != Republican
select tuổi thọ from đại diện where tiểu bang = New York union select tuổi thọ from đại diện where tiểu bang = Indiana
select t1.tên , t2.ngày  from đại diện as t1  join cuộc bầu cử as t2  on t1.id đại diện = t2.id đại diện
select t1.tên from đại diện as t1 join cuộc bầu cử as t2 on t1.id đại diện = t2.id đại diện where t2.số lượng phiếu bầu > 10000
select t1.tên from đại diện as t1 join cuộc bầu cử as t2 on t1.id đại diện = t2.id đại diện order by t2.số lượng phiếu bầu desc
select t2.đảng from cuộc bầu cử as t1 join đại diện as t2 on t1.id đại diện = t2.id đại diện order by t1.số lượng phiếu bầu desc limit 1
select tuổi thọ from đại diện order by tỷ lệ phiếu bầu desc
select avg(số lượng phiếu bầu) from cuộc bầu cử where đảng = Republican
select đảng , count ( * ) from đại diện group by đảng
select đảng from đại diện group by đảng order by count ( * ) desc limit 1
select đảng from đại diện group by đảng having count ( * ) >= 3
select tiểu bang from đại diện group by tiểu bang having count ( * ) >= 2
select tên from đại diện except select t1.tên from đại diện as t1 join cuộc bầu cử as t2 on t1.id đại diện = t2.id đại diện
select đảng from đại diện where tiểu bang = New York intersect select đảng from đại diện where tiểu bang = Pennsylvania
select count(distinct đảng) from đại diện
select count ( * ) from quốc gia
select count ( * ) from quốc gia
select tên quốc gia, thủ đô from quốc gia
select tên quốc gia, thủ đô from quốc gia
select ngôn ngữ bản địa chính thức from quốc gia where ngôn ngữ bản địa chính thức like %English%
select ngôn ngữ bản địa chính thức from quốc gia where ngôn ngữ bản địa chính thức like %English%
select distinct vị trí from trận đấu trong mùa giải
select distinct vị trí from trận đấu trong mùa giải
select cầu thủ from trận đấu trong mùa giải where trường đại học = UCLA group by cầu thủ
select t1.cầu thủ from trận đấu trong mùa giải as t1 join cầu thủ as t2 on t1.id cầu thủ = t2.id cầu thủ where t2.đội = (select id đội from đội where tên = UCLA)
select distinct vị trí from trận đấu trong mùa giải where trường đại học = UCLA or trường đại học = Duke
select distinct vị trí from trận đấu trong mùa giải where trường đại học = UCLA or trường đại học = Duke
select mã số tuyển chọn tân binh, mùa tuyển chọn  from trận đấu trong mùa giải  where vị trí = hậu vệ;
select mã số tuyển chọn tân binh, mùa tuyển chọn  from trận đấu trong mùa giải  where vị trí = hậu vệ
select count(distinct t1.đội) from trận đấu trong mùa giải as t1 join đội as t2 on t1.đội = t2.id đội group by t2.tên
select count(distinct đội) from trận đấu trong mùa giải
select cầu thủ, số năm đã chơi from cầu thủ
select distinct cầu thủ, số năm đã chơi from cầu thủ
select tên from đội
select tên from đội
select t1.mùa giải, t1.cầu thủ, t3.tên quốc gia  from trận đấu trong mùa giải as t1  join cầu thủ as t2 on t1.cầu thủ = t2.id cầu thủ  join quốc gia as t3 on t2.quốc gia = t3.id quốc gia
select t1.cầu thủ , t1.mùa giải , t2.tên quốc gia  from trận đấu trong mùa giải as t1  join quốc gia as t2 on t1.quốc gia = t2.id quốc gia  group by t1.cầu thủ
select t1.cầu thủ from trận đấu trong mùa giải as t1 join quốc gia as t2 on t1.quốc gia = t2.id quốc gia where t2.tên quốc gia = Indonesia
select t1.cầu thủ from trận đấu trong mùa giải as t1 join quốc gia as t2 on t1.quốc gia = t2.id quốc gia where t2.tên quốc gia = Indonesia
select distinct t2.vị trí  from quốc gia as t1  join trận đấu trong mùa giải as t2  on t1.id quốc gia = t2.quốc gia  where t1.thủ đô = Dublin
select distinct t2.vị trí  from quốc gia as t1  join trận đấu trong mùa giải as t2  on t1.id quốc gia = t2.quốc gia  where t1.thủ đô = Dublin
select t1.ngôn ngữ bản địa chính thức  from quốc gia as t1  join trận đấu trong mùa giải as t2  on t1.id quốc gia = t2.quốc gia  where t2.đội in (select id đội from đội where tên = Maryland or tên = Duke)
select t1.ngôn ngữ bản địa chính thức  from quốc gia as t1  join trận đấu trong mùa giải as t2  on t1.id quốc gia = t2.quốc gia  where t2.trường đại học in (Maryland, Duke)
select count(distinct t1.ngôn ngữ bản địa chính thức)  from quốc gia as t1  join trận đấu trong mùa giải as t2  on t1.id quốc gia = t2.quốc gia  where t2.vị trí = hậu vệ
select count(t1.ngôn ngữ bản địa chính thức)  from quốc gia as t1  join trận đấu trong mùa giải as t2  on t1.id quốc gia = t2.quốc gia  where t2.vị trí = hậu vệ
select t1.mùa giải, t1.cầu thủ, t2.tên  from trận đấu trong mùa giải as t1  join cầu thủ as t2 on t1.cầu thủ = t2.id cầu thủ  join đội as t3 on t2.đội = t3.id đội  where t1.mùa giải is not null  order by t1.mùa giải asc
select distinct t1.cầu thủ , t2.mùa giải , t3.tên đội  from trận đấu trong mùa giải as t1  join cầu thủ as t2 on t1.cầu thủ = t2.id cầu thủ  join đội as t3 on t1.đội = t3.id đội
select vị trí from trận đấu trong mùa giải where đội = (select id đội from đội where tên = Ryley Goldner)
select t1.vị trí  from trận đấu trong mùa giải as t1  join đội as t2 on t1.đội = t2.id đội  where t2.tên = Ryley Goldner
select count(distinct t3.trường đại học)  from trận đấu trong mùa giải as t1  join đội as t2 on t1.đội = t2.id đội  join cầu thủ as t3 on t1.cầu thủ = t3.id cầu thủ  where t2.tên = Columbus Crew
select count(distinct t2.trường đại học)  from trận đấu trong mùa giải as t1  join cầu thủ as t2 on t1.đội = t2.id đội  where t1.đội = Columbus Crew
select cầu thủ, số năm đã chơi from cầu thủ as t1 join trận đấu trong mùa giải as t2 on t1.id đội = t2.đội where t2.đội = Columbus Crew
select t1.cầu thủ, t1.số năm đã chơi  from trận đấu trong mùa giải as t2  join cầu thủ as t1 on t2.cầu thủ = t1.id cầu thủ  where t2.đội = (select id đội from đội where tên = Columbus Crew)  order by t1.số năm đã chơi
select vị trí, count ( * ) from trận đấu trong mùa giải group by vị trí
select count ( * ), vị trí from trận đấu trong mùa giải group by vị trí
select t1.tên quốc gia, count ( * )  from quốc gia as t1  join trận đấu trong mùa giải as t2  on t1.id quốc gia = t2.id quốc gia  group by t1.id quốc gia
select count ( * ), tên quốc gia  from trận đấu trong mùa giải as t1  join quốc gia as t2 on t1.quốc gia = t2.id quốc gia  group by t1.quốc gia
select cầu thủ from trận đấu trong mùa giải order by trường đại học asc
select cầu thủ, mùa giải from trận đấu trong mùa giải order by trường đại học asc
select vị trí from trận đấu trong mùa giải group by vị trí order by count ( * ) desc limit 1
select vị trí from trận đấu trong mùa giải group by vị trí order by count ( * ) desc limit 1
select trường đại học , mùa giải from trận đấu trong mùa giải group by trường đại học order by count ( * ) desc limit 3
select trường đại học from trận đấu trong mùa giải group by trường đại học order by count ( * ) desc limit 3
select t1.trường đại học  from trận đấu trong mùa giải as t1  join cầu thủ as t2 on t1.trường đại học = t2.trường đại học  group by t1.trường đại học  having count ( * ) >= 2
select t1.trường đại học  from trận đấu trong mùa giải as t1  join cầu thủ as t2 on t1.trường đại học = t2.trường đại học  group by t1.trường đại học  having count ( * ) >= 2
select t1.trường đại học  from trận đấu trong mùa giải as t1  join cầu thủ as t2 on t1.đội = t2.đội  group by t1.trường đại học  having count ( * ) >= 2  order by t1.trường đại học desc
select trường đại học from trận đấu trong mùa giải group by trường đại học having count ( * ) >= 2 order by trường đại học desc
select tên from đội except select t1.tên from đội as t1 join trận đấu trong mùa giải as t2 on t1.id đội = t2.đội
select tên from đội where id đội not in (select id đội from trận đấu trong mùa giải)
select t1.tên quốc gia  from quốc gia as t1  join trận đấu trong mùa giải as t2  on t1.id quốc gia = t2.quốc gia  where t2.vị trí = tiền đạo  intersect  select t1.tên quốc gia  from quốc gia as t1  join trận đấu trong mùa giải as t2  on t1.id quốc gia = t2.quốc gia  where t2.vị trí = hậu vệ
select distinct t1.tên quốc gia  from trận đấu trong mùa giải as t2  join cầu thủ as t1 on t2.id quốc gia = t1.id quốc gia  where t2.vị trí = tiền đạo  intersect  select distinct t1.tên quốc gia  from trận đấu trong mùa giải as t2  join cầu thủ as t1 on t2.id quốc gia = t1.id quốc gia  where t2.vị trí = hậu vệ
select t1.trường đại học  from trận đấu trong mùa giải as t1  join cầu thủ as t2 on t1.cầu thủ = t2.id cầu thủ  where t1.vị trí = tiền vệ  intersect  select t1.trường đại học  from trận đấu trong mùa giải as t1  join cầu thủ as t2 on t1.cầu thủ = t2.id cầu thủ  where t1.vị trí = hậu vệ
select distinct t1.trường đại học  from trận đấu trong mùa giải as t2  join cầu thủ as t1 on t2.cầu thủ = t1.id cầu thủ  where t2.vị trí = tiền vệ  intersect  select distinct t1.trường đại học  from trận đấu trong mùa giải as t2  join cầu thủ as t1 on t2.cầu thủ = t1.id cầu thủ  where t2.vị trí = hậu vệ
select count ( * ) from tội phạm
select ngày from tội phạm order by số người bị giết desc limit 10
select số người bị thương from tội phạm order by số người bị thương asc
select avg(số người bị thương) from tội phạm
select địa điểm from tội phạm order by số người bị giết desc limit 1
select tên from cá nhân order by chiều cao asc
select t1.tên from cá nhân as t1 join tội phạm as t2 on t1.id cá nhân = t2.id cá nhân
select t2.tên from tội phạm as t1 join cá nhân as t2 on t1.id cá nhân = t2.id cá nhân where t1.quốc gia != China
select t1.tên  from cá nhân as t1  join tội phạm as t2  on t1.id cá nhân = t2.id cá nhân  order by t1.cân nặng desc  limit 1
select sum(t1.số người bị giết)  from tội phạm as t1  join cá nhân as t2 on t1.id cá nhân = t2.id cá nhân  where t2.chiều cao > 1.84
select t2.tên from tội phạm as t1 join cá nhân as t2 on t1.id cá nhân = t2.id cá nhân where t1.quốc gia = China or t1.quốc gia = Japan
select t2.chiều cao, t1.số người bị thương  from tội phạm as t1  join cá nhân as t2 on t1.id cá nhân = t2.id cá nhân  order by t1.số người bị thương desc
select quốc gia , count ( * ) from tội phạm as t1 join cá nhân as t2 on t1.id cá nhân = t2.id cá nhân group by t1.quốc gia
select t1.quốc gia  from tội phạm as t1  join cá nhân as t2 on t1.id cá nhân = t2.id cá nhân  group by t1.quốc gia  order by count ( * ) desc  limit 1
select t1.quốc gia  from tội phạm as t1  join cá nhân as t2 on t1.id cá nhân = t2.id cá nhân  group by t1.quốc gia  having count ( * ) >= 2
select tên from tội phạm order by năm desc
select tên from cá nhân except select t1.tên from cá nhân as t1 join tội phạm as t2 on t1.id cá nhân = t2.id cá nhân
select quốc gia from tội phạm where số người bị thương > 50 intersect select quốc gia from tội phạm where số người bị thương < 20
select count(distinct địa điểm) from tội phạm
select t1.ngày  from tội phạm as t1  join cá nhân as t2 on t1.id cá nhân = t2.id cá nhân  order by t2.chiều cao desc  limit 1
select năm from tội phạm order by ngày desc limit 1
select chính quyền địa phương , dịch vụ from nhà ga
select t1.số hiệu tàu, t1.tên  from tàu hoả as t1  join lộ trình as t2 on t1.id = t2.id tàu  order by t1.thời gian  limit 1
select t1.thời gian, t1.số hiệu tàu  from tàu hoả as t1  join lộ trình as t2 on t1.id = t2.id tàu  where t2.id nhà ga in (select id from nhà ga where điểm đến = Chennai)  order by t1.thời gian
select count ( * ) from tàu hoả where tên like %Express%
select t1.số hiệu tàu, t1.thời gian  from tàu hoả as t1  join lộ trình as t2 on t1.id = t2.id tàu  join nhà ga as t3 on t2.id nhà ga = t3.id  where t3.tên mạng lưới = Chennai and t1.điểm đến = Guruvayur
select điểm khởi hành, count ( * ) from tàu hoả group by điểm khởi hành
select t1.tên from tàu hoả as t1 join lộ trình as t2 on t1.id = t2.id tàu hoả group by t2.id tàu hoả order by count ( * ) desc limit 1
select t1.tên mạng lưới, t1.dịch vụ, count ( * )  from nhà ga as t1  join lộ trình as t2 on t1.id = t2.id nhà ga  group by t1.tên mạng lưới, t1.dịch vụ
select avg(nhiệt độ cao), ngày trong tuần from thời tiết hàng tuần group by ngày trong tuần
select max(nhiệt độ thấp), avg(lượng mưa) from thời tiết hàng tuần where tên mạng lưới = Amersham
select t1.tên , t1.thời gian  from tàu hoả as t1  join lộ trình as t2 on t1.id = t2.id tàu hoả  join nhà ga as t3 on t2.id nhà ga = t3.id  where t3.chính quyền địa phương = Chiltern
select count(distinct dịch vụ) from nhà ga
select t1.id , t1.chính quyền địa phương  from nhà ga as t1  join lộ trình as t2 on t1.id = t2.id nhà ga  group by t2.id nhà ga  order by avg ( t2.nhiệt độ cao ) desc  limit 1
select t1.id , t1.chính quyền địa phương  from nhà ga as t1  join thời tiết hàng tuần as t2  on t1.id = t2.id nhà ga  where t2.lượng mưa > 50
select min(nhiệt độ thấp), min(tốc độ gió mph) from thời tiết hàng tuần
select t1.điểm khởi hành  from tàu hoả as t1  join lộ trình as t2 on t1.id = t2.id tàu  group by t1.điểm khởi hành  having count ( * ) > 1
select count ( * ) from nhà thờ where ngày mở cửa < 1850
select tên , ngày mở cửa , được tổ chức bởi from nhà thờ
select tên from nhà thờ order by ngày mở cửa desc
select ngày mở cửa from nhà thờ group by ngày mở cửa having count ( * ) >= 2
select được tổ chức bởi, tên from nhà thờ where ngày mở cửa between 1830 and 1840
select ngày mở cửa, count ( * ) from nhà thờ group by ngày mở cửa
select tên , ngày mở cửa from nhà thờ order by ngày mở cửa desc limit 3
select count ( * ) from cá nhân where là nam hay nữ = nữ and tuổi > 30
select quốc gia from cá nhân where tuổi > 30 union select quốc gia from cá nhân where tuổi < 25
select min(tuổi), max(tuổi), avg(tuổi) from cá nhân
select tên , quốc gia from cá nhân where tuổi < ( select avg ( tuổi ) from cá nhân )
select t1.tên , t2.tên  from cá nhân as t1  join lễ cưới as t2  on t1.id cá nhân = t2.id nam  where t2.năm > 2014  intersect  select t1.tên , t2.tên  from cá nhân as t1  join lễ cưới as t2  on t1.id cá nhân = t2.id nữ  where t2.năm > 2014
select tên , tuổi from cá nhân where là nam = T except select t1.tên , t1.tuổi from cá nhân as t1 join lễ cưới as t2 on t1.id cá nhân = t2.id nam
select tên from nhà thờ except select t3.tên from lễ cưới as t3 join nhà thờ as t2 on t3.id nhà thờ = t2.id nhà thờ where t3.năm = 2015
select t1.tên  from nhà thờ as t1  join lễ cưới as t2 on t1.id nhà thờ = t2.id nhà thờ  group by t2.id nhà thờ  having count ( * ) >= 2
select t1.tên from cá nhân as t1 join lễ cưới as t2 on t1.id cá nhân = t2.id nữ where t1.quốc gia = Canada and t2.năm = 2016
select count ( * ) from lễ cưới where năm = 2016
select t1.tên  from nhà thờ as t1  join lễ cưới as t2 on t1.id nhà thờ = t2.id nhà thờ  join cá nhân as t3 on t2.id nam = t3.id cá nhân  where t3.tuổi > 30
select quốc gia, count ( * ) from cá nhân group by quốc gia
select count ( * ) from nhà thờ as t1 join lễ cưới as t2 on t1.id nhà thờ = t2.id nhà thờ where t2.năm = 2016
select count ( * ) from giảng viên
select count ( * ) from giảng viên
select ngạch from giảng viên
select ngạch from giảng viên
select toà nhà from giảng viên where toà nhà like %Department%
select toà nhà from giảng viên where toà nhà like %Khoa% group by toà nhà having count ( * ) > 0
select tên, họ, ngạch from giảng viên
select tên , họ , ngạch from giảng viên
select tên , họ from giảng viên where giới tính = F
select tên , họ , số điện thoại from giảng viên where giới tính = F
select id giảng viên from giảng viên where giới tính = M
select id giảng viên from giảng viên where giới tính = M
select count ( * ) from giảng viên where giới tính = F and ngạch = Prof
select count ( * ) from giảng viên where giới tính = F and ngạch = Prof
select số điện thoại , số phòng , toà nhà from giảng viên where tên = Prince Jerry
select số phòng , toà nhà from giảng viên where tên = Prince Jerry
select count ( * ) from giảng viên where toà nhà = NEB
select count ( * ) from giảng viên where toà nhà = NEB
select t1.tên , t1.họ from giảng viên as t1 join giảng viên tham gia vào as t2 on t1.id giảng viên = t2.id giảng viên
select t1.tên , t1.họ  from giảng viên as t1  join giảng viên tham gia vào as t2  on t1.id giảng viên = t2.id giảng viên  where t2.id hoạt động = ( select id hoạt động from hoạt động where tên hoạt động = Làm việc tại trường đại học )
select toà nhà , count ( * ) from giảng viên group by toà nhà
select toà nhà , count ( * ) from giảng viên group by toà nhà
select toà nhà from giảng viên group by toà nhà order by count ( * ) desc limit 1
select toà nhà from giảng viên group by toà nhà order by count ( * ) desc limit 1
select toà nhà from giảng viên group by toà nhà having count ( * ) >= 10
select toà nhà from giảng viên group by toà nhà having count ( * ) >= 10
select ngạch, count ( * ) from giảng viên group by ngạch
select ngạch, count ( * ) from giảng viên group by ngạch
select ngạch, count ( * ) as tổng số lượng giảng viên, count ( * ) filter (where giới tính = M) as số lượng giảng viên nam, count ( * ) filter (where giới tính = F) as số lượng giảng viên nữ from giảng viên group by ngạch
select ngạch, count ( * ) from giảng viên group by ngạch
select ngạch from giảng viên group by ngạch order by count ( * ) desc limit 1
select ngạch from giảng viên group by ngạch order by count ( * ) limit 1
select giới tính, count ( * ) from giảng viên where giới tính = Professor group by giới tính
select count ( * ) from giảng viên where giới tính = M union select count ( * ) from giảng viên where giới tính = F
select t2.tên , t2.họ  from giảng viên as t2  join sinh viên as t1 on t2.id giảng viên = t1.cố vấn  where t1.tên = Linda and t1.họ = Smith
select t2.tên , t2.họ  from sinh viên as t1  join giảng viên as t2  on t1.cố vấn = t2.id giảng viên  where t1.tên = Linda and t1.họ = Smith
select id sinh viên from sinh viên where cố vấn in (select id giảng viên from giảng viên where ngạch = Prof)
select t1.id sinh viên from sinh viên as t1 join giảng viên as t2 on t1.cố vấn = t2.id giảng viên
select tên , họ from sinh viên where cố vấn = Micheal Goodrich
select t1.tên , t1.họ  from giảng viên as t2  join sinh viên as t1  on t2.id giảng viên = t1.cố vấn  where t2.họ = Goodrich and t2.tên = Michael
select id giảng viên, count ( * )  from giảng viên as t1  join sinh viên as t2 on t1.id giảng viên = t2.cố vấn  group by t1.id giảng viên
select t1.id giảng viên, count ( * )  from giảng viên as t1  join sinh viên as t2 on t1.id giảng viên = t2.cố vấn  group by t1.id giảng viên
select t2.ngạch, count ( * )  from giảng viên as t1  join sinh viên as t2 on t1.id giảng viên = t2.cố vấn  group by t2.ngạch
select t2.ngạch , count ( * )  from giảng viên as t1  join sinh viên as t2  on t1.id giảng viên = t2.cố vấn  group by t2.ngạch
select t1.họ , t1.tên  from giảng viên as t1  join sinh viên as t2 on t1.id giảng viên = t2.cố vấn  group by t2.cố vấn  order by count ( * ) desc  limit 1
select t1.tên , t1.họ  from giảng viên as t1  join sinh viên as t2 on t1.id giảng viên = t2.cố vấn  group by t2.cố vấn  order by count ( * ) desc  limit 1
select t1.id giảng viên  from giảng viên as t1  join sinh viên as t2 on t1.id giảng viên = t2.cố vấn  group by t1.id giảng viên  having count ( * ) >= 2
select t1.id giảng viên from giảng viên as t1 join sinh viên as t2 on t1.id giảng viên = t2.cố vấn group by t1.id giảng viên having count ( * ) >= 2
select id giảng viên from giảng viên except select cố vấn from sinh viên
select id giảng viên from giảng viên where id giảng viên not in (select cố vấn from sinh viên)
select tên hoạt động from hoạt động
select tên hoạt động from hoạt động
select count ( * ) from hoạt động
select count ( * ) from hoạt động
select count(distinct t1.id giảng viên)  from giảng viên tham gia vào as t2  join giảng viên as t1 on t2.id giảng viên = t1.id giảng viên group by t1.id giảng viên
select count ( * ), t1.tên hoạt động  from giảng viên tham gia vào as t2  join giảng viên as t1 on t2.id giảng viên = t1.id giảng viên  join hoạt động as t3 on t2.id hoạt động = t3.id hoạt động  group by t1.tên hoạt động
select id giảng viên from giảng viên except select id giảng viên from giảng viên tham gia vào
select id giảng viên from giảng viên except select id giảng viên from giảng viên tham gia vào
select t1.id giảng viên  from giảng viên tham gia vào as t1  join giảng viên as t2 on t1.id giảng viên = t2.id giảng viên  join sinh viên as t3 on t1.id sinh viên = t3.id sinh viên
select id giảng viên from giảng viên tham gia vào except select cố vấn from sinh viên
select count ( * )  from giảng viên as t1  join giảng viên tham gia vào as t2 on t1.id giảng viên = t2.id giảng viên  where t1.tên = Mark and t1.họ = Giuliano
select count ( * )  from giảng viên as t1  join giảng viên tham gia vào as t2 on t1.id giảng viên = t2.id giảng viên  where t1.họ = Giuliano and t1.tên = Mark
select t2.tên hoạt động  from giảng viên as t1  join giảng viên tham gia vào as t2 on t1.id giảng viên = t2.id giảng viên  where t1.tên = Mark and t1.họ = Giuliano
select t2.tên hoạt động  from giảng viên as t1  join giảng viên tham gia vào as t2  on t1.id giảng viên = t2.id giảng viên  where t1.họ = Giuliano
select t1.tên , t1.họ , count ( * )  from giảng viên as t1  join giảng viên tham gia vào as t2  on t1.id giảng viên = t2.id giảng viên  group by t1.tên , t1.họ
select t1.tên , t1.họ , count ( * )  from giảng viên tham gia vào as t2  join giảng viên as t1 on t2.id giảng viên = t1.id giảng viên  join hoạt động as t3 on t2.id hoạt động = t3.id hoạt động  group by t1.tên , t1.họ  order by count ( * )
select t1.tên hoạt động, count ( * )  from hoạt động as t1  join giảng viên tham gia vào as t2 on t1.id hoạt động = t2.id hoạt động  group by t1.tên hoạt động
select t1.tên hoạt động, count ( * )  from giảng viên tham gia vào as t2  join hoạt động as t1 on t2.id hoạt động = t1.id hoạt động  group by t2.id hoạt động
select t2.tên , t2.họ  from giảng viên tham gia vào as t1  join giảng viên as t2  on t1.id giảng viên = t2.id giảng viên  group by t1.id giảng viên  order by count ( * ) desc  limit 1
select t1.tên , t1.họ  from giảng viên as t1  join giảng viên tham gia vào as t2 on t1.id giảng viên = t2.id giảng viên  group by t2.id giảng viên  order by count ( * ) desc  limit 1
select t1.tên hoạt động  from giảng viên tham gia vào as t2  join hoạt động as t1 on t2.id hoạt động = t1.id hoạt động  group by t1.tên hoạt động  order by count ( * ) desc  limit 1
select t2.tên hoạt động  from giảng viên tham gia vào as t1  join hoạt động as t2  on t1.id hoạt động = t2.id hoạt động  group by t1.id hoạt động  order by count ( * ) desc  limit 1
select id sinh viên from sinh viên except select id sinh viên from tham gia vào
select id sinh viên from sinh viên except select id sinh viên from tham gia vào
select t1.id sinh viên  from sinh viên as t1  join tham gia vào as t2 on t1.id sinh viên = t2.id sinh viên  where t1.tuổi < 20
select t1.id sinh viên  from sinh viên as t1  join tham gia vào as t2 on t1.id sinh viên = t2.id sinh viên  where t1.tuổi < 20
select t1.tên , t1.họ  from sinh viên as t1  join tham gia vào as t2 on t1.id sinh viên = t2.id sinh viên  group by t2.id sinh viên  order by count ( * ) desc  limit 1
select t1.tên , t1.họ  from sinh viên as t1  join tham gia vào as t2 on t1.id sinh viên = t2.id sinh viên  group by t2.id sinh viên  order by count ( * ) desc  limit 1
select t1.tên hoạt động  from hoạt động as t1  join tham gia vào as t2 on t1.id hoạt động = t2.id hoạt động  group by t1.tên hoạt động  order by count ( * ) desc  limit 1
select t1.tên hoạt động  from hoạt động as t1  join tham gia vào as t2 on t1.id hoạt động = t2.id hoạt động  group by t2.id hoạt động  order by count ( * ) desc  limit 1
select t1.tên  from giảng viên as t1  join giảng viên tham gia vào as t2 on t1.id giảng viên = t2.id giảng viên  join hoạt động as t3 on t2.id hoạt động = t3.id hoạt động  where t3.tên hoạt động = Swim or t3.tên hoạt động = Kayaking
select t3.tên  from giảng viên tham gia vào as t1  join giảng viên as t3 on t1.id giảng viên = t3.id giảng viên  join hoạt động as t2 on t1.id hoạt động = t2.id hoạt động  where t2.tên hoạt động = Swim or t2.tên hoạt động = Kayaking
select t1.tên , t1.họ  from giảng viên as t1  where t1.id giảng viên not in (      select t3.id giảng viên      from giảng viên tham gia vào as t2      join hoạt động as t3 on t2.id hoạt động = t3.id hoạt động      where t3.tên hoạt động = Swim      union      select t3.id giảng viên      from giảng viên tham gia vào as t2      join hoạt động as t3 on t2.id hoạt động = t3.id hoạt động      where t3.tên hoạt động = Kayak  )
select tên from giảng viên where id giảng viên not in ( select t1.id giảng viên from giảng viên tham gia vào as t1 join hoạt động as t2 on t1.id hoạt động = t2.id hoạt động where t2.tên hoạt động = Swim or t2.tên hoạt động = Kayaking )
select t1.tên  from giảng viên as t1  join giảng viên tham gia vào as t2 on t1.id giảng viên = t2.id giảng viên  where t2.id hoạt động in (select id hoạt động from hoạt động where tên hoạt động = Swimming)  intersect  select t1.tên  from giảng viên as t1  join giảng viên tham gia vào as t2 on t1.id giảng viên = t2.id giảng viên  where t2.id hoạt động in (select id hoạt động from hoạt động where tên hoạt động = Kayaking)
select t2.tên  from giảng viên tham gia vào as t1  join giảng viên as t2 on t1.id giảng viên = t2.id giảng viên  where t1.id hoạt động = (select id hoạt động from hoạt động where tên hoạt động = Swimming)  intersect  select t2.tên  from giảng viên tham gia vào as t1  join giảng viên as t2 on t1.id giảng viên = t2.id giảng viên  where t1.id hoạt động = (select id hoạt động from hoạt động where tên hoạt động = Kayaking)
select t1.id sinh viên  from tham gia vào as t1  join hoạt động as t2 on t1.id hoạt động = t2.id hoạt động  where t2.tên hoạt động = Swim  intersect  select t1.id sinh viên  from tham gia vào as t1  join hoạt động as t2 on t1.id hoạt động = t2.id hoạt động  where t2.tên hoạt động = Kayak
select t1.id sinh viên  from tham gia vào as t1  join hoạt động as t2 on t1.id hoạt động = t2.id hoạt động  where t2.tên hoạt động = Swim  intersect  select t1.id sinh viên  from tham gia vào as t1  join hoạt động as t2 on t1.id hoạt động = t2.id hoạt động  where t2.tên hoạt động = Kayak
select count ( * ) from người luyện thể hình
select tổng from người luyện thể hình order by tổng asc
select cử giật, cử đẩy from người luyện thể hình order by cử giật
select avg(cử giật) from người luyện thể hình
select cử đẩy from người luyện thể hình order by tổng desc limit 1
select ngày sinh from cá nhân order by chiều cao asc limit 10
select t1.tên from cá nhân as t1 join người luyện thể hình as t2 on t1.id cá nhân = t2.id cá nhân
select t1.tên from cá nhân as t1 join người luyện thể hình as t2 on t1.id cá nhân = t2.id cá nhân where t2.tổng > 300
select t1.tên  from cá nhân as t1  join người luyện thể hình as t2  on t1.id cá nhân = t2.id cá nhân  order by t1.cân nặng desc  limit 1
select t1.ngày sinh , t1.nơi sinh  from cá nhân as t1  join người luyện thể hình as t2  on t1.id cá nhân = t2.id cá nhân  order by t2.tổng desc  limit 1
select t2.chiều cao  from người luyện thể hình as t1  join cá nhân as t2 on t1.id cá nhân = t2.id cá nhân  where t1.tổng < 315
select avg(t1.tổng)  from người luyện thể hình as t1  join cá nhân as t2 on t1.id cá nhân = t2.id cá nhân  where t2.chiều cao > 200
select t1.tên from cá nhân as t1 join người luyện thể hình as t2 on t1.id cá nhân = t2.id cá nhân order by t2.tổng desc
select nơi sinh, count ( * ) from cá nhân group by nơi sinh
select nơi sinh from cá nhân group by nơi sinh order by count ( * ) desc limit 1
select nơi sinh from cá nhân group by nơi sinh having count ( * ) >= 2
select chiều cao , cân nặng from cá nhân order by chiều cao desc
select * from người luyện thể hình as t1 join cá nhân as t2 on t1.id cá nhân = t2.id cá nhân
select tên , nơi sinh from cá nhân where id cá nhân not in ( select id cá nhân from người luyện thể hình )
select count(distinct nơi sinh) from cá nhân
select count ( * ) from cá nhân where id cá nhân not in (select id cá nhân from người luyện thể hình)
select t2.cân nặng from người luyện thể hình as t1 join cá nhân as t2 on t1.id cá nhân = t2.id cá nhân where t1.cử giật > 140 or t2.chiều cao > 200
select t1.tổng from người luyện thể hình as t1 join cá nhân as t2 on t1.id cá nhân = t2.id cá nhân where t2.ngày sinh like 1%
select min(cử giật) from người luyện thể hình
select count ( * ) from ứng cử viên
select count ( * ) from ứng cử viên
select nguồn thăm dò ý kiến from ứng cử viên group by nguồn thăm dò ý kiến order by count ( * ) desc limit 1
select nguồn thăm dò ý kiến from ứng cử viên group by nguồn thăm dò ý kiến order by count ( * ) desc limit 1
select tỷ lệ ủng hộ from ứng cử viên order by tỷ lệ ủng hộ desc limit 3
select tỷ lệ ủng hộ from ứng cử viên order by tỷ lệ ủng hộ desc limit 3
select id ứng cử viên from ứng cử viên order by tỷ lệ phản đối asc limit 1
select id ứng cử viên from ứng cử viên order by tỷ lệ phản đối asc limit 1
select tỷ lệ ủng hộ, tỷ lệ xem xét, tỷ lệ phản đối from ứng cử viên order by tỷ lệ không chắc chắn asc
select tỷ lệ ủng hộ, tỷ lệ xem xét, tỷ lệ phản đối from ứng cử viên where tỷ lệ không chắc chắn > 0 order by tỷ lệ không chắc chắn
select nguồn thăm dò ý kiến from ứng cử viên order by tỷ lệ phản đối desc limit 1
select t2.nguồn thăm dò ý kiến  from ứng cử viên as t1  join cá nhân as t2 on t1.id cá nhân = t2.id cá nhân  order by t1.tỷ lệ phản đối desc  limit 1
select tên from cá nhân order by ngày sinh
select tên , ngày sinh from cá nhân order by ngày sinh
select avg(chiều cao), avg(cân nặng) from cá nhân where giới tính = M
select avg(chiều cao), avg(cân nặng) from cá nhân where giới tính = M
select tên from cá nhân where chiều cao > 200 or chiều cao < 190
select tên from cá nhân where chiều cao > 200 or chiều cao < 190
select giới tính, avg(cân nặng), min(cân nặng) from cá nhân group by giới tính
select trọng lượng, min(trọng lượng), max(trọng lượng) from cá nhân group by giới tính
select t1.tên , t1.giới tính  from ứng cử viên as t1  join cá nhân as t2 on t1.id cá nhân = t2.id cá nhân  order by t1.tỷ lệ ủng hộ desc  limit 1
select t1.tên , t1.giới tính  from ứng cử viên as t1  join cá nhân as t2 on t1.id cá nhân = t2.id cá nhân  order by t1.tỷ lệ ủng hộ desc  limit 1
select t1.tên , t2.giới tính  from ứng cử viên as t1  join cá nhân as t2  on t1.id cá nhân = t2.id cá nhân  group by t2.giới tính  order by t1.tỷ lệ phản đối asc
select t1.tên , t1.giới tính  from cá nhân as t1  join ứng cử viên as t2  on t1.id cá nhân = t2.id cá nhân  order by t2.tỷ lệ phản đối  group by t1.giới tính  limit 1
select giới tính from ứng cử viên group by giới tính order by avg(tỷ lệ không chắc chắn) desc limit 1
select t2.giới tính  from ứng cử viên as t1  join cá nhân as t2 on t1.id cá nhân = t2.id cá nhân  group by t2.giới tính  order by avg(t1.tỷ lệ không chắc chắn) desc  limit 1
select t1.tên from cá nhân as t1 where t1.id cá nhân not in (select t2.id cá nhân from ứng cử viên as t2)
select tên from cá nhân where id cá nhân not in (select id cá nhân from ứng cử viên)
select tên from ứng cử viên where tỷ lệ ủng hộ < tỷ lệ phản đối
select t1.tên from cá nhân as t1 join ứng cử viên as t2 on t1.id cá nhân = t2.id cá nhân where t2.tỷ lệ ủng hộ < t2.tỷ lệ phản đối
select giới tính, count ( * ) from cá nhân where cân nặng > 85 group by giới tính
select giới tính , count ( * ) from cá nhân where cân nặng > 85 group by giới tính
select max(tỷ lệ ủng hộ), min(tỷ lệ xem xét), min(tỷ lệ phản đối) from ứng cử viên group by tỷ lệ ủng hộ, tỷ lệ xem xét, tỷ lệ phản đối
select max(tỷ lệ ủng hộ), min(tỷ lệ xem xét), min(tỷ lệ phản đối) from ứng cử viên group by tỷ lệ ủng hộ
select tên from ứng cử viên where giới tính = F order by tên
select t1.tên , t1.id cá nhân from cá nhân as t1 join ứng cử viên as t2 on t1.id cá nhân = t2.id cá nhân where t1.giới tính = F order by t1.tên
select tên from cá nhân where chiều cao < (select avg(chiều cao) from cá nhân)
select tên from cá nhân where chiều cao < (select avg(chiều cao) from cá nhân)
select * from cá nhân
select * from cá nhân
select t1.id thành phố  from thành phố chủ nhà as t2  join trận đấu as t1 on t2.id trận đấu = t1.id trận đấu  where t2.năm = (select max(năm) from thành phố chủ nhà)  order by t2.năm desc  limit 1
select id thành phố from thành phố chủ nhà as t1 join trận đấu as t2 on t1.id trận đấu = t2.id trận đấu order by t1.năm desc limit 1
select id trận đấu from trận đấu where giải đấu = Vòng loại FIFA World Cup 1994
select id trận đấu from trận đấu where giải đấu = Vòng loại FIFA World Cup 1994
select distinct t1.thành phố chủ nhà  from thành phố chủ nhà as t1  join trận đấu as t2 on t1.id trận đấu = t2.id trận đấu  where t2.năm > 2010
select distinct t1.thành phố chủ nhà  from thành phố chủ nhà as t1  join trận đấu as t2 on t1.id trận đấu = t2.id trận đấu  where t2.năm > 2010
select t1.thành phố , count ( * ) from thành phố as t1 join thành phố chủ nhà as t2 on t1.id thành phố = t2.id thành phố group by t1.id thành phố order by count ( * ) desc limit 1
select t1.thành phố  from thành phố chủ nhà as t1  join trận đấu as t2 on t1.id thành phố = t2.id trận đấu  group by t1.id thành phố  order by count ( * ) desc  limit 1
select t1.địa điểm  from trận đấu as t1  join giải đấu as t2 on t1.giải đấu = t2.id giải đấu  where t2.giải đấu = Vòng loại FIFA World Cup 1994 and t1.địa điểm = Nam Kinh (Giang Tô)
select t1.địa điểm  from trận đấu as t1  join thành phố chủ nhà as t2 on t1.id trận đấu = t2.id trận đấu  where t2.giải đấu = Vòng loại FIFA World Cup 1994 and t2.thành phố chủ nhà = Nam Kinh (Giang Tô)
select t1.tháng một from nhiệt độ as t1 join thành phố as t2 on t1.id thành phố = t2.id thành phố where t2.thành phố = Thượng Hải
select t2.tháng một from thành phố as t1  join nhiệt độ as t2 on t1.id thành phố = t2.id thành phố  where t1.thành phố = Thượng Hải
select distinct t1.năm from thành phố chủ nhà as t1 join thành phố as t2 on t1.thành phố chủ nhà = t2.id thành phố where t2.thành phố = Thái Châu (Chiết Giang)
select distinct t1.năm  from thành phố chủ nhà as t1  join thành phố as t2 on t1.id thành phố = t2.id thành phố  where t2.thành phố = Thái Châu (Chiết Giang)  order by t1.năm  limit 1
select thành phố from thành phố order by dân số khu vực desc limit 3
select thành phố from thành phố order by dân số khu vực desc limit 3
select thành phố, gdp from thành phố order by gdp asc limit 1
select thành phố, gdp from thành phố order by gdp asc limit 1
select thành phố from nhiệt độ where tháng hai = ( select max(tháng hai) from nhiệt độ ) order by tháng hai desc limit 1
select t1.thành phố from thành phố as t1 join nhiệt độ as t2 on t1.id thành phố = t2.id thành phố where t2.tháng hai = ( select max ( tháng hai ) from nhiệt độ )
select thành phố, tháng ba from nhiệt độ where tháng ba < ( select tháng ba from nhiệt độ where tháng ba = 3 ) union select thành phố, tháng ba from nhiệt độ where tháng ba > ( select tháng ba from nhiệt độ where tháng ba = 3 ) union select thành phố, tháng ba from nhiệt độ where tháng ba = 3
select thành phố from nhiệt độ where tháng ba < ( select tháng ba from nhiệt độ where tháng ba = 3 ) intersect select thành phố from nhiệt độ where tháng ba > ( select tháng ba from nhiệt độ where tháng ba = 3 ) union select thành phố from nhiệt độ where tháng ba = 3 intersect select thành phố from nhiệt độ where tháng ba = 10
select t1.thành phố from thành phố as t1 join nhiệt độ as t2 on t1.id thành phố = t2.id thành phố where t2.tháng ba < t2.tháng sáu and t1.id thành phố in (select t3.id thành phố from thành phố chủ nhà as t3 join trận đấu as t4 on t3.id trận đấu = t4.id trận đấu where t4.năm = 2015)
select t1.thành phố from nhiệt độ as t1 join thành phố chủ nhà as t2 on t1.id thành phố = t2.id thành phố where t1.tháng ba < t1.tháng sáu and t2.năm = 2019
select thành phố from thành phố as t1  join nhiệt độ as t2 on t1.id thành phố = t2.id thành phố  where t2.tháng ba < t2.tháng mười hai  except  select thành phố from thành phố as t1  join nhiệt độ as t2 on t1.id thành phố = t2.id thành phố  join thành phố chủ nhà as t3 on t1.id thành phố = t3.id thành phố  where t3.năm = 2018
select thành phố from nhiệt độ as t1 join thành phố chủ nhà as t2 on t1.id thành phố = t2.id thành phố where t1.tháng ba < t1.tháng mười hai and t2.thành phố chủ nhà is null
select t1.thành phố from thành phố as t1 join nhiệt độ as t2 on t1.id thành phố = t2.id thành phố where t2.tháng hai > t2.tháng sáu or t1.thành phố in ( select t3.thành phố chủ nhà from thành phố chủ nhà as t3 where t3.năm = 2019 )
select t1.thành phố, t1.tháng hai  from nhiệt độ as t1  join thành phố chủ nhà as t2  on t1.id thành phố = t2.id thành phố  where t1.tháng hai > t1.tháng sáu  union  select t1.thành phố, t1.tháng hai  from nhiệt độ as t1  join thành phố chủ nhà as t2  on t1.id thành phố = t2.id thành phố  where t1.tháng hai = t2.thành phố chủ nhà
select thành phố from thành phố where dân số khu vực > 10000000
select thành phố from thành phố where dân số khu vực > 10000000
select thành phố from thành phố where dân số khu vực > 8000000 or dân số khu vực < 5000000
select thành phố from thành phố where dân số khu vực > 8000000 or dân số khu vực < 5000000
select giải đấu, count ( * ) from trận đấu group by giải đấu
select giải đấu , count ( * ) from trận đấu group by giải đấu
select địa điểm from trận đấu order by ngày desc
select địa điểm from trận đấu order by ngày desc
select gdp from thành phố order by dân số khu vực desc limit 1
select gdp from thành phố order by dân số khu vực desc limit 1
select t1.gdp , t1.dân số khu vực  from thành phố as t1  join thành phố chủ nhà as t2  on t1.id thành phố = t2.id thành phố  group by t2.id thành phố  having count ( * ) > 1
select t1.gdp , t1.dân số khu vực  from thành phố as t1  join thành phố chủ nhà as t2  on t1.id thành phố = t2.id thành phố  group by t2.id thành phố  having count ( * ) > 1
select count ( * ) from giáo sư as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa where t2.tên khoa = Accounting
select count ( * ) from giáo sư as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa where t2.tên khoa = Accounting
select count(distinct t3.mã số nhân viên)  from lớp học as t1  join khoá học as t2 on t1.mã khoá học = t2.mã khoá học  join giáo sư as t3 on t1.mã số nhân viên của giáo sư = t3.mã số nhân viên  where t2.mã khoá học = ACCT-211
select count ( * )  from lớp học as t1  join khoá học as t2 on t1.mã khoá học = t2.mã khoá học  join giáo sư as t3 on t1.mã số nhân viên của giáo sư = t3.mã số nhân viên  where t2.mã khoá học = ACCT-211
select t1.họ của giáo sư , t1.tên của giáo sư  from giáo sư as t1  join khoa as t2 on t1.mã khoa = t2.mã khoa  where t2.tên khoa = Sinh học
select t1.tên của giáo sư , t1.họ của giáo sư  from giáo sư as t1  join khoa as t2 on t1.mã khoa = t2.mã khoa  where t2.tên khoa = Sinh học
select t1.tên của giáo sư , t1.ngày sinh của giáo sư  from giáo sư as t1  join lớp học as t2 on t1.mã số nhân viên = t2.mã số nhân viên  where t2.mã khoá học = ACCT-211
select t1.tên của giáo sư , t1.ngày sinh của giáo sư  from giáo sư as t1  join lớp học as t2 on t1.mã số nhân viên = t2.mã số nhân viên của giáo sư  where t2.mã khoá học = ACCT-211
select count ( * ) from lớp học as t1 join giáo sư as t2 on t1.mã số nhân viên của giáo sư = t2.mã số nhân viên where t2.họ của giáo sư = Graztevski
select count ( * ) from giáo sư as t1 join lớp học as t2 on t1.mã số nhân viên = t2.mã số nhân viên của giáo sư where t1.họ của giáo sư = Graztevski
select mã trường from khoa where tên khoa = Accounting
select t1.mã trường from khoa as t1 join lớp học as t2 on t1.mã khoa = t2.mã khoa where t1.tên khoa = Accounting
select số lượng tín chỉ của khoá học, mô tả về khoá học from khoá học where mã khoá học = CIS-220
select mô tả về khoá học, số lượng tín chỉ của khoá học  from khoá học  where mã khoá học = CIS-220
select địa chỉ khoa from khoa where tên khoa = History
select địa chỉ khoa from khoa where tên khoa = History
select count(distinct địa chỉ khoa) from khoa where mã trường = BUS
select count(distinct địa chỉ khoa) from khoa where mã trường = BUS
select count(distinct địa chỉ khoa) from khoa
select count(distinct địa chỉ khoa) from khoa
select mô tả về khoá học, số lượng tín chỉ của khoá học  from khoá học  where mã khoá học = QM-261
select số lượng tín chỉ của khoá học, mô tả về khoá học from khoá học where mã khoá học = QM-261
select mã trường, count ( * ) from khoa group by mã trường
select count ( * ), t2.mã trường  from khoa as t1  join lớp học as t2 on t1.mã trường = t2.mã trường  group by t2.mã trường
select mã trường , count ( * ) from khoa group by mã trường having count ( * ) < 5
select mã trường , count ( * ) from khoa group by mã trường having count ( * ) < 5
select count ( * ), mã khoá học from lớp học group by mã khoá học
select count ( * ), mã khoá học from lớp học group by mã khoá học
select sum(số lượng tín chỉ của khoá học) from khoá học group by mã khoa
select sum(số lượng tín chỉ của khoá học), mã khoa from khoá học join khoa on khoá học.mã khoa = khoa.mã khoa group by mã khoa
select phòng học from lớp học group by phòng học having count ( * ) >= 2
select phòng học , count ( * ) from lớp học group by phòng học having count ( * ) >= 2
select count ( * ), t1.mã khoa  from lớp học as t1  join khoa as t2 on t1.mã khoa = t2.mã khoa  group by t1.mã khoa
select count ( * ), t1.mã khoa  from lớp học as t1  join khoa as t2 on t1.mã khoa = t2.mã khoa  group by t1.mã khoa
select count ( * ), t1.mã trường  from lớp học as t1  join khoa as t2 on t1.mã khoa = t2.mã khoa  group by t1.mã trường
select count ( * ), t1.mã trường  from lớp học as t1  join khoa as t2 on t1.mã khoa = t2.mã khoa  group by t1.mã trường
select count(distinct t1.mã số nhân viên), t2.mã trường  from giáo sư as t1  join khoa as t2 on t1.mã khoa = t2.mã khoa  group by t2.mã trường
select t1.mã trường, count(distinct t1.mã số nhân viên)  from giáo sư as t1  join khoa as t2 on t1.mã trường = t2.mã trường  group by t1.mã trường
select t1.mã công việc của nhân viên, count ( * )  from nhân viên as t1  join giáo sư as t2 on t1.mã số nhân viên = t2.mã số nhân viên  group by t1.mã công việc của nhân viên  order by count ( * ) desc  limit 1
select mã công việc của nhân viên, count ( * )  from nhân viên  group by mã công việc của nhân viên  order by count ( * ) desc  limit 1
select mã trường from giáo sư group by mã trường order by count ( * ) desc limit 1
select mã trường from giáo sư group by mã trường order by count ( * ) desc limit 1
select t1.tên khoa, count ( * )  from khoa as t1  join giáo sư as t2 on t1.mã khoa = t2.mã khoa  where t2.bằng cấp cao nhất = Tiến sĩ  group by t1.tên khoa
select count ( * ), t1.mã khoa  from giáo sư as t1  join khoa as t2 on t1.mã khoa = t2.mã khoa  where t2.bằng cấp cao nhất = Tiến sĩ  group by t1.mã khoa
select count ( * ), t1.mã khoa  from sinh viên as t1  join đăng ký khoá học as t2  on t1.mã số sinh viên = t2.mã số sinh viên  group by t1.mã khoa
select count ( * ), t1.mã khoa  from sinh viên as t1  join khoa as t2 on t1.mã khoa = t2.mã khoa  group by t1.mã khoa
select sum(giờ học của sinh viên), mã khoa  from sinh viên  group by mã khoa
select sum(t1.giờ học của sinh viên), t2.mã khoa  from sinh viên as t1  join khoa as t2 on t1.mã khoa = t2.mã khoa  group by t2.mã khoa
select t1.mã khoa , avg ( t1.gpa của sinh viên ) , max ( t1.gpa của sinh viên ) , min ( t1.gpa của sinh viên )  from sinh viên as t1  join khoa as t2 on t1.mã khoa = t2.mã khoa  group by t1.mã khoa
select mã khoa , max ( gpa của sinh viên ) , min ( gpa của sinh viên ) , avg ( gpa của sinh viên ) from sinh viên group by mã khoa
select tên khoa , avg ( gpa của sinh viên ) from sinh viên group by tên khoa having avg ( gpa của sinh viên ) = ( select avg ( gpa của sinh viên ) from sinh viên group by tên khoa order by avg ( gpa của sinh viên ) desc limit 1 )
select mã khoa , avg ( gpa của sinh viên ) from sinh viên group by mã khoa
select count ( * ) from khoa
select count(distinct mã trường) from khoa
select count(distinct mã lớp học) from lớp học
select count(distinct mã lớp học) from lớp học as t1 join khoá học as t2 on t1.mã khoá học = t2.mã khoá học
select count ( * ) from khoá học
select count(distinct mã khoá học) from khoá học
select count ( * ) from khoa
select count(distinct mã khoa) from khoa
select count(mã khoá học) from khoá học as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa where t2.tên khoa = Computer Science
select count ( * ) from khoa as t1 join khoá học as t2 on t1.mã khoa = t2.mã khoa where t1.tên khoa = Computer Science
select count(distinct lớp học phần)  from lớp học as t1  join khoá học as t2 on t1.mã khoá học = t2.mã khoá học  where t2.mã khoá học = ACCT-211
select count(distinct lớp học phần) from lớp học where mã khoá học = ACCT-211
select mã khoa, sum(số lượng tín chỉ của khoá học) from khoá học group by mã khoa
select sum(số lượng tín chỉ của khoá học) from khoá học group by mã khoa
select t1.mã khoa, t1.mô tả về khoá học  from khoá học as t1  join khoa as t2 on t1.mã khoa = t2.mã khoa  where t1.số lượng tín chỉ của khoá học = (      select max(số lượng tín chỉ của khoá học)      from khoá học  )
select mã khoa from khoá học group by mã khoa order by sum(số lượng tín chỉ của khoá học) desc limit 1
select count(t1.mã số sinh viên) from đăng ký khoá học as t2 join sinh viên as t1 on t2.mã số sinh viên = t1.mã số sinh viên where t2.mã khoá học = ACCT-211
select count ( * ) from đăng ký khoá học as t1 join sinh viên as t2 on t1.mã số sinh viên = t2.mã số sinh viên where t1.mã khoá học = ACCT-211
select t1.tên của sinh viên from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên where t2.mã khoá học = ACCT-211
select t1.tên của sinh viên from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên where t2.mã khoá học = ACCT-211
select t1.tên của sinh viên  from sinh viên as t1  join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên  where t2.mã khoá học = ACCT-211 and t2.điểm số = C
select t1.tên của sinh viên  from sinh viên as t1  join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên  where t2.mã khoá học = ACCT-211 and t2.điểm số = C
select số lượng nhân viên from nhân viên
select count ( * ) from nhân viên
select count ( * ) from giáo sư where bằng cấp cao nhất = Tiến sĩ
select count ( * ) from giáo sư where bằng cấp cao nhất = Tiến sĩ
select count ( * )  from lớp học as t1  join khoa as t2 on t1.mã khoa = t2.mã khoa  join giáo sư as t3 on t2.mã số nhân viên = t3.mã số nhân viên  join sinh viên as t4 on t1.mã lớp học = t4.mã lớp  where t2.tên khoa = Accounting
select count ( * )  from lớp học as t1  join khoa as t2 on t1.mã khoa = t2.mã khoa  join giáo sư as t3 on t1.mã số nhân viên của giáo sư = t3.mã số nhân viên  join sinh viên as t4 on t1.mã lớp học = t4.mã lớp  where t2.tên khoa = Mathematics and t3.mã khoa = Mathematics
select t2.tên khoa  from sinh viên as t1  join khoa as t2  on t1.mã khoa = t2.mã khoa  group by t1.mã khoa  order by count ( * ) desc  limit 1
select t1.mã khoa, count ( * )  from sinh viên as t1  join khoa as t2 on t1.mã khoa = t2.mã khoa  group by t1.mã khoa  order by count ( * ) desc  limit 1
select tên khoa from khoa order by tên khoa asc limit 1
select tên khoa from khoa order by tên khoa
select mã khoá học from lớp học where phòng học = KLR 209
select t1.mã khoá học  from khoá học as t1  join lớp học as t2 on t1.mã khoá học = t2.mã khoá học  where t2.phòng học = KLR 209
select tên của nhân viên , ngày sinh của nhân viên from nhân viên where mã công việc của nhân viên = Professor order by ngày sinh của nhân viên
select tên của nhân viên, ngày sinh của nhân viên from nhân viên where mã công việc của nhân viên = Giáo sư order by ngày sinh của nhân viên
select tên của giáo sư , văn phòng giáo sư from giáo sư order by tên của giáo sư asc
select tên của giáo sư , văn phòng giáo sư from giáo sư order by tên của giáo sư
select tên của nhân viên , họ của nhân viên from nhân viên order by ngày sinh desc limit 1
select tên của nhân viên , họ của nhân viên from nhân viên order by ngày sinh của nhân viên limit 1
select tên của sinh viên , họ của sinh viên , avg ( điểm số ) from sinh viên where avg ( điểm số ) > 3 order by avg ( điểm số ) limit 1
select t1.tên của sinh viên , t1.họ của sinh viên , t1.gpa của sinh viên  from sinh viên as t1  join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên  where t1.gpa của sinh viên > 3  order by t1.ngày sinh của sinh viên  limit 1
select t1.tên của sinh viên from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên where t2.điểm số = C
select t1.tên của sinh viên  from sinh viên as t1  join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên  where t2.điểm số = C
select t1.tên khoa  from khoa as t1  join giáo sư as t2 on t1.mã khoa = t2.mã khoa  group by t2.mã khoa  order by count ( * ) desc  limit 1
select t1.tên khoa  from khoa as t1  join giáo sư as t2 on t1.mã khoa = t2.mã khoa  group by t2.mã khoa  order by count ( * ) desc  limit 1
select t1.mã khoa, count ( * )  from giáo sư as t1  join khoa as t2 on t1.mã khoa = t2.mã khoa  group by t1.mã khoa  order by count ( * ) desc  limit 1
select t1.tên khoa  from khoa as t1  join giáo sư as t2 on t1.mã khoa = t2.mã khoa  where t2.bằng cấp cao nhất = Ph.D.  group by t1.mã khoa  order by count ( * ) desc  limit 1
select tên của giáo sư from giáo sư except select t1.tên của giáo sư from giáo sư as t1 join lớp học as t2 on t1.mã số nhân viên = t2.mã số nhân viên
select tên của nhân viên from nhân viên where mã số nhân viên not in ( select mã số giáo sư from đăng ký khoá học )
select t1.tên của giáo sư from giáo sư as t1 join lớp học as t2 on t1.mã số nhân viên = t2.mã số nhân viên where t1.mã khoa = History and t2.mã số nhân viên not in (select mã số nhân viên from giáo sư)
select t1.tên của giáo sư  from giáo sư as t1  join khoa as t2 on t1.mã khoa = t2.mã khoa  where t2.tên khoa = History  except  select t1.tên của giáo sư  from giáo sư as t1  join khoa as t2 on t1.mã khoa = t2.mã khoa  join đăng ký khoá học as t3 on t1.mã số giáo sư = t3.mã số giáo sư  where t2.tên khoa = History
select t1.họ của giáo sư , t1.văn phòng giáo sư  from giáo sư as t1  join khoa as t2 on t1.mã khoa = t2.mã khoa  where t2.tên khoa = History
select t1.họ của giáo sư , t1.văn phòng giáo sư  from giáo sư as t1  join khoa as t2 on t1.mã khoa = t2.mã khoa  where t2.tên khoa = History
select t1.văn phòng giáo sư , t2.tên khoa  from giáo sư as t1  join khoa as t2  on t1.mã khoa = t2.mã khoa  where t1.họ của giáo sư = Heffington
select t1.tên khoa, t1.văn phòng giáo sư  from khoa as t1  join giáo sư as t2 on t1.mã khoa = t2.mã khoa  where t2.họ của giáo sư = Heffington
select họ của giáo sư, ngày bắt đầu công việc của giáo sư  from giáo sư  where văn phòng giáo sư = DRE 102
select t1.họ của nhân viên , t1.ngày bắt đầu công việc của nhân viên  from nhân viên as t1  join giáo sư as t2 on t1.mã số nhân viên = t2.mã số nhân viên  where t2.văn phòng giáo sư = DRE 102
select t2.mã khoá học  from sinh viên as t1  join đăng ký khoá học as t2  on t1.mã số sinh viên = t2.mã số sinh viên  where t1.họ của sinh viên = Smithson
select t2.mã khoá học  from sinh viên as t1  join đăng ký khoá học as t2  on t1.mã số sinh viên = t2.mã số sinh viên  where t1.họ của sinh viên = Smithson
select t1.mã khoá học, t1.mô tả về khoá học, sum(t2.số lượng tín chỉ của khoá học)  from khoá học as t1  join đăng ký khoá học as t2 on t1.mã khoá học = t2.mã khoá học  join sinh viên as t3 on t3.mã số sinh viên = t2.mã số sinh viên  where t3.họ của sinh viên = Smithson  group by t1.mã khoá học, t1.mô tả về khoá học
select t1.số lượng tín chỉ của khoá học, t2.mô tả về khoá học  from đăng ký khoá học as t1  join khoá học as t2 on t1.mã khoá học = t2.mã khoá học  join sinh viên as t3 on t1.mã số sinh viên = t3.mã số sinh viên  where t3.họ của sinh viên = Smithson
select count ( * ) from giáo sư where bằng cấp cao nhất = Tiến sĩ or bằng cấp cao nhất = Thạc sĩ
select count ( * ) from giáo sư where bằng cấp cao nhất = Tiến sĩ or bằng cấp cao nhất = Thạc sĩ
select count ( * ) from giáo sư as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa where t2.tên khoa = Accounting or t2.tên khoa = Sinh học
select count ( * )  from giáo sư as t1  join khoa as t2 on t1.mã khoa = t2.mã khoa  where t2.tên khoa = Accounting or t2.tên khoa = Sinh học
select t3.tên của giáo sư  from lớp học as t1  join khoá học as t2 on t1.mã khoá học = t2.mã khoá học  join giáo sư as t3 on t1.mã số nhân viên của giáo sư = t3.mã số nhân viên  where t2.mã khoá học = CIS-220 and t1.mã khoá học = QM-261
select t3.tên của nhân viên  from lớp học as t1  join khoá học as t2 on t1.mã khoá học = t2.mã khoá học  join nhân viên as t3 on t1.mã số nhân viên của giáo sư = t3.mã số nhân viên  where t2.mã khoá học = CIS-220 and t1.mã khoá học = QM-261
select t1.tên của sinh viên  from sinh viên as t1  join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên  where t2.mã khoa = Computer Science  intersect  select t1.tên của sinh viên  from sinh viên as t1  join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên  where t2.mã khoa = Computer Engineering
select t1.tên của sinh viên  from sinh viên as t1  join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên  where t2.mã khoa = Kế toán  intersect  select t1.tên của sinh viên  from sinh viên as t1  join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên  where t2.mã khoa = Hệ thống thông tin máy tính
select avg(t1.gpa) from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên where t2.mã khoá học = ACCT-211
select avg(t1.gpa của sinh viên)  from sinh viên as t1  join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên  where t2.mã khoá học = ACCT-211
select tên của sinh viên , điểm trung bình của sinh viên , số điện thoại của sinh viên from sinh viên order by điểm trung bình của sinh viên desc limit 5
select tên của sinh viên , điểm trung bình của sinh viên , số điện thoại của sinh viên from sinh viên order by điểm trung bình của sinh viên desc limit 5
select t3.tên khoa  from sinh viên as t1  join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên  join khoa as t3 on t3.mã khoa = t2.mã khoa  group by t2.mã khoa  having avg(t1.gpa của sinh viên) = ( select min( t1.gpa của sinh viên ) from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên group by t2.mã khoa )
select t1.mã khoa  from sinh viên as t1  join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên  group by t1.mã khoa  having avg(t2.điểm số) = (select min(avg(điểm số)) from đăng ký khoá học group by mã khoa)
select tên của sinh viên , điểm gpa from sinh viên where điểm gpa < ( select avg ( điểm gpa ) from sinh viên )
select tên của sinh viên , avg ( gpa của sinh viên ) from sinh viên group by tên của sinh viên having avg ( gpa của sinh viên ) < ( select avg ( gpa của sinh viên ) from sinh viên )
select t1.tên khoa , t1.địa chỉ khoa  from khoa as t1  join sinh viên as t2 on t1.mã khoa = t2.mã khoa  group by t1.mã khoa  order by count ( * ) desc  limit 1
select t1.tên khoa, t1.địa chỉ khoa  from khoa as t1  join sinh viên as t2 on t1.mã khoa = t2.mã khoa  group by t2.mã khoa  order by count ( * ) desc  limit 1
select t1.tên khoa , t1.địa chỉ khoa , count ( * ) from khoa as t1 join sinh viên as t2 on t1.mã khoa = t2.mã khoa group by t2.mã khoa order by count ( * ) desc limit 3
select t1.tên khoa, t1.địa chỉ khoa, count ( * )  from khoa as t1  join sinh viên as t2 on t1.mã khoa = t2.mã khoa  group by t1.mã khoa  order by count ( * ) desc  limit 3
select t1.tên giáo sư , t1.địa chỉ văn phòng  from giáo sư as t1  join khoa as t2 on t1.mã khoa = t2.mã khoa  where t2.tên khoa = History and t1.bằng cấp cao nhất = Doctor
select t2.tên giáo sư , t2.văn phòng giáo sư  from giáo sư as t2  join khoa as t1 on t2.mã khoa = t1.mã khoa  where t1.tên khoa = History and t2.bằng cấp cao nhất = Ph.D.
select t1.tên của giáo sư , t2.mã khoá học  from giáo sư as t1  join đăng ký khoá học as t2  on t1.mã số nhân viên = t2.mã số nhân viên group by t2.mã khoá học
select t1.tên của giảng viên , t2.mã khoá học  from giáo sư as t1  join đăng ký khoá học as t2  on t1.mã số nhân viên = t2.mã số nhân viên
select t1.tên của giảng viên , t2.mô tả về khoá học  from giáo sư as t1  join khoá học as t2  on t1.mã khoá học = t2.mã khoá học
select t1.tên của giáo sư , t2.mô tả về khoá học  from giáo sư as t1  join đăng ký khoá học as t2 on t1.mã số nhân viên = t2.mã số giáo sư  where t2.mã số giáo sư = t1.mã số nhân viên
select t1.tên của giáo sư , t2.mô tả về khoá học  from giáo sư as t1  join khoá học as t2  on t1.mã khoá học = t2.mã khoá học
select t1.tên của giáo sư , t1.văn phòng giáo sư , t2.mô tả về khoá học  from giáo sư as t1  join đăng ký khoá học as t2 on t1.mã số nhân viên = t2.mã số nhân viên  where t2.mã số nhân viên in ( select mã số nhân viên from giáo sư )
select t3.mô tả về khoá học, t2.văn phòng giáo sư, t1.tên của giáo sư  from giáo sư as t1  join khoá học as t2 on t1.mã khoa = t2.mã khoa  join lớp học as t3 on t1.mã số nhân viên = t3.mã số nhân viên của giáo sư  join đăng ký khoá học as t4 on t3.mã lớp học = t4.mã lớp
select t1.tên giáo sư , t2.mô tả về khoá học , t3.văn phòng giáo sư , t3.mã khoa  from giáo sư as t1  join khoá học as t2 on t1.mã khoa = t2.mã khoa  join lớp học as t3 on t1.mã số nhân viên = t3.mã số nhân viên
select t1.tên của sinh viên , t1.họ của sinh viên , t2.mô tả về khoá học  from sinh viên as t1  join đăng ký khoá học as t2  on t1.mã số sinh viên = t2.mã số sinh viên
select t1.tên của sinh viên , t1.họ của sinh viên , t2.mô tả về khoá học  from sinh viên as t1  join đăng ký khoá học as t2  on t1.mã số sinh viên = t2.mã số sinh viên
select t1.tên của sinh viên  from sinh viên as t1  join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên  where t2.điểm số = A or t2.điểm số = C
select t1.tên của sinh viên  from sinh viên as t1  join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên  where t2.điểm số = A or t2.điểm số = C
select t1.tên của giáo sư , t2.phòng học  from giáo sư as t1  join lớp học as t2 on t1.mã số nhân viên = t2.mã số nhân viên của giáo sư  where t1.mã khoa = Accounting
select t1.tên của giáo sư , t3.phòng học  from giáo sư as t1  join khoa as t2 on t1.mã khoa = t2.mã khoa  join lớp học as t3 on t3.mã khoá học = t2.mã khoá học  where t2.tên khoa = Accounting and t1.mã số nhân viên in ( select t1.mã số nhân viên from giáo sư as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa where t2.tên khoa = Accounting )
select t1.tên của giáo sư , t1.bằng cấp cao nhất  from giáo sư as t1  join khoa as t2 on t1.mã khoa = t2.mã khoa  where t2.tên khoa = Computer Systems
select t1.tên của giáo sư , t1.bằng cấp cao nhất  from giáo sư as t1  join khoa as t2 on t1.mã khoa = t2.mã khoa  where t2.tên khoa = Computer Systems
select t1.họ của sinh viên  from sinh viên as t1  join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên  where t2.mã lớp = 10018 and t2.điểm số = A
select t1.họ của sinh viên  from sinh viên as t1  join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên  where t2.điểm số = A and t2.mã lớp = 10018
select tên của giáo sư , văn phòng giáo sư  from giáo sư as t1  join khoa as t2 on t1.mã khoa = t2.mã khoa  where t2.tên khoa = History and t1.bằng cấp cao nhất != Ph.D.
select tên của giáo sư , văn phòng giáo sư from giáo sư join khoa on giáo sư . mã khoa = khoa . mã khoa where khoa . tên khoa = History and giáo sư . bằng cấp cao nhất != Ph.D.
select t1.tên của giáo sư  from giáo sư as t1  join lớp học as t2 on t1.mã số nhân viên = t2.mã số nhân viên  group by t1.mã số nhân viên  having count ( * ) > 1
select t1.tên của giáo sư  from giáo sư as t1  join lớp học as t2 on t1.mã số nhân viên = t2.mã số nhân viên  group by t1.mã số nhân viên  having count ( * ) > 1
select t1.tên của sinh viên  from sinh viên as t1  join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên  group by t1.mã số sinh viên  having count ( * ) = 1
select t1.tên của sinh viên  from sinh viên as t1  join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên  group by t1.mã số sinh viên  having count ( * ) = 1
select t1.tên khoa  from khoa as t1  join khoá học as t2 on t1.mã khoa = t2.mã khoa  where t2.mô tả về khoá học like %Statistics%
select t1.tên khoa  from khoa as t1  join khoá học as t2 on t1.mã khoa = t2.mã khoa  where t2.mô tả về khoá học like %Statistics%
select t1.tên của sinh viên  from sinh viên as t1  join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên  where t1.chữ cái đầu của tên sinh viên = S and t2.mã khoá học = ACCT-211
select t1.tên của sinh viên  from sinh viên as t1  join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên  where t1.chữ cái đầu của tên sinh viên = S and t2.mã khoá học = ACCT-211
select mã trạng thái tài liệu from trạng thái của tài liệu
select t2.mô tả về trạng thái tài liệu  from tài liệu as t1  join trạng thái của tài liệu as t2  on t1.mã trạng thái tài liệu = t2.mã trạng thái tài liệu  where t1.mã trạng thái tài liệu = đang được xử lý
select mã loại tài liệu from loại tài liệu
select t2.mô tả về loại tài liệu  from loại tài liệu as t2  join tài liệu as t1 on t2.mã loại tài liệu = t1.mã loại tài liệu  where t1.mã loại tài liệu = Letter
select tên đại lý vận chuyển from đại lý vận chuyển tài liệu
select mã đại lý vận chuyển from đại lý vận chuyển tài liệu where tên đại lý vận chuyển = UPS
select mã vai trò from vai trò
select mô tả về vai trò from vai trò where mã vai trò = ED
select count ( * ) from nhân viên
select t2.mô tả về vai trò  from nhân viên as t1  join vai trò as t2  on t1.mã vai trò = t2.mã vai trò  where t1.tên nhân viên = Koby
select id tài liệu , ngày lập biên lai from tài liệu
select mô tả về vai trò, id vai trò, count ( * )  from vai trò as t1  join nhân viên as t2 on t1.mã vai trò = t2.mã vai trò  group by t1.mã vai trò
select mô tả về vai trò, count ( * )  from vai trò as t1  join nhân viên as t2 on t1.mã vai trò = t2.mã vai trò  group by t1.mã vai trò  having count ( * ) > 1
select mô tả về trạng thái tài liệu from trạng thái của tài liệu where id tài liệu = 1
select count ( * ) from tài liệu where mã trạng thái tài liệu = Đã được hoàn thành
select t2.mã loại tài liệu  from tài liệu as t1  join loại tài liệu as t2  on t1.mã loại tài liệu = t2.mã loại tài liệu  where t1.id tài liệu = 2
select id tài liệu from tài liệu where mã trạng thái tài liệu = Đã được hoàn thành and mã loại tài liệu = Giấy
select tên đại lý vận chuyển from đại lý vận chuyển tài liệu where mã đại lý vận chuyển in ( select mã đại lý vận chuyển from tài liệu where id tài liệu = 2 )
select count ( * )  from địa chỉ as t1  join đại lý vận chuyển tài liệu as t2 on t1.id địa chỉ = t2.id địa chỉ  join tài liệu được gửi as t3 on t3.id tài liệu = t1.id địa chỉ  where t1.chi tiết địa chỉ = USPS and t2.mã đại lý vận chuyển = USPS
select t1.tên đại lý vận chuyển, count ( * )  from đại lý vận chuyển tài liệu as t1  join tài liệu được gửi as t2  on t1.mã đại lý vận chuyển = t2.mã đại lý vận chuyển  group by t2.mã đại lý vận chuyển  order by count ( * ) desc  limit 1
select ngày lập biên lai from tài liệu where id tài liệu = 3
select t1.chi tiết địa chỉ  from địa chỉ as t1  join tài liệu được gửi as t2  on t1.id địa chỉ = t2.id địa chỉ có id  where t2.id tài liệu = 4
select t2.ngày gửi from tài liệu được gửi as t2 join tài liệu as t1 on t2.id tài liệu = t1.id tài liệu where t1.id tài liệu = 7
select id tài liệu from tài liệu where mã trạng thái tài liệu = Đã được hoàn thành and mã loại tài liệu = Giấy except select t1.id tài liệu from tài liệu as t1 join đại lý vận chuyển tài liệu as t2 on t1.mã đại lý vận chuyển = t2.mã đại lý vận chuyển where t2.tên đại lý vận chuyển = USPS
select t1.id tài liệu  from tài liệu as t1  join loại tài liệu as t2 on t1.mã loại tài liệu = t2.mã loại tài liệu  join trạng thái của tài liệu as t3 on t1.mã trạng thái tài liệu = t3.mã trạng thái tài liệu  join đại lý vận chuyển tài liệu as t4 on t1.mã đại lý vận chuyển = t4.mã đại lý vận chuyển  where t3.mô tả về trạng thái tài liệu = Đã được hoàn thành and t2.mô tả về loại tài liệu = Giấy and t4.tên đại lý vận chuyển = USPS
select t2.chi tiết dự thảo  from bản dự thảo của tài liệu as t1  join tài liệu as t2 on t1.id tài liệu = t2.id tài liệu  where t2.id tài liệu = 7
select count ( * ) from bản dự thảo của tài liệu where id tài liệu in (select id tài liệu from tài liệu where id tài liệu = 2)
select t1.id tài liệu, count ( * )  from tài liệu as t1  join bản sao as t2 on t1.id tài liệu = t2.id tài liệu  group by t1.id tài liệu  order by count ( * ) desc  limit 1
select t1.id tài liệu, count ( * ) from tài liệu as t1 join bản sao as t2 on t1.id tài liệu = t2.id tài liệu group by t1.id tài liệu having count ( * ) > 1
select t2.tên nhân viên from lịch sử lưu hành as t1 join nhân viên as t2 on t1.id nhân viên = t2.id nhân viên where t1.id tài liệu = 1
select tên nhân viên from nhân viên except select t1.tên nhân viên from nhân viên as t1 join lịch sử lưu hành as t2 on t1.id nhân viên = t2.id nhân viên
select t1.tên nhân viên , count ( * ) from lịch sử lưu hành as t2 join nhân viên as t1 on t2.id nhân viên = t1.id nhân viên group by t2.id nhân viên order by count ( * ) desc limit 1
select t1.id tài liệu, count(t2.id nhân viên)  from tài liệu as t1  join lịch sử lưu hành as t2  on t1.id tài liệu = t2.id tài liệu  group by t1.id tài liệu
select count ( * ) from lượt đặt hàng
select count ( * ) from lượt đặt hàng
select ngày đặt hàng from lượt đặt hàng
select ngày đặt hàng from lượt đặt hàng
select ngày giao hàng theo kế hoạch , ngày giao hàng thực tế from lượt đặt hàng
select ngày giao hàng theo kế hoạch , ngày giao hàng thực tế from lượt đặt hàng
select count ( * ) from khách hàng
select count ( * ) from khách hàng
select số điện thoại khách hàng , địa chỉ email khách hàng from khách hàng where tên khách hàng = Harold
select địa chỉ email khách hàng , số điện thoại khách hàng from khách hàng where tên khách hàng = Harold
select t1.tên cửa hàng from cửa hàng as t1 join nhóm hội thảo kịch as t2 on t1.id cửa hàng = t2.id cửa hàng
select t1.tên cửa hàng from cửa hàng as t1 join nhóm hội thảo kịch as t2 on t1.id cửa hàng = t2.id cửa hàng
select min(số lượng đặt hàng), avg(số lượng đặt hàng), max(số lượng đặt hàng) from hoá đơn group by id hoá đơn order by số lượng đặt hàng
select min(t1.số lượng đặt hàng), avg(t1.số lượng đặt hàng), max(t1.số lượng đặt hàng) from mặt hàng trong hoá đơn as t1 join hoá đơn as t2 on t1.id hoá đơn = t2.id hoá đơn group by t2.id hoá đơn
select distinct t1.mã phương thức thanh toán  from phương thức thanh toán as t1  join hoá đơn as t2  on t1.mã phương thức thanh toán = t2.mã phương thức thanh toán  group by t1.mã phương thức thanh toán  having count ( * ) = (select count ( * ) from hoá đơn)
select t1.mã phương thức thanh toán  from phương thức thanh toán as t1  join hoá đơn as t2  on t1.mã phương thức thanh toán = t2.mã phương thức thanh toán  group by t1.mã phương thức thanh toán  having count ( * ) = (select count ( * ) from hoá đơn)
select mô tả về khu vực tiếp thị from khu vực tiếp thị where tên khu vực tiếp thị = China
select mô tả về khu vực tiếp thị from khu vực tiếp thị where tên khu vực tiếp thị = China
select distinct tên sản phẩm from các sản phẩm where giá sản phẩm > ( select avg(giá sản phẩm) from các sản phẩm ) except select tên sản phẩm from các sản phẩm where giá sản phẩm = ( select avg(giá sản phẩm) from các sản phẩm )
select tên sản phẩm from các sản phẩm where giá sản phẩm > ( select avg( giá sản phẩm ) from các sản phẩm )
select tên sản phẩm from các sản phẩm order by giá sản phẩm desc limit 1
select tên sản phẩm from các sản phẩm order by giá sản phẩm desc limit 1
select tên sản phẩm from các sản phẩm order by giá sản phẩm asc
select tên sản phẩm from các sản phẩm order by giá sản phẩm asc
select số điện thoại khách hàng from người biểu diễn where tên khách hàng = Ashley
select số điện thoại khách hàng from người biểu diễn where tên khách hàng = Ashley
select t1.mã phương thức thanh toán, count ( * )  from lượt đặt hàng as t2  join phương thức thanh toán as t1  on t2.mã phương thức thanh toán = t1.mã phương thức thanh toán  group by t1.mã phương thức thanh toán
select t1.mã phương thức thanh toán, count ( * )  from phương thức thanh toán as t1  join lượt đặt hàng as t2 on t1.mã phương thức thanh toán = t2.mã trạng thái  group by t1.mã phương thức thanh toán
select t1.mã phương thức thanh toán  from phương thức thanh toán as t1  join lượt đặt hàng as t2  on t1.mã phương thức thanh toán = t2.mã phương thức thanh toán  group by t1.mã phương thức thanh toán  order by count ( * ) desc  limit 1
select t1.mã phương thức thanh toán  from hoá đơn as t2  join phương thức thanh toán as t1  on t2.mã phương thức thanh toán = t1.mã phương thức thanh toán  group by t2.mã phương thức thanh toán  order by count ( * ) desc  limit 1
select t2.thành phố thị trấn from cửa hàng as t1 join địa chỉ as t2 on t1.id địa chỉ = t2.id địa chỉ where t1.tên cửa hàng = FJM Filming
select t2.thành phố thị trấn from cửa hàng as t1 join địa chỉ as t2 on t1.id địa chỉ = t2.id địa chỉ where t1.tên cửa hàng = FJA Filming
select distinct t2.quận hạt from cửa hàng as t1 join địa chỉ as t2 on t1.id địa chỉ = t2.id địa chỉ where t2.mã khu vực tiếp thị = CA
select t1.quận hạt from cửa hàng as t1 join khu vực tiếp thị as t2 on t1.mã khu vực tiếp thị = t2.mã khu vực tiếp thị where t2.mã khu vực tiếp thị = CA
select t2.tên khu vực tiếp thị  from cửa hàng as t1  join khu vực tiếp thị as t2  on t1.mã khu vực tiếp thị = t2.mã khu vực tiếp thị  where t1.tên cửa hàng = Rob Dinning
select t2.tên khu vực tiếp thị  from cửa hàng as t1  join khu vực tiếp thị as t2  on t1.mã khu vực tiếp thị = t2.mã khu vực tiếp thị  where t1.tên cửa hàng = Rob Dinning
select t2.mô tả về loại dịch vụ  from dịch vụ as t1  join các sản phẩm as t2 on t1.mã loại dịch vụ = t2.id sản phẩm  where t2.giá sản phẩm > 100
select mô tả về loại dịch vụ from loại dịch vụ where giá sản phẩm > 100
select mô tả về loại dịch vụ, mã loại dịch vụ, count ( * )  from loại dịch vụ  group by mã loại dịch vụ
select mã loại dịch vụ, mô tả về loại dịch vụ, số lượng dịch vụ from loại dịch vụ
select t2.mô tả về loại dịch vụ, t1.mã loại dịch vụ  from loại dịch vụ as t1  join dịch vụ as t2 on t1.mã loại dịch vụ = t2.mã loại dịch vụ  group by t1.mã loại dịch vụ  order by count ( * ) desc  limit 1
select t1.mô tả về loại dịch vụ, t1.mã loại dịch vụ  from loại dịch vụ as t1  join dịch vụ as t2 on t1.mã loại dịch vụ = t2.mã loại dịch vụ  group by t2.mã loại dịch vụ  order by count ( * ) desc  limit 1
select t1.số điện thoại cửa hàng , t1.địa chỉ email cửa hàng  from nhóm hội thảo kịch as t1  join dịch vụ as t2 on t1.id nhóm hội thảo kịch = t2.id nhóm hội thảo kịch
select t1.địa chỉ email cửa hàng , t1.số điện thoại cửa hàng  from nhóm hội thảo kịch as t1  join dịch vụ as t2 on t1.id nhóm hội thảo kịch = t2.id nhóm hội thảo kịch
select t3.số điện thoại cửa hàng, t3.địa chỉ email cửa hàng  from nhóm hội thảo kịch as t1  join dịch vụ as t2 on t1.id nhóm hội thảo kịch = t2.id nhóm hội thảo kịch  join các sản phẩm as t3 on t2.id sản phẩm = t3.id sản phẩm  where t3.tên sản phẩm = phim
select t1.id nhóm hội thảo kịch  from dịch vụ as t2  join các sản phẩm as t1 on t2.id sản phẩm = t1.id sản phẩm  where t1.tên sản phẩm = phim
select distinct tên sản phẩm , avg ( giá sản phẩm ) from các sản phẩm group by tên sản phẩm
select tên sản phẩm , avg ( giá sản phẩm ) from các sản phẩm group by tên sản phẩm
select tên sản phẩm from các sản phẩm group by tên sản phẩm having avg ( giá sản phẩm ) < 1000000
select tên sản phẩm , giá sản phẩm from các sản phẩm where giá sản phẩm < 1000000
select sum(t2.số lượng đặt hàng)  from dịch vụ as t1  join các sản phẩm as t2 on t1.id sản phẩm = t2.id sản phẩm  where t1.mã loại dịch vụ = Painting
select sum(t2.số lượng đặt hàng)  from dịch vụ đặt hàng as t1  join các sản phẩm as t2 on t1.id sản phẩm = t2.id sản phẩm  where t2.mã loại dịch vụ = Pic
select t2.chi tiết khác về đơn hàng  from các sản phẩm as t1  join dịch vụ đặt hàng as t2  on t1.id sản phẩm = t2.id sản phẩm  where t1.giá sản phẩm > 2000
select t2.chi tiết khác về đặt hàng  from các sản phẩm as t1  join dịch vụ đặt hàng as t2  on t1.id sản phẩm = t2.id sản phẩm  where t1.giá sản phẩm > 2000
select t1.ngày giao hàng thực tế  from lượt đặt hàng as t1  join mặt hàng trong hoá đơn as t2 on t1.id đơn hàng = t2.id đơn hàng  join mặt hàng được đặt as t3 on t2.id mặt hàng được đặt = t3.id mặt hàng được đặt  where t3.số lượng đặt hàng = 1 and t1.ngày giao hàng thực tế is not null
select t1.ngày giao hàng thực tế  from lượt đặt hàng as t1  join mặt hàng được đặt as t2 on t1.id đơn hàng = t2.id đơn hàng  where t2.số lượng đặt hàng = 1
select distinct t1.ngày đặt hàng , t1.ngày đặt hàng from lượt đặt hàng as t1 join mặt hàng trong hoá đơn as t2 on t1.id đơn hàng = t2.id đơn hàng join hoá đơn as t3 on t2.id hoá đơn = t3.id hoá đơn where t3.mã phương thức thanh toán = Cash and t3.giá sản phẩm > 1000 order by t3.giá sản phẩm desc limit 1
select ngày đặt hàng from lượt đặt hàng where giá sản phẩm > 1000
select count(distinct mã tiền tệ) from nhóm hội thảo kịch
select count(distinct mã tiền tệ) from nhóm hội thảo kịch
select t1.tên cửa hàng  from nhóm hội thảo kịch as t1  join địa chỉ as t2 on t1.id địa chỉ = t2.id địa chỉ  where t2.thành phố thị trấn = Feliciaberg
select t1.tên cửa hàng  from nhóm hội thảo kịch as t1  join địa chỉ as t2 on t1.id địa chỉ = t2.id địa chỉ  where t2.thành phố thị trấn = Feliciaberg
select địa chỉ email cửa hàng from nhóm hội thảo kịch where id địa chỉ in (select id địa chỉ from địa chỉ where quận hạt = Alaska)
select địa chỉ email cửa hàng from nhóm hội thảo kịch where quận hạt = Alaska
select t2.thành phố thị trấn , count ( * ) from nhóm hội thảo kịch as t1 join địa chỉ as t2 on t1.id địa chỉ = t2.id địa chỉ group by t2.thành phố thị trấn
select t2.thành phố thị trấn , count ( * )  from nhóm hội thảo kịch as t1  join địa chỉ as t2 on t1.id địa chỉ = t2.id địa chỉ  group by t2.thành phố thị trấn  order by count ( * ) desc
select t1.mã khu vực tiếp thị  from nhóm hội thảo kịch as t2  join khu vực tiếp thị as t1  on t2.mã khu vực tiếp thị = t1.mã khu vực tiếp thị  group by t1.mã khu vực tiếp thị  order by count ( * ) desc  limit 1
select t1.mã khu vực tiếp thị  from khu vực tiếp thị as t1  join nhóm hội thảo kịch as t2  on t1.mã khu vực tiếp thị = t2.mã khu vực tiếp thị  group by t1.mã khu vực tiếp thị  order by count ( * ) desc  limit 1
select thành phố thị trấn from địa chỉ where thành phố thị trấn not in ( select thành phố thị trấn from người biểu diễn ) group by thành phố thị trấn having count ( * ) >= 1
select t1.thành phố thị trấn from địa chỉ as t1 join khách hàng as t2 on t1.id địa chỉ = t2.id địa chỉ except select t1.thành phố thị trấn from địa chỉ as t1 join khách hàng as t2 on t1.id địa chỉ = t2.id địa chỉ join người biểu diễn as t3 on t2.id địa chỉ = t3.id địa chỉ
select mã trạng thái from lượt đặt hàng group by mã trạng thái order by count ( * ) desc limit 1
select mã trạng thái from lượt đặt hàng group by mã trạng thái order by count ( * ) desc limit 1
select t2.tên cửa hàng from lượt đặt hàng as t1 join nhóm hội thảo kịch as t2 on t1.id nhóm hội thảo kịch = t2.id nhóm hội thảo kịch where t1.mã trạng thái = dừng
select t2.tên cửa hàng from lượt đặt hàng as t1 join nhóm hội thảo kịch as t2 on t1.id nhóm hội thảo kịch = t2.id nhóm hội thảo kịch where t1.mã trạng thái = dừng
select tên khách hàng from khách hàng except select t1.tên khách hàng from khách hàng as t1 join lượt đặt hàng as t2 on t1.id khách hàng = t2.id khách hàng
select tên khách hàng from khách hàng where id khách hàng not in ( select id khách hàng from lượt đặt hàng )
select avg(t1.số lượng đặt hàng) from hoá đơn as t1 join phương thức thanh toán as t2 on t1.mã phương thức thanh toán = t2.mã phương thức thanh toán where t2.mô tả về phương thức thanh toán = Mastercard
select avg(t1.số lượng đặt hàng)  from hoá đơn as t1  join phương thức thanh toán as t2  on t1.mã phương thức thanh toán = t2.mã phương thức thanh toán  where t2.mô tả về phương thức thanh toán = Mastercard
select t1.id sản phẩm from mặt hàng trong hoá đơn as t1 join hoá đơn as t2 on t1.id hoá đơn = t2.id hoá đơn group by t1.id sản phẩm order by count ( * ) desc limit 1
select t1.id sản phẩm from mặt hàng trong hoá đơn as t1 join hoá đơn as t2 on t1.id hoá đơn = t2.id join dịch vụ đặt hàng as t3 on t2.id đơn hàng = t3.id đơn hàng group by t1.id sản phẩm order by count ( * ) desc limit 1
select mô tả về loại dịch vụ from loại dịch vụ where mã loại dịch vụ not in (select mã loại dịch vụ from dịch vụ where mô tả về sản phẩm = ảnh) and mô tả về loại dịch vụ like %phim%
select mô tả về loại dịch vụ from loại dịch vụ where mã loại dịch vụ in ( select mã loại dịch vụ from dịch vụ where mô tả về sản phẩm = ảnh or mô tả về sản phẩm = phim )
select count ( * ) from tài khoản
select count ( * ) from tài khoản
select count(distinct t1.id khách hàng)  from khách hàng as t1  join tài khoản as t2  on t1.id khách hàng = t2.id khách hàng
select count(distinct t1.id khách hàng)  from khách hàng as t1  join tài khoản as t2  on t1.id khách hàng = t2.id khách hàng
select id tài khoản, ngày mở tài khoản, tên tài khoản, chi tiết khác về tài khoản from tài khoản
select id tài khoản, ngày mở tài khoản, tên tài khoản, chi tiết khác về tài khoản from tài khoản
select id tài khoản, tên tài khoản, ngày mở tài khoản, chi tiết khác về tài khoản  from tài khoản  where id khách hàng in (select id khách hàng from khách hàng where tên khách hàng = Mea Afghanistan)
select t1.id tài khoản, t1.tên tài khoản, t1.ngày mở tài khoản, t1.chi tiết khác về tài khoản  from tài khoản as t1  join khách hàng as t2 on t1.id khách hàng = t2.id khách hàng  where t2.tên khách hàng = Mea Afghanistan
select t1.tên tài khoản, t1.chi tiết khác về tài khoản  from tài khoản as t1  join khách hàng as t2 on t1.id khách hàng = t2.id khách hàng  where t2.tên khách hàng = Mea Afghanistan and t2.họ của khách hàng = Keeling
select t1.tên tài khoản, t1.chi tiết khác về tài khoản  from tài khoản as t1  join khách hàng as t2 on t1.id khách hàng = t2.id khách hàng  where t2.tên khách hàng = Mea Afghanistan Keeling
select t1.tên khách hàng, t1.họ của khách hàng  from khách hàng as t1  join tài khoản as t2 on t1.id khách hàng = t2.id khách hàng  where t2.tên tài khoản = 900
select t1.tên khách hàng from khách hàng as t1 join tài khoản as t2 on t1.id khách hàng = t2.id khách hàng where t2.tên tài khoản = 900
select count ( * ) from khách hàng where id khách hàng not in (select id khách hàng from tài khoản)
select count ( * ) from khách hàng except select id khách hàng from tài khoản
select distinct t1.tên khách hàng, t1.chữ cái đầu của tên đệm khách hàng, t1.họ của khách hàng, t1.số điện thoại  from khách hàng as t1  join tài khoản as t2 on t1.id khách hàng = t2.id khách hàng  where t2.id tài khoản is not null
select distinct t1.tên khách hàng, t1.họ của khách hàng, t1.số điện thoại  from khách hàng as t1  join tài khoản as t2 on t1.id khách hàng = t2.id khách hàng
select id khách hàng from khách hàng where id khách hàng not in (select id khách hàng from tài khoản)
select id khách hàng from khách hàng except select id khách hàng from tài khoản
select count ( * ), id khách hàng from tài khoản as t1 join khách hàng as t2 on t1.id khách hàng = t2.id khách hàng group by t1.id khách hàng
select id khách hàng, count ( * )  from khách hàng as t1  join tài khoản as t2 on t1.id khách hàng = t2.id khách hàng  group by t1.id khách hàng
select t1.tên khách hàng, t1.chữ cái đầu của tên đệm khách hàng, t1.họ của khách hàng, t1.id khách hàng  from khách hàng as t1  join tài khoản as t2 on t1.id khách hàng = t2.id khách hàng  group by t2.id khách hàng  order by count ( * ) desc  limit 1
select t1.id khách hàng, t1.tên khách hàng, t1.chữ cái đầu của tên đệm khách hàng, t1.họ của khách hàng  from khách hàng as t1  join tài khoản as t2 on t1.id khách hàng = t2.id khách hàng  group by t1.id khách hàng  order by count ( * ) desc  limit 1
select t1.id khách hàng, t1.tên khách hàng, t1.họ của khách hàng, count ( * )  from khách hàng as t1  join tài khoản as t2 on t1.id khách hàng = t2.id khách hàng  group by t1.id khách hàng
select t1.tên khách hàng, t1.họ của khách hàng, count ( * )  from khách hàng as t1  join tài khoản as t2 on t1.id khách hàng = t2.id khách hàng  group by t1.id khách hàng
select t1.tên khách hàng, t1.id khách hàng  from khách hàng as t1  join tài khoản as t2 on t1.id khách hàng = t2.id khách hàng  group by t1.id khách hàng  having count ( * ) >= 2
select t1.tên khách hàng, t1.id khách hàng  from khách hàng as t1  join tài khoản as t2 on t1.id khách hàng = t2.id khách hàng  group by t1.id khách hàng  having count ( * ) >= 2
select count ( * ) from khách hàng
select count ( * ) from khách hàng
select giới tính, count ( * ) from khách hàng group by giới tính
select giới tính, count ( * ) from khách hàng group by giới tính
select count ( * ) from giao dịch tài chính
select count ( * ) from giao dịch tài chính
select count ( * ), id tài khoản from giao dịch tài chính group by id tài khoản
select id tài khoản, count ( * ) from giao dịch tài chính as t1 join tài khoản as t2 on t1.id tài khoản = t2.id tài khoản group by t1.id tài khoản
select count ( * ) from giao dịch tài chính as t1 join tài khoản as t2 on t1.id tài khoản = t2.id tài khoản where t2.tên tài khoản = 337
select count ( * ) from giao dịch tài chính as t1 join tài khoản as t2 on t1.id tài khoản = t2.id tài khoản where t2.tên tài khoản = 337
select avg(số tiền giao dịch), min(số tiền giao dịch), max(số tiền giao dịch), sum(số tiền giao dịch) from giao dịch tài chính group by loại giao dịch order by ngày giao dịch
select avg(số tiền giao dịch), min(số tiền giao dịch), max(số tiền giao dịch), sum(số tiền giao dịch) from giao dịch tài chính
select id giao dịch from giao dịch tài chính where số tiền giao dịch > (select avg(số tiền giao dịch) from giao dịch tài chính)
select id giao dịch from giao dịch tài chính where số tiền giao dịch > ( select avg(số tiền giao dịch) from giao dịch tài chính )
select loại giao dịch , sum ( số tiền giao dịch ) from giao dịch tài chính group by loại giao dịch order by sum ( số tiền giao dịch ) desc
select loại giao dịch , sum ( số tiền giao dịch ) from giao dịch tài chính group by loại giao dịch
select t1.tên tài khoản, t1.id tài khoản, count ( * )  from tài khoản as t1  join giao dịch tài chính as t2 on t1.id tài khoản = t2.id tài khoản  group by t1.id tài khoản
select t1.tên tài khoản, t1.id tài khoản, count ( * )  from tài khoản as t1  join giao dịch tài chính as t2 on t1.id tài khoản = t2.id tài khoản  group by t1.id tài khoản
select t1.id tài khoản  from tài khoản as t1  join giao dịch tài chính as t2  on t1.id tài khoản = t2.id tài khoản  group by t1.id tài khoản  order by count ( * ) desc  limit 1
select t1.id tài khoản  from tài khoản as t1  join giao dịch tài chính as t2  on t1.id tài khoản = t2.id tài khoản  group by t1.id tài khoản  order by count ( * ) desc  limit 1
select t1.tên tài khoản, t1.id tài khoản  from tài khoản as t1  join giao dịch tài chính as t2 on t1.id tài khoản = t2.id tài khoản  group by t2.id tài khoản  having count ( * ) >= 4
select t1.tên tài khoản, t1.id tài khoản  from tài khoản as t1  join giao dịch tài chính as t2 on t1.id tài khoản = t2.id tài khoản  group by t2.id tài khoản  having count ( * ) >= 4
select distinct kích thước sản phẩm from sản phẩm
select distinct kích thước sản phẩm from sản phẩm
select distinct màu sản phẩm from sản phẩm
select distinct màu sản phẩm from sản phẩm
select t1.số hoá đơn, count ( * )  from hoá đơn as t1  join giao dịch tài chính as t2  on t1.số hoá đơn = t2.số hoá đơn  group by t1.số hoá đơn
select count ( * ), t1.số hoá đơn  from hoá đơn as t1  join giao dịch tài chính as t2  on t1.số hoá đơn = t2.số hoá đơn  group by t1.số hoá đơn
select t1.số hoá đơn, t1.ngày lập hoá đơn  from hoá đơn as t1  join giao dịch tài chính as t2 on t1.số hoá đơn = t2.số hoá đơn  group by t1.số hoá đơn  order by count ( * ) desc  limit 1
select t1.số hoá đơn, t1.ngày lập hoá đơn  from hoá đơn as t1  join giao dịch tài chính as t2 on t1.số hoá đơn = t2.số hoá đơn  order by t2.số tiền giao dịch desc  limit 1
select count ( * ) from hoá đơn
select count ( * ) from hoá đơn
select ngày lập hoá đơn, id đơn hàng, chi tiết from hoá đơn
select t1.ngày lập hoá đơn, t1.id đơn hàng, t2.chi tiết đặt hàng  from hoá đơn as t1  join đơn đặt hàng as t2  on t1.id đơn hàng = t2.id đơn hàng
select t1.id đơn hàng, count ( * ) from đơn đặt hàng as t1 join hoá đơn as t2 on t1.id đơn hàng = t2.id đơn hàng group by t1.id đơn hàng
select count ( * ), id đơn hàng from hoá đơn as t1 join đơn đặt hàng as t2 on t1.id đơn hàng = t2.id đơn hàng group by t1.id đơn hàng
select t1.id đơn hàng, t1.chi tiết đặt hàng  from đơn đặt hàng as t1  join hoá đơn as t2 on t1.id đơn hàng = t2.id đơn hàng  group by t1.id đơn hàng  having count ( * ) > 2
select t1.id đơn hàng, t1.chi tiết đặt hàng  from đơn đặt hàng as t1  join hoá đơn as t2 on t1.id đơn hàng = t2.id đơn hàng  group by t1.id đơn hàng  having count ( * ) >= 2
select t1.id khách hàng, t1.họ của khách hàng, t1.số điện thoại  from khách hàng as t1  join đơn đặt hàng as t2 on t1.id khách hàng = t2.id khách hàng  group by t2.id khách hàng  order by count ( * ) desc  limit 1
select t1.họ của khách hàng, t1.id khách hàng, t1.số điện thoại  from khách hàng as t1  join đơn đặt hàng as t2 on t1.id khách hàng = t2.id khách hàng  group by t1.id khách hàng  order by count ( * ) desc  limit 1
select tên sản phẩm from sản phẩm except select tiêu đề sản phẩm from mặt hàng được đặt
select tên sản phẩm from sản phẩm except select tiêu đề sản phẩm from mặt hàng được đặt
select t1.tên sản phẩm , sum ( t2.số lượng sản phẩm )  from sản phẩm as t1  join mặt hàng được đặt as t2  on t1.id sản phẩm = t2.id sản phẩm  group by t1.tên sản phẩm
select t1.tên sản phẩm, sum(t2.số lượng sản phẩm)  from sản phẩm as t1  join mặt hàng được đặt as t2 on t1.id sản phẩm = t2.id sản phẩm  group by t1.tên sản phẩm
select t1.id đơn hàng, count ( * )  from đơn đặt hàng as t1  join mặt hàng được đặt as t2 on t1.id đơn hàng = t2.id đơn hàng  group by t1.id đơn hàng
select id đơn hàng, count ( * ) from mặt hàng được đặt group by id đơn hàng
select t1.id sản phẩm, count(distinct t2.id đơn hàng)  from sản phẩm as t1  join mặt hàng được đặt as t2 on t1.id sản phẩm = t2.id sản phẩm  group by t1.id sản phẩm
select distinct t1.id đơn hàng, count(distinct t1.id đơn hàng)  from mặt hàng được đặt as t2  join sản phẩm as t1 on t2.id sản phẩm = t1.id sản phẩm  group by t1.id sản phẩm
select t1.tên sản phẩm, count ( * )  from sản phẩm as t1  join mặt hàng được đặt as t2 on t1.id sản phẩm = t2.id sản phẩm  group by t1.tên sản phẩm
select distinct t1.tên sản phẩm , count ( * )  from sản phẩm as t1  join mặt hàng được đặt as t2  on t1.id sản phẩm = t2.id sản phẩm  group by t1.tên sản phẩm
select t1.id đơn hàng, count ( * )  from đơn đặt hàng as t1  join mặt hàng được đặt as t2 on t1.id đơn hàng = t2.id đơn hàng  group by t1.id đơn hàng
select count(distinct t2.id sản phẩm), t1.id đơn hàng  from đơn đặt hàng as t1  join mặt hàng được đặt as t2 on t1.id đơn hàng = t2.id đơn hàng  group by t1.id đơn hàng
select t1.id đơn hàng, sum(t2.số lượng sản phẩm)  from đơn đặt hàng as t1  join mặt hàng được đặt as t2 on t1.id đơn hàng = t2.id đơn hàng  group by t1.id đơn hàng
select t1.id đơn hàng, sum(số lượng sản phẩm)  from đơn đặt hàng as t1  join mặt hàng được đặt as t2 on t1.id đơn hàng = t2.id đơn hàng  group by t1.id đơn hàng
select id sản phẩm from sản phẩm except select id sản phẩm from mặt hàng được đặt
select id sản phẩm from sản phẩm except select id sản phẩm from mặt hàng được đặt
select count ( * ) from địa chỉ where quốc gia = United States
select distinct thành phố from địa chỉ
select tiểu bang, count ( * ) from địa chỉ group by tiểu bang
select t1.tên khách hàng , t1.điện thoại khách hàng from khách hàng as t1  left join lịch sử địa chỉ khách hàng as t2 on t1.id khách hàng = t2.id khách hàng  where t2.id khách hàng is null
select t1.tên khách hàng  from khách hàng as t1  join lượt đặt hàng của khách hàng as t2  on t1.id khách hàng = t2.id khách hàng  group by t2.id khách hàng  order by count ( * ) desc  limit 1
select mã loại sản phẩm from sản phẩm group by mã loại sản phẩm having count ( * ) >= 2
select t1.tên khách hàng from khách hàng as t1 join lượt đặt hàng của khách hàng as t2 on t1.id khách hàng = t2.id khách hàng where t2.mã trạng thái đơn hàng = Đã hoàn thành intersect select t1.tên khách hàng from khách hàng as t1 join lượt đặt hàng của khách hàng as t2 on t1.id khách hàng = t2.id khách hàng where t2.mã trạng thái đơn hàng = Đang hoàn thành
select tên khách hàng , điện thoại khách hàng , mã phương thức thanh toán from khách hàng order by mã số khách hàng desc
select t1.tên sản phẩm, sum(t2.số lượng đặt hàng)  from sản phẩm as t1  join mặt hàng được đặt as t2 on t1.id sản phẩm = t2.id sản phẩm  group by t1.tên sản phẩm
select max(giá sản phẩm), min(giá sản phẩm), avg(giá sản phẩm) from sản phẩm group by mã loại sản phẩm
select count ( * ) from sản phẩm where giá sản phẩm > (select avg(giá sản phẩm) from sản phẩm)
select t2.tên khách hàng , t1.thành phố , t1.từ ngày , t1.đến ngày  from lịch sử địa chỉ khách hàng as t1  join khách hàng as t2 on t1.id khách hàng = t2.id khách hàng
select t1.tên khách hàng  from khách hàng as t1  join lượt đặt hàng của khách hàng as t2  on t1.id khách hàng = t2.id khách hàng  where t1.mã phương thức thanh toán = Credit Card  group by t1.id khách hàng  having count ( * ) > 2
select t1.tên khách hàng , t1.điện thoại khách hàng  from khách hàng as t1  join lượt đặt hàng của khách hàng as t2 on t1.id khách hàng = t2.id khách hàng  join mặt hàng được đặt as t3 on t2.id đơn hàng = t3.id đơn hàng  group by t2.id khách hàng  order by count ( * ) desc  limit 1
select mã loại sản phẩm, tên sản phẩm from sản phẩm where giá sản phẩm > 1000 or giá sản phẩm < 500
select count ( * ) from bộ trưởng where tuổi > 56
select tên , tiểu bang nơi sinh , tuổi from bộ trưởng order by tuổi
select năm thành lập, tên, ngân sách tính theo tỷ from các bộ
select max(ngân sách tính theo tỷ), min(ngân sách tính theo tỷ) from các bộ
select avg(số lượng nhân viên) from các bộ where xếp hạng between 10 and 15
select tên from bộ trưởng where sinh ra ở tiểu bang <> California
select distinct t1.năm thành lập  from các bộ as t1  join bộ trưởng as t2 on t1.id các bộ = t2.id các bộ  where t2.sinh ra ở tiểu bang = Alabama
select distinct t1.sinh ra ở tiểu bang  from bộ trưởng as t1  join sự quản lý as t2 on t1.id người đứng đầu = t2.id người đứng đầu  group by t1.sinh ra ở tiểu bang  having count ( * ) >= 3
select năm thành lập from các bộ group by năm thành lập order by count ( * ) desc limit 1
select t1.tên , t1.số lượng nhân viên  from các bộ as t1  join sự quản lý as t2  on t1.id các bộ = t2.id các bộ  where t2.vai trò tạm thời = Acting Manager
select count(distinct vai trò tạm thời) from sự quản lý
select count ( * ) from các bộ where id các bộ not in (select id các bộ from bộ trưởng)
select distinct t1.tuổi  from bộ trưởng as t1  join sự quản lý as t2  on t1.id người đứng đầu = t2.id người đứng đầu  group by t1.tuổi
select t2.sinh ra ở tiểu bang from sự quản lý as t1 join bộ trưởng as t2 on t1.id người đứng đầu = t2.id người đứng đầu where t1.vai trò tạm thời = Bộ tài chính intersect select t2.sinh ra ở tiểu bang from sự quản lý as t1 join bộ trưởng as t2 on t1.id người đứng đầu = t2.id người đứng đầu where t1.vai trò tạm thời = Bộ An ninh nội địa
select t1.id các bộ, t1.tên, count ( * ) from các bộ as t1 join bộ trưởng as t2 on t1.id các bộ = t2.id các bộ group by t1.id các bộ having count ( * ) > 1
select id người đứng đầu, tên from bộ trưởng where tên like %Ha%
select id from xe
select id from xe
select count ( * ) from xe
select count ( * ) from xe
select chi tiết về xe from xe where id = 1
select chi tiết về xe from xe where id = 1
select tên , tên đệm , họ from nhân viên
select tên , tên đệm , họ from nhân viên
select ngày sinh from nhân viên where tên = Janessa and họ = Sawayn
select ngày sinh from nhân viên where tên = Janessa and họ = Sawayn
select ngày nhân viên gia nhập from nhân viên where tên = Janessa and họ = Sawayn
select ngày nhân viên gia nhập from nhân viên where tên = Janessa and họ = Sawayn order by ngày nhân viên gia nhập
select ngày nhân viên rời đi from nhân viên where tên = Janessa and họ = Sawayn
select ngày nhân viên rời đi from nhân viên where tên = Janessa and họ = Sawayn
select count ( * ) from nhân viên where tên = Ludie
select count ( * ) from nhân viên where tên = Ludie
select biệt danh from nhân viên where tên = Janessa and họ = Sawayn
select biệt danh from nhân viên where tên = Janessa and họ = Sawayn
select count ( * ) from nhân viên
select count ( * ) from nhân viên
select t2.thành phố  from nhân viên as t1  join địa chỉ nhân viên as t2  on t1.id địa chỉ nhân viên = t2.id địa chỉ nhân viên  where t1.tên = Janessa and t1.họ = Sawayn
select t2.thành phố  from nhân viên as t1  join địa chỉ as t2  on t1.id địa chỉ nhân viên = t2.id địa chỉ  where t1.tên = Janessa and t1.họ = Sawayn
select t2.quốc gia , t2.tiểu bang  from nhân viên as t1  join địa chỉ as t2 on t1.id địa chỉ nhân viên = t2.id địa chỉ  where t1.tên = Janessa and t1.họ = Sawayn
select t1.quốc gia, t1.tiểu bang  from địa chỉ as t1  join khách hàng as t2 on t1.id địa chỉ = t2.id địa chỉ khách hàng  where t2.tên = Janessa and t2.họ = Sawayn
select sum(t2.giờ học)  from khách hàng as t1  join bài giảng as t2 on t1.id khách hàng = t2.id khách hàng  where t1.tên = Rylan and t1.họ = Goodwin
select sum(t2.giờ học)  from khách hàng as t1  join bài giảng as t2 on t1.id khách hàng = t2.id khách hàng  where t1.tên = Rylan and t1.họ = Goodwin
select t2.mã bưu điện  from nhân viên as t1  join địa chỉ nhân viên as t2  on t1.id địa chỉ nhân viên = t2.id địa chỉ nhân viên  where t1.tên = Janessa and t1.họ = Sawayn
select t2.mã bưu điện  from nhân viên as t1  join địa chỉ as t2 on t1.id địa chỉ nhân viên = t2.id địa chỉ  where t1.tên = Janessa and t1.họ = Sawayn
select count ( * )  from nhân viên as t1  join địa chỉ as t2 on t1.id địa chỉ nhân viên = t2.id địa chỉ  where t2.tiểu bang = Georgia
select count ( * ) from nhân viên as t1 join địa chỉ as t2 on t1.id địa chỉ nhân viên = t2.id địa chỉ where t2.tiểu bang = Georgia
select t1.tên , t1.họ  from nhân viên as t1  join địa chỉ as t2 on t1.id địa chỉ nhân viên = t2.id địa chỉ  where t2.thành phố = Damianfort
select t1.tên , t1.họ  from nhân viên as t1  join địa chỉ as t2 on t1.id địa chỉ nhân viên = t2.id địa chỉ  where t2.thành phố = Damianfort
select t2.thành phố , count ( * ) from nhân viên as t1 join địa chỉ as t2 on t1.id địa chỉ nhân viên = t2.id địa chỉ group by t2.thành phố order by count ( * ) desc limit 1
select t2.thành phố , count ( * ) from nhân viên as t1 join địa chỉ as t2 on t1.id địa chỉ nhân viên = t2.id địa chỉ group by t2.thành phố order by count ( * ) desc limit 1
select t2.tiểu bang  from nhân viên as t1  join địa chỉ nhân viên as t2  on t1.id địa chỉ nhân viên = t2.id địa chỉ nhân viên  group by t2.tiểu bang  having count ( * ) between 2 and 4
select t2.tiểu bang  from nhân viên as t1  join địa chỉ nhân viên as t2  on t1.id địa chỉ nhân viên = t2.id địa chỉ nhân viên  group by t2.tiểu bang  having count ( * ) between 2 and 4
select tên , họ from khách hàng
select tên , họ from khách hàng
select địa chỉ email , ngày sinh from khách hàng where tên = Carole
select địa chỉ email, ngày sinh from khách hàng where tên = Carole
select số điện thoại , địa chỉ email from khách hàng as t1 join khoản thanh toán của khách hàng as t2 on t1.id khách hàng = t2.id khách hàng where t2.số tiền thanh toán > 2000
select t1.số điện thoại , t1.địa chỉ email  from khách hàng as t1  join khoản thanh toán của khách hàng as t2  on t1.id khách hàng = t2.id khách hàng  where t2.số tiền thanh toán > 2000
select mã trạng thái khách hàng , số điện thoại di động , địa chỉ email from khách hàng where họ = Kohler or tên = Marina
select mã trạng thái khách hàng , số điện thoại di động , địa chỉ email from khách hàng where họ = Kohler or tên = Marina
select ngày sinh from khách hàng where mã trạng thái khách hàng = Khách hàng tốt
select ngày sinh from khách hàng where mã trạng thái khách hàng = Khách hàng tốt
select ngày trở thành khách hàng from khách hàng where tên = Carole and họ = Bernhard
select ngày trở thành khách hàng from khách hàng where tên = Carole and họ = Bernhard
select count ( * ) from khách hàng
select count ( * ) from khách hàng
select mã trạng thái khách hàng, count ( * ) from khách hàng group by mã trạng thái khách hàng
select mã trạng thái khách hàng, count ( * ) from khách hàng group by mã trạng thái khách hàng
select mã trạng thái khách hàng from khách hàng group by mã trạng thái khách hàng order by count ( * ) desc limit 1
select mã trạng thái khách hàng from khách hàng group by mã trạng thái khách hàng order by count ( * ) desc limit 1
select count ( * )  from khách hàng as t1  join bài giảng as t2 on t1.id khách hàng = t2.id khách hàng  where t1.tên = Rylan and t1.họ = Goodwin
select count ( * )  from nhân viên as t1  join bài giảng as t2 on t1.id nhân viên = t2.id nhân viên  where t1.tên = Rylan and t1.họ = Goodwin
select số tiền còn thiếu from khách hàng
select max(số tiền còn thiếu), min(số tiền còn thiếu), avg(số tiền còn thiếu) from khách hàng
select tên , họ from khách hàng where số tiền còn thiếu between 1000 and 3000
select tên , họ from khách hàng where số tiền còn thiếu between 1000 and 3000
select t1.tên , t1.họ  from khách hàng as t1  join địa chỉ as t2 on t1.id địa chỉ khách hàng = t2.id địa chỉ  where t2.thành phố = Lockmanfurt
select t1.tên , t1.họ  from khách hàng as t1  join địa chỉ khách hàng as t2 on t1.id khách hàng = t2.id khách hàng  where t2.thành phố = Lockmanfurt
select t2.quốc gia  from khách hàng as t1  join địa chỉ khách hàng as t2  on t1.id địa chỉ khách hàng = t2.id địa chỉ khách hàng  where t1.tên = Carole and t1.họ = Bernhard
select t2.quốc gia  from khách hàng as t1  join địa chỉ khách hàng as t2  on t1.id địa chỉ khách hàng = t2.id địa chỉ khách hàng  where t1.tên = Carole and t1.họ = Bernhard
select mã bưu điện from khách hàng where tên = Carole and họ = Bernhard
select t2.mã bưu điện  from khách hàng as t1  join địa chỉ khách hàng as t2  on t1.id địa chỉ khách hàng = t2.id địa chỉ khách hàng  where t1.tên = Carole and t1.họ = Bernhard
select t2.thành phố from khách hàng as t1 join địa chỉ as t2 on t1.id địa chỉ khách hàng = t2.id địa chỉ group by t2.thành phố order by count ( * ) desc limit 1
select t2.thành phố  from khách hàng as t1  join địa chỉ as t2  on t1.id địa chỉ khách hàng = t2.id địa chỉ  group by t2.thành phố  order by count ( * ) desc  limit 1
select sum(số tiền thanh toán) from khoản thanh toán của khách hàng as t1 join khách hàng as t2 on t1.id khách hàng = t2.id khách hàng where t2.tên = Carole and t2.họ = Bernhard
select sum(số tiền thanh toán)  from khoản thanh toán của khách hàng as t1  join khách hàng as t2 on t1.id khách hàng = t2.id khách hàng  where t2.tên = Carole and t2.họ = Bernhard
select id khách hàng from khách hàng except select id khách hàng from khoản thanh toán của khách hàng
select count ( * ) from khách hàng except select id khách hàng from khoản thanh toán của khách hàng
select t1.tên , t1.họ  from khách hàng as t1  join khoản thanh toán của khách hàng as t2  on t1.id khách hàng = t2.id khách hàng  group by t1.id khách hàng  having count ( * ) > 2
select t1.tên , t1.họ  from khách hàng as t1  join khoản thanh toán của khách hàng as t2  on t1.id khách hàng = t2.id khách hàng  group by t2.id khách hàng  having count ( * ) > 2
select mã phương thức thanh toán, count ( * ) from khoản thanh toán của khách hàng group by mã phương thức thanh toán
select mã phương thức thanh toán, count ( * ) from khoản thanh toán của khách hàng group by mã phương thức thanh toán
select count ( * ) from bài giảng where mã trạng thái bài giảng = Đã huỷ
select count ( * ) from bài giảng as t1 join khách hàng as t2 on t1.id khách hàng = t2.id khách hàng where t2.mã trạng thái khách hàng = Đã huỷ
select t2.id bài giảng  from nhân viên as t1  join bài giảng as t2 on t1.id nhân viên = t2.id nhân viên  where t1.tên = Janessa and t1.họ = Sawayn and t1.biệt danh like %s%
select id bài giảng from bài giảng where id nhân viên in (select id nhân viên from nhân viên where tên = Janessa and họ = Sawayn and biệt danh like %s%)
select count ( * ) from bài giảng as t1 join nhân viên as t2 on t1.id nhân viên = t2.id nhân viên where t2.tên like %a%
select count ( * ) from bài giảng as t1 join nhân viên as t2 on t1.id nhân viên = t2.id nhân viên where t2.tên like %a%
select sum(t2.giờ học)  from nhân viên as t1  join bài giảng as t2 on t1.id nhân viên = t2.id nhân viên  where t1.tên = Janessa and t1.họ = Sawayn
select sum(t2.giờ học)  from nhân viên as t1  join bài giảng as t2 on t1.id nhân viên = t2.id nhân viên  where t1.tên = Janessa and t1.họ = Sawayn
select avg(t2.giá)  from nhân viên as t1  join bài giảng as t2 on t1.id nhân viên = t2.id nhân viên  where t1.tên = Janessa and t1.họ = Sawayn
select avg(t2.giá)  from nhân viên as t1  join bài giảng as t2 on t1.id nhân viên = t2.id nhân viên  where t1.tên = Janessa and t1.họ = Sawayn
select count ( * ) from khách hàng as t1 join bài giảng as t2 on t1.id khách hàng = t2.id khách hàng where t1.tên = Ray
select count ( * ) from khách hàng as t1 join bài giảng as t2 on t1.id khách hàng = t2.id khách hàng where t1.tên = Ray
select distinct t1.họ from khách hàng as t1 join nhân viên as t2 on t1.họ = t2.họ
select t1.họ from khách hàng as t1 join nhân viên as t2 on t1.họ = t2.họ group by t1.họ having count ( * ) = (select count ( * ) from nhân viên where họ = t1.họ)
select tên from nhân viên except select t1.tên from nhân viên as t1 join bài giảng as t2 on t1.id nhân viên = t2.id nhân viên
select tên from nhân viên except select t1.tên from nhân viên as t1 join bài giảng as t2 on t1.id nhân viên = t2.id nhân viên
select t1.id , t1.chi tiết về xe  from xe as t1  join bài giảng as t2 on t1.id = t2.id xe  group by t1.id  order by count ( * ) desc  limit 1
select count ( * ) from nhân viên
select count ( * ) from nhân viên
select tên from nhân viên order by tuổi
select tên, tuổi from nhân viên order by tuổi asc
select thành phố, count ( * ) from nhân viên group by thành phố
select count ( * ), thành phố from nhân viên group by thành phố
select thành phố from nhân viên where tuổi < 30 group by thành phố having count ( * ) > 1
select thành phố from nhân viên group by thành phố having count ( * ) > 1
select địa điểm, count ( * ) from cửa hàng group by địa điểm
select địa điểm, count ( * ) from cửa hàng group by địa điểm
select t1.tên, t1.quận  from cửa hàng as t1  join tuyển dụng as t2 on t1.id cửa hàng = t2.id cửa hàng  order by t2.số lượng sản phẩm desc  limit 1
select t1.tên người quản lý, t1.quận  from cửa hàng as t1  join tuyển dụng as t2 on t1.id cửa hàng = t2.id cửa hàng  order by t1.số lượng sản phẩm desc  limit 1
select số lượng sản phẩm from cửa hàng order by số lượng sản phẩm desc limit 1 select số lượng sản phẩm from cửa hàng order by số lượng sản phẩm asc limit 1
select số lượng sản phẩm from cửa hàng order by số lượng sản phẩm desc limit 1 select số lượng sản phẩm from cửa hàng order by số lượng sản phẩm asc limit 1
select tên , địa điểm , quận from cửa hàng order by số lượng sản phẩm desc
select tên , địa điểm , quận from cửa hàng order by số lượng sản phẩm desc
select tên from cửa hàng where số lượng sản phẩm > ( select avg ( số lượng sản phẩm ) from cửa hàng )
select tên from cửa hàng where số lượng sản phẩm > ( select avg ( số lượng sản phẩm ) from cửa hàng )
select t1.tên  from nhân viên as t1  join đánh giá as t2 on t1.id nhân viên = t2.id nhân viên  group by t2.id nhân viên  order by count ( * ) desc  limit 1
select t1.tên from nhân viên as t1 join đánh giá as t2 on t1.id nhân viên = t2.id nhân viên group by t2.id nhân viên order by count ( * ) desc limit 1
select tên from đánh giá order by tiền thưởng desc limit 1
select t1.tên , t2.tiền thưởng  from nhân viên as t1  join đánh giá as t2 on t1.id nhân viên = t2.id nhân viên  order by t2.tiền thưởng desc  limit 1
select tên from nhân viên except select t1.tên from nhân viên as t1 join đánh giá as t2 on t1.id nhân viên = t2.id nhân viên
select tên from nhân viên except select t1.tên from nhân viên as t1 join đánh giá as t2 on t1.id nhân viên = t2.id nhân viên
select t1.tên  from cửa hàng as t1  join tuyển dụng as t2 on t1.id cửa hàng = t2.id cửa hàng  group by t2.id cửa hàng  order by count ( * ) desc  limit 1
select t1.tên  from cửa hàng as t1  join tuyển dụng as t2 on t1.id cửa hàng = t2.id cửa hàng  group by t2.id cửa hàng  order by count ( * ) desc  limit 1
select tên from cửa hàng where id cửa hàng not in (select id cửa hàng from tuyển dụng)
select tên from cửa hàng except select tên cửa hàng from tuyển dụng
select t1.tên , count ( * ) from cửa hàng as t1 join tuyển dụng as t2 on t1.id cửa hàng = t2.id cửa hàng group by t2.id cửa hàng
select t1.tên , t2.số lượng sản phẩm  from cửa hàng as t1  join tuyển dụng as t2  on t1.id cửa hàng = t2.id cửa hàng  group by t1.tên
select sum(tiền thưởng) from đánh giá
select sum(tiền thưởng) from đánh giá
select * from tuyển dụng
select * from tuyển dụng
select quận from cửa hàng where số lượng sản phẩm < 3000 intersect select quận from cửa hàng where số lượng sản phẩm > 10000
select quận from cửa hàng where số lượng sản phẩm < 3000 intersect select quận from cửa hàng where số lượng sản phẩm > 10000
select count(distinct địa điểm) from cửa hàng
select count(distinct địa điểm) from cửa hàng
select t2.quốc gia  from hãng hàng không as t1  join sân bay as t2 on t1.id hãng hàng không = t2.id hãng hàng không  where t1.tên hãng hàng không = JetBlue Airways
select t2.quốc gia  from hãng hàng không as t1  join sân bay as t2 on t1.id hãng hàng không = t2.id hãng hàng không  where t1.tên hãng hàng không = Jetblue Airways
select tên viết tắt from hãng hàng không where tên hãng hàng không = JetBlue Airways
select tên viết tắt from hãng hàng không where tên hãng hàng không = Jetblue Airways
select t1.tên hãng hàng không, t1.tên viết tắt  from hãng hàng không as t1  join sân bay as t2 on t1.quốc gia = t2.tên quốc gia viết tắt  where t2.quốc gia = United States
select tên hãng hàng không, tên viết tắt from hãng hàng không where quốc gia = United States
select t1.mã sân bay, t1.tên sân bay  from sân bay as t1  join hãng hàng không as t2 on t1.id hãng hàng không = t2.id hãng hàng không  where t1.thành phố = Anthony
select mã sân bay, tên sân bay from sân bay where thành phố = Anthony
select count ( * ) from hãng hàng không
select count ( * ) from hãng hàng không
select count ( * ) from sân bay
select count ( * ) from sân bay
select count ( * ) from chuyến bay
select count ( * ) from chuyến bay
select tên hãng hàng không from hãng hàng không where tên viết tắt = UAL
select tên hãng hàng không from hãng hàng không where tên viết tắt = UAL
select count ( * ) from hãng hàng không as t1 join sân bay as t2 on t1.quốc gia = t2.tên quốc gia viết tắt where t2.quốc gia = United States
select count ( * ) from hãng hàng không as t1 join sân bay as t2 on t1.quốc gia = t2.tên quốc gia viết tắt where t2.quốc gia = United States
select thành phố , quốc gia from sân bay where tên sân bay = Alton
select t1.thành phố, t1.quốc gia  from sân bay as t1  join hãng hàng không as t2 on t1.id hãng hàng không = t2.id hãng hàng không  where t1.tên sân bay = Alton
select t1.tên sân bay  from sân bay as t1  join chuyến bay as t2 on t1.mã sân bay = t2.sân bay khởi hành  where t1.mã sân bay = AKO
select tên sân bay from sân bay where mã sân bay = AKO
select tên sân bay from sân bay where thành phố = Aberdeen
select tên sân bay, thành phố from sân bay where thành phố = Aberdeen
select count ( * ) from chuyến bay as t1 join sân bay as t2 on t1.sân bay khởi hành = t2.mã sân bay where t2.tên sân bay = APG
select count ( * ) from chuyến bay as t1 join sân bay as t2 on t1.sân bay khởi hành = t2.mã sân bay where t2.tên sân bay = APG
select count ( * ) from chuyến bay where sân bay đích = ATO
select count ( * ) from chuyến bay as t1 join sân bay as t2 on t1.sân bay đích = t2.mã sân bay where t2.tên sân bay = ATO
select count ( * ) from chuyến bay as t1 join sân bay as t2 on t1.sân bay khởi hành = t2.mã sân bay where t2.thành phố = Aberdeen
select count ( * ) from chuyến bay as t1 join sân bay as t2 on t1.sân bay khởi hành = t2.mã sân bay where t2.thành phố = Aberdeen
select count ( * ) from chuyến bay as t1 join sân bay as t2 on t1.sân bay khởi hành = t2.mã sân bay where t2.thành phố = Aberdeen
select count ( * ) from chuyến bay as t1 join sân bay as t2 on t1.sân bay đích = t2.mã sân bay where t2.thành phố = Aberdeen
select count ( * )  from chuyến bay as t1  join sân bay as t2 on t1.sân bay khởi hành = t2.mã sân bay  join sân bay as t3 on t1.sân bay đích = t3.mã sân bay  where t2.thành phố = Aberdeen and t3.thành phố = Ashley
select count ( * )  from chuyến bay as t1  join sân bay as t2 on t1.sân bay khởi hành = t2.mã sân bay  join sân bay as t3 on t1.sân bay đích = t3.mã sân bay  where t2.thành phố = Aberdeen and t3.thành phố = Ashley
select count ( * ) from chuyến bay as t1 join hãng hàng không as t2 on t1.hãng hàng không = t2.id hãng hàng không where t2.tên hãng hàng không = JetBlue Airways
select count ( * ) from chuyến bay as t1 join hãng hàng không as t2 on t1.hãng hàng không = t2.id hãng hàng không where t2.tên hãng hàng không = Jetblue Airways
select count ( * )  from chuyến bay as t1  join sân bay as t2 on t1.sân bay khởi hành = t2.mã sân bay  join hãng hàng không as t3 on t1.hãng hàng không = t3.id hãng hàng không  where t2.tên sân bay = ASY and t3.tên hãng hàng không = United Airlines
select count ( * )  from chuyến bay as t1  join sân bay as t2 on t1.sân bay đích = t2.mã sân bay  join hãng hàng không as t3 on t1.hãng hàng không = t3.id hãng hàng không  where t2.tên sân bay = ASY and t3.tên hãng hàng không = United Airlines
select count ( * )  from chuyến bay as t1  join sân bay as t2 on t1.sân bay khởi hành = t2.mã sân bay  join hãng hàng không as t3 on t1.hãng hàng không = t3.id hãng hàng không  where t2.tên sân bay = AHD and t3.tên hãng hàng không = United Airlines
select count ( * )  from chuyến bay as t1  join sân bay as t2 on t1.sân bay khởi hành = t2.mã sân bay  join hãng hàng không as t3 on t1.hãng hàng không = t3.id hãng hàng không  where t2.tên sân bay = AHD and t3.tên hãng hàng không = United Airlines
select count ( * )  from chuyến bay as t1  join sân bay as t2 on t1.sân bay khởi hành = t2.mã sân bay  join hãng hàng không as t3 on t1.hãng hàng không = t3.id hãng hàng không  where t3.tên hãng hàng không = United Airlines and t2.thành phố = Aberdeen
select count ( * )  from chuyến bay as t1  join sân bay as t2 on t1.sân bay khởi hành = t2.mã sân bay  where t1.sân bay đích = Aberdeen and t1.hãng hàng không = 1
select t1.thành phố  from sân bay as t1  join chuyến bay as t2 on t1.mã sân bay = t2.sân bay khởi hành  group by t1.thành phố  order by count ( * ) desc  limit 1
select t1.thành phố  from sân bay as t1  join chuyến bay as t2 on t1.mã sân bay = t2.sân bay đích  group by t1.thành phố  order by count ( * ) desc  limit 1
select t1.thành phố  from sân bay as t1  join chuyến bay as t2 on t1.mã sân bay = t2.sân bay khởi hành  group by t1.thành phố  order by count ( * ) desc  limit 1
select t1.thành phố  from sân bay as t1  join chuyến bay as t2 on t1.mã sân bay = t2.sân bay khởi hành  group by t1.thành phố  order by count ( * ) desc  limit 1
select t1.mã sân bay, count ( * )  from sân bay as t1  join chuyến bay as t2 on t1.mã sân bay = t2.sân bay khởi hành  group by t1.mã sân bay  order by count ( * ) desc  limit 1
select t1.mã sân bay from sân bay as t1 join chuyến bay as t2 on t1.mã sân bay = t2.sân bay khởi hành group by t2.sân bay khởi hành order by count ( * ) desc limit 1
select t1.mã sân bay, count ( * )  from sân bay as t1  join chuyến bay as t2 on t1.mã sân bay = t2.sân bay khởi hành  group by t1.mã sân bay  order by count ( * ) desc  limit 1
select t1.mã sân bay from sân bay as t1 join chuyến bay as t2 on t1.mã sân bay = t2.sân bay khởi hành group by t1.mã sân bay order by count ( * ) limit 1
select t1.id hãng hàng không, count ( * )  from chuyến bay as t1  join hãng hàng không as t2 on t1.hãng hàng không = t2.id hãng hàng không  group by t1.hãng hàng không  order by count ( * ) desc  limit 1
select t1.id hãng hàng không, count ( * )  from chuyến bay as t1  join hãng hàng không as t2 on t1.hãng hàng không = t2.id hãng hàng không  group by t1.hãng hàng không  order by count ( * ) desc  limit 1
select t1.tên viết tắt, t1.quốc gia  from hãng hàng không as t1  join chuyến bay as t2 on t1.id hãng hàng không = t2.hãng hàng không  group by t2.hãng hàng không  having count ( * ) = (select min(count ( * )) from chuyến bay group by hãng hàng không)
select t1.tên viết tắt, t1.quốc gia  from hãng hàng không as t1  join chuyến bay as t2 on t1.id hãng hàng không = t2.hãng hàng không  group by t2.hãng hàng không  order by count ( * ) desc  limit 1
select t1.tên hãng hàng không  from chuyến bay as t1  join sân bay as t2 on t1.sân bay khởi hành = t2.mã sân bay  where t2.tên sân bay = AHD
select t1.tên hãng hàng không  from hãng hàng không as t1  join chuyến bay as t2 on t1.id hãng hàng không = t2.hãng hàng không  where t2.sân bay khởi hành = AHD
select t1.tên hãng hàng không  from hãng hàng không as t1  join chuyến bay as t2 on t1.id hãng hàng không = t2.hãng hàng không  where t2.sân bay đích = AHD
select t1.tên hãng hàng không  from hãng hàng không as t1  join chuyến bay as t2 on t1.id hãng hàng không = t2.hãng hàng không  where t2.sân bay đích = AHD
select distinct t1.hãng hàng không  from chuyến bay as t1  join sân bay as t2 on t1.sân bay khởi hành = t2.mã sân bay  where t2.tên sân bay = APG  intersect  select distinct t1.hãng hàng không  from chuyến bay as t1  join sân bay as t2 on t1.sân bay khởi hành = t2.mã sân bay  where t2.tên sân bay = CVO
select distinct t1.hãng hàng không  from chuyến bay as t1  join sân bay as t2 on t1.sân bay khởi hành = t2.mã sân bay  where t2.tên sân bay = APG  intersect  select distinct t1.hãng hàng không  from chuyến bay as t1  join sân bay as t2 on t1.sân bay khởi hành = t2.mã sân bay  where t2.tên sân bay = CVO
select tên hãng hàng không from chuyến bay where sân bay khởi hành = CVO except select tên hãng hàng không from chuyến bay where sân bay khởi hành = APG
select tên hãng hàng không from chuyến bay as t1 join sân bay as t2 on t1.sân bay khởi hành = t2.mã sân bay where t2.tên sân bay = CVO except select tên hãng hàng không from chuyến bay as t1 join sân bay as t2 on t1.sân bay khởi hành = t2.mã sân bay where t2.tên sân bay = APG
select t1.tên hãng hàng không  from hãng hàng không as t1  join chuyến bay as t2 on t1.id hãng hàng không = t2.hãng hàng không  group by t2.hãng hàng không  having count ( * ) >= 10
select t1.tên hãng hàng không  from hãng hàng không as t1  join chuyến bay as t2 on t1.id hãng hàng không = t2.hãng hàng không  group by t2.hãng hàng không  having count ( * ) >= 10
select t1.tên hãng hàng không  from hãng hàng không as t1  join chuyến bay as t2 on t1.id hãng hàng không = t2.hãng hàng không  group by t2.hãng hàng không  having count ( * ) < 200
select id hãng hàng không from chuyến bay group by id hãng hàng không having count ( * ) < 200
select số hiệu chuyến bay from chuyến bay as t1 join hãng hàng không as t2 on t1.hãng hàng không = t2.id hãng hàng không where t2.tên hãng hàng không = United Airlines
select số hiệu chuyến bay from chuyến bay where hãng hàng không = (select id hãng hàng không from hãng hàng không where tên hãng hàng không = United Airlines)
select t1.số hiệu chuyến bay  from chuyến bay as t1  join sân bay as t2 on t1.sân bay khởi hành = t2.mã sân bay  where t2.tên sân bay = APG
select t1.số hiệu chuyến bay  from chuyến bay as t1  join sân bay as t2 on t1.sân bay khởi hành = t2.mã sân bay  where t2.tên sân bay = APG
select t1.số hiệu chuyến bay  from chuyến bay as t1  join sân bay as t2 on t1.sân bay đích = t2.mã sân bay  where t2.tên sân bay = APG
select t1.số hiệu chuyến bay  from chuyến bay as t1  join sân bay as t2 on t1.sân bay khởi hành = t2.mã sân bay  where t2.tên sân bay = APG
select t2.số hiệu chuyến bay  from sân bay as t1  join chuyến bay as t2 on t1.mã sân bay = t2.sân bay khởi hành  where t1.thành phố = Aberdeen
select t1.số hiệu chuyến bay  from chuyến bay as t1  join sân bay as t2 on t1.sân bay khởi hành = t2.mã sân bay  where t2.thành phố = Aberdeen
select t1.số hiệu chuyến bay  from chuyến bay as t1  join sân bay as t2 on t1.sân bay đích = t2.mã sân bay  where t2.thành phố = Aberdeen
select t1.số hiệu chuyến bay from chuyến bay as t1 join sân bay as t2 on t1.sân bay đích = t2.mã sân bay where t2.thành phố = Aberdeen
select count ( * )  from chuyến bay as t1  join sân bay as t2 on t1.sân bay khởi hành = t2.mã sân bay  where t2.thành phố = Aberdeen or t2.thành phố = Abilene
select count ( * )  from chuyến bay as t1  join sân bay as t2 on t1.sân bay khởi hành = t2.mã sân bay  where t2.thành phố = Aberdeen or t2.thành phố = Abilene
select tên sân bay from sân bay except select sân bay đích from chuyến bay
select tên sân bay from sân bay except select sân bay khởi hành from chuyến bay
select count ( * ) from trận đấu where mùa giải > 2007
select ngày from trận đấu order by đội chủ nhà desc
select mùa giải , đội chủ nhà , đội khách from trận đấu
select avg(trận đấu sân nhà), max(trận đấu sân nhà), min(trận đấu sân nhà) from sân vận động
select avg(số lượng người tham dự trung bình) from sân vận động where phần trăm sức chứa > 100
select tên cầu thủ , số lượng trận đấu , nguồn thông tin from trận đấu except select t1.tên cầu thủ , t1.số lượng trận đấu , t1.nguồn thông tin from trận đấu as t1 join chấn thương as t2 on t1.id = t2.id trận đấu where t2.chấn thương = Headache
select t1.mùa giải  from trận đấu as t1  join chấn thương as t2 on t1.id = t2.id trận đấu  where t2.cầu thủ = Walter Samuel
select t1.id , t1.tỉ số , t1.ngày  from trận đấu as t1  join chấn thương as t2 on t1.id = t2.id trận đấu  group by t1.id  having count ( * ) >= 2
select t1.id , t1.tên  from sân vận động as t1  join chấn thương as t2 on t1.id = t2.id sân vận động  group by t2.id sân vận động  order by count ( * ) desc  limit 1
select t1.id , t1.tên  from sân vận động as t1  join chấn thương as t2 on t1.id = t2.id sân vận động  group by t2.id sân vận động  order by count ( * ) desc  limit 1
select t1.mùa giải , t2.tên  from trận đấu as t1  join sân vận động as t2 on t1.id sân vận động = t2.id  join chấn thương as t3 on t1.id = t3.id trận đấu  where t3.chấn thương = knee or t3.chấn thương = neck
select count(distinct nguồn thông tin) from chấn thương
select count ( * ) from trận đấu where id not in (select id trận đấu from chấn thương)
select count(distinct chấn thương) from chấn thương where mùa giải > 2010
select t1.tên  from sân vận động as t1  join chấn thương as t2 on t1.id = t2.id sân vận động  where t2.cầu thủ = Walter Samuel or t2.cầu thủ = Thiago Motta
select tên , số lượng người tham dự trung bình , tổng số người tham dự  from sân vận động  except  select t1.tên , t1.số lượng người tham dự trung bình , t1.tổng số người tham dự  from sân vận động as t1  join chấn thương as t2  on t1.id = t2.id sân vận động
select tên from sân vận động where tên like %bank%
select t1.tên , count ( * )  from sân vận động as t1  join trận đấu as t2 on t1.id = t2.id sân vận động  group by t2.id sân vận động
select t1.cầu thủ, t2.ngày from chấn thương as t1 join trận đấu as t2 on t1.id trận đấu = t2.id where t1.chấn thương = chân thương order by t2.mùa giải desc
select năm phát hành from bộ phim where tiêu đề = The Chase
select năm phát hành from bộ phim where tiêu đề = The Game of Chess
select năm sinh from diễn viên where tên = Benedict Cumberbatch
select năm sinh from diễn viên where tên = Benedict Cumberbatch
select quốc tịch from diễn viên where tên = Christoph Waltz and giới tính = F
select quốc tịch from diễn viên where tên = Christoph Waltz
select tiêu đề from bộ phim where năm phát hành = 2015
select tên from diễn viên where nơi sinh = Tehran
select tên from diễn viên where nơi sinh = Tehran
select tên from diễn viên where nơi sinh = Tehran
select tên from diễn viên where quốc tịch = Afghanistan
select tên from diễn viên where quốc tịch = Afghanistan
select tên from diễn viên where quốc tịch = Afghanistan
select tên from diễn viên where năm sinh = 1984
select năm sinh from diễn viên where tên = Kevin Spacey
select năm sinh from diễn viên where tên = Kevin Spacey
select nơi sinh from diễn viên where tên = Kevin Spacey
select nơi sinh from diễn viên where tên = Kevin Spacey
select quốc tịch from diễn viên where tên = Kevin Spacey
select ngân sách from bộ phim where tiêu đề = Finding Nemo
select t3.tiêu đề  from đạo diễn bởi as t1  join đạo diễn as t2 on t1.id đạo diễn = t2.id đạo diễn  join bộ phim as t3 on t1.id sê-ri phim = t3.id sê-ri phim  where t2.tên = Steven Spielberg and t3.năm phát hành > 2006
select t2.tên from đạo diễn as t2 join đạo diễn bởi as t3 on t2.id đạo diễn = t3.id đạo diễn join bộ phim as t1 on t3.id sê-ri phim = t1.id bộ phim where t1.tiêu đề = James Bond
select distinct t3.id đạo diễn  from đạo diễn bởi as t1  join bộ phim as t2 on t1.id sê-ri phim = t2.id bộ phim  join đạo diễn as t3 on t1.id đạo diễn = t3.id đạo diễn  where t2.tiêu đề = James Bond
select t2.tên  from đạo diễn bởi as t1  join đạo diễn as t2 on t1.id đạo diễn = t2.id đạo diễn  join bộ phim as t3 on t1.id sê-ri phim = t3.id bộ phim  where t3.tiêu đề = James Bond
select t3.tên  from diễn viên as t3  join phân vai as t2 on t3.id diễn viên = t2.id diễn viên  join bộ phim as t1 on t2.id sê-ri phim = t1.id bộ phim  where t2.vai diễn = Alan Turing and t1.tiêu đề = The Dice Game
select t3.tên  from diễn viên as t3  join phân vai as t2 on t3.id diễn viên = t2.id diễn viên  join bộ phim as t1 on t2.id sê-ri phim = t1.id bộ phim  where t2.vai diễn = Alan Turing and t1.tiêu đề = Trò chơi bắt chước
select t3.tên  from diễn viên as t3  join phân vai as t2 on t3.id diễn viên = t2.id diễn viên  join bộ phim as t1 on t2.id sê-ri phim = t1.id bộ phim  where t2.vai diễn = 1 and t1.tiêu đề = The Imitation Game
select t3.tên  from diễn viên as t3  join phân vai as t2 on t3.id diễn viên = t2.id diễn viên  join bộ phim as t1 on t2.id sê-ri phim = t1.id bộ phim  where t2.vai diễn = Alan Turing and t1.tiêu đề = The Imitation Game
select t3.tên  from phân vai as t2  join diễn viên as t3 on t2.id diễn viên = t3.id diễn viên  join bộ phim as t1 on t2.id sê-ri phim = t1.id bộ phim  where t1.tiêu đề = The Imitation Game and t3.tên = Alan Turing
select t2.thể loại  from phim truyền hình nhiều tập as t1  join phân loại as t2 on t1.id sê-ri phim = t2.id sê-ri phim  where t1.tiêu đề = Jura Park
select t2.tên  from đạo diễn bởi as t1  join đạo diễn as t2 on t1.id đạo diễn = t2.id đạo diễn  join bộ phim as t3 on t1.id sê-ri phim = t3.id bộ phim  where t3.tiêu đề = Joy and t3.năm phát hành = 2015
select t3.tiêu đề  from được viết bởi as t1  join đạo diễn as t2 on t1.id đạo diễn = t2.id đạo diễn  join bộ phim as t3 on t1.id sê-ri phim = t3.id sê-ri phim  where t2.tên = Matt Damon
select t3.tiêu đề  from được viết bởi as t1  join đạo diễn bởi as t2 on t1.id = t2.id  join đạo diễn as t3 on t2.id đạo diễn = t3.id đạo diễn  join bộ phim as t4 on t4.id bộ phim = t1.id sê-ri phim  join nhà sản xuất as t5 on t5.id nhà sản xuất = t4.id nhà sản xuất  where t3.tên = Woody Allen
select t3.tiêu đề  from diễn viên as t1  join phân vai as t2 on t1.id diễn viên = t2.id diễn viên  join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim  join được làm bởi as t4 on t4.id sê-ri phim = t3.id bộ phim  where t1.tên = Robin Wright
select t3.tiêu đề  from diễn viên as t1  join phân vai as t2 on t1.id diễn viên = t2.id diễn viên  join bộ phim as t3 on t2.id sê-ri phim = t3.id sê-ri phim  where t1.tên = Robin Wright
select t3.tiêu đề  from diễn viên as t1  join phân vai as t2 on t1.id diễn viên = t2.id diễn viên  join bộ phim as t3 on t2.id sê-ri phim = t3.id sê-ri phim  where t1.tên = Robin Wright
select t2.ngân sách  from bộ phim as t1  join phim truyền hình nhiều tập as t2  on t1.id bộ phim = t2.id sê-ri phim  where t1.tiêu đề = Juno and t2.năm phát hành = 2007
select t2.tiêu đề , t1.id bộ phim  from bộ phim as t1  join phim truyền hình nhiều tập as t2  on t1.id bộ phim = t2.id sê-ri phim  where t2.tiêu đề like %Khoa học viễn tưởng%  and t2.năm phát hành = 2010
select tiêu đề from bộ phim where tiêu đề = Khoa học viễn tưởng and năm phát hành = 2010
select tên from diễn viên where nơi sinh = Austin and năm sinh > 1980
select tên from diễn viên where nơi sinh = Austin and năm sinh > 1980
select tên from diễn viên where nơi sinh = Austin and năm sinh > 1980
select t3.tiêu đề  from đạo diễn as t1  join đạo diễn bởi as t2 on t1.id đạo diễn = t2.id đạo diễn  join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim  where t1.nơi sinh = Los Angeles
select tên from diễn viên where nơi sinh = New York and năm sinh = 1984
select t2.tiêu đề from phân loại as t1 join bộ phim as t2 on t1.id sê-ri phim = t2.id sê-ri phim where t1.id thể loại = ( select id thể loại from thể loại where thể loại = Sci-fi)
select t2.tiêu đề  from nhãn as t1  join bộ phim as t2 on t1.id sê-ri phim = t2.id sê-ri phim  where t1.id từ khoá = (select id from từ khoá where từ khoá = Vũ khí hạt nhân)
select t3.tiêu đề  from đạo diễn bởi as t1  join đạo diễn as t2 on t1.id đạo diễn = t2.id đạo diễn  join bộ phim as t3 on t1.id sê-ri phim = t3.id sê-ri phim  where t2.tên = Alfred Hitchcock
select t3.tiêu đề  from đạo diễn bởi as t1  join đạo diễn as t2 on t1.id đạo diễn = t2.id đạo diễn  join phân vai as t3 on t3.id sê-ri phim = t2.id sê-ri phim  join diễn viên as t4 on t3.id diễn viên = t4.id diễn viên  where t2.tên = Asghar Farhadi and t4.tên = Taraneh Alidoosti
select t3.tiêu đề  from đạo diễn bởi as t1  join đạo diễn as t2 on t1.id đạo diễn = t2.id đạo diễn  join phân vai as t3 on t3.id sê-ri phim = t2.id sê-ri phim  join diễn viên as t4 on t3.id diễn viên = t4.id diễn viên  where t2.tên = Asghar Farhadi and t4.tên = Taraneh Alidoosti
select t3.tiêu đề  from đạo diễn bởi as t1  join đạo diễn as t2 on t1.id đạo diễn = t2.id đạo diễn  join phân vai as t3 on t3.id sê-ri phim = t2.id sê-ri phim  join diễn viên as t4 on t3.id diễn viên = t4.id diễn viên  where t2.tên = Asghar Farhadi and t4.tên = Taraneh Alidoosti
select t3.tiêu đề  from đạo diễn bởi as t1  join đạo diễn as t2 on t1.id đạo diễn = t2.id đạo diễn  join phân vai as t3 on t3.id sê-ri phim = t1.id sê-ri phim  join diễn viên as t4 on t3.id diễn viên = t4.id diễn viên  where t2.tên = Asghar Farhad and t4.tên = Taraneh Alidoosti
select t3.tiêu đề  from đạo diễn bởi as t1  join đạo diễn as t2 on t1.id đạo diễn = t2.id đạo diễn  join bộ phim truyền hình nhiều tập as t3 on t1.id sê-ri phim = t3.id sê-ri phim  where t2.tên = Shonda Rhimes
select t3.tên  from diễn viên as t3  join phân vai as t2 on t3.id diễn viên = t2.id diễn viên  join bộ phim as t1 on t2.id sê-ri phim = t1.id bộ phim  where t2.vai diễn = 1 and t1.tiêu đề = Scandal and t3.tên = Olivia Pope
select t2.tên  from được viết bởi as t1  join đạo diễn bởi as t2 on t1.id = t2.id  join đạo diễn as t3 on t2.id đạo diễn = t3.id đạo diễn  where t3.tên = Truman and t1.id sê-ri phim = (      select id sê-ri phim      from bộ phim      where tiêu đề = The Truman Show )
select t3.tên  from được viết bởi as t1  join đạo diễn bởi as t2 on t1.id = t2.id  join đạo diễn as t3 on t2.id đạo diễn = t3.id đạo diễn  where t3.tên = Truman and t1.id sê-ri phim = (      select t1.id sê-ri phim      from được viết bởi as t1      join đạo diễn bởi as t2 on t1.id = t2.id      join đạo diễn as t3 on t2.id đạo diễn = t3.id đạo diễn      where t3.tên = Truman  )
select t3.tiêu đề  from phân vai as t1  join diễn viên as t2 on t1.id diễn viên = t2.id diễn viên  join bộ phim as t3 on t1.id sê-ri phim = t3.id bộ phim  where t2.tên = Scott Foley
select t3.tiêu đề from diễn viên as t1 join phân vai as t2 on t1.id diễn viên = t2.id diễn viên join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim where t1.tên = Scott Foley
select distinct t3.id đạo diễn  from diễn viên as t1  join phân vai as t2 on t1.id diễn viên = t2.id diễn viên  join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim  where t1.tên = Kate Winslet
select distinct t3.id đạo diễn  from đạo diễn bởi as t1  join đạo diễn as t2 on t1.id đạo diễn = t2.id đạo diễn  join phim truyền hình nhiều tập as t3 on t1.id sê-ri phim = t3.id sê-ri phim  join diễn viên as t4 on t1.id diễn viên = t4.id diễn viên  where t4.tên = Kate Winslet  group by t3.id đạo diễn  having count ( * ) = 1
select t2.tên  from đạo diễn bởi as t1  join đạo diễn as t2 on t1.id đạo diễn = t2.id đạo diễn  join bộ phim truyền hình nhiều tập as t3 on t1.id sê-ri phim = t3.id sê-ri phim  join phim truyền hình nhiều tập as t4 on t3.id sê-ri phim = t4.id sê-ri phim  where t4.tiêu đề = The Political Game and t4.năm phát hành = 2013
select tên from diễn viên where giới tính = F and nơi sinh = Austin
select tên from diễn viên where quốc tịch = Italy and năm sinh > 1980
select tên from diễn viên where giới tính = F and nơi sinh = New York and năm sinh > 1980
select t2.tên  from phân vai as t1  join diễn viên as t2 on t1.id diễn viên = t2.id diễn viên  join bộ phim as t3 on t1.id sê-ri phim = t3.id bộ phim  where t2.giới tính = F and t3.tiêu đề = Ryans Rescue Rangers
select tên from đạo diễn where quốc tịch = Afghanistan
select t2.tên  from phân vai as t1  join diễn viên as t2 on t1.id diễn viên = t2.id diễn viên  join bộ phim as t3 on t1.id sê-ri phim = t3.id bộ phim  where t3.tiêu đề = Nữ binh sĩ
select t2.tên  from diễn viên as t1  join phân vai as t2 on t1.id diễn viên = t2.id diễn viên  join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim  where t1.quốc tịch = Canada and t3.tiêu đề = James Bond
select t3.tiêu đề  from diễn viên as t1  join phân vai as t2 on t1.id diễn viên = t2.id diễn viên  join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim  where t1.tên = Rowan Atkinson and t1.giới tính = M and t2.vai diễn = Ngài Bean
select t3.nơi sinh  from đạo diễn as t1  join đạo diễn bởi as t2 on t1.id đạo diễn = t2.id đạo diễn  join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim  where t3.tiêu đề = The Past and t3.năm phát hành = 1994 and t1.nơi sinh = Los Angeles, California, USA
select t3.tên  from diễn viên as t3  join phân vai as t2 on t3.id diễn viên = t2.id diễn viên  join bộ phim as t1 on t2.id sê-ri phim = t1.id bộ phim  where t2.vai diễn = 1 and t1.tiêu đề = The Godfather
select t3.thể loại  from đạo diễn bởi as t1  join đạo diễn as t2 on t1.id đạo diễn = t2.id đạo diễn  join phân loại as t3 on t1.id sê-ri phim = t3.id sê-ri phim  join bộ phim as t4 on t3.id sê-ri phim = t4.id bộ phim  where t2.tên = Asghar Farhadi
select t3.tiêu đề  from diễn viên as t1  join phân vai as t2 on t1.id diễn viên = t2.id diễn viên  join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim  where t1.tên = Daffy Duck
select t2.vai diễn  from phân vai as t1  join bộ phim as t2 on t1.id sê-ri phim = t2.id bộ phim  where t2.tiêu đề = The Boss and t1.vai diễn = 1
select distinct t2.tên  from đạo diễn bởi as t1  join đạo diễn as t2 on t1.id đạo diễn = t2.id đạo diễn  join bộ phim as t3 on t1.id sê-ri phim = t3.id bộ phim  where t3.tiêu đề like %Vũ khí hạt nhân%
select count ( * )  from diễn viên as t1  join phân vai as t2 on t1.id diễn viên = t2.id diễn viên  join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim  where t1.tên = Jennifer Aniston and t3.năm phát hành > 2010
select count ( * )  from diễn viên as t1  join phân vai as t2 on t1.id diễn viên = t2.id diễn viên  join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim  where t3.tiêu đề = Ryans Rescue Rangers
select count ( * )  from diễn viên as t1  join phân vai as t2 on t1.id diễn viên = t2.id diễn viên  where t2.vai diễn = Ryan Reynolds
select count ( * )  from đạo diễn as t2  join đạo diễn bởi as t3 on t2.id đạo diễn = t3.id đạo diễn  join bộ phim as t1 on t3.id sê-ri phim = t1.id bộ phim  where t2.tên = Steven Spielberg
select count ( * ) from bộ phim where năm phát hành = 2013
select count ( * ) from bộ phim where năm phát hành = 2013
select t2.năm phát hành , count ( t2.id bộ phim )  from đạo diễn as t1  join đạo diễn bởi as t2 on t1.id đạo diễn = t2.id đạo diễn  join bộ phim as t3 on t2.id bộ phim = t3.id bộ phim  where t1.tên = Woody Allen  group by t2.năm phát hành
select count ( * )  from diễn viên as t1  join phân vai as t2 on t1.id diễn viên = t2.id diễn viên  join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim  where t1.tên = Shahab Hosseini
select count ( * )  from đạo diễn as t2  join đạo diễn bởi as t3 on t2.id đạo diễn = t3.id đạo diễn  join bộ phim as t1 on t3.id sê-ri phim = t1.id bộ phim  where t2.tên = Shahab Hosseini
select count ( * )  from đạo diễn as t1  join đạo diễn bởi as t2 on t1.id đạo diễn = t2.id  join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim where t1.tên = Shahab Hosseini
select count ( * )  from diễn viên as t1  join phân vai as t2 on t1.id diễn viên = t2.id diễn viên  join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim  where t1.tên = Shahab Hosseini
select count ( * ) from diễn viên where nơi sinh = Los Angeles and năm sinh > 2000
select count ( * )  from diễn viên as t1  join đạo diễn bởi as t2 on t1.id diễn viên = t2.id đạo diễn  join đạo diễn as t3 on t2.id đạo diễn = t3.id đạo diễn  join bộ phim as t4 on t4.id sê-ri phim = t2.id sê-ri phim  where t3.tên = Humphrey Bogart and t4.năm phát hành < 1942
select t3.năm phát hành, count(t3.id bộ phim)  from diễn viên as t1  join phân vai as t2 on t1.id diễn viên = t2.id diễn viên  join bộ phim as t3 on t2.id sê-ri phim = t3.id sê-ri phim  where t1.tên = Brad Pitt  group by t3.năm phát hành
select count ( * )  from bộ phim as t1  join được làm bởi as t2 on t1.id bộ phim = t2.id sê-ri phim  where t1.tiêu đề = Chiến tranh Iraq and t1.năm phát hành = 2015
select count ( * ) from phim truyền hình nhiều tập as t1  join thể loại as t2 on t1.id thể loại = t2.id thể loại  where t2.thể loại = Ba Tư and t1.năm phát hành > 1990
select count ( * )  from đạo diễn as t1  join đạo diễn bởi as t2 on t1.id đạo diễn = t2.id  join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim  where t1.tên = Quentin Tarantino and t3.năm phát hành > 2010
select count ( * )  from đạo diễn as t1  join đạo diễn bởi as t2 on t1.id đạo diễn = t2.id  join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim  where t1.tên = Quentin Tarantino and t3.năm phát hành < 2010
select count ( * )  from đạo diễn as t1  join đạo diễn bởi as t2 on t1.id đạo diễn = t2.id  join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim  where t1.tên = Quentin Tarantino and t3.năm phát hành < 2002 and t3.năm phát hành > 2010
select count ( * ) from diễn viên where giới tính = F and năm sinh > 1980 and nơi sinh = New York
select count ( * )  from diễn viên as t1  join đạo diễn bởi as t2 on t1.id diễn viên = t2.id diễn viên  join đạo diễn as t3 on t2.id đạo diễn = t3.id đạo diễn  join bộ phim as t4 on t2.id sê-ri phim = t4.id bộ phim  where t1.quốc tịch = Iran and t3.tên = Jim Jarmusch
select count ( * )  from diễn viên as t1  join phân vai as t2 on t1.id diễn viên = t2.id diễn viên  join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim  where t1.quốc tịch = China and t3.tiêu đề = The 3 Oclock High
select t3.tiêu đề  from diễn viên as t1  join phân vai as t2 on t1.id diễn viên = t2.id diễn viên  join bộ phim as t3 on t2.id sê-ri phim = t3.id sê-ri phim  where t1.tên = Woody Strode or t1.tên = Jason Robards
select t3.tiêu đề  from diễn viên as t1  join phân vai as t2 on t1.id diễn viên = t2.id diễn viên  join bộ phim as t3 on t2.id sê-ri phim = t3.id sê-ri phim  where t1.tên = Woody Strode and t2.id diễn viên = (select id diễn viên from diễn viên where tên = Jason Robards)
select t3.tiêu đề  from diễn viên as t1  join phân vai as t2 on t1.id diễn viên = t2.id diễn viên  join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim  where t1.tên = Woody Strode  intersect  select t3.tiêu đề  from diễn viên as t1  join phân vai as t2 on t1.id diễn viên = t2.id diễn viên  join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim  where t1.tên = Jason Robards
select t3.tiêu đề  from diễn viên as t1  join phân vai as t2 on t1.id diễn viên = t2.id diễn viên  join bộ phim as t3 on t2.id sê-ri phim = t3.id sê-ri phim  where t1.tên = Woody Strode  intersect  select t3.tiêu đề  from diễn viên as t1  join phân vai as t2 on t1.id diễn viên = t2.id diễn viên  join bộ phim as t3 on t2.id sê-ri phim = t3.id sê-ri phim  where t1.tên = Jason Robards
select t2.tên from được làm bởi as t1 join diễn viên as t2 on t1.id diễn viên = t2.id diễn viên join đạo diễn bởi as t3 on t1.id sê-ri phim = t3.id where t3.id đạo diễn = ( select id from đạo diễn where tên = Tom Hanks )
select t2.tiêu đề  from đạo diễn bởi as t1  join đạo diễn as t2 on t1.id đạo diễn = t2.id đạo diễn  join bộ phim as t3 on t1.id sê-ri phim = t3.id sê-ri phim  where t3.tiêu đề = The Road Not Taken
select t2.tiêu đề from phân loại as t1 join phim truyền hình nhiều tập as t2 on t1.id sê-ri phim = t2.id sê-ri phim group by t1.id sê-ri phim order by count ( * ) desc limit 1
select t2.tiêu đề  from diễn viên as t1  join phân vai as t2 on t1.id diễn viên = t2.id diễn viên  group by t1.quốc tịch  order by count ( * ) desc  limit 1
select t3.tên  from đạo diễn as t2  join đạo diễn bởi as t4 on t2.id đạo diễn = t4.id đạo diễn  join bộ phim as t5 on t4.id sê-ri phim = t5.id bộ phim  join được làm bởi as t6 on t5.id bộ phim = t6.id sê-ri phim  join diễn viên as t3 on t6.id diễn viên = t3.id diễn viên  where t2.tên = Quentin Tarantino  and t5.năm phát hành = (select max(năm phát hành) from bộ phim)
select t3.tiêu đề , t3.ngân sách  from đạo diễn bởi as t1  join đạo diễn as t2 on t1.id đạo diễn = t2.id đạo diễn  join bộ phim as t3 on t1.id sê-ri phim = t3.id bộ phim  where t2.tên = Quentin Tarantino  order by t3.năm phát hành desc  limit 1
select t3.tiêu đề  from đạo diễn as t1  join đạo diễn bởi as t2 on t1.id đạo diễn = t2.id đạo diễn  join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim  where t1.tên = Jim Jarmusch  order by t3.năm phát hành desc  limit 1
select t2.id nhà sản xuất  from đạo diễn bởi as t1  join đạo diễn as t2 on t1.id đạo diễn = t2.id đạo diễn  group by t1.id nhà sản xuất  order by count ( * ) desc  limit 1
select t2.tiêu đề  from phân vai as t1  join diễn viên as t2 on t1.id diễn viên = t2.id diễn viên  where t2.tên = Gabriele Ferzetti  order by t1.năm sinh desc, t2.tiêu đề desc  limit 1
select chi tiết khách hàng from khách hàng order by chi tiết khách hàng
select chi tiết khách hàng from khách hàng order by chi tiết khách hàng limit 1
select mã loại chính sách from chính sách where id khách hàng = (select id khách hàng from khách hàng where chi tiết khách hàng = Dayana Robel)
select t1.mã loại chính sách  from chính sách as t1  join khách hàng as t2 on t1.id khách hàng = t2.id khách hàng  where t2.chi tiết khách hàng like %Dayana Robel%
select mã loại chính sách from chính sách group by mã loại chính sách order by count ( * ) desc limit 1
select mã loại chính sách from chính sách group by mã loại chính sách order by count ( * ) desc limit 1
select t1.mã loại chính sách  from chính sách as t1  join khách hàng as t2 on t1.id khách hàng = t2.id khách hàng  group by t1.mã loại chính sách  having count ( * ) > 2
select t1.mã loại chính sách  from chính sách as t1  join khách hàng as t2 on t1.id khách hàng = t2.id khách hàng  group by t1.mã loại chính sách  having count ( * ) > 2
select sum(số tiền được trả), avg(số tiền được trả) from tiêu đề của yêu cầu as t1 join xử lý yêu cầu as t2 on t1.id yêu cầu = t2.id yêu cầu group by t1.id yêu cầu order by số tiền được trả
select sum(số tiền được trả), avg(số tiền được trả) from tiêu đề của yêu cầu
select sum(số tiền được yêu cầu) from tài liệu của yêu cầu as t1 join tiêu đề của yêu cầu as t2 on id yêu cầu = id yêu cầu where ngày tạo ra = ( select max(ngày tạo ra) from tài liệu của yêu cầu )
select sum(số tiền được yêu cầu)  from tài liệu của yêu cầu  where id yêu cầu in (      select id yêu cầu      from tiêu đề của yêu cầu      order by ngày tạo ra desc      limit 1 )
select t1.chi tiết khách hàng  from khách hàng as t1  join chính sách as t2 on t1.id khách hàng = t2.id khách hàng  join tiêu đề của yêu cầu as t3 on t2.id chính sách = t3.id chính sách  order by t3.số tiền được yêu cầu desc  limit 1
select t1.chi tiết khách hàng  from khách hàng as t1  join chính sách as t2 on t1.id khách hàng = t2.id khách hàng  join tiêu đề của yêu cầu as t3 on t2.id chính sách = t3.id chính sách  order by t3.số tiền được yêu cầu desc  limit 1
select t1.id khách hàng, t1.số tiền được trả  from chính sách as t2  join tiêu đề của yêu cầu as t3 on t2.id chính sách = t3.id chính sách  join tài liệu của yêu cầu as t4 on t3.id yêu cầu = t4.id yêu cầu  join khách hàng as t1 on t2.id khách hàng = t1.id khách hàng  order by t1.số tiền được trả  limit 1
select t1.chi tiết khách hàng  from khách hàng as t1  join chính sách as t2 on t1.id khách hàng = t2.id khách hàng  join tiêu đề của yêu cầu as t3 on t2.id chính sách = t3.id chính sách  where t3.số tiền được trả = (select min(t3.số tiền được trả) from tiêu đề của yêu cầu as t3 join chính sách as t2 on t3.id chính sách = t2.id chính sách)
select chi tiết khách hàng from khách hàng where id khách hàng not in (select id khách hàng from chính sách) group by id khách hàng having count ( * ) = 0
select chi tiết khách hàng from khách hàng except select chi tiết khách hàng from khách hàng where id khách hàng in (select id khách hàng from chính sách)
select count ( * ) from giai đoạn xử lý yêu cầu
select count(distinct id giai đoạn xử lý yêu cầu) from xử lý yêu cầu
select t1.id giai đoạn xử lý yêu cầu, t1.tên tình trạng yêu cầu  from xử lý yêu cầu as t2  join giai đoạn xử lý yêu cầu as t1  on t2.id giai đoạn xử lý yêu cầu = t1.id giai đoạn xử lý yêu cầu  group by t2.id giai đoạn xử lý yêu cầu  order by count ( * ) desc  limit 1
select t1.id giai đoạn xử lý yêu cầu, t1.tên tình trạng yêu cầu  from xử lý yêu cầu as t2  join giai đoạn xử lý yêu cầu as t1  on t2.id giai đoạn xử lý yêu cầu = t1.id giai đoạn xử lý yêu cầu  group by t2.id giai đoạn xử lý yêu cầu  order by count ( * ) desc  limit 1
select chi tiết khách hàng from khách hàng where chi tiết khách hàng like %Diana%
select chi tiết khách hàng from khách hàng where chi tiết khách hàng like %Diana%
select t1.chi tiết khách hàng  from khách hàng as t1  join chính sách as t2 on t1.id khách hàng = t2.id khách hàng  where t2.mã loại chính sách = Uỷ quyền
select distinct t1.chi tiết khách hàng  from khách hàng as t1  join chính sách as t2 on t1.id khách hàng = t2.id khách hàng  where t2.mã loại chính sách = Uỷ quyền
select t1.chi tiết khách hàng  from khách hàng as t1  join chính sách as t2 on t1.id khách hàng = t2.id khách hàng  where t2.mã loại chính sách = Uỷ quyền or t2.mã loại chính sách = Thống nhất
select t1.chi tiết khách hàng  from khách hàng as t1  join chính sách as t2 on t1.id khách hàng = t2.id khách hàng  where t2.mã loại chính sách = Uỷ quyền or t2.mã loại chính sách = Thống nhất
select distinct chi tiết khách hàng from khách hàng union select distinct chi tiết nhân viên from nhân viên
select t1.id khách hàng, t1.chi tiết khách hàng, t2.id nhân viên, t2.chi tiết nhân viên from khách hàng as t1 join nhân viên as t2 on t1.id khách hàng = t2.id khách hàng group by t1.id khách hàng, t1.chi tiết khách hàng, t2.id nhân viên, t2.chi tiết nhân viên
select mã loại chính sách, count ( * ) from chính sách group by mã loại chính sách
select mã loại chính sách, count ( * ) from chính sách group by mã loại chính sách
select t1.chi tiết khách hàng  from khách hàng as t1  join chính sách as t2 on t1.id khách hàng = t2.id khách hàng  group by t2.id khách hàng  order by count ( * ) desc  limit 1
select t1.chi tiết khách hàng  from khách hàng as t1  join chính sách as t2 on t1.id khách hàng = t2.id khách hàng  group by t2.id khách hàng  order by count ( * ) desc  limit 1
select mô tả về tình trạng yêu cầu from tiêu đề của yêu cầu where mã tình trạng yêu cầu = Mở
select mô tả về tình trạng yêu cầu from tiêu đề của yêu cầu where mã tình trạng yêu cầu = Mở
select count(distinct t1.id yêu cầu)  from tiêu đề của yêu cầu as t1  join xử lý yêu cầu as t2  on t1.id yêu cầu = t2.id yêu cầu
select count(distinct mã kết quả của yêu cầu) from xử lý yêu cầu
select t1.chi tiết khách hàng  from khách hàng as t1  join chính sách as t2 on t1.id khách hàng = t2.id khách hàng  order by t2.ngày bắt đầu desc  limit 1
select t1.chi tiết khách hàng  from khách hàng as t1  join chính sách as t2 on t1.id khách hàng = t2.id khách hàng  where t2.ngày bắt đầu = (select max(t2.ngày bắt đầu) from chính sách as t2)
select t2.chi tiết sự kiện  from dịch vụ as t1  join sự kiện as t2 on t1.id dịch vụ = t2.id dịch vụ  where t1.mã loại dịch vụ = Wedding
select t1.id sự kiện, t1.chi tiết sự kiện  from sự kiện as t1  join người tham gia sự kiện as t2 on t1.id sự kiện = t2.id sự kiện  group by t1.id sự kiện  having count ( * ) > 1
select t1.id người tham gia, t1.mã loại người tham gia, count ( * )  from người tham gia as t1  join người tham gia sự kiện as t2 on t1.id người tham gia = t2.id người tham gia  group by t1.id người tham gia
</s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s></s><s> [INST] Trình bày quá trình suy luận từ câu hỏi kết hợp schema để đưa ra câu truy vấn sql phù hợp [/INST] ###schema: CREATE TABLE dịch vụ (id dịch vụ number, mã loại dịch vụ text); CREATE TABLE người tham gia (id người tham gia number, mã loại người tham gia text, chi tiết người tham gia text); CREATE TABLE sự kiện (id sự kiện number, id dịch vụ number, chi tiết sự kiện text); CREATE TABLE người tham gia sự kiện (id sự kiện number, id người tham gia number);, ###câu hỏi: Cho biết id người tham dự , mã loại tham dự và chi tiết của tất cả những người tham dự ., ###CoT: 1. Câu hỏi yêu cầu thông tin về id người tham gia, mã loại người tham gia và chi tiết của tất cả những người tham gia.
2. Dữ liệu cần lấy nằm trong bảng người tham gia.
3. Câu truy vấn SQL cần sử dụng câu lệnh SELECT để chọn các cột cần hiển thị và FROM để chỉ định bảng cần truy vấn.
4. Câu truy vấn SQL cần sử dụng câu lệnh SELECT để chọn các cột cần hiển thị và FROM để chỉ định bảng cần truy vấn.
5. Câu truy vấn SQL cần sử dụng câu lệnh SELECT để chọn các cột cần hiển thị và FROM để chỉ định bảng cần truy vấn.
6. Câu truy vấn SQL cần sử dụng câu lệnh SELECT để chọn các cột cần hiển thị và FROM để chỉ định bảng cần truy vấn.
7. Câu truy vấn SQL cần sử dụng câu lệnh SELECT để chọn các cột cần hiển thị và FROM để chỉ định bảng cần truy vấn.
8. Câu truy vấn SQL cần sử dụng câu lệnh SELECT để chọn các cột cần hiển thị và FROM để chỉ định bảng cần truy vấn.
9. Câu truy vấn SQL cần sử dụng câu lệnh SELECT để chọn các cột cần hiển thị và FROM để chỉ định bảng cần truy vấn.
10. Câu truy vấn SQL cần sử dụng câu lệnh SELECT để chọn các cột cần hiển thị và FROM để chỉ định bảng cần truy vấn.
11. Câu truy vấn SQL cần sử dụng câu lệnh SELECT để chọn các cột cần hiển thị và FROM để chỉ định bảng cần truy vấn.
12. Câu truy vấn SQL cần sử dụng câu lệnh SELECT để chọn các cột cần hiển thị và FROM để chỉ định bảng cần truy vấn.
13. Câu truy vấn SQL cần sử dụng câu lệnh SELECT để chọn các cột cần hiển thị và FROM để chỉ định bảng cần truy vấn.
14. Câu truy vấn SQL cần sử dụng câu lệnh SELECT để chọn các cột cần hiển thị và FROM 
select count ( * ) from người tham gia as t1 join người tham gia sự kiện as t2 on t1.id người tham gia = t2.id người tham gia where t1.mã loại người tham gia = Organizer
select mã loại dịch vụ from dịch vụ order by mã loại dịch vụ
select id dịch vụ, chi tiết sự kiện from dịch vụ join sự kiện on id dịch vụ = id dịch vụ
select count ( * )  from sự kiện as t1  join người tham gia sự kiện as t2 on t1.id sự kiện = t2.id sự kiện  join người tham gia as t3 on t2.id người tham gia = t3.id người tham gia  where t3.chi tiết người tham gia like %Dr%
select mã loại người tham gia from người tham gia group by mã loại người tham gia order by count ( * ) desc limit 1
select t1.id dịch vụ, t1.mã loại dịch vụ  from dịch vụ as t1  join người tham gia sự kiện as t2 on t1.id dịch vụ = t2.id dịch vụ  group by t1.id dịch vụ  order by count ( * )  limit 1
select t1.id sự kiện  from sự kiện as t1  join người tham gia sự kiện as t2 on t1.id sự kiện = t2.id sự kiện  group by t1.id sự kiện  order by count ( * ) desc  limit 1
select id sự kiện from sự kiện where id sự kiện not in (select id sự kiện from người tham gia sự kiện where chi tiết người tham gia = Kenyatta Kuhn)
select distinct t1.mã loại dịch vụ  from dịch vụ as t1  join sự kiện as t2 on t1.id dịch vụ = t2.id dịch vụ  where t2.chi tiết sự kiện = Thành công  intersect  select distinct t1.mã loại dịch vụ  from dịch vụ as t1  join sự kiện as t2 on t1.id dịch vụ = t2.id dịch vụ  where t2.chi tiết sự kiện = Thất bại
select count ( * ) from sự kiện where id sự kiện not in (select id sự kiện from người tham gia sự kiện)
select count ( * ) from người tham gia sự kiện group by id người tham gia having count ( * ) >= 1
select count ( * ) from kỹ thuật viên
select count ( * ) from kỹ thuật viên
select tên from kỹ thuật viên order by tuổi asc
select tên from kỹ thuật viên order by tuổi
select đội , năm bắt đầu from kỹ thuật viên
select đội , năm bắt đầu from kỹ thuật viên group by đội order by năm bắt đầu
select tên from kỹ thuật viên where đội != NYY except select tên from kỹ thuật viên where đội = NYY
select tên from kỹ thuật viên where đội != NYY
select tên from kỹ thuật viên where tuổi = 36 or tuổi = 37
select tên from kỹ thuật viên where tuổi = 36 or tuổi = 37
select năm bắt đầu from kỹ thuật viên order by tuổi desc limit 1
select năm bắt đầu from kỹ thuật viên order by tuổi desc limit 1
select đội, count ( * ) from kỹ thuật viên group by đội
select đội, count ( * ) from kỹ thuật viên group by đội
select đội from kỹ thuật viên group by đội order by count ( * ) desc limit 1
select t2.đội  from kỹ thuật viên as t1  join máy móc as t2 on t1.id kỹ thuật viên = t2.id máy  group by t2.đội  order by count ( * ) desc  limit 1
select đội from kỹ thuật viên group by đội having count ( * ) >= 2
select đội from kỹ thuật viên group by đội having count ( * ) >= 2
select t1.tên , t2.loạt máy  from kỹ thuật viên as t1  join phân công sửa chữa as t2  on t1.id kỹ thuật viên = t2.id kỹ thuật viên
select t1.tên , t2.loạt máy  from kỹ thuật viên as t1  join phân công sửa chữa as t2  on t1.id kỹ thuật viên = t2.id kỹ thuật viên
select t1.tên  from kỹ thuật viên as t1  join phân công sửa chữa as t2 on t1.id kỹ thuật viên = t2.id kỹ thuật viên  join máy móc as t3 on t2.id máy = t3.id máy  order by t3.xếp hạng chất lượng
select t3.tên , t3.điểm giá trị  from phân công sửa chữa as t2  join máy móc as t3 on t2.id máy = t3.id máy  join kỹ thuật viên as t3 on t2.id kỹ thuật viên = t3.id kỹ thuật viên  order by t3.điểm giá trị
select t3.tên  from phân công sửa chữa as t1  join máy móc as t2 on t1.id máy = t2.id máy  join kỹ thuật viên as t3 on t1.id kỹ thuật viên = t3.id kỹ thuật viên  where t2.điểm giá trị > 70
select t1.tên from kỹ thuật viên as t1 join phân công sửa chữa as t2 on t1.id kỹ thuật viên = t2.id kỹ thuật viên join máy móc as t3 on t2.id máy = t3.id máy where t3.điểm giá trị > 70
select t1.tên , count ( * ) from kỹ thuật viên as t1 join phân công sửa chữa as t2 on t1.id kỹ thuật viên = t2.id kỹ thuật viên group by t1.tên
select t1.tên , count ( * )  from kỹ thuật viên as t1  join phân công sửa chữa as t2  on t1.id kỹ thuật viên = t2.id kỹ thuật viên  group by t1.tên
select tên from kỹ thuật viên where id kỹ thuật viên not in ( select id kỹ thuật viên from phân công sửa chữa as t1 join máy móc as t2 on t1.id máy = t2.id máy )
select t1.tên from kỹ thuật viên as t1  left join phân công sửa chữa as t2 on t1.id kỹ thuật viên = t2.id kỹ thuật viên  left join máy móc as t3 on t2.id máy = t3.id máy  where t2.id kỹ thuật viên is null
select năm bắt đầu from kỹ thuật viên where đội = CLE intersect select năm bắt đầu from kỹ thuật viên where đội = CWS
select distinct t1.năm bắt đầu  from kỹ thuật viên as t1  join kỹ thuật viên as t2  on t1.đội = CLE and t2.đội = CWS  where t1.năm bắt đầu = t2.năm bắt đầu  group by t1.năm bắt đầu  having count ( * ) > 0
select count ( * ) from ống kính máy ảnh where độ dài tiêu cự theo mm > 15
select nhãn hiệu, tên from ống kính máy ảnh order by khẩu độ tối đa desc
select id, màu sắc, tên from ảnh
select max(chiều cao), avg(chiều cao) from núi
select avg(độ nổi) from núi where quốc gia = Morocco
select tên , chiều cao , độ nổi from núi where dãy núi != Aberdare
select t1.id , t1.tên  from ảnh as t1  join núi as t2 on t1.id núi = t2.id  where t2.chiều cao > 4000
select t1.tên , t1.id  from núi as t1  join ảnh as t2 on t1.id = t2.id núi  group by t2.id núi  having count ( * ) >= 2
select t2.tên  from núi as t1  join ống kính máy ảnh as t2  on t1.id ống kính máy ảnh = t2.id  where t1.chiều cao = (select max(chiều cao) from núi)
select t1.tên from ảnh as t1 join ống kính máy ảnh as t2 on t1.id ống kính máy ảnh = t2.id where t2.nhãn hiệu = Sigma or t2.nhãn hiệu = Olympus
select count(distinct nhãn hiệu) from ống kính máy ảnh
select id from ống kính máy ảnh except select id ống kính máy ảnh from ảnh
select count(distinct t1.nhãn hiệu)  from ống kính máy ảnh as t1  join ảnh as t2 on t1.id = t2.id ống kính máy ảnh  join núi as t3 on t2.id núi = t3.id  where t3.quốc gia = Ethiopia
select t1.nhãn hiệu  from ống kính máy ảnh as t1  join ảnh as t2 on t1.id = t2.id ống kính máy ảnh  join núi as t3 on t2.id núi = t3.id  where t3.dãy núi = Toubkal Atlas  intersect  select t1.nhãn hiệu  from ống kính máy ảnh as t1  join ảnh as t2 on t1.id = t2.id ống kính máy ảnh  join núi as t3 on t2.id núi = t3.id  where t3.dãy núi = Lasta Massif
select t1.tên , t1.độ nổi  from núi as t1  where t1.id not in (      select t2.id núi      from núi as t1      join ảnh as t2 on t1.id = t2.id núi      join ống kính máy ảnh as t3 on t2.id ống kính máy ảnh = t3.id      where t3.nhãn hiệu = Sigma  )
select tên from ống kính máy ảnh where tên like %Digital%
select t1.tên, count ( * )  from ống kính máy ảnh as t1  join ảnh as t2 on t1.id = t2.id ống kính máy ảnh  group by t1.tên  order by count ( * ) desc
select count ( * ) from ban nhạc
select count ( * ) from ban nhạc
select hãng thu âm from album
select hãng thu âm from album
select * from album where năm = 2012
select tiêu đề from album where năm = 2012
select t2.vị trí trên sân khấu  from buổi biểu diễn as t1  join ban nhạc as t2 on t1.nghệ sĩ trong ban nhạc = t2.id  where t2.tên = Solveig
select t2.vị trí trên sân khấu  from buổi biểu diễn as t1  join ban nhạc as t2 on t1.nghệ sĩ trong ban nhạc = t2.id  where t2.tên = Solveig
select count ( * ) from bài hát
select count ( * ) from bài hát
select t1.id bài hát  from buổi biểu diễn as t2  join ban nhạc as t1 on t2.nghệ sĩ trong ban nhạc = t1.id  where t1.họ = Heilo
select t2.tiêu đề  from buổi biểu diễn as t1  join ban nhạc as t2 on t1.nghệ sĩ trong ban nhạc = t2.id  where t2.họ = Hello
select count ( * )  from buổi biểu diễn as t1  join bài hát as t2 on t1.id bài hát = t2.id bài hát  where t2.tiêu đề = Flash
select count ( * ) from buổi biểu diễn as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where t2.tiêu đề = Flash
select t1.tiêu đề from bài hát as t1 join ban nhạc as t2 on t1.id bài hát = t2.id where t2.tên = Marianne
select t2.tiêu đề from ban nhạc as t1 join bài hát as t2 on t1.id = t2.id bài hát where t1.tên = Marianne
select t2.tên , t2.họ  from buổi biểu diễn as t1  join ban nhạc as t2 on t1.nghệ sĩ trong ban nhạc = t2.id  where t1.id bài hát in ( select id bài hát from bài hát where tiêu đề = Badlands )
select t2.tên , t2.họ  from buổi biểu diễn as t1  join ban nhạc as t2 on t1.nghệ sĩ trong ban nhạc = t2.id  where t1.id bài hát = ( select id bài hát from bài hát where tiêu đề = Badlands )
select t2.tên , t2.họ  from buổi biểu diễn as t1  join bài hát as t2 on t1.id bài hát = t2.id bài hát  where t1.vị trí trên sân khấu = hậu trường and t2.tiêu đề = Badlands
select t1.tên , t1.họ  from ban nhạc as t1  join buổi biểu diễn as t2  on t1.id = t2.nghệ sĩ trong ban nhạc  where t2.vị trí trên sân khấu = hậu trường  and t2.id bài hát in (      select t3.id bài hát      from danh sách bài hát as t3      join bài hát as t4      on t3.id bài hát = t4.id bài hát      where t4.tiêu đề = Badlands )
select count(distinct hãng thu âm) from album
select count(distinct hãng thu âm) from album
select hãng thu âm from album group by hãng thu âm order by count ( * ) desc limit 1
select hãng thu âm from album group by hãng thu âm order by count ( * ) desc limit 1
select t1.họ from ban nhạc as t1 join buổi biểu diễn as t2 on t1.id = t2.nghệ sĩ trong ban nhạc group by t2.nghệ sĩ trong ban nhạc order by count ( * ) desc limit 1
select t1.tên , t1.họ  from ban nhạc as t1  join buổi biểu diễn as t2 on t1.id = t2.nghệ sĩ trong ban nhạc  group by t1.tên , t1.họ  order by count ( * ) desc  limit 1
select t2.họ  from buổi biểu diễn as t1  join ban nhạc as t2 on t1.nghệ sĩ trong ban nhạc = t2.id  where t1.vị trí trên sân khấu = Hall  group by t1.nghệ sĩ trong ban nhạc  order by count ( * ) desc  limit 1
select t1.tên , t1.họ  from ban nhạc as t1  join buổi biểu diễn as t2 on t1.id = t2.nghệ sĩ trong ban nhạc  where t2.vị trí trên sân khấu = hậu trường  group by t1.id  order by count ( * ) desc  limit 1
select * from bài hát where tiêu đề like %the%
select tiêu đề from bài hát where tiêu đề like %the%
select t1.nhạc cụ from nhạc cụ as t1 join buổi biểu diễn as t2 on t1.id bài hát = t2.id bài hát where t2.vị trí trên sân khấu is not null
select distinct t1.nhạc cụ from nhạc cụ as t1 join buổi biểu diễn as t2 on t1.id bài hát = t2.id bài hát
select t3.nhạc cụ  from bài hát as t1  join buổi biểu diễn as t2 on t1.id bài hát = t2.id bài hát  join ban nhạc as t3 on t2.nghệ sĩ trong ban nhạc = t3.id  where t3.họ = Heilo and t1.tiêu đề = Le Pop
select t3.nhạc cụ  from bài hát as t1  join nhạc cụ as t3 on t1.id bài hát = t3.id bài hát  join giọng hát as t2 on t2.id bài hát = t1.id bài hát  join ban nhạc as t4 on t2.nghệ sĩ trong ban nhạc = t4.id  where t4.họ = Heilo and t1.tiêu đề = Le Pop
select nhạc cụ from nhạc cụ group by nhạc cụ order by count ( * ) desc limit 1
select t1.nhạc cụ from nhạc cụ as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát group by t1.nhạc cụ order by count ( * ) desc limit 1
select count ( * ) from bài hát as t1 join nhạc cụ as t2 on t1.id bài hát = t2.id bài hát where t2.nhạc cụ = guitar
select count ( * ) from bài hát as t1 join nhạc cụ as t2 on t1.id bài hát = t2.id bài hát where t2.nhạc cụ = trống
select t2.nhạc cụ from bài hát as t1 join nhạc cụ as t2 on t1.id bài hát = t2.id bài hát where t1.tiêu đề = Le Pop
select t3.nhạc cụ  from nhạc cụ as t3  join bài hát as t2 on t3.id bài hát = t2.id bài hát  join buổi biểu diễn as t1 on t2.id bài hát = t1.id bài hát  where t2.tiêu đề = Le Pop
select count ( * ) from nhạc cụ as t2 join bài hát as t1 on t2.id bài hát = t1.id bài hát where t1.tiêu đề = Le Pop
select count(distinct nhạc cụ) from nhạc cụ as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where t2.tiêu đề = Le Pop
select count(distinct t2.nhạc cụ)  from nhạc cụ as t2  join ban nhạc as t1 on t2.id nghệ sĩ trong ban nhạc = t1.id  where t1.họ = Heilo
select count(distinct t2.nhạc cụ)  from nhạc cụ as t2  join ban nhạc as t1 on t2.id nghệ sĩ trong ban nhạc = t1.id  where t1.họ = Hello
select t2.nhạc cụ from nhạc cụ as t2 join ban nhạc as t1 on t2.id nghệ sĩ trong ban nhạc = t1.id where t1.họ = Heilo
select t2.nhạc cụ from nhạc cụ as t2 join ban nhạc as t1 on t2.id nghệ sĩ trong ban nhạc = t1.id where t1.họ = Hello
select t1.id bài hát from giọng hát as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát group by t1.id bài hát order by count ( * ) desc limit 1
select t1.id bài hát from giọng hát as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát group by t1.id bài hát order by count ( * ) desc limit 1
select loại from giọng hát group by loại order by count ( * ) desc limit 1
select loại from giọng hát group by loại order by count ( * ) desc limit 1
select t3.loại  from giọng hát as t3  join ban nhạc as t2 on t3.id bài hát = t2.id bài hát  join nghệ sĩ trong ban nhạc as t1 on t2.id nghệ sĩ trong ban nhạc = t1.id  where t1.họ = Hello  group by t3.loại
select t3.loại, count(t3.loại)  from giọng hát as t3  join ban nhạc as t2 on t3.id bài hát = t2.id bài hát  join nghệ sĩ trong ban nhạc as t1 on t2.id = t1.id ban nhạc  where t1.họ = Hello  group by t3.loại  order by count(t3.loại) desc
select distinct t3.loại  from giọng hát as t3  join bài hát as t2 on t3.id bài hát = t2.id bài hát  where t2.tiêu đề = Le Pop
select t2.loại  from giọng hát as t2  join buổi biểu diễn as t1 on t2.id bài hát = t1.id bài hát  where t1.id bài hát = (select id bài hát from bài hát where tiêu đề = Le Pop)
select count(distinct t2.loại)  from giọng hát as t1  join bài hát as t2 on t1.id bài hát = t2.id bài hát  where t2.tiêu đề = Demon Kitty Rag
select count(distinct t2.loại)  from giọng hát as t2  join bài hát as t1 on t2.id bài hát = t1.id bài hát  where t1.tiêu đề = Demon Kitty Rag
select count ( * ) from giọng hát as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where t1.loại = chính
select count ( * ) from giọng hát as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where t1.loại = chính
select t3.loại  from giọng hát as t3  join ban nhạc as t2 on t3.id nghệ sĩ trong ban nhạc = t2.id  join bài hát as t1 on t3.id bài hát = t1.id bài hát  join buổi biểu diễn as t4 on t4.id bài hát = t1.id bài hát  where t2.tên = Solveig and t2.họ = Solveig and t1.tiêu đề = Amsterdam Bar
select t3.loại  from giọng hát as t3  join ban nhạc as t2 on t3.id nghệ sĩ trong ban nhạc = t2.id  join bài hát as t1 on t3.id bài hát = t1.id bài hát  join buổi biểu diễn as t4 on t4.id bài hát = t1.id bài hát  where t2.tên = Solveig and t1.tiêu đề = Amsterdam Bar
select tiêu đề from bài hát except select tiêu đề from giọng hát where loại = chính
select tiêu đề from bài hát except select tiêu đề from giọng hát where loại = chính
select distinct loại from giọng hát group by loại having count ( * ) = 1
select distinct loại from giọng hát
select * from album where năm = 2010
select * from album where năm = 2010
select t2.nghệ sĩ trong ban nhạc from buổi biểu diễn as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where t2.tiêu đề = Le Pop
select t2.tên , t2.họ  from buổi biểu diễn as t1  join ban nhạc as t2 on t1.id nghệ sĩ trong ban nhạc = t2.id  where t1.id bài hát in ( select id bài hát from bài hát where tiêu đề = Le Pop )
select t1.họ from ban nhạc as t1 join buổi biểu diễn as t2 on t1.id = t2.nghệ sĩ trong ban nhạc group by t2.nghệ sĩ trong ban nhạc order by count ( * ) desc limit 1
select t1.họ from ban nhạc as t1 join buổi biểu diễn as t2 on t1.id = t2.nghệ sĩ trong ban nhạc group by t2.nghệ sĩ trong ban nhạc order by count ( * ) desc limit 1
select t3.nhạc cụ  from bài hát as t1  join buổi biểu diễn as t2 on t1.id bài hát = t2.id bài hát  join ban nhạc as t3 on t2.nghệ sĩ trong ban nhạc = t3.id  where t3.họ = Heilo and t1.tiêu đề = Badlands
select t3.nhạc cụ  from bài hát as t1  join nhạc cụ as t3 on t1.id bài hát = t3.id bài hát  join ban nhạc as t2 on t2.id = t3.id nghệ sĩ trong ban nhạc  join buổi biểu diễn as t4 on t4.id bài hát = t1.id bài hát  where t2.họ = Hello and t1.tiêu đề = Badlands
select count ( * ) from nhạc cụ as t2 join bài hát as t1 on t2.id bài hát = t1.id bài hát where t1.tiêu đề = Badlands
select count(distinct nhạc cụ) from nhạc cụ as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where t2.tiêu đề = Badlands
select t3.loại  from giọng hát as t3  join bài hát as t2 on t3.id bài hát = t2.id bài hát  join ban nhạc as t1 on t3.id nghệ sĩ trong ban nhạc = t1.id  where t1.tên = Badlands
select t3.loại  from giọng hát as t3  join bài hát as t2 on t3.id bài hát = t2.id bài hát  join ban nhạc as t1 on t3.id nghệ sĩ trong ban nhạc = t1.id  where t1.tên = Badlands
select count(distinct t3.loại)  from giọng hát as t3  join bài hát as t2 on t3.id bài hát = t2.id bài hát  where t2.tiêu đề = Le Pop
select count ( * ) from giọng hát as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where t2.tiêu đề = Le Pop
select count ( * )  from giọng hát as t1  join bài hát as t2 on t1.id bài hát = t2.id bài hát  group by t1.id bài hát  having count ( * ) > 1
select count(distinct t1.id bài hát)  from giọng hát as t1  join bài hát as t2 on t1.id bài hát = t2.id bài hát  group by t1.id bài hát  having count ( * ) > 1
select id bài hát from giọng hát where loại = phụ except select id bài hát from giọng hát
select t2.tiêu đề from giọng hát as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where t1.loại <> phụ
select t3.loại  from giọng hát as t3  join ban nhạc as t2 on t3.id bài hát = t2.id bài hát  join nghệ sĩ trong ban nhạc as t1 on t2.id = t1.id ban nhạc  where t1.tên = Solveig  group by t3.loại  order by count ( * ) desc  limit 1
select t3.loại  from giọng hát as t3  join ban nhạc as t2 on t3.id bài hát = t2.id bài hát  join nghệ sĩ trong ban nhạc as t1 on t2.id = t1.id ban nhạc  where t1.tên = Solveig  group by t3.loại  order by count ( * ) desc  limit 1
select t3.loại  from giọng hát as t3  join ban nhạc as t2 on t3.id nghệ sĩ trong ban nhạc = t2.id  join bài hát as t1 on t3.id bài hát = t1.id bài hát  join buổi biểu diễn as t4 on t4.id bài hát = t1.id bài hát  where t2.họ = Hello and t1.tiêu đề = Der Kapitan
select t3.loại  from giọng hát as t3  join ban nhạc as t2 on t3.id nghệ sĩ trong ban nhạc = t2.id  join bài hát as t1 on t3.id bài hát = t1.id bài hát  join buổi biểu diễn as t4 on t4.id bài hát = t1.id bài hát  where t2.họ = Hello and t1.tiêu đề = Der Kapitan
select t1.tên , t1.họ  from ban nhạc as t1  join buổi biểu diễn as t2  on t1.id = t2.nghệ sĩ trong ban nhạc  group by t2.nghệ sĩ trong ban nhạc  order by count ( * ) desc  limit 1
select t1.tên , t1.họ  from ban nhạc as t1  join buổi biểu diễn as t2  on t1.id = t2.id nghệ sĩ trong ban nhạc  group by t2.id nghệ sĩ trong ban nhạc  order by count ( * ) desc  limit 1
select t2.loại  from giọng hát as t2  join ban nhạc as t1 on t2.id nghệ sĩ trong ban nhạc = t1.id  where t1.tên = Marianne  group by t2.loại  order by count ( * ) desc  limit 1
select t3.loại, count ( * )  from giọng hát as t3  join ban nhạc as t2 on t3.id bài hát = t2.id bài hát  join buổi biểu diễn as t1 on t2.id = t1.nghệ sĩ trong ban nhạc  where t1.vị trí trên sân khấu = marianne  group by t3.loại  order by count ( * ) desc  limit 1
select t2.tên, t2.họ  from buổi biểu diễn as t1  join bài hát as t2 on t1.id bài hát = t2.id bài hát  where t1.vị trí trên sân khấu = hậu trường  and t2.tiêu đề = Der Kapitan
select t1.tên , t1.họ  from ban nhạc as t1  join buổi biểu diễn as t2  on t1.id = t2.nghệ sĩ trong ban nhạc  where t2.vị trí trên sân khấu = hậu trường  and t2.id bài hát in (      select t3.id bài hát      from bài hát as t3      join danh sách bài hát as t4      on t3.id bài hát = t4.id bài hát      where t3.tiêu đề = Der Kapitan )
select tiêu đề from bài hát except select tiêu đề from giọng hát where loại = phụ
select t1.tiêu đề from bài hát as t1 join giọng hát as t2 on t1.id bài hát = t2.id bài hát where t2.loại != phụ
select t3.tiêu đề  from danh sách bài hát as t2  join bài hát as t3 on t2.id bài hát = t3.id bài hát  join album as t1 on t2.id album = t1.id album  where t1.tiêu đề = Một nụ hôn trước khi bạn ra đi : Sống ở Hamburg
select t3.tiêu đề  from danh sách bài hát as t2  join bài hát as t3 on t2.id bài hát = t3.id bài hát  join album as t1 on t2.id album = t1.id album  where t1.tiêu đề = Một nụ hôn trước khi bạn ra đi : Sống ở Hamburg
select tiêu đề from bài hát where id bài hát in (select id bài hát from danh sách bài hát where id album in (select id album from album where hãng thu âm = Universal Music Group))
select t3.tiêu đề  from danh sách bài hát as t2  join album as t1 on t2.id album = t1.id album  join bài hát as t3 on t2.id bài hát = t3.id bài hát  where t1.hãng thu âm = Universal Music Group
select count ( * ), t2.id album  from danh sách bài hát as t1  join album as t2 on t1.id album = t2.id album  where t2.loại = phòng thu  group by t2.id album
select count ( * ) from album as t1 join danh sách bài hát as t2 on t1.id album = t2.id album where t1.loại = phòng thu
select t1.tên , t1.họ from khách hàng as t1 join phiếu giảm giá as t2 on t1.id phiếu giảm giá = t2.id phiếu giảm giá where t2.số tiền giảm giá = 500
select t1.id khách hàng, t1.tên, count ( * )  from khách hàng as t1  join lượt đặt mua as t2 on t1.id khách hàng = t2.id khách hàng  group by t1.id khách hàng
select t1.id khách hàng, sum(t2.số tiền phải trả)  from khách hàng as t1  join lượt đặt mua as t2 on t1.id khách hàng = t2.id khách hàng  group by t1.id khách hàng  order by sum(t2.số tiền phải trả) desc  limit 1
select t1.id đặt mua, t1.số tiền hoàn trả  from lượt đặt mua as t1  join thanh toán as t2 on t1.id đặt mua = t2.id đặt mua  group by t1.id đặt mua  order by count ( * ) desc  limit 1
select t1.id sản phẩm  from sản phẩm được đặt as t1  join sản phẩm cho thuê as t2 on t1.id sản phẩm = t2.id sản phẩm  group by t1.id sản phẩm  having count ( * ) = 3
select t2.mô tả Sản phẩm  from sản phẩm cho thuê as t1  join sản phẩm được đặt as t2  on t1.id sản phẩm = t2.id sản phẩm  where t2.số tiền đã đặt = 102.76
select t1.ngày bắt đầu đặt mua, t1.ngày kết thúc đặt mua  from lượt đặt mua as t1  join sản phẩm được đặt as t2 on t1.id đặt mua = t2.id đặt mua  where t2.tên sản phẩm = Bộ sưu tập sách
select distinct t1.tên sản phẩm from sản phẩm có sẵn as t1 where t1.có sẵn hay không = có
select count(distinct mã loại sản phẩm) from sản phẩm cho thuê
select tên , họ , giới tính from khách hàng where khách hàng tốt hay xấu = good order by họ
select avg(số tiền nợ) from thanh toán
select số lượng đặt mua , count ( * ) from sản phẩm được đặt group by số lượng đặt mua order by số lượng đặt mua asc limit 1
select distinct mã loại thanh toán from thanh toán
select chi phí thuê hàng ngày from sản phẩm cho thuê where tên sản phẩm like %Book%
select count ( * ) from sản phẩm cho thuê where id sản phẩm not in (select id sản phẩm from sản phẩm được đặt where số tiền đã đặt > 200)
select sum(t1.số tiền giảm giá)  from phiếu giảm giá as t1  join khách hàng as t2 on t1.id phiếu giảm giá = t2.id phiếu giảm giá  where t2.khách hàng tốt hay xấu = good  intersect  select sum(t1.số tiền giảm giá)  from phiếu giảm giá as t1  join khách hàng as t2 on t1.id phiếu giảm giá = t2.id phiếu giảm giá  where t2.khách hàng tốt hay xấu = bad
select ngày thanh toán from thanh toán where số tiền đã trả > 300 or mã loại thanh toán = Giao dịch group by ngày thanh toán order by ngày thanh toán
select tên sản phẩm , mô tả Sản phẩm from sản phẩm cho thuê where mã loại sản phẩm = Dao kéo and chi phí thuê hàng ngày < 20 group by tên sản phẩm , mô tả Sản phẩm
select tên nhà hàng from nhà hàng
select t3.địa chỉ  from loại của nhà hàng as t2  join loại nhà hàng as t1 on t2.id loại nhà hàng = t1.id loại nhà hàng  join nhà hàng as t3 on t2.id nhà hàng = t3.id nhà hàng  where t1.tên loại nhà hàng = Subway
select t2.đánh giá xếp hạng from nhà hàng as t1 join loại của nhà hàng as t2 on t1.id nhà hàng = t2.id nhà hàng where t1.tên nhà hàng = Subway
select tên loại nhà hàng from loại nhà hàng
select t2.mô tả về loại nhà hàng  from loại của nhà hàng as t1  join loại nhà hàng as t2  on t1.id loại nhà hàng = t2.id loại nhà hàng  where t2.tên loại nhà hàng = Sandwich
select t1.tên nhà hàng, t1.đánh giá xếp hạng  from nhà hàng as t1  join loại của nhà hàng as t2 on t1.id nhà hàng = t2.id nhà hàng  order by t1.đánh giá xếp hạng desc  limit 1
select tuổi from sinh viên where tên = Linda and họ = Smith
select giới tính from sinh viên where tên = Linda and họ = Smith
select tên, họ from sinh viên where chuyên ngành = 600
select mã thành phố from sinh viên where tên = Linda and họ = Smith
select count ( * ) from sinh viên where cố vấn = 1121
select t1.cố vấn , count ( * ) from sinh viên as t1 join nhà hàng as t2 on t1.cố vấn = t2.id nhà hàng group by t1.cố vấn order by count ( * ) desc limit 1
select chuyên ngành, count ( * ) from sinh viên group by chuyên ngành order by count ( * ) desc limit 1
select chuyên ngành, count ( * )  from sinh viên  group by chuyên ngành  having count ( * ) between 2 and 30
select tên , họ from sinh viên where tuổi > 18 and chuyên ngành = 600
select tên , họ from sinh viên where giới tính = F and tuổi > 18 and chuyên ngành <> 600
select count ( * )  from nhà hàng as t1  join loại nhà hàng as t2 on t1.id nhà hàng = t2.id nhà hàng  where t2.tên loại nhà hàng = Sandwich
select sum(thời gian dành ra)  from sinh viên as t1  join lượt ghé thăm nhà hàng as t2 on t1.id sinh viên = t2.id sinh viên  join nhà hàng as t3 on t3.id nhà hàng = t2.id nhà hàng  where t1.tên = Linda and t1.họ = Smith
select count ( * )  from sinh viên as t1  join lượt ghé thăm nhà hàng as t2 on t1.id sinh viên = t2.id sinh viên  join nhà hàng as t3 on t3.id nhà hàng = t2.id nhà hàng  join loại của nhà hàng as t4 on t4.id nhà hàng = t3.id nhà hàng  join loại nhà hàng as t5 on t5.id loại nhà hàng = t4.id loại nhà hàng  where t1.tên = Linda and t1.họ = Smith and t5.tên loại nhà hàng = Subway
select t3.thời gian  from sinh viên as t1  join lượt ghé thăm nhà hàng as t3 on t1.id sinh viên = t3.id sinh viên  join nhà hàng as t2 on t2.id nhà hàng = t3.id nhà hàng  join loại của nhà hàng as t4 on t4.id nhà hàng = t2.id nhà hàng  join loại nhà hàng as t5 on t5.id loại nhà hàng = t4.id loại nhà hàng  where t1.tên = Linda and t1.họ = Smith and t5.tên loại nhà hàng = Subway  order by t3.thời gian
select t1.tên nhà hàng, sum(thời gian dành ra)  from lượt ghé thăm nhà hàng as t2  join nhà hàng as t1 on t2.id nhà hàng = t1.id nhà hàng  group by t2.id nhà hàng  order by sum(thời gian dành ra)  limit 1
select t1.tên , t1.họ  from sinh viên as t1  join lượt ghé thăm nhà hàng as t2  on t1.id sinh viên = t2.id sinh viên  group by t2.id sinh viên  order by count ( * ) desc  limit 1
select họ, count(họ) from diễn viên group by giới tính
select count(distinct họ) from diễn viên
select t1.tên from diễn viên as t1 join diễn viên điện ảnh as t2 on t1.id diễn viên = t2.id diễn viên group by t1.tên order by count ( * ) desc limit 1
select t1.tên from diễn viên as t1 join diễn viên điện ảnh as t2 on t1.id diễn viên = t2.id diễn viên group by t1.tên order by count ( * ) desc limit 1
select t1.tên , t1.họ  from diễn viên as t1  join diễn viên điện ảnh as t2 on t1.id diễn viên = t2.id diễn viên  group by t1.tên , t1.họ  order by count ( * ) desc  limit 1
select t1.tên , t1.họ  from diễn viên as t1  join diễn viên điện ảnh as t2 on t1.id diễn viên = t2.id diễn viên  group by t1.tên , t1.họ  order by count ( * ) desc  limit 1
select quận from địa chỉ group by quận having count ( * ) >= 2
select quận from địa chỉ group by quận having count ( * ) >= 2
select số điện thoại , mã bưu điện from địa chỉ where id địa chỉ = 1031
select số điện thoại , mã bưu điện from địa chỉ where địa chỉ = 1031 Daugavpils Parkway
select t1.thành phố , count ( * ) , t1.id thành phố  from địa chỉ as t2  join thành phố as t1 on t2.id thành phố = t1.id thành phố  group by t2.id thành phố  order by count ( * ) desc  limit 1
select t1.thành phố , t1.id thành phố , count ( * )  from địa chỉ as t1  join thành phố as t2 on t1.id thành phố = t2.id thành phố  group by t1.id thành phố  order by count ( * ) desc  limit 1
select count ( * ) from địa chỉ where id thành phố in (select id thành phố from thành phố where quận = California)
select count ( * ) from địa chỉ where quận = California
select t1.tên , t1.id phim  from phim as t1  join lượt cho thuê as t2 on t1.id phim = t2.id phim  join hàng tồn kho as t3 on t2.id hàng tồn kho = t3.id hàng tồn kho  where t2.giá cho thuê = 0.99 and t3.số lượng < 3
select t1.tiêu đề , t1.id phim  from phim as t1  join hàng tồn kho as t2 on t1.id phim = t2.id phim  where t1.giá cho thuê = 0.99 and t2.số lượng hàng tồn kho < 3
select count ( * ) from thành phố as t1 join quốc gia as t2 on t1.id thành phố = t2.id thành phố where t2.quốc gia = Australia
select count ( * ) from thành phố as t1 join quốc gia as t2 on t1.id thành phố = t2.id thành phố where t2.quốc gia = Australia
select t1.id quốc gia from quốc gia as t1 join thành phố as t2 on t1.id quốc gia = t2.id quốc gia group by t1.id quốc gia having count ( * ) >= 3
select t1.quốc gia  from quốc gia as t1  join thành phố as t2 on t1.id quốc gia = t2.id quốc gia  group by t1.id quốc gia  having count ( * ) >= 3
select ngày thanh toán from khoản thanh toán where số tiền > 10 and id nhân viên = ( select id nhân viên from nhân viên where tên = Elsa )
select t1.ngày thanh toán  from khoản thanh toán as t1  join nhân viên as t2 on t1.id nhân viên = t2.id nhân viên  where t1.số tiền > 10 or t2.tên = Elsa
select count ( * ) from khách hàng where có hoạt động không = 1
select count ( * ) from khách hàng where có hoạt động không = 1
select giá cho thuê from phim order by giá cho thuê desc limit 1
select tiêu đề , giá cho thuê from phim order by giá cho thuê desc limit 1
select t2.tiêu đề , t2.mô tả , t1.id phim  from diễn viên điện ảnh as t1  join phim as t2 on t1.id phim = t2.id phim  group by t1.id phim  order by count ( * ) desc  limit 1
select t2.tiêu đề , t1.id phim , t2.mô tả  from diễn viên điện ảnh as t1  join phim as t2 on t1.id phim = t2.id phim  group by t1.id phim  order by count ( * ) desc  limit 1
select t1.tên , t1.họ  from diễn viên as t1  join diễn viên điện ảnh as t2 on t1.id diễn viên = t2.id diễn viên  group by t2.id diễn viên  order by count ( * ) desc  limit 1
select t1.tên , t1.họ , t2.id diễn viên  from diễn viên as t1  join diễn viên điện ảnh as t2 on t1.id diễn viên = t2.id diễn viên  join phim as t3 on t2.id phim = t3.id phim  group by t2.id diễn viên  order by count ( * ) desc  limit 1
select t1.tên , t1.họ  from diễn viên as t1  join diễn viên điện ảnh as t2 on t1.id diễn viên = t2.id diễn viên  group by t2.id diễn viên  having count ( * ) > 30
select t1.tên , t1.họ  from diễn viên as t1  join diễn viên điện ảnh as t2 on t1.id diễn viên = t2.id diễn viên  group by t1.id diễn viên  having count ( * ) > 30
select t1.id cửa hàng  from cửa hàng as t1  join hàng tồn kho as t2 on t1.id cửa hàng = t2.id cửa hàng  group by t1.id cửa hàng  order by count ( * ) desc  limit 1
select t1.id cửa hàng  from hàng tồn kho as t1  join cửa hàng as t2 on t1.id cửa hàng = t2.id cửa hàng  group by t1.id cửa hàng  order by count ( * ) desc  limit 1
select sum(số tiền) from khoản thanh toán
select sum(số tiền) from khoản thanh toán
select t1.tên , t1.họ , t1.id khách hàng  from khách hàng as t1  join khoản thanh toán as t2 on t1.id khách hàng = t2.id khách hàng  order by t2.số tiền desc  limit 1
select t1.tên , t1.họ , t1.id khách hàng  from khách hàng as t1  join khoản thanh toán as t2 on t1.id khách hàng = t2.id khách hàng  group by t1.id khách hàng  order by sum ( t2.số tiền )  limit 1
select t3.tên  from phim as t1  join danh mục phim as t2 on t1.id phim = t2.id phim  join danh mục as t3 on t2.id danh mục = t3.id danh mục  where t1.tiêu đề = HUNGER ROOF
select t2.tên  from phim as t1  join danh mục phim as t2  on t1.id phim = t2.id phim  where t1.tiêu đề = HUNGER ROOF
select t2.tên , t1.id danh mục , count ( * )  from danh mục phim as t1  join danh mục as t2 on t1.id danh mục = t2.id danh mục  group by t1.id danh mục
select t1.tên , t1.id danh mục , count ( * ) from danh mục as t1 join danh mục phim as t2 on t1.id danh mục = t2.id danh mục group by t1.id danh mục
select t2.tiêu đề , t1.id phim  from hàng tồn kho as t1  join phim as t2 on t1.id phim = t2.id phim  group by t1.id phim  order by count ( * ) desc  limit 1
select t1.tiêu đề , t1.id phim from phim as t1 join hàng tồn kho as t2 on t1.id phim = t2.id phim group by t1.id phim order by count ( * ) desc limit 1
select t2.tiêu đề , t1.id hàng tồn kho  from lượt cho thuê as t1  join hàng tồn kho as t2 on t1.id hàng tồn kho = t2.id hàng tồn kho  group by t1.id hàng tồn kho  order by count ( * ) desc  limit 1
select t2.tiêu đề , t1.id hàng tồn kho  from lượt cho thuê as t1  join hàng tồn kho as t2 on t1.id hàng tồn kho = t2.id hàng tồn kho  group by t1.id hàng tồn kho  order by count ( * ) desc  limit 1
select t1.tên , count ( * ) from ngôn ngữ as t1 join phim as t2 on t1.id ngôn ngữ = t2.id ngôn ngữ group by t1.tên
select count(distinct t2.id ngôn ngữ)  from phim as t1  join ngôn ngữ as t2  on t1.id ngôn ngữ = t2.id ngôn ngữ  group by t1.id ngôn ngữ
select tiêu đề from phim where đánh giá xếp hạng = R
select tiêu đề from phim where đánh giá xếp hạng = R
select t2.thành phố  from cửa hàng as t1  join thành phố as t2  on t1.id thành phố = t2.id thành phố  where t1.id cửa hàng = 1
select t2.địa chỉ  from cửa hàng as t1  join địa chỉ as t2 on t1.id địa chỉ = t2.id địa chỉ  where t1.id cửa hàng = 1
select t1.tên , t1.họ , t1.id nhân viên  from nhân viên as t1  join khoản thanh toán as t2 on t1.id nhân viên = t2.id nhân viên  group by t2.id nhân viên  having count ( * ) = ( select min ( count ( * ) from khoản thanh toán ) )
select t1.tên , t1.họ , t1.id nhân viên  from nhân viên as t1  join khoản thanh toán as t2  on t1.id nhân viên = t2.id nhân viên  group by t2.id nhân viên  order by count ( * )  limit 1
select t3.tên  from phim as t1  join danh mục phim as t2 on t1.id phim = t2.id phim  join danh mục as t3 on t2.id danh mục = t3.id danh mục  where t1.tiêu đề = AIRPORT POLLOCK
select t2.tên from phim as t1 join ngôn ngữ as t2 on t1.id ngôn ngữ = t2.id ngôn ngữ where t1.tiêu đề = AIRPORT POLLOCK
select count ( * ) from cửa hàng
select count ( * ) from cửa hàng
select count(distinct đánh giá xếp hạng) from phim
select count(distinct đánh giá xếp hạng) from phim
select tiêu đề from phim where tính năng đặc biệt like %Cảnh đã xoá%
select tiêu đề from phim where tính năng đặc biệt like %Cảnh đã xoá%
select count ( * ) from hàng tồn kho as t1 join cửa hàng as t2 on t1.id cửa hàng = t2.id cửa hàng where t2.id cửa hàng = 1
select count ( * ) from hàng tồn kho where id cửa hàng = 1
select ngày thanh toán from khoản thanh toán order by ngày thanh toán limit 1
select ngày thanh toán from khoản thanh toán order by ngày thanh toán limit 1
select t2.email  from khách hàng as t1  join địa chỉ as t2 on t1.id địa chỉ = t2.id địa chỉ  where t1.tên = Linda
select t1.địa chỉ , t2.email  from địa chỉ as t1  join khách hàng as t2 on t1.id địa chỉ = t2.id địa chỉ  where t2.tên = Linda
select tiêu đề from phim where thời lượng thuê > 100 or đánh giá xếp hạng = PG and giá thay thế < 200
select tiêu đề from phim where thời lượng thuê > 100 or đánh giá xếp hạng = PG and giá thay thế < 200 group by tiêu đề having max(giá thay thế) < 200
select t1.tên , t1.họ  from khách hàng as t1  join lượt cho thuê as t2 on t1.id khách hàng = t2.id khách hàng  order by t2.ngày cho thuê  limit 1
select t1.tên , t1.họ  from khách hàng as t1  join lượt cho thuê as t2 on t1.id khách hàng = t2.id khách hàng  order by t2.ngày cho thuê  limit 1
select t1.tên , t1.họ  from nhân viên as t1  join khoản thanh toán as t2 on t1.id nhân viên = t2.id nhân viên  join lượt cho thuê as t3 on t2.id lượt thuê = t3.id lượt thuê  join khách hàng as t4 on t3.id khách hàng = t4.id khách hàng  where t4.tên = April and t4.họ = Burns
select t3.tên , t3.họ  from nhân viên as t3  join khách hàng as t2 on t3.id nhân viên = t2.id nhân viên  join lượt cho thuê as t1 on t2.id khách hàng = t1.id khách hàng  join khoản thanh toán as t4 on t1.id lượt thuê = t4.id lượt thuê  where t2.tên = April and t2.họ = Burns
select t1.id cửa hàng  from khách hàng as t1  join cửa hàng as t2  on t1.id cửa hàng = t2.id cửa hàng  group by t1.id cửa hàng  order by count ( * ) desc  limit 1
select t1.id cửa hàng  from khách hàng as t1  join cửa hàng as t2  on t1.id cửa hàng = t2.id cửa hàng  group by t1.id cửa hàng  order by count ( * ) desc  limit 1
select số tiền , id khoản thanh toán from khoản thanh toán order by số tiền desc limit 1
select max(số tiền) from khoản thanh toán
select t2.địa chỉ  from nhân viên as t1  join địa chỉ as t2  on t1.id địa chỉ = t2.id địa chỉ  where t1.tên = Elsa
select t2.địa chỉ  from nhân viên as t1  join địa chỉ as t2  on t1.id địa chỉ = t2.id địa chỉ  where t1.tên = Elsa
select tên from khách hàng except select t1.tên from khách hàng as t1 join lượt cho thuê as t2 on t1.id khách hàng = t2.id khách hàng where t2.ngày cho thuê > 2005-08-23 02:06:01
select t1.tên from khách hàng as t1 where not t1.id khách hàng in ( select t2.id khách hàng from lượt cho thuê as t2 where t2.ngày cho thuê > 2005-08-23 02:06:01 )
select count ( * ) from tài xế
select tên , thành phố quê hương , tuổi from tài xế
select đảng, count ( * ) from tài xế group by đảng order by count ( * ) desc
select tên from tài xế order by tuổi desc
select distinct thành phố quê hương from tài xế
select thành phố quê hương from tài xế group by thành phố quê hương order by count ( * ) desc limit 1
select t2.đảng  from tài xế as t1  join trường học as t2 on t1.id tài xế = t2.id tài xế  where t1.thành phố quê hương = Hartford and t1.tuổi > 40  group by t2.đảng  having count ( * ) > 1
select thành phố quê hương from tài xế where tuổi > 40 group by thành phố quê hương having count ( * ) >= 2
select thành phố quê hương from tài xế except select thành phố quê hương from tài xế where tuổi > 40
select tên from tài xế except select t1.tên from tài xế as t1 join xe buýt của trường học as t2 on t1.id tài xế = t2.id tài xế
select loại hình from trường học group by loại hình having count ( * ) = 2
select t1.tên , t2.trường học  from tài xế as t1  join xe buýt của trường học as t2  on t1.id tài xế = t2.id tài xế
select số năm làm việc, count ( * ) from xe buýt của trường học group by số năm làm việc order by số năm làm việc asc limit 1
select trường học, loại hình from trường học except select trường học, loại hình from xe buýt của trường học
select t1.loại hình, count ( * )  from trường học as t1  join xe buýt của trường học as t2  on t1.id trường học = t2.id trường học  group by t1.loại hình
select count ( * ) from tài xế where thành phố quê hương = Hartford or tuổi < 40
select tên from tài xế where thành phố quê hương = Hartford and tuổi < 40
select t1.tên  from tài xế as t1  join xe buýt của trường học as t2 on t1.id tài xế = t2.id tài xế  group by t2.id tài xế  order by t2.số năm làm việc desc  limit 1
select count ( * ) from trường học
select count ( * ) from trường học
select địa điểm from trường học order by số lượng nhập học asc
select địa điểm, số lượng nhập học from trường học order by số lượng nhập học asc
select địa điểm from trường học order by năm thành lập desc
select địa điểm, năm thành lập from trường học order by năm thành lập desc
select số lượng nhập học from trường học where tôn giáo != Công giáo
select số lượng nhập học from trường học where tôn giáo != Công giáo
select avg(số lượng nhập học) from trường học
select avg(số lượng nhập học) from trường học
select đội from cầu thủ order by đội asc
select đội from cầu thủ order by đội asc
select count(distinct vị trí) from cầu thủ
select count(distinct vị trí) from cầu thủ
select t1.đội from cầu thủ as t1 join trường học as t2 on t1.id trường = t2.id trường order by t1.tuổi desc limit 1
select đội, cầu thủ  from cầu thủ  order by tuổi desc  limit 1
select đội from cầu thủ order by tuổi desc limit 5
select đội from cầu thủ order by tuổi desc limit 5
select t2.đội , t2.địa điểm  from cầu thủ as t1  join trường học as t2  on t1.id trường = t2.id trường
select t1.đội , t2.địa điểm  from cầu thủ as t1  join trường học as t2  on t1.id trường = t2.id trường
select t1.địa điểm from trường học as t1 join cầu thủ as t2 on t1.id trường = t2.id trường group by t1.id trường having count ( * ) > 1
select t1.địa điểm from trường học as t1 join cầu thủ as t2 on t1.id trường = t2.id trường group by t1.id trường having count ( * ) > 1
select t1.tôn giáo from trường học as t1 join cầu thủ as t2 on t1.id trường = t2.id trường group by t2.id trường order by count ( * ) desc limit 1
select t1.tôn giáo from trường học as t1 join cầu thủ as t2 on t1.id trường = t2.id trường group by t2.id trường order by count ( * ) desc limit 1
select t1.địa điểm , t2.biệt danh  from trường học as t1  join chi tiết trường học as t2  on t1.id trường = t2.id trường
select t2.biệt danh , t1.địa điểm from trường học as t1 join chi tiết trường học as t2 on t1.id trường = t2.id trường
select tôn giáo, count ( * ) from trường học group by tôn giáo
select tôn giáo , count ( * ) from trường học group by tôn giáo
select tôn giáo , count ( * ) from trường học group by tôn giáo order by count ( * ) desc
select tôn giáo, count ( * ) from trường học group by tôn giáo order by count ( * ) desc
select màu của trường from trường học order by số lượng nhập học desc limit 1
select t1.màu của trường , t2.trường học  from trường học as t1  join chi tiết trường học as t2  on t1.id trường = t2.id trường  where t1.số lượng nhập học = ( select max ( số lượng nhập học ) from trường học )
select địa điểm from trường học where id trường not in ( select id trường from cầu thủ )
select địa điểm from trường học except select t3.địa điểm from trường học as t3 join cầu thủ as t2 on t3.id trường = t2.id trường
select tôn giáo from trường học where năm thành lập < 1890 union select tôn giáo from trường học where năm thành lập > 1900
select distinct t1.tôn giáo from trường học as t1 join chi tiết trường học as t2 on t1.id trường = t2.id trường where t1.năm thành lập < 1890 intersect select distinct t1.tôn giáo from trường học as t1 join chi tiết trường học as t2 on t1.id trường = t2.id trường where t1.năm thành lập > 1900
select biệt danh from chi tiết trường học where phân hạng != 1
select biệt danh from chi tiết trường học where phân hạng <> 1
select tôn giáo from trường học group by tôn giáo having count ( * ) > 1
select tôn giáo from trường học group by tôn giáo having count ( * ) > 1
select t1.tên , t2.tên from quốc gia as t1 join giải đấu as t2 on t1.id = t2.id quốc gia
select count ( * ) from giải đấu as t1 join quốc gia as t2 on t1.id quốc gia = t2.id where t2.tên = England
select avg(cân nặng) from cầu thủ
select cân nặng from cầu thủ order by cân nặng asc limit 1
select tên cầu thủ from đặc điểm của cầu thủ where tiềm năng > ( select avg(tiềm năng) from đặc điểm của cầu thủ )
select t1.tên cầu thủ from đặc điểm của cầu thủ as t1 join cầu thủ as t2 on t1.id cầu thủ api = t2.id order by t1.rê bóng desc limit 1
select distinct t1.tên cầu thủ  from đặc điểm của cầu thủ as t1  where t1.tạt bóng > 90 and t1.chân thuận = R
select tên cầu thủ from đặc điểm của cầu thủ where chân thuận = trái and đánh giá tổng thể between 85 and 90
select avg(t1.chân thuận), avg(t1.chân trái)  from đặc điểm của cầu thủ as t1  where t1.chân thuận = 1 or t1.chân trái = 1
select count(distinct chân thuận) from đặc điểm của cầu thủ where đánh giá tổng thể > 80
select id from cầu thủ where chiều cao >= 180 and đánh giá tổng thể > 85
select id from cầu thủ where chân thuận = L and chiều cao between 180 and 190
select t1.tên cầu thủ, t1.id cầu thủ api của fifa  from đặc điểm của cầu thủ as t1  join cầu thủ as t2 on t1.id cầu thủ api của fifa = t2.id cầu thủ api  order by t1.đánh giá tổng thể desc  limit 3
select t1.tên cầu thủ , t1.ngày sinh  from đặc điểm của cầu thủ as t1  join cầu thủ as t2 on t1.id cầu thủ api = t2.id  order by t1.tiềm năng desc  limit 1
select distinct tên quận from quận order by diện tích của các thành phố desc
select tên quận from quận order by diện tích của các thành phố desc
select kích thước trang tối đa from sản phẩm group by kích thước trang tối đa having count ( * ) > 3
select kích thước trang tối đa from sản phẩm group by kích thước trang tối đa having count ( * ) > 3
select tên quận , dân số thành phố from quận where dân số thành phố >= 200000 and dân số thành phố <= 20000000
select tên quận , dân số thành phố from quận where dân số thành phố >= 200000 and dân số thành phố <= 2000000
select tên quận from quận where diện tích của các thành phố > 10 or dân số thành phố > 100000
select tên quận from quận where diện tích của các thành phố > 10 or dân số thành phố > 100000
select tên quận from quận order by dân số thành phố desc limit 1
select tên quận from quận order by dân số thành phố desc limit 1
select tên quận from quận order by diện tích của các thành phố asc limit 1
select tên quận from quận order by diện tích của các thành phố limit 1
select sum(dân số thành phố) from quận order by diện tích của các thành phố desc limit 3
select sum(dân số thành phố) from quận order by diện tích của các thành phố desc limit 3
select loại, count ( * ) from cửa hàng group by loại
select loại, count ( * ) from cửa hàng group by loại
select t1.tên cửa hàng  from cửa hàng as t1  join quận của cửa hàng as t2 on t1.id cửa hàng = t2.id cửa hàng  join quận as t3 on t2.id quận = t3.id quận  where t3.tên quận = Khanewal
select t1.tên cửa hàng  from cửa hàng as t1  join quận của cửa hàng as t2 on t1.id cửa hàng = t2.id cửa hàng  join quận as t3 on t2.id quận = t3.id quận  where t3.tên quận = Khanewal
select t1.tên cửa hàng  from cửa hàng as t1  join quận của cửa hàng as t2 on t1.id cửa hàng = t2.id cửa hàng  join quận as t3 on t2.id quận = t3.id quận  where t3.dân số thành phố = (select max(dân số thành phố) from quận)
select t1.tên quận , t2.tên cửa hàng  from quận as t1  join quận của cửa hàng as t2 on t1.id quận = t2.id quận  group by t1.tên quận  order by sum ( t2.dân số thành phố ) desc  limit 1
select t2.thành phố của các trụ sở  from cửa hàng as t1  join quận as t2 on t1.id cửa hàng = t2.id cửa hàng  where t1.tên cửa hàng = Blackville
select t2.thành phố của các trụ sở  from cửa hàng as t1  join quận as t2 on t1.id cửa hàng = t2.id quận  where t1.tên cửa hàng = Blackville
select t1.tên quận , count ( * ) from quận as t1 join quận của cửa hàng as t2 on t1.id quận = t2.id quận group by t1.tên quận
select t1.tên thành phố , count ( * ) from quận as t1 join quận của cửa hàng as t2 on t1.id quận = t2.id quận group by t1.tên thành phố
select distinct t1.thành phố của các trụ sở from cửa hàng as t2 join quận as t1 on t2.id quận = t1.id quận group by t1.thành phố của các trụ sở order by count ( * ) desc limit 1
select t2.tên quận  from cửa hàng as t1  join quận as t2 on t1.id quận = t2.id quận  group by t2.tên quận  order by count ( * ) desc  limit 1
select avg(số trang màu trên từng phút) from sản phẩm
select avg(số trang màu trên từng phút) from sản phẩm
select t2.sản phẩm  from sản phẩm của cửa hàng as t1  join sản phẩm as t2 on t1.id sản phẩm = t2.id sản phẩm  join cửa hàng as t3 on t1.id cửa hàng = t3.id cửa hàng  where t3.tên cửa hàng = Miramichi
select t2.sản phẩm  from sản phẩm của cửa hàng as t1  join sản phẩm as t2 on t1.id sản phẩm = t2.id sản phẩm  join cửa hàng as t3 on t1.id cửa hàng = t3.id cửa hàng  where t3.tên cửa hàng = Miramichi
select sản phẩm, kích thước trang tối đa  from sản phẩm  where kích thước trang tối đa = A 4  and số trang màu trên từng phút < 5
select sản phẩm from sản phẩm where kích thước trang tối đa = A 4 and số trang màu trên từng phút < 5
select sản phẩm from sản phẩm where kích thước trang tối đa = A 4 or số trang màu trên từng phút < 5
select sản phẩm from sản phẩm where kích thước trang tối đa = A 4 or số trang màu trên từng phút < 5
select sản phẩm from sản phẩm where sản phẩm like %Scanner%
select sản phẩm from sản phẩm where sản phẩm like %Scanner%
select kích thước trang tối đa from sản phẩm group by kích thước trang tối đa order by count ( * ) desc limit 1
select kích thước trang tối đa from sản phẩm group by kích thước trang tối đa order by count ( * ) desc limit 1
select sản phẩm from sản phẩm except select sản phẩm from sản phẩm where kích thước trang tối đa = (select kích thước trang tối đa from sản phẩm group by kích thước trang tối đa order by count ( * ) desc limit 1)
select sản phẩm from sản phẩm where kích thước trang tối đa = ( select kích thước trang tối đa from sản phẩm group by kích thước trang tối đa order by count ( * ) desc limit 1 ) except select sản phẩm from sản phẩm where kích thước trang tối đa = ( select kích thước trang tối đa from sản phẩm group by kích thước trang tối đa order by count ( * ) desc limit 1 )
select sum(dân số thành phố) from quận where diện tích của các thành phố > (select avg(diện tích của các thành phố) from quận)
select sum(dân số thành phố) from quận where diện tích của các thành phố > (select avg(diện tích của các thành phố) from quận)
select t1.tên quận from quận as t1 join cửa hàng as t2 on t1.id quận = t2.id quận where t2.loại = Trung tâm mua sắm intersect select t1.tên quận from quận as t1 join cửa hàng as t2 on t1.id quận = t2.id quận where t2.loại = Cửa hàng bình dân
select t1.tên quận from quận as t1 join cửa hàng as t2 on t1.id quận = t2.id quận where t2.loại = Trung tâm mua sắm intersect select t1.tên quận from quận as t1 join cửa hàng as t2 on t1.id quận = t2.id quận where t2.loại = Cửa hàng bình dân
select count ( * ) from khu vực
select count ( * ) from khu vực
select mã khu vực , tên khu vực from khu vực order by mã khu vực
select mã khu vực , tên khu vực from khu vực order by mã khu vực
select tên khu vực from khu vực order by tên khu vực limit 1
select tên khu vực from khu vực order by tên khu vực
select tên khu vực from khu vực where mã khu vực != DK
select tên khu vực from khu vực where tên khu vực != Denmark
select count ( * ) from bão where số lượng người chết is not null
select count ( * ) from bão where số lượng người chết > 0
select tên , ngày hoạt động , số lượng người chết  from bão  where số lượng người chết >= 1  group by tên  having count ( * ) >= 1
select t1.tên , t1.ngày hoạt động , t1.số lượng người chết  from bão as t1  join khu vực bị ảnh hưởng as t2 on t1.id cơn bão = t2.id bão  where t1.số lượng người chết > 0
select tên , avg ( thiệt hại theo triệu usd ) , max ( thiệt hại theo triệu usd )  from bão  where tốc độ tối đa > 1000  group by tên
select avg(thiệt hại theo triệu usd), max(thiệt hại theo triệu usd)  from bão  where tốc độ tối đa > 1000
select tên, số lượng người chết, thiệt hại theo triệu usd  from bão  where tốc độ tối đa > (select avg(tốc độ tối đa) from bão)  order by số lượng người chết desc
select sum(số lượng người chết), sum(thiệt hại theo triệu usd) from bão where tốc độ tối đa > (select avg(tốc độ tối đa) from bão) group by tên order by tốc độ tối đa desc
select tên , thiệt hại theo triệu usd from bão order by tốc độ tối đa desc
select tên , thiệt hại theo triệu usd from bão order by tốc độ tối đa desc
select count ( * ) from khu vực bị ảnh hưởng
select count ( distinct tên khu vực ) from khu vực bị ảnh hưởng as t1 join khu vực as t2 on t1.id khu vực = t2.id khu vực
select tên khu vực from khu vực except select t1.tên khu vực from khu vực as t1 join khu vực bị ảnh hưởng as t2 on t1.id khu vực = t2.id khu vực
select tên khu vực from khu vực except select t1.id khu vực from khu vực as t1 join khu vực bị ảnh hưởng as t2 on t1.id khu vực = t2.id khu vực
select t1.tên khu vực, count ( * )  from khu vực as t1  join khu vực bị ảnh hưởng as t2  on t1.id khu vực = t2.id khu vực  group by t1.tên khu vực
select count ( * ), t1.tên khu vực  from khu vực bị ảnh hưởng as t3  join khu vực as t1 on t3.id khu vực = t1.id khu vực  join bão as t2 on t3.id bão = t2.id cơn bão  group by t1.tên khu vực
select t1.tên , count ( * ) from bão as t1 join khu vực bị ảnh hưởng as t2 on t1.id cơn bão = t2.id bão group by t1.tên
select count ( * ), id cơn bão from khu vực bị ảnh hưởng as t1 join bão as t2 on t1.id bão = t2.id cơn bão group by t2.id cơn bão order by count ( * ) desc
select t1.tên , t1.tốc độ tối đa  from bão as t1  join khu vực bị ảnh hưởng as t2 on t1.id cơn bão = t2.id bão  group by t2.id bão  order by count ( * ) desc  limit 1
select t1.tên , t1.tốc độ tối đa  from bão as t1  join khu vực bị ảnh hưởng as t2 on t1.id cơn bão = t2.id bão  group by t2.id bão  order by count ( * ) desc  limit 1
select tên from bão where id cơn bão not in (select id cơn bão from khu vực bị ảnh hưởng)
select tên from bão where id cơn bão not in (select id cơn bão from khu vực bị ảnh hưởng)
select t1.tên  from bão as t1  join khu vực bị ảnh hưởng as t2 on t1.id cơn bão = t2.id bão  group by t1.id cơn bão  having count ( * ) >= 2 and count ( * ) <= 10
select t1.tên  from bão as t1  join khu vực bị ảnh hưởng as t2 on t1.id cơn bão = t2.id bão  join khu vực as t3 on t2.id khu vực = t3.id khu vực  group by t1.id cơn bão  having count ( * ) >= 2 and count ( * ) >= 10
select t1.tên  from bão as t1  join khu vực bị ảnh hưởng as t2 on t1.id cơn bão = t2.id cơn bão  group by t1.id cơn bão  having count ( * ) >= 2
select t1.tên  from bão as t1  join khu vực bị ảnh hưởng as t2 on t1.id cơn bão = t2.id bão  group by t1.tên  having count ( * ) < 2
select t2.tên khu vực  from khu vực bị ảnh hưởng as t1  join bão as t2 on t1.id bão = t2.id cơn bão  join khu vực as t3 on t1.id khu vực = t3.id khu vực  where t2.số lượng người chết >= 10
select t1.tên khu vực  from khu vực as t1  join khu vực bị ảnh hưởng as t2 on t1.id khu vực = t2.id khu vực  join bão as t3 on t2.id bão = t3.id cơn bão  where t3.số lượng người chết >= 10
select t1.tên  from bão as t1  join khu vực bị ảnh hưởng as t2 on t1.id cơn bão = t2.id cơn bão  join khu vực as t3 on t2.id khu vực = t3.id khu vực  where t3.tên khu vực = Denmark
select t1.tên  from bão as t1  join khu vực bị ảnh hưởng as t2 on t1.id cơn bão = t2.id cơn bão  join khu vực as t3 on t3.id khu vực = t2.id khu vực  where t3.tên khu vực = Denmark
select t1.tên khu vực  from khu vực as t1  join khu vực bị ảnh hưởng as t2 on t1.id khu vực = t2.id khu vực  group by t2.id khu vực  having count ( * ) >= 2
select t1.tên khu vực  from khu vực as t1  join khu vực bị ảnh hưởng as t2  on t1.id khu vực = t2.id khu vực  group by t2.id khu vực  having count ( * ) >= 2
select t1.tên khu vực  from khu vực as t1  join khu vực bị ảnh hưởng as t2 on t1.id khu vực = t2.id khu vực  join bão as t3 on t2.id bão = t3.id cơn bão  where t3.số lượng người chết = ( select max ( số lượng người chết ) from bão )  group by t1.tên khu vực  order by count ( * ) desc
select t1.tên khu vực  from khu vực bị ảnh hưởng as t2  join khu vực as t1 on t2.id khu vực = t1.id khu vực  join bão as t3 on t2.id bão = t3.id cơn bão  group by t1.tên khu vực  order by sum(t3.số lượng người chết) desc  limit 1
select t1.tên  from bão as t1  join khu vực bị ảnh hưởng as t2 on t1.id cơn bão = t2.id bão  where t2.id khu vực in (select id khu vực from khu vực where tên khu vực = Afghanistan)  intersect  select t1.tên  from bão as t1  join khu vực bị ảnh hưởng as t2 on t1.id cơn bão = t2.id bão  where t2.id khu vực in (select id khu vực from khu vực where tên khu vực = Albania)
select t1.tên  from bão as t1  join khu vực bị ảnh hưởng as t2 on t1.id cơn bão = t2.id bão  join khu vực as t3 on t2.id khu vực = t3.id khu vực  where t3.tên khu vực = Afghanistan and t3.tên khu vực = Albania
select count ( * ) from danh sách group by khối lớp
select count ( * ) from danh sách
select họ from danh sách where phòng học = 111
select họ from danh sách where phòng học = 111
select tên, họ from danh sách where phòng học = 108
select tên from danh sách where phòng học = 108
select tên from danh sách where phòng học = 107
select distinct tên from danh sách where phòng học = 107
select phòng học, khối lớp from danh sách
select phòng học, khối lớp from danh sách
select khối lớp from danh sách where phòng học = 103
select khối lớp from danh sách where phòng học = 103 group by khối lớp
select khối lớp, count ( * ) from danh sách where phòng học = 105 group by khối lớp
select khối lớp from danh sách where phòng học = 105
select distinct phòng học from danh sách where khối lớp = 4
select distinct phòng học from danh sách where khối lớp = 4
select distinct phòng học from danh sách where khối lớp = 5
select phòng học from danh sách where khối lớp = 5
select t2.họ from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t1.khối lớp = 5
select họ from giáo viên where khối lớp = 5
select distinct t1.tên from giáo viên as t1 join danh sách as t2 on t1.phòng học = t2.phòng học where t2.khối lớp = 1
select t1.tên from giáo viên as t1 join danh sách as t2 on t1.phòng học = t2.phòng học where t2.khối lớp = 1
select tên from giáo viên where phòng học = 110
select t1.tên from giáo viên as t1 join danh sách as t2 on t1.phòng học = t2.phòng học where t2.phòng học = 110
select họ from giáo viên where phòng học = 109
select họ from giáo viên where phòng học = 109
select tên, họ from giáo viên
select tên, họ from giáo viên
select tên, họ from danh sách
select tên, họ from danh sách
select t1.tên , t1.họ  from danh sách as t1  join giáo viên as t2 on t1.phòng học = t2.phòng học  where t2.tên = OTHA and t2.họ = MOYER
select t1.tên , t1.họ  from danh sách as t1  join giáo viên as t2 on t1.phòng học = t2.phòng học  where t2.tên = OTHA and t2.họ = MOYER
select t1.tên , t1.họ from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t2.tên = Marrotte and t2.họ = Kirk
select t1.tên , t1.họ  from danh sách as t1  join giáo viên as t2 on t1.phòng học = t2.phòng học  where t2.tên = MARROTTE and t2.họ = KIRK
select t2.tên , t2.họ  from danh sách as t1  join giáo viên as t2  on t1.phòng học = t2.phòng học  where t1.tên = EVELINA and t1.họ = BROMLEY
select t2.tên , t2.họ  from danh sách as t1  join giáo viên as t2  on t1.phòng học = t2.phòng học  where t1.tên = EVELINA and t1.họ = BROMLEY
select t2.họ from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t1.tên = GELL and t1.họ = TAMI
select t2.họ from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t1.tên = GELL and t1.họ = TAMI
select count ( * ) from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t2.tên = LORIA and t2.họ = ONDERSMA
select count ( * ) from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t2.tên = LORIA and t2.họ = ONDERSMA
select count ( * ) from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t2.tên = KAWA and t2.họ = GORDON
select count ( * ) from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t2.tên = KAWA and t2.họ = GORDON
select count ( * ) from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t2.tên = TARRING and t2.họ = LEIA
select count ( * ) from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t2.tên = TARRING and t2.họ = LEIA
select count ( * ) from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t1.tên = CHRISSY and t1.họ = NABOZNY
select count ( * ) from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t1.tên = CHRISSY and t1.họ = NABOZNY
select count ( * ) from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t1.tên = Madlock and t1.họ = Ray
select count ( * ) from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t1.tên = MADLOCK and t1.họ = RAY
select tên , họ from danh sách where khối lớp = 1 and tên != OTHA and họ != MOYER
select họ from danh sách where phòng học not in (select phòng học from giáo viên where họ = OTHA and tên = MOYER)
select họ from danh sách where khối lớp = 3 except select họ from danh sách where tên = COVIN and họ = JEROME
select họ from danh sách where khối lớp = 3 except select họ from giáo viên where họ = COVIN and tên = JEROME
select khối lớp, phòng học, count ( * )  from danh sách  group by khối lớp
select khối lớp, phòng học, count ( * ) from danh sách group by khối lớp
select phòng học , count ( * ) from danh sách group by phòng học
select phòng học , count ( distinct khối lớp ) from danh sách group by phòng học
select phòng học from danh sách group by phòng học order by count ( * ) desc limit 1
select phòng học from danh sách group by phòng học order by count ( * ) desc limit 1
select phòng học, count ( * ) from danh sách group by phòng học
select count ( * ), phòng học from danh sách group by phòng học
select count ( * ), t2.phòng học  from danh sách as t1  join giáo viên as t2 on t1.phòng học = t2.phòng học  where t1.khối lớp = 0  group by t2.phòng học
select phòng học , count ( * ) from danh sách where khối lớp = 0 group by phòng học
select t2.phòng học, count ( * )  from danh sách as t1  join giáo viên as t2 on t1.phòng học = t2.phòng học  where t1.khối lớp = 4  group by t2.phòng học
select t1.phòng học, count ( * )  from danh sách as t1  join giáo viên as t2 on t1.phòng học = t2.phòng học  where t1.khối lớp = 4  group by t1.phòng học
select t1.tên , t1.họ  from giáo viên as t1  join danh sách as t2 on t1.phòng học = t2.phòng học  group by t1.phòng học  order by count ( * ) desc  limit 1
select t1.tên , t1.họ , count ( * )  from giáo viên as t1  join danh sách as t2 on t1.phòng học = t2.phòng học  group by t1.phòng học  order by count ( * ) desc  limit 1
select phòng học, count ( * ) from danh sách group by phòng học
select phòng học, count ( * ) from danh sách group by phòng học
select t1.tên khoá học from lượt đăng ký khoá học của sinh viên as t2  join khoá học as t1 on t2.id khoá học = t1.id khoá học  group by t2.id khoá học  order by count ( * ) desc  limit 1
select t1.tên khoá học from lượt đăng ký khoá học của sinh viên as t2  join khoá học as t1 on t2.id khoá học = t1.id khoá học  group by t2.id khoá học  order by count ( * ) desc  limit 1
select t1.id sinh viên  from lượt đăng ký khoá học của sinh viên as t1  join sinh viên as t2 on t1.id sinh viên = t2.id sinh viên  group by t1.id sinh viên  having count ( * ) > 0  order by count ( * ) desc  limit 1
select id sinh viên from lượt đăng ký khoá học của sinh viên group by id sinh viên having count ( * ) = ( select min( count( * ) ) from lượt đăng ký khoá học của sinh viên group by id sinh viên )
select t1.tên , t1.họ  from ứng cử viên as t2  join cá nhân as t1  on t2.id cá nhân = t1.id cá nhân
select t1.tên , t1.họ from ứng cử viên as t2 join cá nhân as t1 on t2.id cá nhân = t1.id cá nhân
select id sinh viên from lần tham dự khoá học của sinh viên except select id sinh viên from lần tham dự khoá học của sinh viên
select id sinh viên from sinh viên except select id sinh viên from lần tham dự khoá học của sinh viên
select distinct t1.id sinh viên  from lần tham dự khoá học của sinh viên as t2  join sinh viên as t1 on t2.id sinh viên = t1.id sinh viên  group by t1.id sinh viên  having count ( * ) > 0
select distinct t1.id sinh viên  from lần tham dự khoá học của sinh viên as t2  join sinh viên as t1 on t2.id sinh viên = t1.id sinh viên  group by t1.id sinh viên  having count ( * ) >= 1
select t1.id sinh viên, t2.tên khoá học  from sinh viên as t1  join lượt đăng ký khoá học của sinh viên as t2  on t1.id sinh viên = t2.id sinh viên  join khoá học as t3  on t2.id khoá học = t3.id khoá học
select t1.chi tiết sinh viên  from sinh viên as t1  join lượt đăng ký khoá học của sinh viên as t2  on t1.id sinh viên = t2.id sinh viên  order by t2.ngày đăng kí desc  limit 1
select t1.chi tiết sinh viên  from sinh viên as t1  join lượt đăng ký khoá học của sinh viên as t2  on t1.id sinh viên = t2.id sinh viên  order by t2.ngày đăng kí desc  limit 1
select count ( * )  from lần tham dự khoá học của sinh viên as t1  join khoá học as t2 on t1.id khoá học = t2.id khoá học  where t2.tên khoá học = English
select count(distinct t1.id sinh viên)  from lượt đăng ký khoá học của sinh viên as t1  join khoá học as t2 on t1.id khoá học = t2.id khoá học  where t2.tên khoá học = English
select count ( * ) from lần tham dự khoá học của sinh viên as t1 join sinh viên as t2 on t1.id sinh viên = t2.id sinh viên where t2.id sinh viên = 171
select count ( * )  from lần tham dự khoá học của sinh viên as t1  join sinh viên as t2 on t1.id sinh viên = t2.id sinh viên  where t2.id sinh viên = 171
select t1.id ứng cử viên  from ứng cử viên as t1  join cá nhân as t2 on t1.id cá nhân = t2.id cá nhân  where t2.địa chỉ email = stanley.monahan@example.org
select t1.id ứng cử viên  from ứng cử viên as t1  join cá nhân as t2 on t1.id cá nhân = t2.id cá nhân  where t2.địa chỉ email = stanley.monahan@example.org
select t1.id ứng cử viên  from lần tham dự khoá học của sinh viên as t2  join ứng cử viên as t1 on t2.id ứng cử viên = t1.id ứng cử viên  order by t2.ngày tham dự desc  limit 1
select t1.id ứng cử viên  from lần tham dự khoá học của sinh viên as t2  join ứng cử viên as t1 on t2.id ứng cử viên = t1.id ứng cử viên  order by t2.ngày đánh giá desc  limit 1
select t1.id sinh viên , count ( * )  from sinh viên as t1  join lượt đăng ký khoá học của sinh viên as t2  on t1.id sinh viên = t2.id sinh viên  group by t1.id sinh viên  order by count ( * ) desc  limit 1
select * from sinh viên where id sinh viên = (select id sinh viên from (select id sinh viên, count ( * ) as số lượng khoá học đăng ký from lượt đăng ký khoá học của sinh viên group by id sinh viên) as t1 order by số lượng khoá học đăng ký desc limit 1)
select id sinh viên, count ( * )  from lượt đăng ký khoá học của sinh viên  group by id sinh viên
select count ( * ), id sinh viên from sinh viên as t1 join lượt đăng ký khoá học của sinh viên as t2 on t1.id sinh viên = t2.id sinh viên group by t1.id sinh viên
select t1.tên khoá học, count ( * )  from khoá học as t1  join lượt đăng ký khoá học của sinh viên as t2  on t1.id khoá học = t2.id khoá học  group by t1.tên khoá học
select t1.id khoá học, t1.tên khoá học, count ( * )  from lượt đăng ký khoá học của sinh viên as t2  join khoá học as t1 on t2.id khoá học = t1.id khoá học  group by t2.id khoá học
select id ứng cử viên from đánh giá ứng cử viên where mã kết quả đánh giá = Đạt
select id ứng cử viên from đánh giá ứng cử viên where mã kết quả đánh giá = Đạt
select t1.số di động from ứng cử viên as t1 join đánh giá ứng cử viên as t2 on t1.id ứng cử viên = t2.id ứng cử viên where t2.mã kết quả đánh giá = Trượt
select t1.số di động from ứng cử viên as t1 join đánh giá ứng cử viên as t2 on t1.id ứng cử viên = t2.id ứng cử viên where t2.mã kết quả đánh giá = Trượt
select distinct id sinh viên from lượt đăng ký khoá học của sinh viên as t1 join khoá học as t2 on t1.id khoá học = t2.id khoá học where t2.id khoá học = 301
select id sinh viên from lượt đăng ký khoá học của sinh viên where id khoá học = 301
select t1.id sinh viên  from lần tham dự khoá học của sinh viên as t2  join khoá học as t1 on t2.id khoá học = t1.id khoá học  where t1.id khoá học = 301  order by t2.ngày tham dự desc  limit 1
select t1.id sinh viên  from lần tham dự khoá học của sinh viên as t2  join khoá học as t1 on t2.id khoá học = t1.id khoá học  where t1.id khoá học = 301  order by t2.ngày tham dự desc  limit 1
select distinct t2.thành phố from địa chỉ cá nhân as t1 join địa chỉ as t2 on t1.id địa chỉ = t2.id địa chỉ
select distinct thành phố from địa chỉ
select distinct t3.thành phố from sinh viên as t1 join địa chỉ cá nhân as t2 on t1.id cá nhân = t2.id cá nhân join địa chỉ as t3 on t2.id địa chỉ = t3.id địa chỉ group by t3.thành phố having count ( * ) > 1
select distinct t2.thành phố from địa chỉ cá nhân as t1 join địa chỉ as t2 on t1.id địa chỉ = t2.id địa chỉ join cá nhân as t3 on t1.id cá nhân = t3.id cá nhân
select tên khoá học from khoá học order by tên khoá học
select tên khoá học from khoá học order by tên khoá học
select tên from cá nhân order by tên
select tên from cá nhân order by tên
select distinct id sinh viên from lượt đăng ký khoá học của sinh viên union select distinct id sinh viên from lần tham dự khoá học của sinh viên
select distinct t1.id sinh viên  from lượt đăng ký khoá học của sinh viên as t1  join lần tham dự khoá học của sinh viên as t2  on t1.id sinh viên = t2.id sinh viên
select distinct id khoá học  from lần tham dự khoá học của sinh viên  where id sinh viên = 121
select t1.id khoá học  from lượt đăng ký khoá học của sinh viên as t1  join lần tham dự khoá học của sinh viên as t2  on t1.id khoá học = t2.id khoá học  where t1.id sinh viên = 121
select * from sinh viên  join lượt đăng ký khoá học của sinh viên on sinh viên.id sinh viên = lượt đăng ký khoá học của sinh viên.id sinh viên  except  select * from sinh viên  join lượt đăng ký khoá học của sinh viên on sinh viên.id sinh viên = lượt đăng ký khoá học của sinh viên.id sinh viên  join lần tham dự khoá học của sinh viên on lượt đăng ký khoá học của sinh viên.id khoá học = lần tham dự khoá học của sinh viên.id khoá học
select distinct t1.chi tiết sinh viên  from sinh viên as t1  join lượt đăng ký khoá học của sinh viên as t2  on t1.id sinh viên = t2.id sinh viên  except  select distinct t1.chi tiết sinh viên  from sinh viên as t1  join lượt đăng ký khoá học của sinh viên as t2  on t1.id sinh viên = t2.id sinh viên  join lần tham dự khoá học của sinh viên as t3  on t2.id sinh viên = t3.id sinh viên
select t1.id sinh viên  from lượt đăng ký khoá học của sinh viên as t1  join khoá học as t2 on t1.id khoá học = t2.id khoá học  where t2.tên khoá học = Statistics  order by t1.ngày đăng kí
select t1.id sinh viên  from lượt đăng ký khoá học của sinh viên as t1  join khoá học as t2 on t1.id khoá học = t2.id khoá học  where t2.tên khoá học = Statistics  order by t1.ngày đăng kí
select t1.id sinh viên  from lần tham dự khoá học của sinh viên as t2  join khoá học as t1 on t2.id khoá học = t1.id khoá học  where t1.tên khoá học = Statistics  order by t2.ngày tham dự
select t1.id sinh viên, t1.ngày tham dự  from lần tham dự khoá học của sinh viên as t1  join khoá học as t2 on t1.id khoá học = t2.id khoá học  where t2.tên khoá học = Statistics  order by t1.ngày tham dự
select count ( * ) from lượt nộp bài
select count ( * ) from lượt nộp bài
select tác giả from lượt nộp bài order by số điểm asc
select tác giả from lượt nộp bài order by số điểm asc
select t1.tác giả , t2.trường đại học  from lượt nộp bài as t1  join chấp thuận as t2  on t1.id lượt nộp bài = t2.id lượt nộp bài
select tác giả , trường đại học from lượt nộp bài
select tác giả from lượt nộp bài where trường đại học = Florida or trường đại học = Temple
select tác giả from lượt nộp bài where trường đại học = Florida union select tác giả from lượt nộp bài where trường đại học = Temple
select avg(số điểm) from lượt nộp bài
select avg(số điểm) from lượt nộp bài
select t1.tác giả from lượt nộp bài as t1 join chấp thuận as t2 on t1.id lượt nộp bài = t2.id lượt nộp bài order by t1.số điểm desc limit 1
select t1.tác giả from lượt nộp bài as t1 join chấp thuận as t2 on t1.id lượt nộp bài = t2.id lượt nộp bài order by t2.số điểm desc limit 1
select trường đại học, count ( * ) from lượt nộp bài group by trường đại học
select trường đại học, count ( * )  from lượt nộp bài as t1  join trường đại học as t2 on t1.trường đại học = t2.id trường đại học  group by t1.trường đại học
select trường đại học from lượt nộp bài group by trường đại học order by count ( * ) desc limit 1
select t1.trường đại học  from lượt nộp bài as t1  join chấp thuận as t2 on t1.id lượt nộp bài = t2.id lượt nộp bài  group by t1.trường đại học  order by sum(t2.số điểm) desc  limit 1
select t1.trường đại học  from lượt nộp bài as t1  join chấp thuận as t2 on t1.id lượt nộp bài = t2.id lượt nộp bài  where t1.số điểm > 90  group by t1.trường đại học  having count ( * ) > 1  intersect  select t1.trường đại học  from lượt nộp bài as t1  join chấp thuận as t2 on t1.id lượt nộp bài = t2.id lượt nộp bài  where t1.số điểm < 80  group by t1.trường đại học  having count ( * ) > 1
select t1.trường đại học  from lượt nộp bài as t1  join chấp thuận as t2 on t1.id lượt nộp bài = t2.id lượt nộp bài  where t1.số điểm > 90  intersect  select t1.trường đại học  from lượt nộp bài as t1  join chấp thuận as t2 on t1.id lượt nộp bài = t2.id lượt nộp bài  where t1.số điểm < 80
select t1.tác giả, t2.kết quả  from lượt nộp bài as t1  join chấp thuận as t2  on t1.id lượt nộp bài = t2.id lượt nộp bài
select t1.tác giả , t2.kết quả  from lượt nộp bài as t1  join chấp thuận as t2  on t1.id lượt nộp bài = t2.id lượt nộp bài
select t1.kết quả  from lượt nộp bài as t1  join chấp thuận as t2 on t1.id lượt nộp bài = t2.id lượt nộp bài  order by t1.số điểm desc  limit 1
select t1.kết quả from lượt nộp bài as t1 join chấp thuận as t2 on t1.id lượt nộp bài = t2.id lượt nộp bài order by t1.số điểm desc limit 1
select t1.tác giả , count ( * ) from lượt nộp bài as t1 join chấp thuận as t2 on t1.id lượt nộp bài = t2.id lượt nộp bài join hội thảo as t3 on t2.id hội thảo = t3.id hội thảo group by t1.tác giả
select t1.tác giả , count ( * )  from lượt nộp bài as t1  join chấp thuận as t2 on t1.id lượt nộp bài = t2.id lượt nộp bài  group by t1.tác giả
select distinct t1.tác giả from lượt nộp bài as t1 join chấp thuận as t2 on t1.id lượt nộp bài = t2.id lượt nộp bài group by t1.tác giả having count ( * ) > 1
select t1.tác giả from lượt nộp bài as t1 join chấp thuận as t2 on t1.id lượt nộp bài = t2.id lượt nộp bài group by t1.tác giả having count ( * ) > 1
select ngày , địa điểm from hội thảo order by địa điểm
select ngày, địa điểm from hội thảo order by địa điểm
select tác giả from lượt nộp bài except select tác giả from lượt nộp bài where id lượt nộp bài in ( select id lượt nộp bài from chấp thuận )
select tác giả from lượt nộp bài except select t1.tác giả from lượt nộp bài as t1 join chấp thuận as t2 on t1.id lượt nộp bài = t2.id lượt nộp bài
select t1.tên from doanh nghiệp as t1 join đánh giá as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t2.đánh giá xếp hạng > 4.5
select t1.tên  from doanh nghiệp as t1  join đánh giá as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  where t2.đánh giá xếp hạng = 3.5
select id người tiêu dùng from người tiêu dùng where tên = Michelle
select t1.tiểu bang  from doanh nghiệp as t1  join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  where t1.tên = Whataburger
select t1.thành phố  from doanh nghiệp as t1  join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  where t2.tên loại hình = MGM Steakhouse
select thành phố from doanh nghiệp where đánh giá xếp hạng < 1.5
select distinct t2.thành phố  from loại hình as t1  join doanh nghiệp as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  where t1.tên loại hình = Taj Mahal
select văn bản from đánh giá where đánh giá xếp hạng < 1
select t1.tên  from doanh nghiệp as t1  join đánh giá as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  where t2.đánh giá xếp hạng > 3.5
select t1.thành phố  from doanh nghiệp as t1  join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  where t2.tên loại hình = Restaurant and t1.tên = Taj Mahal
select t2.văn bản from đánh giá as t2 join người tiêu dùng as t1 on t2.id người tiêu dùng = t1.id người tiêu dùng where t1.tên = Niloofar
select t1.tên  from doanh nghiệp as t1  join đánh giá as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  where t2.id người tiêu dùng = Niloofar
select t1.tên  from doanh nghiệp as t1  join đánh giá as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  where t2.đánh giá xếp hạng = 5
select t3.văn bản  from đánh giá as t3  join doanh nghiệp as t2 on t3.id doanh nghiệp = t2.id doanh nghiệp  join người tiêu dùng as t1 on t3.id người tiêu dùng = t1.id người tiêu dùng  where t2.tên = Italian Restaurant and t1.tên = Michelle
select count ( * )  from doanh nghiệp as t1  join đánh giá as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  join loại hình as t3 on t2.id doanh nghiệp = t3.id doanh nghiệp  where t1.tên = Cafe Zinho and t3.tên loại hình = Restaurant and t1.tiểu bang = Texas
select t1.tên , t1.địa chỉ đầy đủ  from doanh nghiệp as t1  join đánh giá as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  where t1.tên = Italian and t2.đánh giá xếp hạng = 5
select t3.tên khu phố lân cận  from doanh nghiệp as t1  join khu vực lân cận as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  join loại hình as t3 on t1.id doanh nghiệp = t3.id doanh nghiệp  where t3.tên loại hình = Italian and t1.thành phố = Madison
select distinct t3.tên khu phố lân cận  from doanh nghiệp as t1  join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  join khu vực lân cận as t3 on t1.id doanh nghiệp = t3.id doanh nghiệp  where t2.tên loại hình = nhà hàng Ý and t1.số lượng đánh giá < 2.5 and t1.thành phố = Madison
select t1.tên  from doanh nghiệp as t1  join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  where t1.tiểu bang = Pennsylvania and t2.tên loại hình = restaurant
select t1.tên , t1.địa chỉ đầy đủ  from doanh nghiệp as t1  join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  where t2.tên loại hình = Restaurant and t1.địa chỉ đầy đủ like %Pennsylvania%
select t3.văn bản from đánh giá as t3 join doanh nghiệp as t2 on t3.id doanh nghiệp = t2.id doanh nghiệp join loại hình as t1 on t2.id doanh nghiệp = t1.id doanh nghiệp where t1.tên loại hình = chải chuốt cho vật nuôi and t2.số lượng đánh giá > 100
select t1.tên  from doanh nghiệp as t1  join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  where t1.thành phố = Los Angeles and t2.tên loại hình = Brewpub
select t1.tên  from doanh nghiệp as t1  join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  where t1.thành phố = Los Angeles and t2.tên loại hình = Brew Pub
select t1.tên  from doanh nghiệp as t1  join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  where t1.thành phố = Los Angeles and t2.tên loại hình = Brew Pub
select t3.tên from đánh giá as t1 join doanh nghiệp as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp join người tiêu dùng as t3 on t1.id người tiêu dùng = t3.id người tiêu dùng where t2.tên = Mesa Grill
select t1.địa chỉ đầy đủ  from doanh nghiệp as t1  join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  where t2.tên loại hình = Walmart and t1.thành phố = Los Angeles
select t1.id doanh nghiệp from doanh nghiệp as t1 join đánh giá as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t1.thành phố = Dallas and t2.id người tiêu dùng = Patrick
select t1.tên  from doanh nghiệp as t1  join đánh giá as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  where t1.thành phố = Dallas and t2.id người tiêu dùng = Patrick
select t1.tên  from doanh nghiệp as t1  join đánh giá as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  join người tiêu dùng as t3 on t2.id người tiêu dùng = t3.id người tiêu dùng  where t3.tên = Patrick
select t1.tên  from doanh nghiệp as t1  join đánh giá as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  where t2.đánh giá xếp hạng >= 3
select t3.id người tiêu dùng  from khoản tiền boa as t1  join doanh nghiệp as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  join người tiêu dùng as t3 on t1.id người tiêu dùng = t3.id người tiêu dùng  where t2.tên = Barrio Café and t1.năm = 2015
select t1.tên , t1.id doanh nghiệp  from doanh nghiệp as t1  join đánh giá as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  where t1.tiểu bang = Texas and t2.đánh giá xếp hạng < 2
select t1.id doanh nghiệp, t1.tên  from doanh nghiệp as t1  join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  where t2.tên loại hình = hải sản and t1.thành phố = Los Angeles
select t1.tên  from doanh nghiệp as t1  join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  where t2.tên loại hình = Seafood and t1.thành phố = Los Angeles
select t1.tên  from doanh nghiệp as t1  join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  where t2.tên loại hình = Restaurant and t1.thành phố = Los Angeles
select t2.văn bản  from đánh giá as t1  join người tiêu dùng as t2 on t1.id người tiêu dùng = t2.id người tiêu dùng  where t1.đánh giá xếp hạng > 4 and t2.tên = Patrick
select t1.tên , t1.địa chỉ đầy đủ  from doanh nghiệp as t1  join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  where t2.tên loại hình = Apple and t1.thành phố = Los Angeles
select t1.tên  from doanh nghiệp as t1  join đánh giá as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  where t1.thành phố = Dallas and t2.đánh giá xếp hạng > 4.5
select t3.tên khu phố lân cận  from doanh nghiệp as t1  join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  join khu vực lân cận as t3 on t2.id = t3.id doanh nghiệp  where t1.tên = Flat Top Grill
select t2.văn bản  from khoản tiền boa as t1  join doanh nghiệp as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  where t1.số lượt thích > 9 and t2.tên = Vintner Grill
select t2.văn bản  from đánh giá as t1  join doanh nghiệp as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  where t2.tên = Kabob Cung điện and t1.năm = 2014
select t1.tên  from người tiêu dùng as t1  join khoản tiền boa as t2 on t1.id người tiêu dùng = t2.id người tiêu dùng  join doanh nghiệp as t3 on t2.id doanh nghiệp = t3.id doanh nghiệp  where t3.thành phố = Dallas
select distinct t2.thành phố  from loại hình as t1  join doanh nghiệp as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  where t1.tên loại hình = restaurant and t2.tiểu bang = texas and t2.tên = MGM Steakhouse
select t3.tên  from khoản tiền boa as t1  join doanh nghiệp as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  join loại hình as t3 on t2.id doanh nghiệp = t3.id doanh nghiệp  where t3.tên loại hình = chải chuốt cho thú nuôi
select t3.văn bản  from khoản tiền boa as t3  join doanh nghiệp as t2 on t3.id doanh nghiệp = t2.id doanh nghiệp  join đánh giá as t1 on t3.id đánh giá = t1.id đánh giá  where t2.tên = Cafe Zinho and t2.tiểu bang = Texas
select t3.tên  from doanh nghiệp as t1  join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  join đánh giá as t3 on t1.id doanh nghiệp = t3.id doanh nghiệp  where t2.tên loại hình = Restaurant
select t1.văn bản  from khoản tiền boa as t1  join doanh nghiệp as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  join đánh giá as t3 on t1.id đánh giá = t3.id đánh giá  where t2.tên = Cafe Zinho and t3.năm = 2010 and t3.tiểu bang = Pennsylvania
select t1.tên from đánh giá as t2 join người tiêu dùng as t1 on t2.id người tiêu dùng = t1.id người tiêu dùng where t2.năm = 2010
select t1.văn bản from đánh giá as t1 join khoản tiền boa as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t1.năm = 2012
select văn bản from đánh giá where đánh giá xếp hạng = 2.5
select count ( * )  from doanh nghiệp as t1  join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  join khu vực lân cận as t3 on t1.id doanh nghiệp = t3.id doanh nghiệp  where t1.thành phố = Madison and t2.tên loại hình = Trò chơi trốn thoát
select count ( * )  from doanh nghiệp as t1  join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  join khu vực lân cận as t3 on t1.id doanh nghiệp = t3.id doanh nghiệp  where t1.thành phố = Madison and t2.tên loại hình = trò chơi trốn thoát
select count ( * )  from doanh nghiệp as t1  join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  join khu vực lân cận as t3 on t1.id doanh nghiệp = t3.id doanh nghiệp  where t1.thành phố = Madison and t2.tên loại hình = trò chơi trốn thoát and t3.tên khu phố lân cận = Madison
select count ( * )  from doanh nghiệp as t1  join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  join khu vực lân cận as t3 on t1.id doanh nghiệp = t3.id doanh nghiệp  where t2.tên loại hình = trò chơi trốn thoát and t3.tên khu phố lân cận = Madison
select count ( * )  from doanh nghiệp as t1  join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  join khu vực lân cận as t3 on t1.id doanh nghiệp = t3.id doanh nghiệp  where t2.tên loại hình = trò chơi trốn thoát and t3.tên khu phố lân cận = Madison
select count ( * )  from doanh nghiệp as t1  join đánh giá as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  where t2.đánh giá xếp hạng > 3.5
select sum(t1.số lượt đăng ký)  from lượt đăng ký as t1  join doanh nghiệp as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  where t2.tên = Mexican and t2.thành phố = Los Angeles
select sum(t2.số lượt đăng ký)  from doanh nghiệp as t1  join lượt đăng ký as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  where t1.tên = Mexican and t1.thành phố = Los Angeles and t2.ngày = Friday
select t1.ngày, sum(t2.số lượt đăng ký)  from doanh nghiệp as t1  join lượt đăng ký as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  where t1.tên = Mexican and t1.thành phố = Los Angeles  group by t1.ngày  order by t1.ngày
select t2.tiểu bang , sum ( t1.số lượt đăng ký )  from lượt đăng ký as t1  join doanh nghiệp as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  where t2.tên = Italian Delis and t2.thành phố = San Francisco and t1.ngày = Sunday  group by t2.tiểu bang
select count ( * )  from đánh giá as t1  join người tiêu dùng as t2 on t1.id người tiêu dùng = t2.id người tiêu dùng  where t2.tên = Niloofar and t1.năm = 2015
select avg(t2.đánh giá xếp hạng)  from đánh giá as t2  join người tiêu dùng as t1 on t2.id người tiêu dùng = t1.id người tiêu dùng  where t1.tên = Michelle
select count ( * )  from lượt đăng ký as t1  join doanh nghiệp as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  where t2.tên = Cafe Zinho and t1.ngày = Friday
select count(distinct t3.id người tiêu dùng)  from doanh nghiệp as t1  join đánh giá as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  join người tiêu dùng as t3 on t2.id người tiêu dùng = t3.id người tiêu dùng  where t1.tên = Sushi Too and t1.thành phố = Pittsburgh
select count ( * )  from doanh nghiệp as t1  join đánh giá as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  where t1.thành phố = Pittsburgh and t2.đánh giá xếp hạng > 4.5
select count ( * )  from đánh giá as t1  join khoản tiền boa as t2 on t1.id đánh giá = t2.id đánh giá  where t2.năm = 2015
select sum(t2.số lượt thích)  from khoản tiền boa as t1  join đánh giá as t2 on t1.id đánh giá = t2.id đánh giá  where t1.id người tiêu dùng = Niloofar
select sum(t2.số lượt thích)  from khoản tiền boa as t1  join đánh giá as t2 on t1.id đánh giá = t2.id đánh giá  join doanh nghiệp as t3 on t2.id doanh nghiệp = t3.id doanh nghiệp  where t3.tên = Cafe Zinho
select sum(t2.số lượt thích)  from khoản tiền boa as t1  join đánh giá as t2 on t1.id đánh giá = t2.id đánh giá  join doanh nghiệp as t3 on t3.id doanh nghiệp = t1.id doanh nghiệp  where t2.id người tiêu dùng = Niloofar and t3.tên = Cafe Zinho
select count ( * )  from đánh giá as t1  join khoản tiền boa as t2 on t1.id đánh giá = t2.id đánh giá  where t2.id người tiêu dùng = (select id người tiêu dùng from người tiêu dùng where tên = Michelle) and t2.năm = 2010
select count ( * )  from đánh giá as t1  join khoản tiền boa as t2 on t1.id đánh giá = t2.id đánh giá  where t2.id người tiêu dùng = (select id người tiêu dùng from người tiêu dùng where tên = Michelle) and t2.năm = 2010
select count ( * )  from đánh giá as t1  join khoản tiền boa as t2 on t1.id đánh giá = t2.id đánh giá  join người tiêu dùng as t3 on t2.id người tiêu dùng = t3.id người tiêu dùng  where t3.tên = Michelle and t2.tháng = April
select count ( * ) from doanh nghiệp as t1 join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t1.tiểu bang = Texas and t2.tên loại hình = Restaurant
select count ( * )  from doanh nghiệp as t1  join đánh giá as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  where t1.thành phố = Dallas and t2.đánh giá xếp hạng > 3.5
select count ( * )  from doanh nghiệp as t1  join đánh giá as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  where t1.thành phố = Dallas and t2.đánh giá xếp hạng > 3.5
select count ( * )  from doanh nghiệp as t1  join đánh giá as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  join người tiêu dùng as t3 on t2.id người tiêu dùng = t3.id người tiêu dùng  where t1.tên = Texas de Brazil and t1.thành phố = Dallas and t2.văn bản like %Texas de Brazil%
select count ( * )  from đánh giá as t1  join doanh nghiệp as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  where t2.tên = Bistro Di Napoli and t1.năm = 2015
select count ( * )  from doanh nghiệp as t1  join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  where t1.tiểu bang = Dallas and t1.thành phố = Hazelwood and t2.tên loại hình = Restaurant
select count ( * )  from doanh nghiệp as t1  join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  where t1.tên = Starbucks and t1.thành phố = Dallas and t1.tiểu bang = Texas
select count ( * ) from đánh giá as t1 join doanh nghiệp as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t2.tên = Acacia Cafe
select t2.ngày , avg(t1.số lượt đăng ký)  from lượt đăng ký as t1  join doanh nghiệp as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  where t2.tên = Barrio Cafe  group by t2.ngày  order by t2.ngày
select count ( * )  from doanh nghiệp as t1  join khu vực lân cận as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  where t2.tên khu phố lân cận = Stone Meadows and t1.thành phố = Madison
select count ( * ) from đánh giá as t1 join người tiêu dùng as t2 on t1.id người tiêu dùng = t2.id người tiêu dùng where t2.tên = Adrienne
select count ( * )  from đánh giá as t1  join người tiêu dùng as t2 on t1.id người tiêu dùng = t2.id người tiêu dùng  where t2.tên = Michelle and t1.tháng = 3 and t1.năm = 2014
select count(distinct t1.id doanh nghiệp)  from đánh giá as t1  join người tiêu dùng as t2 on t1.id người tiêu dùng = t2.id người tiêu dùng  where t2.tên = Michelle and t1.năm = 2010
select count ( * )  from doanh nghiệp as t1  join đánh giá as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  join người tiêu dùng as t3 on t2.id người tiêu dùng = t3.id người tiêu dùng  where t1.thành phố = San Diego and t2.năm = 2010 and t3.tên = Christine
select count ( * )  from doanh nghiệp as t1  join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  where t1.tên = Target and t1.thành phố = Los Angeles
select count(distinct t3.id người tiêu dùng)  from doanh nghiệp as t1  join đánh giá as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  join người tiêu dùng as t3 on t2.id người tiêu dùng = t3.id người tiêu dùng  where t1.tên = Ai-len Vineyard and t1.thành phố = Dallas
select văn bản from đánh giá where năm = 2014
select count ( * )  from đánh giá as t1  join doanh nghiệp as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  where t2.tên = Vintner Grill and t1.năm = 2010
select count(t3.đánh giá xếp hạng)  from doanh nghiệp as t1  join khu vực lân cận as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  join đánh giá as t3 on t1.id doanh nghiệp = t3.id doanh nghiệp  where t2.tên khu phố lân cận = South Summerlin
select count ( * ) from người tiêu dùng where tên = Michelle
select count ( * ) from doanh nghiệp as t1 join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t2.tên loại hình = Restaurant
select count(distinct t1.thành phố)  from doanh nghiệp as t1  join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  where t2.tên loại hình = Restaurant and t1.tên = Panda Express
select count ( * )  from đánh giá as t1  join người tiêu dùng as t2 on t1.id người tiêu dùng = t2.id người tiêu dùng  where t2.tên = Michelle
select sum(t3.số lượt đăng ký)  from doanh nghiệp as t1  join khu vực lân cận as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  join lượt đăng ký as t3 on t1.id doanh nghiệp = t3.id doanh nghiệp  where t2.tên khu phố lân cận = Brighton Heights
select số lượt thích from đánh giá where tháng = 3
select t2.tháng , count ( t1.id đánh giá ) from khoản tiền boa as t1 join đánh giá as t2 on t1.id đánh giá = t2.id đánh giá group by t2.tháng
select count ( * )  from doanh nghiệp as t1  join khu vực lân cận as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  where t1.thành phố = Madison and t1.đánh giá xếp hạng = 5
select t1.tên  from doanh nghiệp as t1  join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  where t2.tên loại hình = restaurant and t1.tiểu bang = texas
select t1.id doanh nghiệp, t1.tên, t2.số lượt thích  from doanh nghiệp as t1  join lượt đăng ký as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  group by t1.id doanh nghiệp  order by t2.số lượt thích desc  limit 1
select t1.tên khu phố lân cận  from doanh nghiệp as t2  join khu vực lân cận as t1  on t2.id doanh nghiệp = t1.id doanh nghiệp  where t2.thành phố = Madison  group by t1.tên khu phố lân cận  order by count ( * ) desc  limit 1
select t1.tên  from doanh nghiệp as t1  join đánh giá as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  where t2.đánh giá xếp hạng >= 3.5 and t1.địa chỉ đầy đủ like %Mexico% and t1.thành phố = Dallas
select id doanh nghiệp, tên, đánh giá xếp hạng  from doanh nghiệp  where tên = Mexican and đánh giá xếp hạng >= 3.5 and thành phố = Dallas
select id doanh nghiệp, tên  from doanh nghiệp  where thành phố = Dallas and tiểu bang = Texas and tên loại hình = Car Service
select t3.tên  from doanh nghiệp as t3  join khu vực lân cận as t2 on t3.id doanh nghiệp = t2.id doanh nghiệp  join loại hình as t1 on t3.id doanh nghiệp = t1.id doanh nghiệp  where t2.tên khu phố lân cận = Meadowood and t3.thành phố = Madison and t1.tên loại hình = Italian
select t1.tên  from doanh nghiệp as t1  join đánh giá as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  where t1.thành phố = Los Angeles and t2.số lượng đánh giá >= 30  group by t1.id doanh nghiệp  having avg(t2.đánh giá xếp hạng) > 3
select count ( * )  from doanh nghiệp as t1  join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  where t2.tên loại hình = restaurant and t1.thành phố = Edinburgh
select t2.tên  from đánh giá as t1  join người tiêu dùng as t2 on t1.id người tiêu dùng = t2.id người tiêu dùng  group by t1.id người tiêu dùng  having avg(t1.đánh giá xếp hạng) < 3
select t1.id doanh nghiệp, t1.tên, t1.số lượng đánh giá  from doanh nghiệp as t1  join đánh giá as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  where t2.tháng = 4  order by t1.số lượng đánh giá desc  limit 1
select t1.tên  from doanh nghiệp as t1  join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp  group by t2.id doanh nghiệp  order by count ( * ) desc  limit 1