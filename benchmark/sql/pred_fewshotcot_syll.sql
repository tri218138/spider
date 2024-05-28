select t1.id tài sản , t1.chi tiết tài sản from tài sản as t1 join bộ phận của tài sản as t2 on t1.id tài sản = t2.id tài sản group by t1.id tài sản having count (*) = 2 intersect select t1.id tài sản , t1.chi tiết tài sản from tài sản as t1 join bộ phận của tài sản as t2 on t1.id tài sản = t2.id tài sản join nhật ký lỗi as t3 on t1.id tài sản = t3.id tài sản group by t1.id tài sản having count (*) < 2
select t1.id hợp đồng bảo trì , count (*) from hợp đồng bảo trì as t1 join tài sản as t2 on t1.id hợp đồng bảo trì = t2.id hợp đồng bảo trì group by t1.id hợp đồng bảo trì
select t1.id công ty , count (*) from công ty bên thứ ba as t1 join tài sản as t2 on t1.id công ty = t2.id công ty cung cấp group by t1.id công ty
select t1.tên công ty , t1.id công ty from công ty bên thứ ba as t1 join hợp đồng bảo trì as t2 on t1.id công ty = t2.id công ty group by t1.id công ty having count (*) >= 2
select t1.tên nhân viên , t1.id nhân viên from nhân viên as t1 join nhật ký lỗi as t2 on t1.id nhân viên = t2.được ghi lại bởi nhân viên có id where tên kỹ sư ghé thăm = null
select t1.id kỹ sư ghé thăm , t1.id kỹ sư , t1.thời gian chuyến thăm bắt đầu from chuyến thăm của kỹ sư as t1 join nhân viên as t2 on t1.id nhân viên liên lạc = t2.id nhân viên order by count (*) desc limit 1
select t1.tên bộ phận , t1.id bộ phận from bộ phận as t1 join lỗi bộ phận as t2 on t1.id bộ phận = t2.id bộ phận group by t1.id bộ phận having count (*) > 2
select t1.tên , t1.họ , t1.những chi tiết khác , t2.mô tả về kỹ năng from kỹ sư bảo trì as t1 join kỹ năng của kỹ sư as t2 on t1.id kỹ sư = t2.id kỹ sư
select t1.mô tả lỗi , t2.mô tả về kỹ năng from lỗi bộ phận as t1 join kỹ năng cần để sửa chữa as t2 on t1.id bộ phận bị lỗi = t2.id bộ phận bị lỗi
select t2.tên bộ phận , count (*) from bộ phận của tài sản as t1 join bộ phận as t2 on t1.id bộ phận = t2.id bộ phận group by t1.id bộ phận
select mô tả về lỗi , tình trạng lỗi from nhật ký lỗi
select t1.id mục nhập của nhật ký lỗi , count (*) from nhật ký lỗi as t1 join chuyến thăm của kỹ sư as t2 on t1.id mục nhập của nhật ký lỗi = t2.id mục nhập của nhật ký lỗi group by t1.id mục nhập của nhật ký lỗi order by count (*) desc limit 1
select distinct tên from kỹ sư bảo trì
select distinct tình trạng lỗi from nhật ký lỗi
select tên , họ from kỹ sư bảo trì except select t1.tên , t1.họ from kỹ sư bảo trì as t1 join chuyến thăm của kỹ sư as t2 on t1.id kỹ sư = t2.id kỹ sư ghé thăm
select id tài sản , chi tiết tài sản , thương hiệu tài sản , mẫu mã tài sản from tài sản
select ngày mua tài sản from tài sản order by ngày mua tài sản asc limit 1
select t1.id bộ phận bị lỗi , t2.tên bộ phận from lỗi bộ phận as t1 join bộ phận as t2 on t1.id bộ phận = t2.id bộ phận group by t1.id bộ phận bị lỗi order by count (*) desc limit 1
select t1.tên bộ phận from bộ phận as t1 join lỗi bộ phận as t2 on t1.id bộ phận = t2.id bộ phận group by t1.tên bộ phận order by count (*) asc limit 1
select
select t1.tên nhân viên , t2.tên , t2.họ from nhân viên as t1 join kỹ sư bảo trì as t2 on t1.id nhân viên = t2.id kỹ sư ghé thăm
select t1.id mục nhập của nhật ký lỗi , t1.mô tả về lỗi , t1.thời gian mục nhập của nhật ký lỗi from nhật ký lỗi as t1 join lỗi bộ phận as t2 on t1.id mục nhập của nhật ký lỗi = t2.id mục nhập của nhật ký lỗi group by t1.id mục nhập của nhật ký lỗi order by count (*) desc limit 1
select t1.id kỹ năng , t2.mô tả về kỹ năng from kỹ năng cần để sửa chữa as t1 join kỹ năng as t2 on t1.id kỹ năng = t2.id kỹ năng group by t1.id kỹ năng order by count (*) desc limit 1
select distinct mẫu mã tài sản from tài sản
select thương hiệu tài sản , mẫu mã tài sản , chi tiết khác về tài sản from tài sản order by ngày thanh lý tài sản asc
select id bộ phận , số tiền phải trả from bộ phận group by id bộ phận order by số tiền phải trả asc limit 1
select t1.tên công ty from công ty bên thứ ba as t1 join hợp đồng bảo trì as t2 on t1.id công ty = t2.id công ty order by t2.ngày bắt đầu hợp đồng limit 1
select t1.tên công ty from công ty bên thứ ba as t1 join hợp đồng bảo trì as t2 on t1.id công ty = t2.id công ty order by t2.ngày kết thúc hợp đồng desc limit 1
select giới tính from nhân viên group by giới tính order by count (*) desc limit 1
select t1.tên nhân viên , count (*) from nhân viên as t1 join chuyến thăm của kỹ sư as t2 on t1.id nhân viên = t2.id nhân viên liên lạc group by t1.tên nhân viên
select mẫu mã tài sản from tài sản where id tài sản not in (select id tài sản from nhật ký lỗi)
select count (*) from sách
select tác giả from sách order by tác giả asc
select tiêu đề from sách order by số lượng phát hành asc
select tiêu đề from sách where tác giả != elaine lee
select tiêu đề , số lượng phát hành from sách
select ngày xuất bản from ấn phẩm order by giá bán desc
select distinct nhà xuất bản from ấn phẩm where giá bán > 5000000
select nhà xuất bản from ấn phẩm order by giá bán desc limit 1
select ngày xuất bản from ấn phẩm order by giá bán asc limit 3
select tiêu đề , ngày xuất bản from sách
select t1.tác giả from sách as t1 join ấn phẩm as t2 on t1.id sách = t2.id sách where t2.giá bán > 4000000
select tiêu đề from sách order by giá bán desc
select nhà xuất bản from ấn phẩm group by nhà xuất bản having count (*) > 1
select nhà xuất bản , count (*) from ấn phẩm group by nhà xuất bản
select ngày xuất bản from ấn phẩm group by ngày xuất bản order by count (*) desc limit 1
select tác giả from sách group by tác giả having count (*) > 1
select tiêu đề from sách where id sách not in (select id sách from ấn phẩm)
select nhà xuất bản from ấn phẩm where giá bán > 10000000 intersect select nhà xuất bản from ấn phẩm where giá bán < 5000000
select count (distinct ngày xuất bản) from ấn phẩm
select count (distinct ngày xuất bản) from ấn phẩm
select giá bán from ấn phẩm where nhà xuất bản = person or nhà xuất bản = wiley
select tên bộ phận from bộ phận order by ngày bắt đầu quản lý
select tên người phụ thuộc from người phụ thuộc where mối quan hệ = married
select count (*) from người phụ thuộc where giới tính = female
select t1.tên bộ phận from bộ phận as t1 join địa điểm của bộ phận as t2 on t1.mã số bộ phận = t2.mã số bộ phận where t2.địa điểm bộ phận = houston
select tên , họ from nhân viên where lương > 30000
select count (*) , giới tính from nhân viên where lương < 50000 group by giới tính
select tên , họ , địa chỉ from nhân viên order by ngày sinh asc
select count (*) from giáo viên
select count (*) from giáo viên
select tên from giáo viên order by tuổi asc
select tên from giáo viên order by tuổi asc
select tuổi , quê quán from giáo viên
select tuổi , quê quán from giáo viên
select tên from giáo viên where quê quán != little lever town
select tên from giáo viên where quê quán != little lever town
select tên from giáo viên where tuổi = 32 or tuổi = 33
select tên from giáo viên where tuổi = 32 or tuổi = 33
select quê quán from giáo viên order by tuổi limit 1
select quê quán from giáo viên order by tuổi limit 1
select quê quán , count (*) from giáo viên group by quê quán
select quê quán , count (*) from giáo viên group by quê quán
select quê quán from giáo viên group by quê quán order by count (*) desc limit 1
select quê quán from giáo viên group by quê quán order by count (*) desc limit 1
select quê quán from giáo viên group by quê quán having count (*) >= 2
select quê quán from giáo viên group by quê quán having count (*) >= 2
select t2.tên , t3.khoá học from sắp xếp khoá học as t1 join giáo viên as t2 on t1.id giáo viên = t2.id giáo viên join khoá học as t3 on t1.id khoá học = t3.id khoá học
select t2.tên , t3.khoá học from sắp xếp khoá học as t1 join giáo viên as t2 on t1.id giáo viên = t2.id giáo viên join khoá học as t3 on t1.id khoá học = t3.id khoá học
select t2.tên , t3.khoá học from sắp xếp khoá học as t1 join giáo viên as t2 on t1.id giáo viên = t2.id giáo viên join khoá học as t3 on t1.id khoá học = t3.id khoá học order by t2.tên
select t2.tên , t3.khoá học from sắp xếp khoá học as t1 join giáo viên as t2 on t1.id giáo viên = t2.id giáo viên join khoá học as t3 on t1.id khoá học = t3.id khoá học order by t2.tên
select t2.tên from khoá học as t1 join giáo viên as t2 on t1.id khoá học = t2.id giáo viên where t1.khoá học = math
select t2.tên from khoá học as t1 join giáo viên as t2 on t1.id khoá học = t2.id giáo viên where t1.khoá học = math
select t2.tên , count (*) from sắp xếp khoá học as t1 join giáo viên as t2 on t1.id giáo viên = t2.id giáo viên group by t1.id giáo viên
select t2.tên , count (*) from sắp xếp khoá học as t1 join giáo viên as t2 on t1.id giáo viên = t2.id giáo viên group by t1.id giáo viên
select t2.tên from sắp xếp khoá học as t1 join giáo viên as t2 on t1.id giáo viên = t2.id giáo viên group by t1.id giáo viên having count (*) >= 2
select t2.tên from sắp xếp khoá học as t1 join giáo viên as t2 on t1.id giáo viên = t2.id giáo viên group by t1.id giáo viên having count (*) >= 2
select tên from giáo viên where id giáo viên not in (select id giáo viên from sắp xếp khoá học)
select tên from giáo viên where id giáo viên not in (select id giáo viên from sắp xếp khoá học)
select count (*) from thành viên
select tên from thành viên order by tên asc
select tên , quốc gia from thành viên
select tên from thành viên where quốc gia = united states or quốc gia = canada
select quốc gia , count (*) from thành viên group by quốc gia
select quốc gia from thành viên group by quốc gia order by count (*) desc limit 1
select quốc gia from thành viên group by quốc gia having count (*) > 2
select tên lãnh đạo , địa điểm trường đại học from trường đại học
select t1.tên , t2.tên from thành viên as t1 join trường đại học as t2 on t1.id đại học = t2.id đại học
select t1.tên , t2.địa điểm trường đại học from thành viên as t1 join trường đại học as t2 on t1.id đại học = t2.id đại học order by t1.tên
select t2.tên lãnh đạo from trường đại học as t1 join thành viên as t2 on t1.id đại học = t2.id đại học where t2.quốc gia = canada
select t1.tên , t2.chủ đề trang trí from thành viên as t1 join vòng as t2 on t1.id thành viên = t2.id thành viên
select t1.tên from thành viên as t1 join vòng as t2 on t1.id thành viên = t2.id thành viên where t2.xếp hạng từng vòng > 3
select tên from thành viên order by xếp hạng từng vòng
select tên from thành viên where id thành viên not in (select id thành viên from vòng)
select count (*) from cuộc bầu cử
select số lượng phiếu bầu from cuộc bầu cử order by số lượng phiếu bầu desc
select ngày , tỉ lệ phiếu bầu from cuộc bầu cử
select min (tỉ lệ phiếu bầu) , max (tỉ lệ phiếu bầu) from cuộc bầu cử
select tên , đảng from đại diện
select tên from đại diện where đảng != republican
select tuổi thọ from đại diện where tiểu bang = new york or tiểu bang = indiana
select t1.tên , t2.ngày from đại diện as t1 join cuộc bầu cử as t2 on t1.id đại diện = t2.id đại diện
select t2.tên from cuộc bầu cử as t1 join đại diện as t2 on t1.id đại diện = t2.id đại diện where t1.số lượng phiếu bầu > 10000
select t2.tên from cuộc bầu cử as t1 join đại diện as t2 on t1.id đại diện = t2.id đại diện order by t1.số lượng phiếu bầu desc
select t2.đảng from cuộc bầu cử as t1 join đại diện as t2 on t1.id đại diện = t2.id đại diện order by t1.số lượng phiếu bầu limit 1
select t1.tuổi thọ from đại diện as t1 join cuộc bầu cử as t2 on t1.id đại diện = t2.id đại diện order by t2.tỉ lệ phiếu bầu desc
select avg (t1.số lượng phiếu bầu) from cuộc bầu cử as t1 join đại diện as t2 on t1.id đại diện = t2.id đại diện where t2.đảng = republican
select đảng , count (*) from đại diện group by đảng
select đảng from đại diện group by đảng order by count (*) desc limit 1
select đảng from đại diện group by đảng having count (*) >= 3
select tiểu bang from đại diện group by tiểu bang having count (*) >= 2
select tên from đại diện where id đại diện not in (select id đại diện from cuộc bầu cử)
select đảng from đại diện where tiểu bang = new york intersect select đảng from đại diện where tiểu bang = pennsylvania
select count (distinct đảng) from đại diện
select count (*) from quốc gia
select count (*) from quốc gia
select tên quốc gia , thủ đô from quốc gia
select tên quốc gia , thủ đô from quốc gia
select ngôn ngữ bản địa chính thức from quốc gia where tên quốc gia like %english%
select ngôn ngữ bản địa chính thức from quốc gia where tên quốc gia like %english%
select distinct vị trí from trận đấu trong mùa giải
select distinct vị trí from trận đấu trong mùa giải
select cầu thủ from cầu thủ where trường đại học = ucla
select cầu thủ from cầu thủ where trường đại học = ucla
select distinct vị trí from trận đấu trong mùa giải where trường đại học = ucla or trường đại học = duke
select distinct vị trí from trận đấu trong mùa giải where trường đại học = ucla or trường đại học = duke
select mã số tuyển chọn tân binh , mùa tuyển chọn from trận đấu trong mùa giải where vị trí = guard
select mã số tuyển chọn tân binh , mùa tuyển chọn from trận đấu trong mùa giải where vị trí = goalie
select count (distinct đội) from trận đấu trong mùa giải
select count (distinct đội) from trận đấu trong mùa giải
select cầu thủ , số năm đã chơi from cầu thủ
select distinct cầu thủ , số năm đã chơi from cầu thủ
select tên from đội
select tên from đội
select t1.mùa giải , t1.cầu thủ , t2.tên quốc gia from trận đấu trong mùa giải as t1 join quốc gia as t2 on t1.quốc gia = t2.id quốc gia
select
select t1.cầu thủ from cầu thủ as t1 join trận đấu trong mùa giải as t2 on t1.id cầu thủ = t2.cầu thủ join quốc gia as t3 on t2.quốc gia = t3.id quốc gia where t3.tên quốc gia = indonesia
select t1.cầu thủ from cầu thủ as t1 join trận đấu trong mùa giải as t2 on t1.id cầu thủ = t2.cầu thủ join quốc gia as t3 on t3.id quốc gia = t2.quốc gia where t3.tên quốc gia = indonesia
select distinct t1.vị trí from trận đấu trong mùa giải as t1 join quốc gia as t2 on t1.quốc gia = t2.id quốc gia where t2.tên quốc gia = dublin
select distinct t2.vị trí from quốc gia as t1 join trận đấu trong mùa giải as t2 on t1.id quốc gia = t2.quốc gia where t1.tên quốc gia = ireland and t1.thủ đô = dublin
select t1.ngôn ngữ bản địa chính thức from quốc gia as t1 join trận đấu trong mùa giải as t2 on t1.id quốc gia = t2.quốc gia join đội as t3 on t2.đội = t3.id đội where t3.tên = maryland or t3.tên = duke
select t1.ngôn ngữ bản địa chính thức from quốc gia as t1 join trận đấu trong mùa giải as t2 on t1.id quốc gia = t2.quốc gia where t2.trường đại học = maryland or t2.trường đại học = duke
select count (distinct t2.ngôn ngữ bản địa chính thức) from trận đấu trong mùa giải as t1 join quốc gia as t2 on t1.quốc gia = t2.id quốc gia where t1.vị trí = goalie
select count (distinct t2.ngôn ngữ bản địa chính thức) from trận đấu trong mùa giải as t1 join quốc gia as t2 on t1.quốc gia = t2.id quốc gia where t1.vị trí = goalie
select t1.mùa giải , t1.cầu thủ , t2.tên from trận đấu trong mùa giải as t1 join đội as t2 on t1.đội = t2.id đội
select distinct t1.cầu thủ , t2.mùa giải , t2.đội from cầu thủ as t1 join trận đấu trong mùa giải as t2 on t1.id cầu thủ = t2.cầu thủ
select t2.vị trí from cầu thủ as t1 join trận đấu trong mùa giải as t2 on t1.id cầu thủ = t2.cầu thủ where t1.cầu thủ = ryley goldner
select vị trí from trận đấu trong mùa giải as t1 join đội as t2 on t1.đội = t2.id đội where t2.tên = ryley goldner
select count (distinct trường đại học) from đội as t1 join trận đấu trong mùa giải as t2 on t1.id đội = t2.đội where t1.tên = columbus crew
select count (distinct trường đại học) from trận đấu trong mùa giải as t1 join đội as t2 on t1.đội = t2.id đội where t2.tên = columbus crew
select t1.cầu thủ , t1.số năm đã chơi from cầu thủ as t1 join đội as t2 on t1.đội = t2.id đội where t2.tên = columbus crew
select cầu thủ , số năm đã chơi from cầu thủ as t1 join đội as t2 on t1.đội = t2.id đội where t2.tên = columbus crew
select vị trí , count (*) from trận đấu trong mùa giải group by vị trí
select count (*) , vị trí from trận đấu trong mùa giải group by vị trí
select t1.tên quốc gia , count (*) from quốc gia as t1 join trận đấu trong mùa giải as t2 on t1.id quốc gia = t2.quốc gia group by t1.tên quốc gia
select t1.tên quốc gia , count (*) from quốc gia as t1 join trận đấu trong mùa giải as t2 on t1.id quốc gia = t2.quốc gia group by t1.tên quốc gia
select cầu thủ from trận đấu trong mùa giải order by trường đại học asc
select cầu thủ from trận đấu trong mùa giải order by trường đại học asc
select vị trí from trận đấu trong mùa giải group by vị trí order by count (*) desc limit 1
select vị trí from trận đấu trong mùa giải group by vị trí order by count (*) desc limit 1
select trường đại học , count (*) from trận đấu trong mùa giải group by trường đại học order by count (*) desc limit 3
select trường đại học from cầu thủ group by trường đại học order by count (*) desc limit 3
select trường đại học from cầu thủ group by trường đại học having count (*) >= 2
select trường đại học from cầu thủ group by trường đại học having count (*) >= 2
select trường đại học from cầu thủ group by trường đại học having count (*) >= 2 order by trường đại học desc
select trường đại học from cầu thủ group by trường đại học having count (*) >= 2 order by trường đại học desc
select tên from đội where id đội not in (select đội from trận đấu trong mùa giải)
select tên from đội where id đội not in (select đội from trận đấu trong mùa giải)
select t1.tên quốc gia from quốc gia as t1 join trận đấu trong mùa giải as t2 on t1.id quốc gia = t2.quốc gia join cầu thủ as t3 on t2.cầu thủ = t3.id cầu thủ where t2.vị trí = striker intersect select t1.tên quốc gia from quốc gia as t1 join trận đấu trong mùa giải as t2 on t1.id quốc gia = t2.quốc gia join cầu thủ as t3 on t2.cầu thủ = t3.id cầu thủ where t2.vị trí = goalie
select t1.tên quốc gia from quốc gia as t1 join trận đấu trong mùa giải as t2 on t1.id quốc gia = t2.quốc gia join cầu thủ as t3 on t2.cầu thủ = t3.id cầu thủ where t2.vị trí = striker intersect select t1.tên quốc gia from quốc gia as t1 join trận đấu trong mùa giải as t2 on t1.id quốc gia = t2.quốc gia join cầu thủ as t3 on t2.cầu thủ = t3.id cầu thủ where t2.vị trí = goalie
select trường đại học from trận đấu trong mùa giải where vị trí = goalie intersect select trường đại học from trận đấu trong mùa giải where vị trí = goalie
select trường đại học from cầu thủ where vị trí = guard intersect select trường đại học from cầu thủ where vị trí = guard
select count (*) from tội phạm
select ngày from tội phạm order by số người bị giết desc
select số người bị thương from tội phạm order by số người bị thương asc
select avg (số người bị thương) from tội phạm
select địa điểm from tội phạm group by địa điểm order by sum (số người bị giết) desc limit 1
select tên from cá nhân order by chiều cao asc
select t1.tên from cá nhân as t1 join tội phạm as t2 on t1.id cá nhân = t2.id cá nhân
select t1.tên from cá nhân as t1 join tội phạm as t2 on t1.id cá nhân = t2.id cá nhân where t2.quốc gia != china
select t1.tên from cá nhân as t1 join tội phạm as t2 on t1.id cá nhân = t2.id cá nhân order by t1.cân nặng desc limit 1
select sum (t2.số người bị giết) from cá nhân as t1 join tội phạm as t2 on t1.id cá nhân = t2.id cá nhân where t1.chiều cao > 1.84
select t1.tên from cá nhân as t1 join tội phạm as t2 on t1.id cá nhân = t2.id cá nhân where t2.quốc gia = china or t2.quốc gia = japan
select t1.chiều cao from cá nhân as t1 join tội phạm as t2 on t1.id cá nhân = t2.id cá nhân order by t2.số người bị thương desc
select quốc gia , count (*) from tội phạm group by quốc gia
select quốc gia from tội phạm group by quốc gia order by count (*) desc limit 1
select quốc gia from tội phạm group by quốc gia having count (*) >= 2
select t1.tên from cá nhân as t1 join tội phạm as t2 on t1.id cá nhân = t2.id cá nhân order by t2.năm desc
select tên from cá nhân where id cá nhân not in (select id cá nhân from tội phạm)
select quốc gia from tội phạm group by quốc gia having sum (số người bị thương) > 50 intersect select quốc gia from tội phạm group by quốc gia having sum (số người bị thương) < 20
select count (distinct địa điểm) from tội phạm
select t1.ngày from tội phạm as t1 join cá nhân as t2 on t1.id cá nhân = t2.id cá nhân order by t2.chiều cao desc limit 1
select max (năm) from tội phạm
select chính quyền địa phương , dịch vụ from nhà ga
select số hiệu tàu , tên from tàu hoả order by thời gian
select thời gian , số hiệu tàu from tàu hoả where điểm đến = chennai order by thời gian
select count (*) from tàu hoả where tên like %express%
select số hiệu tàu , thời gian from tàu hoả where điểm khởi hành = chennai and điểm đến = guruvayur
select điểm khởi hành , count (*) from tàu hoả group by điểm khởi hành
select t2.tên from lộ trình as t1 join tàu hoả as t2 on t1.id tàu = t2.id join nhà ga as t3 on t1.id nhà ga = t3.id group by t2.tên order by count (*) desc limit 1
select count (*) , t1.tên mạng lưới , t1.dịch vụ from nhà ga as t1 join lộ trình as t2 on t1.id = t2.id nhà ga group by t1.id
select ngày trong tuần , avg (nhiệt độ cao) from thời tiết hàng tuần group by ngày trong tuần
select avg (t2.lượng mưa) , max (t2.nhiệt độ thấp) , min (t2.nhiệt độ cao) from nhà ga as t1 join thời tiết hàng tuần as t2 on t1.id = t2.id nhà ga where t1.tên mạng lưới = amersham
select t1.tên , t1.thời gian from tàu hoả as t1 join lộ trình as t2 on t1.id = t2.id tàu join nhà ga as t3 on t2.id nhà ga = t3.id where t3.chính quyền địa phương = chiltern
select count (distinct dịch vụ) from nhà ga
select t2.id , t2.chính quyền địa phương from thời tiết hàng tuần as t1 join nhà ga as t2 on t1.id nhà ga = t2.id group by t1.id nhà ga order by avg (nhiệt độ cao) desc limit 1
select t2.id , t2.chính quyền địa phương from thời tiết hàng tuần as t1 join nhà ga as t2 on t1.id nhà ga = t2.id group by t1.id nhà ga having max (t1.lượng mưa) > 50
select min (tốc độ gió mph) , min (nhiệt độ thấp) from thời tiết hàng tuần
select điểm khởi hành from tàu hoả group by điểm khởi hành having count (*) > 1
select count (*) from nhà thờ where ngày mở cửa < 1850
select tên , ngày mở cửa , được tổ chức bởi from nhà thờ
select tên from nhà thờ order by ngày mở cửa desc
select năm mở cửa from nhà thờ group by năm mở cửa having count (*) >= 2
select tên , được tổ chức bởi from nhà thờ where ngày mở cửa between 1830 and 1840
select năm , count (*) from nhà thờ group by năm
select tên , ngày mở cửa , năm from nhà thờ order by ngày mở cửa desc limit 3
select count (*) from cá nhân where là nam hay nữ = female and tuổi > 30
select quốc gia from cá nhân where tuổi > 30 intersect select quốc gia from cá nhân where tuổi < 25
select min (tuổi) , max (tuổi) , avg (tuổi) from cá nhân
select tên , quốc gia from cá nhân where tuổi < (select avg (tuổi) from cá nhân)
select t1.tên , t2.tên from cá nhân as t1 join cá nhân as t2 on t1.id cá nhân = t3.id nam and t2.id cá nhân = t3.id nữ and t3.năm > 2014
select tên , tuổi from cá nhân where là nam hay nữ = male and id cá nhân not in (select id nam from lễ cưới)
select tên from nhà thờ except select tên from lễ cưới where năm = 2015
select t2.tên from lễ cưới as t1 join nhà thờ as t2 on t1.id nhà thờ = t2.id nhà thờ group by t1.id nhà thờ having count (*) >= 2
select t1.tên from cá nhân as t1 join lễ cưới as t2 on t1.id cá nhân = t2.id nữ where t1.quốc gia = canada and t2.năm = 2016
select count (*) from lễ cưới where năm = 2016
select t3.tên from lễ cưới as t1 join nhà thờ as t2 on t1.id nhà thờ = t2.id nhà thờ join cá nhân as t3 on t1.id nam = t3.id cá nhân where t3.tuổi > 30
select quốc gia , count (*) from cá nhân group by quốc gia
select count (*) from nhà thờ as t1 join lễ cưới as t2 on t1.id nhà thờ = t2.id nhà thờ where t2.năm = 2016
select count (*) from giảng viên
select count (*) from giảng viên
select distinct ngạch from giảng viên
select distinct ngạch from giảng viên
select distinct toà nhà from giảng viên
select distinct toà nhà from giảng viên where toà nhà like %office%
select tên , họ , ngạch from giảng viên
select tên , họ , ngạch from giảng viên
select tên , họ , số điện thoại from giảng viên where giới tính = f
select tên , họ , số điện thoại from giảng viên where giới tính = f
select id giảng viên from giảng viên where giới tính = m
select id giảng viên from giảng viên where giới tính = m
select count (*) from giảng viên where ngạch = professor and giới tính = f
select count (*) from giảng viên where ngạch = professor and giới tính = female
select số điện thoại , số phòng , toà nhà from giảng viên where tên = prince and họ = jerry
select số phòng , toà nhà , số điện thoại from giảng viên where tên = prince and họ = jerry
select count (*) from giảng viên where toà nhà = neb
select count (*) from giảng viên where toà nhà = neb
select tên , họ from giảng viên
select tên , họ from giảng viên
select toà nhà , count (*) from giảng viên group by toà nhà
select toà nhà , count (*) from giảng viên group by toà nhà
select toà nhà from giảng viên group by toà nhà order by count (*) desc limit 1
select toà nhà from giảng viên group by toà nhà order by count (*) desc limit 1
select toà nhà from giảng viên group by toà nhà having count (*) >= 10
select toà nhà from giảng viên group by toà nhà having count (*) >= 10
select ngạch , count (*) from giảng viên group by ngạch
select ngạch , count (*) from giảng viên group by ngạch
select ngạch , count (*) from giảng viên where giới tính = m group by ngạch union select ngạch , count (*) from giảng viên where giới tính = f group by ngạch
select ngạch , count (*) from giảng viên where giới tính = m group by ngạch
select ngạch from giảng viên group by ngạch order by count (*) limit 1
select ngạch from giảng viên group by ngạch order by count (*) limit 1
select count (*) , giới tính from giảng viên where ngạch = professor group by giới tính
select count (*) from giảng viên where ngạch = assistant professor and giới tính = m
select t2.tên , t2.họ from sinh viên as t1 join giảng viên as t2 on t1.cố vấn = t2.id giảng viên where t1.họ = smith and t1.tên = linda
select t2.tên , t2.họ from sinh viên as t1 join giảng viên as t2 on t1.cố vấn = t2.id giảng viên where t1.họ = smith and t1.tên = linda
select id sinh viên from sinh viên where cố vấn in (select id giảng viên from giảng viên where ngạch = professor)
select t1.id sinh viên from sinh viên as t1 join giảng viên as t2 on t1.cố vấn = t2.id giảng viên where t2.ngạch = professor
select tên , họ from sinh viên where cố vấn = (select id sinh viên from sinh viên where tên = michael and họ = goodrich)
select t1.tên , t1.họ from sinh viên as t1 join sinh viên as t2 on t1.id sinh viên = t2.cố vấn where t2.họ = goodrich and t2.tên = michael
select count (*) , t1.id giảng viên from giảng viên as t1 join sinh viên as t2 on t1.id giảng viên = t2.cố vấn group by t1.id giảng viên
select t1.id giảng viên , count (*) from giảng viên tham gia vào as t1 join giảng viên as t2 on t1.id giảng viên = t2.id giảng viên group by t1.id giảng viên
select ngạch , count (*) from giảng viên group by ngạch
select count (*) , t2.ngạch from sinh viên as t1 join giảng viên as t2 on t1.cố vấn = t2.id giảng viên group by t2.ngạch
select t1.tên , t1.họ from giảng viên as t1 join sinh viên as t2 on t1.id giảng viên = t2.cố vấn group by t2.cố vấn order by count (*) desc limit 1
select t2.tên , t2.họ from sinh viên as t1 join giảng viên as t2 on t1.cố vấn = t2.id giảng viên group by t1.cố vấn order by count (*) desc limit 1
select t1.id giảng viên from giảng viên tham gia vào as t1 join giảng viên as t2 on t1.id giảng viên = t2.id giảng viên join sinh viên as t3 on t1.id sinh viên = t3.cố vấn group by t1.id giảng viên having count (*) >= 2
select t1.id giảng viên from giảng viên tham gia vào as t1 join giảng viên as t2 on t1.id giảng viên = t2.id giảng viên join sinh viên as t3 on t3.cố vấn = t2.id giảng viên group by t2.id giảng viên having count (*) >= 2
select id giảng viên from giảng viên except select cố vấn from sinh viên
select id giảng viên from giảng viên except select cố vấn from sinh viên
select tên hoạt động from hoạt động
select tên hoạt động from hoạt động
select count (*) from hoạt động
select count (*) from hoạt động
select count (distinct id giảng viên) from giảng viên tham gia vào
select count (distinct id giảng viên) from giảng viên tham gia vào
select id giảng viên from giảng viên except select id giảng viên from giảng viên tham gia vào
select id giảng viên from giảng viên except select id giảng viên from giảng viên tham gia vào
select id giảng viên from giảng viên tham gia vào intersect select cố vấn from sinh viên
select id giảng viên from giảng viên except select cố vấn from sinh viên
select count (*) from giảng viên tham gia vào as t1 join giảng viên as t2 on t1.id giảng viên = t2.id giảng viên join hoạt động as t3 on t1.id hoạt động = t3.id hoạt động where t2.họ = giuliano and t2.tên = mark
select count (*) from giảng viên tham gia vào as t1 join giảng viên as t2 on t1.id giảng viên = t2.id giảng viên join hoạt động as t3 on t1.id hoạt động = t3.id hoạt động where t2.họ = giuliano and t2.tên = mark
select t3.tên hoạt động from giảng viên as t1 join giảng viên tham gia vào as t2 on t1.id giảng viên = t2.id giảng viên join hoạt động as t3 on t2.id hoạt động = t3.id hoạt động where t1.tên = mark and t1.họ = giuliano
select t3.tên hoạt động from giảng viên tham gia vào as t1 join giảng viên as t2 on t1.id giảng viên = t2.id giảng viên join hoạt động as t3 on t1.id hoạt động = t3.id hoạt động where t2.tên = mark and t2.họ = giuliano
select t2.tên , t2.họ , count (*) from giảng viên tham gia vào as t1 join giảng viên as t2 on t1.id giảng viên = t2.id giảng viên group by t2.id giảng viên
select t2.tên , t2.họ , count (*) from giảng viên tham gia vào as t1 join giảng viên as t2 on t1.id giảng viên = t2.id giảng viên join hoạt động as t3 on t1.id hoạt động = t3.id hoạt động group by t2.tên , t2.họ
select t2.tên hoạt động , count (*) from giảng viên tham gia vào as t1 join hoạt động as t2 on t1.id hoạt động = t2.id hoạt động group by t1.id hoạt động
select t2.tên hoạt động , count (*) from giảng viên tham gia vào as t1 join hoạt động as t2 on t1.id hoạt động = t2.id hoạt động group by t1.id hoạt động
select t2.tên , t2.họ from giảng viên tham gia vào as t1 join giảng viên as t2 on t1.id giảng viên = t2.id giảng viên group by t1.id giảng viên order by count (*) desc limit 1
select t2.tên , t2.họ from giảng viên tham gia vào as t1 join giảng viên as t2 on t1.id giảng viên = t2.id giảng viên group by t1.id giảng viên order by count (*) desc limit 1
select t1.tên hoạt động from hoạt động as t1 join giảng viên tham gia vào as t2 on t1.id hoạt động = t2.id hoạt động group by t1.tên hoạt động order by count (*) desc limit 1
select t1.tên hoạt động from hoạt động as t1 join giảng viên tham gia vào as t2 on t1.id hoạt động = t2.id hoạt động group by t2.id hoạt động order by count (*) desc limit 1
select id sinh viên from sinh viên except select id sinh viên from tham gia vào
select id sinh viên from sinh viên except select id sinh viên from tham gia vào
select id sinh viên from sinh viên where tuổi < 20 intersect select id sinh viên from tham gia vào
select id sinh viên from sinh viên where tuổi < 20 intersect select id sinh viên from tham gia vào
select t1.tên , t1.họ from sinh viên as t1 join tham gia in as t2 on t1.id sinh viên = t2.id sinh viên group by t1.id sinh viên order by count (*) desc limit 1
select t1.tên , t1.họ from sinh viên as t1 join tham gia in as t2 on t1.id sinh viên = t2.id sinh viên group by t1.id sinh viên order by count (*) desc limit 1
select t1.tên hoạt động from hoạt động as t1 join tham gia vào as t2 on t1.id hoạt động = t2.id hoạt động group by t2.id hoạt động order by count (*) desc limit 1
select t1.tên hoạt động from hoạt động as t1 join tham gia vào as t2 on t1.id hoạt động = t2.id hoạt động group by t2.id hoạt động order by count (*) desc limit 1
select t2.tên from giảng viên tham gia vào as t1 join giảng viên as t2 on t1.id giảng viên = t2.id giảng viên join hoạt động as t3 on t1.id hoạt động = t3.id hoạt động where t3.tên hoạt động = surfing or t3.tên hoạt động = kayaking
select t2.tên from giảng viên tham gia vào as t1 join giảng viên as t2 on t1.id giảng viên = t2.id giảng viên join hoạt động as t3 on t1.id hoạt động = t3.id hoạt động where t3.tên hoạt động = surfing or t3.tên hoạt động = kayaking
select tên from giảng viên except select t1.tên from giảng viên as t1 join giảng viên tham gia vào as t2 on t1.id giảng viên = t2.id giảng viên join hoạt động as t3 on t2.id hoạt động = t3.id hoạt động where t3.tên hoạt động = surfing intersect select t1.tên from giảng viên as t1 join giảng viên tham gia vào as t2 on t1.id giảng viên = t2.id giảng viên join hoạt động as t3 on t2.id hoạt động = t3.id hoạt động where t3.tên hoạt động = kayaking
select tên from giảng viên except select t1.tên from giảng viên as t1 join giảng viên tham gia vào as t2 on t1.id giảng viên = t2.id giảng viên join hoạt động as t3 on t2.id hoạt động = t3.id hoạt động where t3.tên hoạt động = surfing intersect select t1.tên from giảng viên as t1 join giảng viên tham gia vào as t2 on t1.id giảng viên = t2.id giảng viên join hoạt động as t3 on t2.id hoạt động = t3.id hoạt động where t3.tên hoạt động = kayaking
select t2.tên from giảng viên tham gia vào as t1 join giảng viên as t2 on t1.id giảng viên = t2.id giảng viên join hoạt động as t3 on t1.id hoạt động = t3.id hoạt động where t3.tên hoạt động = rowing intersect select t2.tên from giảng viên tham gia vào as t1 join giảng viên as t2 on t1.id giảng viên = t2.id giảng viên join hoạt động as t3 on t1.id hoạt động = t3.id hoạt động where t3.tên hoạt động = kayaking
select t1.tên from giảng viên as t1 join giảng viên tham gia vào as t2 on t1.id giảng viên = t2.id giảng viên join hoạt động as t3 on t2.id hoạt động = t3.id hoạt động where t3.tên hoạt động = rowing intersect select t1.tên from giảng viên as t1 join giảng viên tham gia vào as t2 on t1.id giảng viên = t2.id giảng viên join hoạt động as t3 on t2.id hoạt động = t3.id hoạt động where t3.tên hoạt động = kayaking
select id sinh viên from tham gia in hoạt động as t1 join hoạt động as t2 on t1.id hoạt động = t2.id hoạt động where t2.tên hoạt động = surfing intersect select id sinh viên from tham gia in hoạt động as t1 join hoạt động as t2 on t1.id hoạt động = t2.id hoạt động where t2.tên hoạt động = kayaking
select t1.id sinh viên from tham gia vào as t1 join hoạt động as t2 on t1.id hoạt động = t2.id hoạt động where t2.tên hoạt động = rowing intersect select t1.id sinh viên from tham gia vào as t1 join hoạt động as t2 on t1.id hoạt động = t2.id hoạt động where t2.tên hoạt động = kayaking
select count (*) from người luyện thể hình
select tổng from người luyện thể hình order by tổng asc
select cử giật , cử đẩy from người luyện thể hình order by cử giật
select avg (cử giật) from người luyện thể hình
select cử đẩy from người luyện thể hình order by tổng desc limit 1
select ngày sinh from cá nhân order by chiều cao asc
select t2.tên from người luyện thể hình as t1 join cá nhân as t2 on t1.id cá nhân = t2.id cá nhân
select t2.tên from người luyện thể hình as t1 join cá nhân as t2 on t1.id cá nhân = t2.id cá nhân where t1.tổng > 300
select t2.tên from người luyện thể hình as t1 join cá nhân as t2 on t1.id cá nhân = t2.id cá nhân order by t2.cân nặng desc limit 1
select t2.ngày sinh , t2.nơi sinh from người luyện thể hình as t1 join cá nhân as t2 on t1.id cá nhân = t2.id cá nhân where t1.tổng = (select max (tổng) from người luyện thể hình)
select t2.chiều cao from người luyện thể hình as t1 join cá nhân as t2 on t1.id cá nhân = t2.id cá nhân where t1.tổng < 315
select avg (tổng) from người luyện thể hình as t1 join cá nhân as t2 on t1.id cá nhân = t2.id cá nhân where t2.chiều cao > 200
select t2.tên from người luyện thể hình as t1 join cá nhân as t2 on t1.id cá nhân = t2.id cá nhân order by tổng desc
select nơi sinh , count (*) from cá nhân group by nơi sinh
select nơi sinh from cá nhân group by nơi sinh order by count (*) desc limit 1
select nơi sinh from cá nhân group by nơi sinh having count (*) >= 2
select chiều cao , cân nặng from cá nhân order by chiều cao desc
select * from người luyện thể hình
select tên , nơi sinh from cá nhân except select t2.tên , t2.nơi sinh from người luyện thể hình as t1 join cá nhân as t2 on t1.id cá nhân = t2.id cá nhân
select count (distinct nơi sinh) from cá nhân
select count (*) from cá nhân where id cá nhân not in (select id cá nhân from người luyện thể hình)
select
select t2.tổng from cá nhân as t1 join người luyện thể hình as t2 on t1.id cá nhân = t2.id cá nhân where t1.ngày sinh like 1%
select min (cử giật) from người luyện thể hình
select count (*) from ứng cử viên
select count (*) from ứng cử viên
select nguồn thăm dò ý kiến from ứng cử viên group by nguồn thăm dò ý kiến order by count (*) desc limit 1
select nguồn thăm dò ý kiến from ứng cử viên group by nguồn thăm dò ý kiến order by count (*) desc limit 1
select tỷ lệ ủng hộ from ứng cử viên order by tỷ lệ ủng hộ desc limit 3
select tỷ lệ ủng hộ from ứng cử viên order by tỷ lệ ủng hộ desc limit 3
select id ứng cử viên from ứng cử viên order by tỷ lệ phản đối limit 1
select id ứng cử viên from ứng cử viên order by tỷ lệ phản đối limit 1
select tỷ lệ ủng hộ , tỷ lệ xem xét , tỷ lệ phản đối from ứng cử viên order by tỷ lệ không chắc chắn asc
select tỷ lệ ủng hộ , tỷ lệ xem xét , tỷ lệ phản đối from ứng cử viên order by tỷ lệ không chắc chắn asc
select nguồn thăm dò ý kiến from ứng cử viên group by nguồn thăm dò ý kiến order by max (tỷ lệ phản đối) desc limit 1
select nguồn thăm dò ý kiến from ứng cử viên order by tỷ lệ phản đối desc limit 1
select tên from cá nhân order by ngày sinh
select tên from cá nhân order by ngày sinh
select avg (chiều cao) , avg (cân nặng) from cá nhân where giới tính = m
select avg (chiều cao) , avg (cân nặng) from cá nhân where giới tính = male
select tên from cá nhân where chiều cao > 200 or chiều cao < 190
select tên from cá nhân where chiều cao > 200 or chiều cao < 190
select avg (cân nặng) , min (cân nặng) , giới tính from cá nhân group by giới tính
select avg (cân nặng) , min (cân nặng) , giới tính from cá nhân group by giới tính
select t1.tên , t1.giới tính from cá nhân as t1 join ứng cử viên as t2 on t1.id cá nhân = t2.id cá nhân order by t2.tỷ lệ ủng hộ desc limit 1
select t1.tên , t1.giới tính from cá nhân as t1 join ứng cử viên as t2 on t1.id cá nhân = t2.id cá nhân order by t2.tỷ lệ ủng hộ desc limit 1
select t1.tên , t1.giới tính from cá nhân as t1 join ứng cử viên as t2 on t1.id cá nhân = t2.id cá nhân order by t2.tỷ lệ phản đối limit 1
select t1.tên , t1.giới tính , min (t2.tỷ lệ phản đối) from cá nhân as t1 join ứng cử viên as t2 on t1.id cá nhân = t2.id cá nhân group by t1.giới tính
select giới tính from cá nhân group by giới tính order by avg (tỷ lệ không chắc chắn) desc limit 1
select t1.giới tính from cá nhân as t1 join ứng cử viên as t2 on t1.id cá nhân = t2.id cá nhân group by t1.giới tính order by avg (t2.tỷ lệ không chắc chắn) desc limit 1
select tên from cá nhân where id cá nhân not in (select id cá nhân from ứng cử viên)
select tên from cá nhân where id cá nhân not in (select id cá nhân from ứng cử viên)
select t1.tên from cá nhân as t1 join ứng cử viên as t2 on t1.id cá nhân = t2.id cá nhân where t2.tỷ lệ ủng hộ < t2.tỷ lệ phản đối
select t1.tên from cá nhân as t1 join ứng cử viên as t2 on t1.id cá nhân = t2.id cá nhân where t2.tỷ lệ ủng hộ < t2.tỷ lệ phản đối
select count (*) , giới tính from cá nhân where cân nặng > 85 group by giới tính
select count (*) , giới tính from cá nhân where cân nặng > 85 group by giới tính
select max (tỷ lệ ủng hộ) , min (tỷ lệ xem xét) , min (tỷ lệ phản đối) from ứng cử viên
select max (tỷ lệ ủng hộ) , min (tỷ lệ xem xét) , min (tỷ lệ phản đối) from ứng cử viên
select tên from cá nhân where giới tính = f order by tên
select t2.tên from ứng cử viên as t1 join cá nhân as t2 on t1.id cá nhân = t2.id cá nhân where t2.giới tính = female order by t2.tên
select tên from cá nhân where chiều cao < (select avg (chiều cao) from cá nhân)
select tên from cá nhân where chiều cao < (select avg (chiều cao) from cá nhân)
select * from cá nhân
select * from cá nhân
select thành phố chủ nhà from thành phố chủ nhà where năm = (select max (năm) from thành phố chủ nhà)
select id thành phố chủ nhà from thành phố chủ nhà order by năm desc limit 1
select id trận đấu from trận đấu where giải đấu = 1994 fifa world cup qualification
select id trận đấu from trận đấu where giải đấu = 1994 fifa world cup qualifying
select distinct t1.thành phố chủ nhà from thành phố chủ nhà as t1 join trận đấu as t2 on t1.id trận đấu = t2.id trận đấu where t2.năm > 2010
select t2.thành phố chủ nhà from trận đấu as t1 join thành phố chủ nhà as t2 on t1.id trận đấu = t2.id trận đấu where t2.năm > 2010
select t2.thành phố from thành phố chủ nhà as t1 join thành phố as t2 on t1.thành phố chủ nhà = t2.id thành phố group by t1.thành phố chủ nhà order by count (*) desc limit 1
select t2.thành phố from thành phố chủ nhà as t1 join thành phố as t2 on t1.thành phố chủ nhà = t2.id thành phố group by t1.thành phố chủ nhà order by count (*) desc limit 1
select t2.địa điểm from thành phố as t1 join trận đấu as t2 on t1.id thành phố = t2.id thành phố where t1.thành phố = gangto (south korea) and t2.giải đấu = 1994 fifa world cup qualifying
select t2.địa điểm from trận đấu as t1 join thành phố as t2 on t1.id trận đấu = t2.id thành phố where t1.giải đấu = 1994 fifa world cup qualifying and t2.thành phố = south korea
select tháng một from nhiệt độ as t1 join thành phố as t2 on t1.id thành phố = t2.id thành phố where t2.thành phố = beijing
select t1.tháng một from nhiệt độ as t1 join thành phố as t2 on t1.id thành phố = t2.id thành phố where t2.thành phố = beijing
select t1.năm from thành phố chủ nhà as t1 join thành phố as t2 on t1.thành phố chủ nhà = t2.id thành phố join trận đấu as t3 on t1.id trận đấu = t3.id trận đấu where t2.thành phố = taiwan(taipei) group by t1.năm having count (*) = 1
select distinct năm from thành phố chủ nhà where thành phố chủ nhà = thái châu(chiết giang)
select thành phố from thành phố order by dân số khu vực desc limit 3
select thành phố from thành phố order by dân số khu vực desc limit 3
select thành phố , gdp from thành phố order by gdp asc limit 1
select thành phố , gdp from thành phố order by gdp asc limit 1
select t2.thành phố from nhiệt độ as t1 join thành phố as t2 on t1.id thành phố = t2.id thành phố where t1.tháng hai = (select max (tháng hai) from nhiệt độ)
select t2.thành phố from nhiệt độ as t1 join thành phố as t2 on t1.id thành phố = t2.id thành phố where t1.tháng hai = (select max (tháng hai) from nhiệt độ)
select t1.thành phố from thành phố as t1 join nhiệt độ as t2 on t1.id thành phố = t2.id thành phố where t2.tháng 3 < t2.tháng 7 or t2.tháng 3 > t2.tháng 10
select t2.tháng ba , t2.tháng sáu , t2.tháng mười , t2.tháng mười một from nhiệt độ as t2 join thành phố as t1 on t2.id thành phố = t1.id thành phố where t2.tháng ba < t2.tháng sáu or t2.tháng ba > t2.tháng mười một
select t1.thành phố from thành phố as t1 join thành phố chủ nhà as t2 on t1.id thành phố = t2.id trận đấu join nhiệt độ as t3 on t1.id thành phố = t3.id thành phố where t3.tháng ba < t3.tháng sáu
select t1.tháng ba , t1.tháng sáu , t2.thành phố chủ nhà from nhiệt độ as t1 join thành phố chủ nhà as t2 on t1.id thành phố = t2.id trận đấu where t1.tháng ba < t1.tháng sáu
select t2.thành phố from nhiệt độ as t1 join thành phố as t2 on t1.id thành phố = t2.id thành phố where t1.tháng 3 < t1.tháng 12 except select t3.thành phố chủ nhà from thành phố chủ nhà as t2 join thành phố as t3 on t2.id thành phố = t3.id thành phố
select t2.thành phố from nhiệt độ as t1 join thành phố as t2 on t1.id thành phố = t2.id thành phố where t1.tháng 3 < t1.tháng 12 except select t3.thành phố from thành phố chủ nhà as t2 join thành phố as t3 on t2.id thành phố = t3.id thành phố
select t1.thành phố from thành phố as t1 join nhiệt độ as t2 on t1.id thành phố = t2.id thành phố where t2.tháng hai > t2.tháng sáu union select t1.thành phố from thành phố as t1 join thành phố chủ nhà as t2 on t1.id thành phố = t2.id trận đấu where t2.thành phố chủ nhà = 1
select t2.tháng hai , t1.tháng sáu , t1.id thành phố from nhiệt độ as t1 join thành phố as t2 on t1.id thành phố = t2.id thành phố where t1.tháng hai > t1.tháng sáu union select t1.id thành phố , t2.tháng hai , t2.tháng sáu from thành phố chủ nhà as t1 join thành phố as t2 on t1.id thành phố = t2.id thành phố where t2.tháng hai > t2.tháng sáu
select thành phố from thành phố where dân số khu vực > 10000000
select thành phố from thành phố where dân số khu vực > 10000000
select thành phố from thành phố where dân số khu vực > 8000000 or dân số khu vực < 5000000
select thành phố from thành phố where dân số khu vực > 8000000 or dân số khu vực < 5000000
select count (*) , giải đấu from trận đấu group by giải đấu
select giải đấu , count (*) from trận đấu group by giải đấu
select địa điểm from trận đấu order by ngày desc
select địa điểm from trận đấu order by ngày desc
select gdp from thành phố order by dân số khu vực desc limit 1
select gdp from thành phố order by dân số khu vực desc limit 1
select t1.gdp , t1.dân số khu vực from thành phố as t1 join thành phố chủ nhà as t2 on t1.id thành phố = t2.thành phố chủ nhà group by t2.thành phố chủ nhà having count (*) > 1
select t1.gdp , t1.dân số khu vực from thành phố as t1 join thành phố chủ nhà as t2 on t1.id thành phố = t2.thành phố chủ nhà group by t2.thành phố chủ nhà having count (*) > 1
select count (*) from giáo sư as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa where t2.tên khoa = math
select count (*) from giáo sư as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa where t2.tên khoa = math
select count (distinct mã số nhân viên) from lớp học as t1 join khoá học as t2 on t1.mã khoá học = t2.mã khoá học where t2.mã khoá học = acct-211
select count (distinct mã số nhân viên) from lớp học where mã khoá học = acct-211
select t1.tên của nhân viên , t1.họ của nhân viên from nhân viên as t1 join giáo sư as t2 on t1.mã số nhân viên = t2.mã số nhân viên join khoa as t3 on t2.mã khoa = t3.mã khoa where t3.tên khoa = biology
select t1.tên của nhân viên , t1.họ của nhân viên from nhân viên as t1 join giáo sư as t2 on t1.mã số nhân viên = t2.mã số nhân viên join khoa as t3 on t2.mã khoa = t3.mã khoa where t3.tên khoa = biology
select t1.tên của nhân viên , t1.ngày sinh của nhân viên from nhân viên as t1 join giáo sư as t2 on t1.mã số nhân viên = t2.mã số nhân viên join đăng ký khoá học as t3 on t2.mã số nhân viên = t3.mã số sinh viên where t3.mã khoá học = acct-211
select t1.tên của nhân viên , t1.ngày sinh của nhân viên from nhân viên as t1 join giáo sư as t2 on t1.mã số nhân viên = t2.mã số nhân viên join khoá học as t3 on t2.mã khoa = t3.mã khoa where t3.mô tả về khoá học = acct-211
select count (*) from lớp học as t1 join giáo sư as t2 on t1.mã số nhân viên của giáo sư = t2.mã số nhân viên where t2.họ của nhân viên = graztevski
select count (*) from giáo sư as t1 join lớp học as t2 on t1.mã số nhân viên = t2.mã số nhân viên where t1.họ của nhân viên = graztevski
select mã khoa from khoa where tên khoa = math
select mã trường from khoa where tên khoa = calculus
select số lượng tín chỉ của khoá học , mô tả về khoá học from khoá học where mã khoá = cis-220
select mô tả về khoá học , số lượng tín chỉ của khoá học from khoá học where mã khoá học = cis-220
select địa chỉ khoa from khoa where tên khoa = history
select địa chỉ khoa from khoa where tên khoa = history
select count (distinct mã trường) from khoa where mã trường = bus
select count (distinct tên khoa) from khoa where mã trường = bus
select count (distinct tên khoa) from khoa
select count (distinct mã trường) from khoa
select mô tả về khoá học , số lượng tín chỉ của khoá học from khoá học where mã khoá học = qm-261
select số lượng tín chỉ của khoá học , mô tả về khoá học from khoá học where mã khoá học = qm-261
select count (distinct mã khoa) from khoa
select count (*) , mã trường from khoa group by mã trường
select count (mã khoa) from khoa group by mã trường having count (mã khoa) < 5
select count (*) , mã trường from khoa group by mã trường having count (*) < 5
select count (*) , mã khoá học from lớp học group by mã khoá học
select mã khoá học , count (*) from lớp học group by mã khoá học
select sum (số lượng tín chỉ của khoá học) , mã khoa from khoá học group by mã khoa
select sum (số lượng tín chỉ của khoá học) , mã khoa from khoá học group by mã khoa
select phòng học , count (*) from lớp học group by phòng học having count (*) >= 2
select phòng học , count (*) from lớp học group by phòng học having count (*) >= 2
select count (*) , mã khoa from lớp học group by mã khoa
select count (*) , t1.mã khoa from khoa as t1 join lớp học as t2 on t1.mã khoa = t2.mã khoa group by t1.mã khoa
select count (*) , mã trường from khoa as t1 join lớp học as t2 on t1.mã trường = t2.mã trường group by t1.mã trường
select count (*) , mã trường from khoa group by mã trường
select count (*) , mã trường from khoa group by mã trường
select count (distinct mã số nhân viên) from giáo sư
select mã công việc của nhân viên , count (*) from nhân viên group by mã công việc của nhân viên order by count (*) desc limit 1
select mã công việc của nhân viên , count (*) from nhân viên group by mã công việc của nhân viên order by count (*) desc limit 1
select t1.tên khoa from khoa as t1 join giáo sư as t2 on t1.mã khoa = t2.mã khoa group by t1.mã khoa order by count (*) asc limit 1
select mã trường from khoa group by mã trường order by count (mã trường) limit 1
select count (*) , mã khoa from giáo sư where bằng cấp cao nhất = doctorate group by mã khoa
select count (*) , mã khoa from giáo sư where bằng cấp cao nhất = doctorate group by mã khoa
select count (*) , mã khoa from sinh viên group by mã khoa
select count (*) , mã khoa from sinh viên group by mã khoa
select sum (giờ học của sinh viên) , mã khoa from sinh viên group by mã khoa
select sum (giờ học của sinh viên) , mã khoa from sinh viên group by mã khoa
select avg (gpa của sinh viên) , max (gpa của sinh viên) , min (gpa của sinh viên) , mã khoa from sinh viên group by mã khoa
select mã khoa , max (gpa của sinh viên) , min (gpa của sinh viên) , avg (gpa của sinh viên) from sinh viên group by mã khoa
select tên khoa , avg (gpa của sinh viên) from sinh viên group by mã khoa order by avg (gpa của sinh viên) desc limit 1
select avg (gpa của sinh viên) , mã khoa from sinh viên group by mã khoa order by avg (gpa của sinh viên) desc limit 1
select count (distinct mã trường) from khoa
select count (distinct mã trường) from khoa
select count (distinct mã lớp học) from lớp học
select count (distinct lớp học phần) from lớp học
select count (distinct mã khoá học) from khoá học
select count (distinct mã khoá học) from khoá học
select count (distinct tên khoa) from khoa
select count (distinct mã khoa) from giáo sư
select count (*) from khoá học as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa where t2.tên khoa = computer systems
select count (*) from khoá học as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa where t2.tên khoa = computer systems
select count (distinct lớp học phần) from lớp học where mã khoá học = acct-211
select count (distinct lớp học phần) from lớp học where mã khoá học = acct-211
select sum (số lượng tín chỉ của khoá học) , mã khoa from khoá học group by mã khoa
select sum (số lượng tín chỉ của khoá học) , mã khoa from khoá học group by mã khoa
select t1.tên khoa from khoa as t1 join khoá học as t2 on t1.mã khoa = t2.mã khoa group by t1.tên khoa order by sum (t2.số lượng tín chỉ của khoá học) desc limit 1
select t1.tên khoa from khoa as t1 join khoá học as t2 on t1.mã khoa = t2.mã khoa group by t1.tên khoa order by sum (t2.số lượng tín chỉ của khoá học) desc limit 1
select count (distinct mã số sinh viên) from đăng ký khoá học where mã khoá học = acct-211
select count (distinct mã số sinh viên) from đăng ký khoá học where mã khoá học = acct-211
select t1.tên của sinh viên from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên where t2.mã khoá học = acct-211
select distinct t3.tên của sinh viên from đăng ký khoá học as t1 join sinh viên as t3 on t1.mã số sinh viên = t3.mã số sinh viên join khoá học as t2 on t1.mã khoá học = t2.mã khoá học where t2.mã khoa = acct-211
select t1.tên của sinh viên from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên where t2.điểm số = c intersect select t1.tên của sinh viên from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên where t2.mã khoá học = acct-211
select distinct t1.tên của sinh viên from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên where t2.điểm số = c and t2.mã khoá học = acct-211
select count (*) from nhân viên
select count (*) from nhân viên
select count (*) from giáo sư where bằng cấp cao nhất = doctorate
select count (*) from giáo sư where bằng cấp cao nhất = doctorate
select count (*) from khoa as t1 join giáo sư as t2 on t1.mã khoa = t2.mã khoa where t1.tên khoa = calculus
select count (*) from khoa as t1 join giáo sư as t2 on t1.mã khoa = t2.mã khoa where t1.tên khoa = math
select t1.tên khoa from khoa as t1 join sinh viên as t2 on t1.mã khoa = t2.mã khoa group by t1.mã khoa order by count (*) desc limit 1
select t1.tên khoa from khoa as t1 join sinh viên as t2 on t1.mã khoa = t2.mã khoa group by t1.tên khoa order by count (*) desc limit 1
select tên khoa from khoa order by tên khoa asc
select tên khoa from khoa order by tên khoa asc
select mã khoá học from lớp học where phòng học = klr 209
select mã khoá học from lớp học where phòng học = klr 209
select tên của nhân viên from nhân viên where mã công việc của nhân viên = professor order by ngày sinh của nhân viên
select tên của nhân viên from nhân viên where mã số nhân viên in (select mã số nhân viên from giáo sư) order by ngày sinh của nhân viên
select tên của giáo sư , văn phòng giáo sư from giáo sư order by tên của giáo sư asc
select t1.tên của giáo sư , t1.văn phòng giáo sư from giáo sư as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa order by t1.tên của giáo sư
select tên của nhân viên , họ của nhân viên from nhân viên order by ngày sinh của nhân viên desc limit 1
select tên của nhân viên , họ của nhân viên from nhân viên order by ngày sinh của nhân viên asc limit 1
select tên của sinh viên , họ của sinh viên , avg (điểm số) from sinh viên where gpa của sinh viên >= 3 group by tên của sinh viên order by avg (điểm số) limit 1
select tên của sinh viên , họ của sinh viên , gpa của sinh viên from sinh viên where gpa của sinh viên >= 3 order by ngày sinh của sinh viên limit 1
select distinct t1.tên của sinh viên from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên where t2.điểm số = c
select distinct t3.tên của sinh viên from đăng ký khoá học as t1 join sinh viên as t3 on t1.mã số sinh viên = t3.mã số sinh viên where t1.điểm số = c
select t1.tên khoa from khoa as t1 join giáo sư as t2 on t1.mã khoa = t2.mã khoa group by t1.mã khoa order by count (*) asc limit 1
select t1.tên khoa from khoa as t1 join giáo sư as t2 on t1.mã khoa = t2.mã khoa group by t1.mã khoa order by count (mã khoa) limit 1
select t1.tên khoa from khoa as t1 join giáo sư as t2 on t1.mã khoa = t2.mã khoa where t2.bằng cấp cao nhất = doctorate group by t1.tên khoa order by count (*) desc limit 1
select t1.tên khoa from khoa as t1 join giáo sư as t2 on t1.mã khoa = t2.mã khoa where t2.bằng cấp cao nhất = professor group by t1.tên khoa order by count (*) desc limit 1
select tên của nhân viên from nhân viên where mã số nhân viên not in (select mã số nhân viên from giáo sư)
select tên của nhân viên from nhân viên where mã số nhân viên not in (select mã số nhân viên from giáo sư)
select t1.tên của nhân viên from nhân viên as t1 join giáo sư as t2 on t1.mã số nhân viên = t2.mã số nhân viên join khoa as t3 on t2.mã khoa = t3.mã khoa where t3.tên khoa = history and t2.mã số nhân viên not in (select mã số nhân viên from lớp học)
select tên của nhân viên from nhân viên as t1 join giáo sư as t2 on t1.mã số nhân viên = t2.mã số nhân viên where t1.mã khoa = history except select tên của nhân viên from giáo sư
select t1.họ của nhân viên , t2.văn phòng giáo sư from nhân viên as t1 join giáo sư as t2 on t1.mã số nhân viên = t2.mã số nhân viên where t2.mã khoa = history
select t1.họ của nhân viên , t2.văn phòng giáo sư from nhân viên as t1 join giáo sư as t2 on t1.mã số nhân viên = t2.mã số nhân viên where t2.mã khoa = history
select t2.văn phòng giáo sư , t2.mã khoa from nhân viên as t1 join giáo sư as t2 on t1.mã số nhân viên = t2.mã số nhân viên where t1.họ của nhân viên = heffington
select t1.tên khoa , t1.văn phòng giáo sư from giáo sư as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa where t1.họ của nhân viên = heffington
select t1.họ của nhân viên , t1.ngày bắt đầu công việc của nhân viên from nhân viên as t1 join giáo sư as t2 on t1.mã số nhân viên = t2.mã số nhân viên where văn phòng giáo sư = dre 102
select t1.họ của nhân viên , t1.ngày bắt đầu công việc của nhân viên from nhân viên as t1 join giáo sư as t2 on t1.mã số nhân viên = t2.mã số nhân viên where t1.văn phòng giáo sư = dre 102
select t1.mã khoá học from đăng ký khoá học as t1 join sinh viên as t2 on t1.mã số sinh viên = t2.mã số sinh viên where t2.họ của sinh viên = smithson
select t2.mã khoá học from đăng ký khoá học as t1 join khoá học as t2 on t1.mã khoá học = t2.mã khoá học join sinh viên as t3 on t1.mã số sinh viên = t3.mã số sinh viên where t3.họ của sinh viên = smithson
select sum (t1.số lượng tín chỉ của khoá học) , t2.mô tả về khoá học from khoá học as t1 join đăng ký khoá học as t2 on t1.mã khoá học = t2.mã khoá học join sinh viên as t3 on t3.mã số sinh viên = t2.mã số sinh viên where t3.họ của sinh viên = smithson
select t1.số lượng tín chỉ của khoá học , t2.mô tả về khoá học from đăng ký khoá học as t1 join khoá học as t2 on t1.mã khoá = t2.mã khoá where t1.mã số sinh viên = 1001
select count (*) from giáo sư where bằng cấp cao nhất = master or bằng cấp cao nhất = doctor
select count (*) from giáo sư where bằng cấp cao nhất = master or bằng cấp cao nhất = doctor
select count (*) from giáo sư as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa where t2.tên khoa = math or t2.tên khoa = biology
select count (*) from giáo sư as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa where t2.tên khoa = math or t2.tên khoa = biology
select t1.tên của nhân viên from nhân viên as t1 join giáo sư as t2 on t1.mã số nhân viên = t2.mã số nhân viên join khoá học as t3 on t2.mã khoa = t3.mã khoa where t3.mã khoá học = cis-220 intersect select t1.tên của nhân viên from nhân viên as t1 join giáo sư as t2 on t1.mã số nhân viên = t2.mã số nhân viên join khoá học as t3 on t2.mã khoa = t3.mã khoa where t3.mã khoá học = qm-261
select t1.tên của nhân viên from nhân viên as t1 join giáo sư as t2 on t1.mã số nhân viên = t2.mã số nhân viên join đăng ký khoá học as t3 on t2.mã số nhân viên = t3.mã số sinh viên where t3.mã khoá học = cis-220 intersect select t1.tên của nhân viên from nhân viên as t1 join giáo sư as t2 on t1.mã số nhân viên = t2.mã số nhân viên join đăng ký khoá học as t3 on t2.mã số nhân viên = t3.mã số sinh viên where t3.mã khoá học = qm-261
select t1.tên của sinh viên from sinh viên as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa join lớp học as t3 on t1.lớp của sinh viên = t3.mã lớp học where t2.tên khoa = calculus intersect select t1.tên của sinh viên from sinh viên as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa join lớp học as t3 on t1.lớp của sinh viên = t3.mã lớp học where t2.tên khoa = computer information systems
select t1.tên của sinh viên from khoa as t3 join sinh viên as t1 on t3.mã khoa = t1.mã khoa join đăng ký khoá học as t2 on t2.mã số sinh viên = t1.mã số sinh viên where t3.tên khoa = computer science intersect select t1.tên của sinh viên from khoa as t3 join sinh viên as t1 on t3.mã khoa = t1.mã khoa join đăng ký khoá học as t2 on t2.mã số sinh viên = t1.mã số sinh viên where t3.tên khoa = information systems
select avg (t1.gpa của sinh viên) from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên where t2.mã khoá học = acct-211
select avg (t2.gpa của sinh viên) from đăng ký khoá học as t1 join sinh viên as t2 on t1.mã số sinh viên = t2.mã số sinh viên where t1.mã khoá học = acct-211
select tên của sinh viên , gpa của sinh viên , số điện thoại của sinh viên from sinh viên order by gpa của sinh viên desc limit 5
select tên của sinh viên , gpa của sinh viên , số điện thoại của sinh viên from sinh viên order by gpa của sinh viên desc limit 5
select t2.tên khoa from sinh viên as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa order by t1.gpa của sinh viên limit 1
select t1.tên của sinh viên , t1.mã khoa from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên where gpa của sinh viên = (select min (gpa của sinh viên) from sinh viên)
select tên của sinh viên , gpa của sinh viên from sinh viên where gpa của sinh viên < (select avg (gpa của sinh viên) from sinh viên)
select mã số sinh viên , avg (điểm số) from đăng ký khoá học group by mã số sinh viên having avg (điểm số) < (select avg (điểm số) from đăng ký khoá học)
select t2.tên khoa , t2.địa chỉ khoa from sinh viên as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa group by t1.mã khoa order by count (*) desc limit 1
select t2.tên khoa , t2.địa chỉ khoa from sinh viên as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa group by t1.mã khoa order by count (*) desc limit 1
select t2.tên khoa , t2.địa chỉ khoa , count (*) from khoa as t1 join sinh viên as t2 on t1.mã khoa = t2.mã khoa group by t1.mã khoa order by count (*) desc limit 3
select t2.tên khoa , t2.địa chỉ khoa , count (*) from khoa as t1 join sinh viên as t2 on t1.mã khoa = t2.mã khoa group by t1.mã khoa order by count (*) desc limit 3
select t1.tên của nhân viên , t1.văn phòng giáo sư from giáo sư as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa where t2.tên khoa = history and t1.bằng cấp cao nhất = doctor
select t1.tên của nhân viên , t1.văn phòng giáo sư from nhân viên as t1 join giáo sư as t2 on t1.mã số nhân viên = t2.mã số nhân viên join khoa as t3 on t2.mã khoa = t3.mã khoa where t3.tên khoa = history and t2.bằng cấp cao nhất = doctor
select t1.tên của nhân viên , t2.mã khoa from nhân viên as t1 join giáo sư as t2 on t1.mã số nhân viên = t2.mã số nhân viên
select t2.mô tả về khoá học , t1.mã số nhân viên from giáo sư as t1 join khoá học as t2 on t1.mã khoa = t2.mã khoá
select t1.tên của nhân viên , t2.mô tả về khoá học from nhân viên as t1 join khoá học as t2 on t1.mã số nhân viên = t2.mã số nhân viên
select t1.tên của nhân viên , t2.mô tả về khoá học from nhân viên as t1 join giáo sư as t2 on t1.mã số nhân viên = t2.mã số nhân viên join khoá học as t3 on t2.mã khoa = t3.mã khoa
select t2.mô tả về khoá học , t1.văn phòng giáo sư from giáo sư as t1 join khoá học as t2 on t1.mã khoa = t2.mã khoa
select t1.tên của nhân viên , t1.văn phòng giáo sư , t2.mô tả về khoá học from nhân viên as t1 join giáo sư as t2 on t1.mã số nhân viên = t2.mã số nhân viên join khoá học as t3 on t2.mã khoa = t3.mã khoa
select t1.tên của nhân viên , t1.văn phòng giáo sư , t2.mô tả về khoá học from nhân viên as t1 join giáo sư as t2 on t1.mã số nhân viên = t2.mã số nhân viên join khoá học as t3 on t2.mã khoa = t3.mã khoa
select t2.mô tả về khoá học , t1.văn phòng giáo sư , t1.mã khoa from giáo sư as t1 join khoá học as t2 on t1.mã khoa = t2.mã khoa
select t1.tên của sinh viên , t1.mô tả về khoá học from khoá học as t1 join đăng ký khoá học as t2 on t1.mã khoá học = t2.mã khoá học join sinh viên as t3 on t2.mã số sinh viên = t3.mã số sinh viên
select distinct t1.tên của sinh viên , t1.họ của sinh viên , t2.mô tả về khoá học from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên join khoá học as t3 on t2.mã khoá học = t3.mã khoá học
select distinct t1.tên của sinh viên from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên where t2.điểm số = a or t2.điểm số = c
select distinct t1.tên của sinh viên from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên where t2.điểm số = a or t2.điểm số = c
select t2.tên của giáo sư , t1.phòng học from lớp học as t1 join giáo sư as t2 on t1.mã số nhân viên của giáo sư = t2.mã số nhân viên where t2.mã khoa = math
select t2.tên của giáo sư , t3.phòng học from giáo sư as t1 join khoá học as t2 on t1.mã khoa = t2.mã khoa join lớp học as t3 on t2.mã khoá học = t3.mã khoá học where t1.bằng cấp cao nhất = master and t2.mô tả về khoá học = calculus
select t1.tên của nhân viên , t2.bằng cấp cao nhất from giáo sư as t1 join nhân viên as t2 on t1.mã số nhân viên = t2.mã số nhân viên join khoa as t3 on t1.mã khoa = t3.mã khoa where t3.tên khoa = computer information systems
select t1.tên của nhân viên , t1.bằng cấp cao nhất from nhân viên as t1 join giáo sư as t2 on t1.mã số nhân viên = t2.mã số nhân viên join khoa as t3 on t2.mã khoa = t3.mã khoa where t3.tên khoa = computer science
select t2.họ của sinh viên from đăng ký khoá học as t1 join sinh viên as t2 on t1.mã số sinh viên = t2.mã số sinh viên where t1.điểm số = a and t1.mã lớp = 10018
select t2.họ của sinh viên from đăng ký khoá học as t1 join sinh viên as t2 on t1.mã số sinh viên = t2.mã số sinh viên where t1.điểm số = a and t1.mã lớp = 10018
select t1.tên của giáo sư , t1.văn phòng giáo sư from giáo sư as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa where t2.tên khoa = history except select t1.tên của giáo sư , t1.văn phòng giáo sư from giáo sư as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa where t2.tên khoa = history and t1.bằng cấp cao nhất = doctor
select t1.tên của nhân viên , t1.văn phòng giáo sư from nhân viên as t1 join giáo sư as t2 on t1.mã số nhân viên = t2.mã số nhân viên where t1.mã khoa = history and t2.bằng cấp cao nhất != ph.d.
select t1.tên của nhân viên from nhân viên as t1 join giáo sư as t2 on t1.mã số nhân viên = t2.mã số nhân viên group by t1.mã số nhân viên having count (*) > 1
select t1.tên của nhân viên , count (*) from nhân viên as t1 join giáo sư as t2 on t1.mã số nhân viên = t2.mã số nhân viên join lớp học as t3 on t2.mã số nhân viên = t3.mã số giáo sư group by t1.mã số nhân viên having count (*) > 1
select distinct t1.tên của sinh viên from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên group by t1.mã số sinh viên having count (*) = 1
select t1.tên của sinh viên from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên group by t1.mã số sinh viên having count (*) = 1
select t1.tên khoa from khoa as t1 join khoá học as t2 on t1.mã khoa = t2.mã khoa where t2.mô tả về khoá học like %statistics%
select t1.tên khoa from khoa as t1 join khoá học as t2 on t1.mã khoa = t2.mã khoa where t2.mô tả về khoá học like %statistics%
select t1.tên của sinh viên from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên where t2.mã khoá học = acct-211 and t1.chữ cái đầu của tên sinh viên like s%
select t1.tên của sinh viên from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên where t1.họ của sinh viên like s% and t2.mã khoá học = acct-211
select mã trạng thái tài liệu from trạng thái của tài liệu
select mô tả về trạng thái tài liệu from trạng thái của tài liệu where mã trạng thái tài liệu = in process
select mã loại tài liệu from loại tài liệu
select mô tả về trạng thái tài liệu from tài liệu where mã loại tài liệu = paper
select tên đại lý vận chuyển from đại lý vận chuyển tài liệu
select mã đại lý vận chuyển from đại lý vận chuyển tài liệu where tên đại lý vận chuyển = ups
select mã vai trò from vai trò
select mô tả về vai trò from vai trò where mã vai trò = ed
select count (*) from nhân viên
select t2.mô tả về vai trò from nhân viên as t1 join vai trò as t2 on t1.mã vai trò = t2.mã vai trò where t1.tên nhân viên = koby
select id tài liệu , ngày lập biên lai from tài liệu
select mô tả về vai trò , count (*) , mã vai trò from nhân viên group by mã vai trò
select mô tả về vai trò , count (*) from nhân viên as t1 join vai trò as t2 on t1.mã vai trò = t2.mã vai trò group by t1.mã vai trò having count (*) > 1
select mô tả về trạng thái tài liệu from trạng thái của tài liệu where mã trạng thái tài liệu = (select mã trạng thái tài liệu from tài liệu where id tài liệu = 1)
select count (*) from tài liệu where mã trạng thái tài liệu = completed
select mã loại tài liệu from tài liệu where id tài liệu = 2
select id tài liệu from tài liệu where mã trạng thái tài liệu = completed and mã loại tài liệu = paper
select t2.tên đại lý vận chuyển from tài liệu as t1 join đại lý vận chuyển tài liệu as t2 on t1.mã đại lý vận chuyển = t2.mã đại lý vận chuyển where t1.id tài liệu = 2
select count (*) from tài liệu where mã đại lý vận chuyển = usps
select t1.tên đại lý vận chuyển , count (*) from đại lý vận chuyển tài liệu as t1 join tài liệu as t2 on t1.mã đại lý vận chuyển = t2.mã đại lý vận chuyển group by t1.tên đại lý vận chuyển order by count (*) desc limit 1
select ngày lập biên lai from tài liệu where id tài liệu = 3
select t2.chi tiết địa chỉ from tài liệu được gửi as t1 join địa chỉ as t2 on t1.gửi đến địa chỉ có id = t2.id địa chỉ where t1.id tài liệu = 4
select ngày gửi from tài liệu được gửi where id tài liệu = 7
select id tài liệu from tài liệu where mã trạng thái tài liệu = completed and mã loại tài liệu = paper except select id tài liệu from tài liệu where mã đại lý vận chuyển = usps
select id tài liệu from tài liệu where mã trạng thái tài liệu = completed and mã loại tài liệu = paper and mã đại lý vận chuyển = (select mã đại lý vận chuyển from đại lý vận chuyển where tên đại lý vận chuyển = usps)
select chi tiết dự thảo from bản dự thảo của tài liệu where id tài liệu = 7
select số lượng dự thảo from bản dự thảo của tài liệu where id tài liệu = 2
select id tài liệu , số lượng bản sao from bản sao group by id tài liệu order by số lượng bản sao desc limit 1
select id tài liệu , số lượng dự thảo from bản dự thảo của tài liệu group by id tài liệu having số lượng dự thảo > 1
select t2.tên nhân viên from lịch sử lưu hành as t1 join nhân viên as t2 on t1.id nhân viên = t2.id nhân viên where t1.id tài liệu = 1
select tên nhân viên from nhân viên except select t1.tên nhân viên from nhân viên as t1 join lịch sử lưu hành as t2 on t1.id nhân viên = t2.id nhân viên
select t1.tên nhân viên , count (*) from nhân viên as t1 join lịch sử lưu hành as t2 on t1.id nhân viên = t2.id nhân viên group by t1.id nhân viên order by count (*) desc limit 1
select id tài liệu , count (id nhân viên) from lịch sử lưu hành group by id tài liệu
select count (*) from lượt đặt hàng
select count (*) from lượt đặt hàng
select ngày đặt hàng from lượt đặt hàng
select ngày đặt hàng from lượt đặt hàng
select ngày đặt hàng , ngày giao hàng thực tế from lượt đặt hàng
select ngày đặt hàng , ngày giao hàng thực tế from lượt đặt hàng
select count (*) from khách hàng
select count (*) from khách hàng
select số điện thoại khách hàng , địa chỉ email khách hàng from khách hàng where tên khách hàng = harold
select địa chỉ email khách hàng , số điện thoại khách hàng from khách hàng where tên khách hàng = harold
select tên cửa hàng from cửa hàng
select tên cửa hàng from cửa hàng
select min (số lượng đặt hàng) , avg (số lượng đặt hàng) , max (số lượng đặt hàng) from mặt hàng trong hoá đơn
select min (số lượng đặt hàng) , avg (số lượng đặt hàng) , max (số lượng đặt hàng) from mặt hàng trong hoá đơn
select distinct mã phương thức thanh toán from hoá đơn
select distinct mã phương thức thanh toán from hoá đơn
select mô tả về khu vực tiếp thị from khu vực tiếp thị where tên khu vực tiếp thị = china
select mô tả về khu vực tiếp thị from khu vực tiếp thị where tên khu vực tiếp thị = china
select distinct tên sản phẩm from cửa hàng where giá sản phẩm > (select avg (giá sản phẩm) from cửa hàng)
select tên sản phẩm from các sản phẩm where giá sản phẩm > (select avg (giá sản phẩm) from các sản phẩm)
select tên sản phẩm from các sản phẩm order by giá sản phẩm desc limit 1
select tên sản phẩm from các sản phẩm order by giá sản phẩm desc limit 1
select tên sản phẩm from các sản phẩm order by giá sản phẩm asc
select tên sản phẩm from các sản phẩm order by giá sản phẩm asc
select số điện thoại khách hàng from khách hàng where tên khách hàng = ashley
select số điện thoại khách hàng from khách hàng where tên khách hàng = ashley
select mã phương thức thanh toán , count (*) from lượt đặt hàng group by mã phương thức thanh toán
select mã phương thức thanh toán , count (*) from lượt đặt hàng group by mã phương thức thanh toán
select mã phương thức thanh toán from lượt đặt hàng group by mã phương thức thanh toán order by count (*) desc limit 1
select mã phương thức thanh toán from hoá đơn group by mã phương thức thanh toán order by count (*) desc limit 1
select t3.thành phố thị trấn from cửa hàng as t1 join địa chỉ as t2 on t1.id địa chỉ = t2.id địa chỉ join khu vực tiếp thị as t3 on t1.mã khu vực tiếp thị = t3.mã khu vực tiếp thị where t1.tên cửa hàng = fjm filming
select t2.thành phố thị trấn from cửa hàng as t1 join địa chỉ as t2 on t1.id địa chỉ = t2.id địa chỉ where t1.tên cửa hàng = fja filming
select distinct t1.quận hạt from địa chỉ as t1 join cửa hàng as t2 on t1.id địa chỉ = t2.id địa chỉ where t2.mã khu vực tiếp thị = ca
select t1.tên cửa hàng , t1.tên khu vực tiếp thị from cửa hàng as t1 join khu vực tiếp thị as t2 on t1.mã khu vực tiếp thị = t2.mã khu vực tiếp thị where t2.tên khu vực tiếp thị = ca
select t1.mã khu vực tiếp thị from khu vực tiếp thị as t1 join cửa hàng as t2 on t1.mã khu vực tiếp thị = t2.mã khu vực tiếp thị where t2.tên cửa hàng = rob dining
select t1.mã khu vực tiếp thị from khu vực tiếp thị as t1 join cửa hàng as t2 on t1.mã khu vực tiếp thị = t2.mã khu vực tiếp thị where t2.tên cửa hàng = rob dining
select t1.mô tả về loại dịch vụ from loại dịch vụ as t1 join dịch vụ as t2 on t1.mã loại dịch vụ = t2.mã loại dịch vụ where t2.giá sản phẩm > 100
select t1.mô tả về loại dịch vụ from loại dịch vụ as t1 join dịch vụ as t2 on t1.mã loại dịch vụ = t2.mã loại dịch vụ where t2.giá sản phẩm > 100
select mã loại dịch vụ , mô tả về loại dịch vụ , count (*) from dịch vụ group by mã loại dịch vụ
select mã loại dịch vụ , mô tả về loại dịch vụ , count (*) from dịch vụ group by mã loại dịch vụ
select t1.mô tả về loại dịch vụ , t2.mã loại dịch vụ from dịch vụ as t1 join loại dịch vụ as t2 on t1.mã loại dịch vụ = t2.mã loại dịch vụ group by t1.mã loại dịch vụ order by count (*) desc limit 1
select t1.mô tả về loại dịch vụ , t1.mã loại dịch vụ from loại dịch vụ as t1 join dịch vụ as t2 on t1.mã loại dịch vụ = t2.mã loại dịch vụ group by t1.mã loại dịch vụ order by count (*) desc limit 1
select t1.số điện thoại cửa hàng , t1.địa chỉ email cửa hàng from cửa hàng as t1 join nhóm hội thảo kịch as t2 on t1.id cửa hàng = t2.id cửa hàng join dịch vụ as t3 on t2.id nhóm hội thảo kịch = t3.id nhóm hội thảo kịch where t3.mã loại dịch vụ = delivery
select t1.địa chỉ email cửa hàng , t1.số điện thoại cửa hàng from cửa hàng as t1 join nhóm hội thảo kịch as t2 on t1.id cửa hàng = t2.id cửa hàng where t2.id nhóm hội thảo kịch in (select t3.id nhóm hội thảo kịch from dịch vụ as t3 join nhóm hội thảo kịch as t4 on t3.id nhóm hội thảo kịch = t4.id nhóm hội thảo kịch where t3.mã loại dịch vụ = delivery)
select t2.số điện thoại cửa hàng , t2.địa chỉ email cửa hàng from dịch vụ as t1 join cửa hàng as t2 on t1.id nhóm hội thảo kịch = t2.id cửa hàng join sản phẩm as t3 on t1.id sản phẩm = t3.id sản phẩm where t3.tên sản phẩm = film
select t1.id nhóm hội thảo kịch from dịch vụ as t1 join các sản phẩm as t2 on t1.id sản phẩm = t2.id sản phẩm where t2.tên sản phẩm = film
select tên sản phẩm , avg (giá sản phẩm) from các sản phẩm group by tên sản phẩm
select tên sản phẩm , avg (giá sản phẩm) from các sản phẩm group by tên sản phẩm
select tên sản phẩm from các sản phẩm group by tên sản phẩm having avg (giá sản phẩm) < 1000000
select tên sản phẩm from các sản phẩm group by tên sản phẩm having avg (giá sản phẩm) < 1000000
select sum (t2.số lượng đặt hàng) from dịch vụ as t1 join dịch vụ đặt hàng as t2 on t1.id dịch vụ = t2.id sản phẩm where t1.mô tả về sản phẩm like image
select sum (t2.số lượng đặt hàng) from dịch vụ as t1 join dịch vụ đặt hàng as t2 on t1.id dịch vụ = t2.id sản phẩm where t1.tên sản phẩm = pic
select t1.chi tiết khác về mặt hàng from mặt hàng được đặt as t1 join mặt hàng trong hoá đơn as t2 on t1.id mặt hàng được đặt = t2.id mặt hàng được đặt join hoá đơn as t3 on t2.id hoá đơn = t3.id hoá đơn join dịch vụ as t4 on t3.id sản phẩm = t4.id sản phẩm where t4.giá sản phẩm > 2000
select t1.chi tiết khác về mặt hàng from mặt hàng được đặt as t1 join mặt hàng trong hoá đơn as t2 on t1.id mặt hàng được đặt = t2.id mặt hàng được đặt join hoá đơn as t3 on t2.id hoá đơn = t3.id hoá đơn join dịch vụ as t4 on t3.id sản phẩm = t4.id sản phẩm where t4.giá sản phẩm > 2000
select t1.ngày giao hàng thực tế from lượt đặt hàng as t1 join mặt hàng được đặt as t2 join mặt hàng trong hoá đơn as t3 join hoá đơn as t4 on t1.id đơn hàng = t2.id đơn hàng and t2.id mặt hàng được đặt = t3.id mặt hàng được đặt and t3.id hoá đơn = t4.id hoá đơn where t4.số lượng đặt hàng = 1
select distinct t2.ngày giao hàng thực tế from lượt đặt hàng as t1 join mặt hàng được đặt as t2 on t1.id đơn hàng = t2.id đơn hàng where t2.số lượng đặt hàng = 1
select t1.ngày đặt hàng from lượt đặt hàng as t1 join mặt hàng được đặt as t2 join sản phẩm as t3 on t1.id đơn hàng = t2.id đơn hàng and t2.id sản phẩm = t3.id sản phẩm where t3.giá sản phẩm > 1000
select t1.ngày đặt hàng from lượt đặt hàng as t1 join mặt hàng được đặt as t2 join sản phẩm as t3 join dịch vụ đặt hàng as t4 join dịch vụ as t5 where t3.giá sản phẩm > 1000 and t2.id sản phẩm = t3.id sản phẩm and t4.id đơn hàng = t2.id đơn hàng and t5.id dịch vụ = t4.id dịch vụ
select count (distinct mã tiền tệ) from nhóm hội thảo kịch
select count (distinct mã tiền tệ) from nhóm hội thảo kịch
select t1.tên cửa hàng from cửa hàng as t1 join địa chỉ as t2 on t1.id địa chỉ = t2.id địa chỉ where t2.thành phố thị trấn = feliciaberg
select t1.tên cửa hàng from cửa hàng as t1 join khu vực tiếp thị as t2 on t1.mã khu vực tiếp thị = t2.mã khu vực tiếp thị where t2.tên khu vực tiếp thị = feliciaberg
select t1.địa chỉ email cửa hàng from khu vực tiếp thị as t1 join nhóm hội thảo kịch as t2 on t1.mã khu vực tiếp thị = t2.mã khu vực tiếp thị where t2.tên cửa hàng = theatre alaska
select t1.địa chỉ email cửa hàng from khu vực tiếp thị as t1 join nhóm hội thảo kịch as t2 on t1.mã khu vực tiếp thị = t2.mã khu vực tiếp thị where t1.tên khu vực tiếp thị = alaska
select t2.tên khu vực tiếp thị , count (*) from khu vực tiếp thị as t1 join nhóm hội thảo kịch as t2 on t1.mã khu vực tiếp thị = t2.mã khu vực tiếp thị group by t1.mã khu vực tiếp thị
select t2.tên khách hàng , count (*) from nhóm hội thảo kịch as t1 join khách hàng as t2 on t1.id địa chỉ = t2.id địa chỉ group by t2.tên khách hàng
select mã khu vực tiếp thị from nhóm hội thảo kịch group by mã khu vực tiếp thị order by count (*) desc limit 1
select mã khu vực tiếp thị from khu vực tiếp thị group by mã khu vực tiếp thị order by count (*) desc limit 1
select t1.thành phố thị trấn from địa chỉ as t1 join khách hàng as t2 on t1.id địa chỉ = t2.id địa chỉ except select t1.thành phố thị trấn from địa chỉ as t1 join khách hàng as t2 on t1.id địa chỉ = t2.id địa chỉ join người biểu diễn as t3 on t1.id địa chỉ = t3.id địa chỉ
select t1.thành phố thị trấn from địa chỉ as t1 join khách hàng as t2 on t1.id địa chỉ = t2.id địa chỉ except select t1.thành phố thị trấn from địa chỉ as t1 join khách hàng as t2 on t1.id địa chỉ = t2.id địa chỉ join người biểu diễn as t3 on t1.id địa chỉ = t3.id địa chỉ
select mã trạng thái from lượt đặt hàng group by mã trạng thái order by count (*) desc limit 1
select mã trạng thái from lượt đặt hàng group by mã trạng thái order by count (*) desc limit 1
select t1.tên cửa hàng from cửa hàng as t1 join lượt đặt hàng as t2 on t1.id cửa hàng = t2.id cửa hàng where t2.mã trạng thái = stop
select t1.tên cửa hàng from nhóm hội thảo kịch as t1 join lượt đặt hàng as t2 on t1.id nhóm hội thảo kịch = t2.id nhóm hội thảo kịch where t2.mã trạng thái = stop
select tên khách hàng from khách hàng except select t1.tên khách hàng from khách hàng as t1 join lượt đặt hàng as t2 on t1.id khách hàng = t2.id khách hàng
select tên khách hàng from khách hàng except select t1.tên khách hàng from khách hàng as t1 join lượt đặt hàng as t2 on t1.id khách hàng = t2.id khách hàng
select avg (số lượng đặt hàng) from hoá đơn where mã phương thức thanh toán = mastercard
select avg (số lượng đặt hàng) from mặt hàng trong hoá đơn as t1 join hoá đơn as t2 on t1.id hoá đơn = t2.id hoá đơn join lượt đặt hàng as t3 on t2.id đơn hàng = t3.id đơn hàng join phương thức thanh toán as t4 on t2.mã phương thức thanh toán = t4.mã phương thức thanh toán where t4.mã phương thức thanh toán = mastercard
select id sản phẩm from mặt hàng được đặt group by id sản phẩm order by count (*) desc limit 1
select id sản phẩm from mặt hàng được đặt order by count (*) desc limit 1
select t1.mô tả về loại dịch vụ from loại dịch vụ as t1 join loại dịch vụ as t2 on t1.mã loại dịch vụ = t2.mã loại dịch vụ where t1.mô tả về loại dịch vụ = picture intersect select t1.mô tả về loại dịch vụ from loại dịch vụ as t1 join loại dịch vụ as t2 on t1.mã loại dịch vụ = t2.mã loại dịch vụ where t1.mô tả về loại dịch vụ = film
select t1.mô tả về loại dịch vụ from loại dịch vụ as t1 join mô tả về sản phẩm as t2 on t1.mã loại dịch vụ = t2.mã loại dịch vụ where t2.tên sản phẩm = image intersect select t1.mô tả về loại dịch vụ from loại dịch vụ as t1 join mô tả về sản phẩm as t2 on t1.mã loại dịch vụ = t2.mã loại dịch vụ where t2.tên sản phẩm = film
select count (*) from tài khoản
select count (*) from tài khoản
select count (distinct id khách hàng) from tài khoản
select count (distinct id khách hàng) from tài khoản
select id tài khoản , ngày mở tài khoản , tên tài khoản , chi tiết khác về tài khoản from tài khoản
select id tài khoản , ngày mở tài khoản , tên tài khoản , chi tiết khác về tài khoản from tài khoản
select t2.id tài khoản , t2.tên tài khoản , t2.ngày mở tài khoản , t2.chi tiết khác về tài khoản from khách hàng as t1 join tài khoản as t2 on t1.id khách hàng = t2.id khách hàng where t1.tên khách hàng = mea afghanistan
select t1.id tài khoản , t1.tên tài khoản , t1.ngày mở tài khoản , t1.chi tiết khác về tài khoản from tài khoản as t1 join khách hàng as t2 on t1.id khách hàng = t2.id khách hàng where t2.tên khách hàng = mea afghanistan
select t1.tên tài khoản , t1.chi tiết khác về tài khoản from tài khoản as t1 join khách hàng as t2 on t1.id khách hàng = t2.id khách hàng where t2.tên khách hàng = mea and t2.họ của khách hàng = afghanistan
select t1.tên tài khoản , t1.chi tiết khác về tài khoản from tài khoản as t1 join khách hàng as t2 on t1.id khách hàng = t2.id khách hàng where t2.tên khách hàng = mea afghanistan keeling
select t1.tên khách hàng , t1.họ của khách hàng from khách hàng as t1 join tài khoản as t2 on t1.id khách hàng = t2.id khách hàng where t2.id tài khoản = 900
select t1.tên khách hàng , t1.họ của khách hàng from khách hàng as t1 join tài khoản as t2 on t1.id khách hàng = t2.id khách hàng where t2.id tài khoản = 900
select count (*) from khách hàng where id khách hàng not in (select id khách hàng from tài khoản)
select count (*) from khách hàng where id khách hàng not in (select id khách hàng from tài khoản)
select distinct tên khách hàng , họ của khách hàng , số điện thoại from khách hàng as t1 join tài khoản as t2 on t1.id khách hàng = t2.id khách hàng
select distinct tên khách hàng , họ của khách hàng , số điện thoại from khách hàng as t1 join tài khoản as t2 on t1.id khách hàng = t2.id khách hàng
select id khách hàng from khách hàng except select id khách hàng from tài khoản
select id khách hàng from khách hàng except select id khách hàng from tài khoản
select count (*) , t1.id khách hàng from khách hàng as t1 join tài khoản as t2 on t1.id khách hàng = t2.id khách hàng group by t1.id khách hàng
select id khách hàng , count (*) from tài khoản group by id khách hàng
select t1.tên khách hàng , t1.họ của khách hàng , t1.id khách hàng from khách hàng as t1 join tài khoản as t2 on t1.id khách hàng = t2.id khách hàng group by t1.id khách hàng order by count (*) desc limit 1
select t1.id khách hàng , t2.tên khách hàng , t2.họ của khách hàng from tài khoản as t1 join khách hàng as t2 on t1.id khách hàng = t2.id khách hàng group by t1.id khách hàng order by count (*) desc limit 1
select t1.id khách hàng , t1.tên khách hàng , t1.họ của khách hàng , count (*) from khách hàng as t1 join tài khoản as t2 on t1.id khách hàng = t2.id khách hàng group by t1.id khách hàng
select t1.tên khách hàng , t1.họ của khách hàng , t1.id khách hàng , count (*) from khách hàng as t1 join tài khoản as t2 on t1.id khách hàng = t2.id khách hàng group by t1.id khách hàng
select t1.tên khách hàng , t1.id khách hàng from khách hàng as t1 join tài khoản as t2 on t1.id khách hàng = t2.id khách hàng group by t1.id khách hàng having count (*) >= 2
select t1.tên khách hàng , t1.id khách hàng from khách hàng as t1 join tài khoản as t2 on t1.id khách hàng = t2.id khách hàng group by t1.id khách hàng having count (*) >= 2
select count (*) from khách hàng
select count (*) from khách hàng
select count (*) , giới tính from khách hàng group by giới tính
select count (*) , giới tính from khách hàng group by giới tính
select count (*) from giao dịch tài chính
select count (*) from giao dịch tài chính
select count (*) , t1.id tài khoản from tài khoản as t1 join giao dịch tài chính as t2 on t1.id tài khoản = t2.id tài khoản group by t1.id tài khoản
select count (*) , id tài khoản from giao dịch tài chính group by id tài khoản
select count (*) from tài khoản as t1 join giao dịch tài chính as t2 on t1.id tài khoản = t2.id tài khoản where t1.tên tài khoản = 337
select count (*) from giao dịch tài chính as t1 join tài khoản as t2 on t1.id tài khoản = t2.id tài khoản where t2.tên tài khoản = 337
select avg (số tiền giao dịch) , min (số tiền giao dịch) , max (số tiền giao dịch) , sum (số tiền giao dịch) from giao dịch tài chính
select avg (số tiền giao dịch) , min (số tiền giao dịch) , max (số tiền giao dịch) , sum (số tiền giao dịch) from giao dịch tài chính
select id giao dịch from giao dịch tài chính where số tiền giao dịch > (select avg (số tiền giao dịch) from giao dịch tài chính)
select id giao dịch from giao dịch tài chính where số tiền giao dịch > (select avg (số tiền giao dịch) from giao dịch tài chính)
select loại giao dịch , sum (số tiền giao dịch) from giao dịch tài chính group by loại giao dịch
select sum (số tiền giao dịch) , loại giao dịch from giao dịch tài chính group by loại giao dịch
select t1.tên tài khoản , t1.id tài khoản , count (*) from tài khoản as t1 join giao dịch tài chính as t2 on t1.id tài khoản = t2.id tài khoản group by t1.id tài khoản
select t1.tên tài khoản , t1.id tài khoản , count (*) from tài khoản as t1 join giao dịch tài chính as t2 on t1.id tài khoản = t2.id tài khoản group by t1.id tài khoản
select id tài khoản from giao dịch tài chính group by id tài khoản order by count (*) desc limit 1
select id tài khoản from giao dịch tài chính group by id tài khoản order by count (*) desc limit 1
select t1.tên tài khoản , t1.id tài khoản from tài khoản as t1 join giao dịch tài chính as t2 on t1.id tài khoản = t2.id tài khoản group by t1.id tài khoản having count (*) >= 4
select t1.tên tài khoản , t1.id tài khoản from tài khoản as t1 join giao dịch tài chính as t2 on t1.id tài khoản = t2.id tài khoản group by t1.id tài khoản having count (*) >= 4
select distinct kích thước sản phẩm from sản phẩm
select distinct kích thước sản phẩm from sản phẩm
select distinct màu sản phẩm from sản phẩm
select count (distinct màu sản phẩm) from sản phẩm
select số hoá đơn , count (*) from giao dịch tài chính group by số hoá đơn
select số hoá đơn , count (*) from giao dịch tài chính group by số hoá đơn
select t2.số hoá đơn , t2.ngày lập hoá đơn from giao dịch tài chính as t1 join hoá đơn as t2 on t1.số hoá đơn = t2.số hoá đơn group by t1.số hoá đơn order by count (*) desc limit 1
select t1.số hoá đơn , t1.ngày lập hoá đơn from hoá đơn as t1 join giao dịch tài chính as t2 on t1.số hoá đơn = t2.số hoá đơn group by t1.số hoá đơn order by sum (t2.số tiền giao dịch) desc limit 1
select count (*) from hoá đơn
select count (*) from hoá đơn
select t2.ngày lập hoá đơn , t1.id đơn hàng , t2.chi tiết hoá đơn from hoá đơn as t1 join hoá đơn mặt hàng as t2 on t1.số hoá đơn = t2.số hoá đơn
select t2.ngày lập hoá đơn , t2.id đơn hàng , t2.chi tiết đặt hàng from hoá đơn as t1 join đơn đặt hàng as t2 on t1.id đơn hàng = t2.id đơn hàng
select id đơn hàng , count (*) from hoá đơn group by id đơn hàng
select id đơn hàng , count (*) from hoá đơn group by id đơn hàng
select t1.id đơn hàng , t1.chi tiết đặt hàng from đơn đặt hàng as t1 join hoá đơn as t2 on t1.id đơn hàng = t2.id đơn hàng group by t1.id đơn hàng having count (*) > 2
select t1.id đơn hàng , t1.chi tiết đặt hàng from đơn đặt hàng as t1 join hoá đơn as t2 on t1.id đơn hàng = t2.id đơn hàng group by t1.id đơn hàng having count (*) >= 2
select t1.id khách hàng , t1.họ của khách hàng , t1.số điện thoại from khách hàng as t1 join đơn đặt hàng as t2 on t1.id khách hàng = t2.id khách hàng group by t1.id khách hàng order by count (*) desc limit 1
select t1.họ của khách hàng , t1.id khách hàng , t1.số điện thoại from khách hàng as t1 join đơn đặt hàng as t2 on t1.id khách hàng = t2.id khách hàng group by t1.id khách hàng order by count (*) desc limit 1
select tên sản phẩm from sản phẩm except select t1.tên sản phẩm from sản phẩm as t1 join mặt hàng được đặt as t2 on t1.id sản phẩm = t2.id sản phẩm
select tên sản phẩm from sản phẩm except select t1.tên sản phẩm from sản phẩm as t1 join mặt hàng được đặt as t2 on t1.id sản phẩm = t2.id sản phẩm
select t2.tên sản phẩm , sum (t1.số lượng sản phẩm) from mặt hàng được đặt as t1 join sản phẩm as t2 on t1.id sản phẩm = t2.id sản phẩm group by t2.tên sản phẩm
select t1.tên sản phẩm , sum (t2.số lượng sản phẩm) from sản phẩm as t1 join mặt hàng được đặt as t2 on t1.id sản phẩm = t2.id sản phẩm group by t1.tên sản phẩm
select id đơn hàng , count (*) from mặt hàng được đặt group by id đơn hàng
select count (*) , id đơn hàng from mặt hàng được đặt group by id đơn hàng
select count (distinct id đơn hàng) , id sản phẩm from mặt hàng được đặt group by id sản phẩm
select count (distinct id đơn hàng) from mặt hàng được đặt
select t1.tên sản phẩm , count (*) from sản phẩm as t1 join mặt hàng được đặt as t2 on t1.id sản phẩm = t2.id sản phẩm group by t1.tên sản phẩm
select count (*) , t1.tên sản phẩm from sản phẩm as t1 join mặt hàng được đặt as t2 on t1.id sản phẩm = t2.id sản phẩm group by t1.tên sản phẩm
select id đơn hàng , count (*) from mặt hàng được đặt group by id đơn hàng
select count (distinct id sản phẩm) , id đơn hàng from mặt hàng được đặt group by id đơn hàng
select id đơn hàng , sum (số lượng sản phẩm) from mặt hàng được đặt group by id đơn hàng
select id đơn hàng , sum (tổng số lượng sản phẩm) from mặt hàng được đặt group by id đơn hàng
select count (*) from sản phẩm where id sản phẩm mẹ not in (select id sản phẩm mẹ from mặt hàng được đặt)
select count (*) from sản phẩm where id sản phẩm not in (select id sản phẩm from mặt hàng được đặt)
select count (*) from địa chỉ where quốc gia = usa
select distinct thành phố from địa chỉ
select tiểu bang , count (*) from địa chỉ group by tiểu bang
select tên khách hàng , điện thoại khách hàng from khách hàng where id khách hàng not in (select id khách hàng from lịch sử địa chỉ khách hàng)
select t1.tên khách hàng from khách hàng as t1 join lượt đặt hàng của khách hàng as t2 on t1.id khách hàng = t2.id khách hàng group by t1.tên khách hàng order by count (*) desc limit 1
select mã loại sản phẩm from sản phẩm group by mã loại sản phẩm having count (*) >= 2
select t1.tên khách hàng from khách hàng as t1 join lượt đặt hàng của khách hàng as t2 on t1.id khách hàng = t2.id khách hàng where mã trạng thái đơn hàng = partially delivered intersect select t1.tên khách hàng from khách hàng as t1 join lượt đặt hàng của khách hàng as t2 on t1.id khách hàng = t2.id khách hàng where mã trạng thái đơn hàng = completed
select tên khách hàng , điện thoại khách hàng , mã phương thức thanh toán from khách hàng order by mã số khách hàng desc
select t2.tên sản phẩm , sum (t1.số lượng đặt hàng) from mặt hàng được đặt as t1 join sản phẩm as t2 on t1.id sản phẩm = t2.id sản phẩm group by t1.id sản phẩm
select max (giá sản phẩm) , min (giá sản phẩm) , avg (giá sản phẩm) from sản phẩm
select count (*) from sản phẩm where giá sản phẩm > (select avg (giá sản phẩm) from sản phẩm)
select t1.tên khách hàng , t2.thành phố , t1.ngày đặt hàng , t1.ngày đặt hàng from lịch sử địa chỉ khách hàng as t1 join khách hàng as t2 on t1.id khách hàng = t2.id khách hàng
select t1.tên khách hàng from khách hàng as t1 join lượt đặt hàng của khách hàng as t2 on t1.id khách hàng = t2.id khách hàng where t1.mã phương thức thanh toán = credit card group by t1.id khách hàng having count (*) > 2
select t1.tên khách hàng , t1.điện thoại khách hàng from khách hàng as t1 join lượt đặt hàng của khách hàng as t2 on t1.id khách hàng = t2.id khách hàng join mặt hàng được đặt as t3 on t2.id đơn hàng = t3.id đơn hàng group by t1.id khách hàng order by sum (t3.số lượng đặt hàng) limit 1
select mã loại sản phẩm , tên sản phẩm from sản phẩm where giá sản phẩm > 1000 or giá sản phẩm < 500
select count (*) from bộ trưởng where tuổi > 56
select tên , sinh ra ở tiểu bang , tuổi from bộ trưởng order by tuổi
select năm thành lập , tên , ngân sách tính theo tỷ from các bộ
select max (ngân sách tính theo tỷ) , min (ngân sách tính theo tỷ) from các bộ
select avg (số lượng nhân viên) from các bộ where xếp hạng between 10 and 15
select tên from bộ trưởng where sinh ra ở tiểu bang != california
select distinct t1.năm thành lập from các bộ as t1 join bộ trưởng as t2 on t1.id các bộ = t2.id người đứng đầu where t2.sinh ra ở tiểu bang = alabama
select distinct sinh ra ở tiểu bang from bộ trưởng group by sinh ra ở tiểu bang having count (*) >= 3
select năm thành lập from các bộ group by năm thành lập order by count (*) desc limit 1
select t1.tên , t1.số lượng nhân viên from các bộ as t1 join sự quản lý as t2 on t1.id các bộ = t2.id các bộ where t2.vai trò tạm thời = t
select count (distinct vai trò tạm thời) from sự quản lý
select count (*) from các bộ where id các bộ not in (select id các bộ from bộ trưởng)
select distinct tuổi from bộ trưởng as t1 join sự quản lý as t2 on t1.id người đứng đầu = t2.id người đứng đầu where t2.vai trò tạm thời = acting manager
select sinh ra ở tiểu bang from bộ trưởng where tên = finance intersect select sinh ra ở tiểu bang from bộ trưởng where tên = home affairs
select t1.id các bộ , t1.tên , count (*) from bộ trưởng as t1 join sự quản lý as t2 on t1.id người đứng đầu = t2.id người đứng đầu group by t2.id các bộ having count (*) > 1
select id người đứng đầu , tên from bộ trưởng where tên like %ha%
select id from xe
select id from xe
select count (*) from xe
select count (*) from xe
select chi tiết về xe from xe where id = 1
select chi tiết về xe from xe where id = 1
select tên , tên đệm , họ from nhân viên
select tên , tên đệm , họ from nhân viên
select ngày sinh from nhân viên where tên = janessa and họ = sawayn
select ngày sinh from nhân viên where tên = janessa and họ = sawayn
select ngày nhân viên gia nhập from nhân viên where tên = janessa and họ = sawayn
select ngày nhân viên gia nhập from nhân viên where tên = janessa and họ = sawayn
select ngày nhân viên rời đi from nhân viên where tên = janessa and họ = sawayn
select ngày nhân viên rời đi from nhân viên where tên = janessa and họ = sawayn
select count (*) from nhân viên where tên = ludie
select count (*) from nhân viên where tên = ludie
select biệt danh from nhân viên where tên = janessa and họ = sawayn
select biệt danh from nhân viên where tên = janessa and họ = sawayn
select count (*) from nhân viên
select count (*) from nhân viên
select t3.thành phố from nhân viên as t1 join khách hàng as t2 join địa chỉ khách hàng as t3 on t1.id nhân viên = t2.id địa chỉ nhân viên and t2.id khách hàng = t3.id địa chỉ khách hàng where t1.tên = janessa and t1.họ = sawayn
select t3.thành phố from khách hàng as t1 join địa chỉ khách hàng as t2 on t1.id địa chỉ khách hàng = t2.id địa chỉ join địa chỉ as t3 on t2.id địa chỉ dòng 1 của tòa nhà = t3.id địa chỉ where t1.tên = janessa and t1.họ = sawayn
select t3.quốc gia , t3.tiểu bang from nhân viên as t1 join địa chỉ nhân viên as t2 on t1.id địa chỉ nhân viên = t2.id địa chỉ nhân viên join địa chỉ as t3 on t2.id địa chỉ dòng 1 của tòa nhà = t3.id địa chỉ where t1.tên = janessa and t1.họ = sawayn
select t3.quốc gia , t3.tiểu bang from khách hàng as t1 join địa chỉ khách hàng as t2 on t1.id địa chỉ khách hàng = t2.id địa chỉ join địa chỉ as t3 on t2.id địa chỉ dòng 1 của tòa nhà = t3.id địa chỉ where t1.tên = janessa and t1.họ = sawayn
select sum (giờ học) from bài giảng as t1 join khách hàng as t2 on t1.id khách hàng = t2.id khách hàng where t2.tên = rylan and t2.họ = goodwin
select sum (t1.giờ học) from bài giảng as t1 join khách hàng as t2 on t1.id khách hàng = t2.id khách hàng where t2.tên = rylan and t2.họ = goodwin
select t3.mã bưu điện from địa chỉ as t1 join nhân viên as t2 on t1.id địa chỉ = t2.id địa chỉ nhân viên join khách hàng as t3 on t2.id khách hàng = t3.id khách hàng where t2.tên = janessa and t2.họ = sawayn
select t3.mã bưu điện from nhân viên as t1 join địa chỉ nhân viên as t2 on t1.id nhân viên = t2.id địa chỉ nhân viên join địa chỉ as t3 on t2.id địa chỉ nhân viên = t3.id địa chỉ where t1.tên = janessa and t1.họ = sawayn
select count (*) from địa chỉ as t1 join nhân viên as t2 on t1.id địa chỉ nhân viên = t2.id nhân viên where t1.tiểu bang = georgia
select count (*) from nhân viên as t1 join địa chỉ nhân viên as t2 on t1.id địa chỉ nhân viên = t2.id địa chỉ where t2.tiểu bang = georgia
select t1.tên , t1.họ from nhân viên as t1 join địa chỉ nhân viên as t2 on t1.id nhân viên = t2.id nhân viên join địa chỉ as t3 on t2.id địa chỉ nhân viên = t3.id địa chỉ where t3.thành phố = damianfort
select t1.tên , t1.họ from nhân viên as t1 join địa chỉ nhân viên as t2 on t1.id nhân viên = t2.id nhân viên join địa chỉ as t3 on t2.id địa chỉ nhân viên = t3.id địa chỉ where t3.thành phố = damianfort
select t3.thành phố , count (*) from nhân viên as t1 join địa chỉ nhân viên as t2 on t1.id địa chỉ nhân viên = t2.id địa chỉ join địa chỉ as t3 on t2.id địa chỉ dòng 1 của tòa nhà = t3.id địa chỉ group by t3.thành phố order by count (*) desc limit 1
select t2.thành phố , count (*) from nhân viên as t1 join địa chỉ as t2 on t1.id địa chỉ nhân viên = t2.id địa chỉ group by t2.thành phố order by count (*) desc limit 1
select t2.tiểu bang from địa chỉ as t1 join nhân viên as t2 on t1.id địa chỉ = t2.id địa chỉ nhân viên group by t2.tiểu bang having count (*) between 2 and 4
select t2.tiểu bang from địa chỉ as t1 join nhân viên as t2 on t1.id địa chỉ = t2.id địa chỉ nhân viên group by t2.tiểu bang having count (*) between 2 and 4
select tên , họ from khách hàng
select tên , họ from khách hàng
select địa chỉ email , ngày sinh from khách hàng where tên = carole
select địa chỉ email , ngày sinh from khách hàng where tên = carole
select số điện thoại , địa chỉ email from khách hàng where số tiền còn thiếu > 2000
select số điện thoại , địa chỉ email from khách hàng where số tiền còn thiếu > 2000
select mã trạng thái khách hàng , số điện thoại di động , địa chỉ email from khách hàng where tên = marina or họ = kohler
select mã trạng thái khách hàng , số điện thoại di động , địa chỉ email from khách hàng where tên = marina or họ = kohler
select ngày sinh from khách hàng where mã trạng thái khách hàng = good customer
select ngày sinh from khách hàng where mã trạng thái khách hàng = good customer
select ngày trở thành khách hàng from khách hàng where tên = carole and họ = bernhard
select ngày trở thành khách hàng from khách hàng where tên = carole and họ = bernhard
select count (*) from khách hàng
select count (*) from khách hàng
select mã trạng thái khách hàng , count (*) from khách hàng group by mã trạng thái khách hàng
select mã trạng thái khách hàng , count (*) from khách hàng group by mã trạng thái khách hàng
select mã trạng thái khách hàng from khách hàng group by mã trạng tháng khách hàng order by count (*) limit 1
select mã trạng thái khách hàng from khách hàng group by mã trạng thái khách hàng order by count (*) limit 1
select count (*) from bài giảng as t1 join khách hàng as t2 on t1.id khách hàng = t2.id khách hàng where t2.tên = rylan and t2.họ = goodwin and t1.mã trạng thái bài giảng = completed
select count (*) from bài giảng as t1 join nhân viên as t2 on t1.id nhân viên = t2.id nhân viên where t2.tên = rylan and t2.họ = goodwin
select max (số tiền còn thiếu) , min (số tiền còn thiếu) , avg (số tiền còn thiếu) from khách hàng
select max (số tiền còn thiếu) , min (số tiền còn thiếu) , avg (số tiền còn thiếu) from khách hàng
select tên , họ from khách hàng where số tiền còn thiếu between 1000 and 3000
select tên , họ from khách hàng where số tiền còn thiếu between 1000 and 3000
select t1.tên , t1.họ from khách hàng as t1 join địa chỉ khách hàng as t2 on t1.id khách hàng = t2.id khách hàng where t2.thành phố = lockmanfurt
select t1.tên , t1.họ from khách hàng as t1 join địa chỉ khách hàng as t2 on t1.id khách hàng = t2.id khách hàng where t2.thành phố = lockmanfurt
select t2.quốc gia from khách hàng as t1 join địa chỉ khách hàng as t2 on t1.id địa chỉ khách hàng = t2.id địa chỉ join nhân viên as t3 on t1.id khách hàng = t3.id khách hàng where t3.tên = carole and t3.họ = bernhard
select t3.quốc gia from khách hàng as t1 join địa chỉ khách hàng as t2 on t1.id địa chỉ khách hàng = t2.id địa chỉ join địa chỉ as t3 on t2.id địa chỉ dòng 1 của tòa nhà = t3.id địa chỉ where t1.tên = carole and t1.họ = bernhard
select t2.mã bưu điện from khách hàng as t1 join địa chỉ khách hàng as t2 on t1.id địa chỉ khách hàng = t2.id địa chỉ join địa chỉ as t3 on t3.id địa chỉ = t1.id địa chỉ khách hàng where t1.tên = carole and t1.họ = bernhard
select t3.mã bưu điện from khách hàng as t1 join địa chỉ khách hàng as t2 on t1.id địa chỉ khách hàng = t2.id địa chỉ join địa chỉ as t3 on t2.id địa chỉ dòng 1 của tòa nhà = t3.id địa chỉ where t1.tên = carole and t1.họ = bernhard
select t3.thành phố from khách hàng as t1 join địa chỉ khách hàng as t2 on t1.id địa chỉ khách hàng = t2.id địa chỉ join địa chỉ as t3 on t2.id địa chỉ dòng 1 của tòa nhà = t3.id địa chỉ where t3.thành phố !=   group by t3.thành phố order by count (*) desc limit 1
select t3.thành phố from khách hàng as t1 join địa chỉ khách hàng as t2 on t1.id địa chỉ khách hàng = t2.id địa chỉ join địa chỉ as t3 on t2.id địa chỉ dòng 1 của tòa nhà = t3.id địa chỉ where t3.thành phố is not null group by t3.thành phố order by count (*) desc limit 1
select sum (t1.số tiền thanh toán) from khoản thanh toán của khách hàng as t1 join khách hàng as t2 on t1.id khách hàng = t2.id khách hàng where t2.tên = carole and t2.họ = bernhard
select sum (số tiền thanh toán) from khách hàng as t1 join khoản thanh toán của khách hàng as t2 on t1.id khách hàng = t2.id khách hàng where t1.tên = carole and t1.họ = bernhard
select count (*) from khách hàng where id khách hàng not in (select id khách hàng from khoản thanh toán của khách hàng)
select count (*) from khách hàng where id khách hàng not in (select id khách hàng from khoản thanh toán của khách hàng)
select t1.tên , t1.họ from khách hàng as t1 join khoản thanh toán của khách hàng as t2 on t1.id khách hàng = t2.id khách hàng group by t1.id khách hàng having count (*) > 2
select t1.tên , t1.họ from khách hàng as t1 join khoản thanh toán của khách hàng as t2 on t1.id khách hàng = t2.id khách hàng group by t1.id khách hàng having count (*) > 2
select mã phương thức thanh toán , count (*) from khoản thanh toán của khách hàng group by mã phương thức thanh toán
select mã phương thức thanh toán , count (*) from khoản thanh toán của khách hàng group by mã phương thức thanh toán
select count (*) from bài giảng where mã trạng thái bài giảng = cancelled
select count (*) from bài giảng where mã trạng thái bài giảng = cancelled
select t1.id bài giảng from bài giảng as t1 join nhân viên as t2 on t1.id nhân viên = t2.id nhân viên where t2.tên = janessa and t2.họ = sawayn and t2.biệt danh like %s%
select t1.id bài giảng from bài giảng as t1 join nhân viên as t2 on t1.id nhân viên = t2.id nhân viên where t2.tên like %janessa% and t2.biệt danh like %s%
select count (*) from bài giảng as t1 join nhân viên as t2 on t1.id nhân viên = t2.id nhân viên where t2.tên like %a%
select count (*) from bài giảng as t1 join nhân viên as t2 on t1.id nhân viên = t2.id nhân viên where t2.tên like %a%
select sum (t2.giờ học) from bài giảng as t1 join nhân viên as t2 on t1.id nhân viên = t2.id nhân viên where t2.tên = janessa and t2.họ = sawayn
select sum (t1.giờ học) from bài giảng as t1 join nhân viên as t2 on t1.id nhân viên = t2.id nhân viên where t2.tên = janessa and t2.họ = sawayn
select avg (t2.giá) from bài giảng as t1 join nhân viên as t2 on t1.id nhân viên = t2.id nhân viên where t2.tên = janessa and t2.họ = sawayn
select avg (t2.giá) from khách hàng as t1 join bài giảng as t2 on t1.id khách hàng = t2.id khách hàng where t1.tên = janessa and t1.họ = sawayn
select count (*) from khách hàng as t1 join bài giảng as t2 on t1.id khách hàng = t2.id khách hàng where t1.tên = ray
select count (*) from khách hàng as t1 join bài giảng as t2 on t1.id khách hàng = t2.id khách hàng where t1.tên = ray
select họ from khách hàng intersect select họ from nhân viên
select họ from khách hàng intersect select họ from nhân viên
select tên from nhân viên except select t2.tên from bài giảng as t1 join nhân viên as t2 on t1.id nhân viên = t2.id nhân viên
select t1.tên from nhân viên as t1 join bài giảng as t2 on t1.id nhân viên = t2.id nhân viên where t2.id bài giảng is null
select t1.id , t1.chi tiết về xe from xe as t1 join bài giảng as t2 on t1.id = t2.id xe group by t2.id xe order by count (*) desc limit 1
select count (*) from nhân viên
select count (*) from nhân viên
select tên from nhân viên order by tuổi asc
select tên from nhân viên order by tuổi asc
select count (*) , thành phố from nhân viên group by thành phố
select count (*) , thành phố from nhân viên group by thành phố
select thành phố from nhân viên where tuổi < 30 group by thành phố having count (*) > 1
select thành phố from nhân viên where tuổi < 30 group by thành phố having count (*) > 1
select count (*) , địa điểm from cửa hàng group by địa điểm
select count (*) , địa điểm from cửa hàng group by địa điểm
select tên người quản lý , quận from cửa hàng where số lượng sản phẩm = (select max (số lượng sản phẩm) from cửa hàng)
select tên người quản lý , quận from cửa hàng order by số lượng sản phẩm desc limit 1
select max (số lượng sản phẩm) , min (số lượng sản phẩm) from cửa hàng
select max (số lượng sản phẩm) , min (số lượng sản phẩm) from cửa hàng
select tên , địa điểm , quận from cửa hàng order by số lượng sản phẩm desc
select tên , địa điểm , quận from cửa hàng order by số lượng sản phẩm desc
select tên from cửa hàng where số lượng sản phẩm > (select avg (số lượng sản phẩm) from cửa hàng)
select tên from cửa hàng where số lượng sản phẩm > (select avg (số lượng sản phẩm) from cửa hàng)
select t1.tên from nhân viên as t1 join đánh giá as t2 on t1.id nhân viên = t2.id nhân viên group by t2.id nhân viên order by count (*) desc limit 1
select t1.tên from nhân viên as t1 join đánh giá as t2 on t1.id nhân viên = t2.id nhân viên group by t2.id nhân viên order by count (*) desc limit 1
select t1.tên from nhân viên as t1 join đánh giá as t2 on t1.id nhân viên = t2.id nhân viên order by tiền thưởng desc limit 1
select t1.tên from nhân viên as t1 join đánh giá as t2 on t1.id nhân viên = t2.id nhân viên order by tiền thưởng desc limit 1
select tên from nhân viên where id nhân viên not in (select id nhân viên from đánh giá)
select tên from nhân viên where id nhân viên not in (select id nhân viên from đánh giá)
select t1.tên from cửa hàng as t1 join tuyển dụng as t2 on t1.id cửa hàng = t2.id cửa hàng group by t2.id cửa hàng order by count (*) desc limit 1
select t1.tên from cửa hàng as t1 join tuyển dụng as t2 on t1.id cửa hàng = t2.id cửa hàng group by t1.tên order by count (*) desc limit 1
select tên from cửa hàng where id cửa hàng not in (select id cửa hàng from tuyển dụng)
select tên from cửa hàng where id cửa hàng not in (select id cửa hàng from tuyển dụng)
select t2.tên , count (*) from tuyển dụng as t1 join cửa hàng as t2 on t1.id cửa hàng = t2.id cửa hàng group by t1.id cửa hàng
select t1.tên , count (*) from cửa hàng as t1 join tuyển dụng as t2 on t1.id cửa hàng = t2.id cửa hàng group by t1.tên
select sum (tiền thưởng) from đánh giá
select sum (tiền thưởng) from đánh giá
select * from tuyển dụng
select * from tuyển dụng
select quận from cửa hàng where số lượng sản phẩm < 3000 intersect select quận from cửa hàng where số lượng sản phẩm > 10000
select quận from cửa hàng where số lượng sản phẩm < 3000 intersect select quận from cửa hàng where số lượng sản phẩm > 10000
select count (distinct địa điểm) from cửa hàng
select count (distinct địa điểm) from cửa hàng
select quốc gia from hãng hàng không where tên hãng hàng không = jetblue airways
select quốc gia from hãng hàng không where tên hãng hàng không = jetblue airways
select tên viết tắt from hãng hàng không where tên hãng hàng không = jetblue airways
select tên viết tắt from hãng hàng không where tên hãng hàng không = jetblue airways
select tên hãng hàng không , tên viết tắt from hãng hàng không where quốc gia != united states
select tên hãng hàng không , tên viết tắt from hãng hàng không where quốc gia != united states
select mã sân bay , tên sân bay from sân bay where thành phố = anthony
select mã sân bay , tên sân bay from sân bay where thành phố = anthony
select count (*) from hãng hàng không
select count (*) from hãng hàng không
select count (*) from sân bay
select count (*) from sân bay
select count (*) from chuyến bay
select count (*) from chuyến bay
select tên hãng hàng không from hãng hàng không where tên viết tắt = ual
select tên hãng hàng không from hãng hàng không where tên viết tắt = ual
select count (*) from hãng hàng không where quốc gia = united states
select count (*) from hãng hàng không where quốc gia = united states
select thành phố , quốc gia from sân bay where tên sân bay = alton
select thành phố , quốc gia from sân bay where tên sân bay = alton
select tên sân bay from sân bay where mã sân bay = ako
select tên sân bay from sân bay where mã sân bay = ako
select tên sân bay from sân bay where thành phố = aberdeen
select tên sân bay from sân bay where thành phố = aberdeen
select count (*) from chuyến bay where sân bay khởi hành = apg
select count (*) from chuyến bay where sân bay khởi hành = apg
select count (*) from chuyến bay where sân bay đích = ato
select count (*) from chuyến bay where sân bay đích = (select tên sân bay from sân bay where mã sân bay = ato)
select count (*) from sân bay as t1 join chuyến bay as t2 on t1.mã sân bay = t2.sân bay khởi hành where t1.thành phố = aberdeen
select count (*) from sân bay as t1 join chuyến bay as t2 on t1.mã sân bay = t2.sân bay khởi hành where t1.thành phố = aberdeen
select count (*) from sân bay as t1 join chuyến bay as t2 on t1.mã sân bay = t2.sân bay đích where t1.thành phố = aberdeen
select count (*) from sân bay as t1 join chuyến bay as t2 on t1.mã sân bay = t2.sân bay đích where t1.thành phố = aberdeen
select count (*) from sân bay as t1 join chuyến bay as t2 on t1.mã sân bay = t2.sân bay khởi hành join chuyến bay as t3 on t1.mã sân bay = t3.sân bay đích where t2.sân bay khởi hành = aberdeen and t3.sân bay đích = ashley
select count (*) from sân bay as t1 join chuyến bay as t2 on t1.mã sân bay = t2.sân bay khởi hành join chuyến bay as t3 on t1.mã sân bay = t3.sân bay đích where t2.sân bay khởi hành = aberdeen and t3.sân bay đích = ashley
select count (*) from hãng hàng không as t1 join chuyến bay as t2 on t1.id hãng hàng không = t2.hãng hàng không where t1.tên hãng hàng không = jetblue airways
select count (*) from hãng hàng không as t1 join chuyến bay as t2 on t1.id hãng hàng không = t2.hãng hàng không where t1.tên hãng hàng không = jetblue airways
select count (*) from chuyến bay as t1 join hãng hàng không as t2 on t1.hãng hàng không = t2.id hãng hàng không join sân bay as t3 on t1.sân bay đích = t3.mã sân bay where t2.tên hãng hàng không = united airlines and t3.tên sân bay = asy
select count (*) from chuyến bay as t1 join hãng hàng không as t2 on t1.hãng hàng không = t2.id hãng hàng không join sân bay as t3 on t1.sân bay đích = t3.mã sân bay where t2.tên hãng hàng không = united airlines and t3.tên sân bay = asy
select count (*) from chuyến bay as t1 join hãng hàng không as t2 on t1.hãng hàng không = t2.id hãng hàng không join sân bay as t3 on t1.sân bay khởi hành = t3.mã sân bay where t2.tên hãng hàng không = united airlines and t3.tên sân bay = ahd
select count (*) from chuyến bay as t1 join hãng hàng không as t2 on t1.hãng hàng không = t2.id hãng hàng không where t1.sân bay khởi hành = ahd and t2.tên hãng hàng không = united airlines
select count (*) from chuyến bay as t1 join hãng hàng không as t2 on t1.hãng hàng không = t2.id hãng hàng không join sân bay as t3 on t1.sân bay đích = t3.mã sân bay where t2.tên hãng hàng không = united airlines and t3.thành phố = aberdeen
select count (*) from chuyến bay as t1 join hãng hàng không as t2 on t1.hãng hàng không = t2.id hãng hàng không join sân bay as t3 on t1.sân bay đích = t3.mã sân bay where t2.tên hãng hàng không = united airlines and t3.tên sân bay = aberdeen
select t1.thành phố from sân bay as t1 join chuyến bay as t2 on t1.mã sân bay = t2.sân bay đích group by t1.thành phố order by count (*) desc limit 1
select t1.thành phố from sân bay as t1 join chuyến bay as t2 on t1.mã sân bay = t2.sân bay đích group by t1.thành phố order by count (*) desc limit 1
select t1.thành phố from sân bay as t1 join chuyến bay as t2 on t1.mã sân bay = t2.sân bay khởi hành group by t1.thành phố order by count (*) desc limit 1
select t1.thành phố from sân bay as t1 join chuyến bay as t2 on t1.mã sân bay = t2.sân bay khởi hành group by t1.thành phố order by count (*) desc limit 1
select t1.mã sân bay , count (*) from sân bay as t1 join chuyến bay as t2 on t1.mã sân bay = t2.sân bay khởi hành group by t1.mã sân bay order by count (*) desc limit 1
select sân bay khởi hành from chuyến bay group by sân bay khởi hành order by count (*) desc limit 1
select t1.mã sân bay from sân bay as t1 join chuyến bay as t2 on t1.mã sân bay = t2.sân bay khởi hành group by t1.mã sân bay order by count (*) limit 1
select sân bay khởi hành from chuyến bay group by sân bay khởi hành order by count (*) limit 1
select t1.tên hãng hàng không from hãng hàng không as t1 join chuyến bay as t2 on t1.id hãng hàng không = t2.hãng hàng không group by t1.tên hãng hàng không order by count (*) desc limit 1
select t1.tên hãng hàng không from hãng hàng không as t1 join chuyến bay as t2 on t1.id hãng hàng không = t2.hãng hàng không group by t1.tên hãng hàng không order by count (*) desc limit 1
select t1.tên viết tắt , t1.quốc gia from hãng hàng không as t1 join chuyến bay as t2 on t1.id hãng hàng không = t2.hãng hàng không group by t1.id hãng hàng không order by count (*) limit 1
select t1.tên viết tắt , t1.quốc gia from hãng hàng không as t1 join chuyến bay as t2 on t1.id hãng hàng không = t2.hãng hàng không group by t1.id hãng hàng không order by count (*) asc limit 1
select distinct t1.tên hãng hàng không from hãng hàng không as t1 join chuyến bay as t2 on t1.id hãng hàng không = t2.hãng hàng không where t2.sân bay khởi hành = ahd
select t1.tên hãng hàng không from hãng hàng không as t1 join chuyến bay as t2 on t1.id hãng hàng không = t2.hãng hàng không where t2.sân bay khởi hành = ahd
select distinct t1.tên hãng hàng không from hãng hàng không as t1 join chuyến bay as t2 on t1.id hãng hàng không = t2.hãng hàng không where t2.sân bay khởi hành = ahd
select t1.tên hãng hàng không from hãng hàng không as t1 join chuyến bay as t2 on t1.id hãng hàng không = t2.hãng hàng không where t2.sân bay đích = (select t3.sân bay khởi hành from sân bay as t3 where t3.tên sân bay = ahd)
select t1.tên hãng hàng không from hãng hàng không as t1 join chuyến bay as t2 on t1.id hãng hàng không = t2.hãng hàng không where t2.sân bay khởi hành = apg intersect select t1.tên hãng hàng không from hãng hàng không as t1 join chuyến bay as t2 on t1.id hãng hàng không = t2.hãng hàng không where t2.sân bay khởi hành = cvo
select t1.tên hãng hàng không from hãng hàng không as t1 join chuyến bay as t2 on t1.id hãng hàng không = t2.hãng hàng không where t2.sân bay khởi hành = apg intersect select t1.tên hãng hàng không from hãng hàng không as t1 join chuyến bay as t2 on t1.id hãng hàng không = t2.hãng hàng không where t2.sân bay khởi hành = cvo
select distinct t1.tên hãng hàng không from hãng hàng không as t1 join chuyến bay as t2 on t1.id hãng hàng không = t2.hãng hàng không where t2.sân bay khởi hành = cvo except select distinct t1.tên hãng hàng không from hãng hàng không as t1 join chuyến bay as t2 on t1.id hãng hàng không = t2.hãng hàng không where t2.sân bay khởi hành = apg
select distinct t1.tên hãng hàng không from hãng hàng không as t1 join chuyến bay as t2 on t1.id hãng hàng không = t2.hãng hàng không where t2.sân bay khởi hành = cvo except select distinct t1.tên hãng hàng không from hãng hàng không as t1 join chuyến bay as t2 on t1.id hãng hàng không = t2.hãng hàng không where t2.sân bay khởi hành = apg
select t1.tên hãng hàng không from hãng hàng không as t1 join chuyến bay as t2 on t1.id hãng hàng không = t2.hãng hàng không group by t1.tên hãng hàng không having count (*) >= 10
select t1.tên hãng hàng không from hãng hàng không as t1 join chuyến bay as t2 on t1.id hãng hàng không = t2.hãng hàng không group by t1.tên hãng hàng không having count (*) >= 10
select hãng hàng không from chuyến bay group by hãng hàng không having count (*) >= 200
select t1.tên hãng hàng không from hãng hàng không as t1 join chuyến bay as t2 on t1.id hãng hàng không = t2.hãng hàng không group by t1.tên hãng hàng không having count (*) < 200
select t1.số hiệu chuyến bay from chuyến bay as t1 join hãng hàng không as t2 on t1.hãng hàng không = t2.id hãng hàng không where t2.tên hãng hàng không = united airlines
select số hiệu chuyến bay from chuyến bay where hãng hàng không = (select id hãng hàng không from hãng hàng không where tên hãng hàng không = united airlines)
select số hiệu chuyến bay from chuyến bay where sân bay khởi hành = apg
select số hiệu chuyến bay from chuyến bay where sân bay khởi hành = apg
select số hiệu chuyến bay from chuyến bay where sân bay đích = apg
select số hiệu chuyến bay from chuyến bay where sân bay khởi hành = apg
select t1.số hiệu chuyến bay from chuyến bay as t1 join sân bay as t2 on t1.sân bay khởi hành = t2.mã sân bay where t2.thành phố = aberdeen
select số hiệu chuyến bay from chuyến bay where sân bay khởi hành = aberdeen
select distinct t1.số hiệu chuyến bay from chuyến bay as t1 join sân bay as t2 on t1.sân bay đích = t2.mã sân bay where t2.thành phố = aberdeen
select distinct t1.số hiệu chuyến bay from chuyến bay as t1 join sân bay as t2 on t1.sân bay đích = t2.mã sân bay where t2.thành phố = aberdeen
select count (*) from sân bay as t1 join chuyến bay as t2 on t1.mã sân bay = t2.sân bay khởi hành where t1.thành phố = aberdeen or t1.thành phố = abilene
select count (*) from sân bay as t1 join chuyến bay as t2 on t1.mã sân bay = t2.sân bay khởi hành where t1.thành phố = aberdeen or t1.thành phố = abilene
select tên sân bay from sân bay where mã sân bay not in (select sân bay khởi hành from chuyến bay) and mã sân bay not in (select sân bay đích from chuyến bay)
select tên sân bay from sân bay where mã sân bay not in (select sân bay khởi hành from chuyến bay)
select count (*) from trận đấu where mùa giải > 2007
select ngày from trận đấu order by đội chủ nhà desc
select mùa giải , đội chủ nhà , đội khách from trận đấu
select avg (trận đấu sân nhà) , max (trận đấu sân nhà) , min (trận đấu sân nhà) from sân vận động
select avg (số lượng người tham dự trung bình) from sân vận động where phần trăm sức chứa > 100
select cầu thủ , số lượng trận đấu , nguồn thông tin from chấn thương except select cầu thủ , số lượng trận đấu , nguồn thông tin from chấn thương where chấn thương = head injury
select t1.mùa giải from trận đấu as t1 join chấn thương as t2 on t1.id = t2.id trận đấu where t2.cầu thủ = walter samuel and t2.chấn thương = khiến
select t1.id , t1.tỉ số , t1.ngày from trận đấu as t1 join chấn thương as t2 on t1.id = t2.id trận đấu group by t2.id having count (*) >= 2
select t1.id , t1.tên from sân vận động as t1 join chấn thương as t2 on t1.id = t2.id sân vận động group by t1.id order by count (*) desc limit 1
select t1.id , t1.tên from sân vận động as t1 join chấn thương as t2 on t1.id = t2.id sân vận động group by t1.id order by count (*) desc limit 1
select t1.mùa giải , t2.tên from trận đấu as t1 join sân vận động as t2 on t1.id sân vận động = t2.id join chấn thương as t3 on t1.id = t3.id trận đấu where t3.chấn thương = knee or t3.chấn thương = head
select count (distinct nguồn thông tin) from chấn thương
select count (*) from trận đấu where id not in (select id trận đấu from chấn thương)
select count (distinct chấn thương) from chấn thương where mùa giải > 2010
select t2.tên from chấn thương as t1 join sân vận động as t2 on t1.id sân vận động = t2.id join trận đấu as t3 on t1.id trận đấu = t3.id where t1.cầu thủ = walter samuel intersect select t2.tên from chấn thương as t1 join sân vận động as t2 on t1.id sân vận động = t2.id join trận đấu as t3 on t1.id trận đấu = t3.id where t1.cầu thủ = thiago motta
select tên , số lượng người tham dự trung bình , tổng số người tham dự from sân vận động where id not in (select id sân vận động from chấn thương)
select tên from sân vận động where tên like %bank% or tên like %bank% or tên like %bank%
select t2.tên , count (*) from trận đấu as t1 join sân vận động as t2 on t1.id sân vận động = t2.id group by t1.id sân vận động
select t2.tên from buổi hoà nhạc as t1 join sân vận động as t2 on t1.id sân vận động = t2.id group by t1.id sân vận động order by count (*) desc limit 1
select năm phát hành from bộ phim where tiêu đề = con game
select năm phát hành from bộ phim where tiêu đề = the chase
select năm sinh from diễn viên where tên = benedict cumberbatch
select năm sinh from diễn viên where tên = benedict cumberbatch
select quốc tịch from diễn viên where tên = christoph waltz and giới tính = female
select quốc tịch from diễn viên where tên = christoph waltz
select tiêu đề from bộ phim where năm phát hành = 2015
select tên from diễn viên where nơi sinh = tehran
select tên from diễn viên where nơi sinh = tehran
select tên from diễn viên where nơi sinh = tehran
select tên from diễn viên where nơi sinh = afghanistan
select tên from diễn viên where quốc tịch = afghanistan
select tên from diễn viên where nơi sinh = afghanistan
select tên from diễn viên where năm sinh = 1984
select năm sinh from diễn viên where tên = kevin spacey
select năm sinh from diễn viên where tên = kevin spacey
select nơi sinh from diễn viên where tên = kevin spacey
select nơi sinh from diễn viên where tên = kevin spacey
select quốc tịch from diễn viên where tên = kevin spacey
select ngân sách from bộ phim where tiêu đề = finding nemo
select t3.tiêu đề from đạo diễn bởi as t2 join đạo diễn as t1 on t2.id đạo diễn = t1.id đạo diễn join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim where t1.tên = steven spielberg and t3.năm phát hành > 2006
select đạo diễn . tên from đạo diễn bởi as đạo diễn bởi đạo diễn join đạo diễn on đạo diễn bởi đạo diễn. id đạo diễn = đạo diễn. id đạo diễn bởi where đạo diễn bởi. id sê-ri phim = (select bộ phim. id bộ phim from bộ phim where bộ phim. tiêu đề = james bond) group by đạo diễn. tên having count (*) = 1
select t1.tên from đạo diễn as t1 join đạo diễn bởi as t2 on t1.id đạo diễn = t2.id đạo diễn join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim where t3.tiêu đề = james bond
select t1.tên from đạo diễn as t1 join đạo diễn bởi as t2 on t1.id đạo diễn = t2.id đạo diễn join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim where t3.tiêu đề = james bond
select t2.tên from phân vai as t1 join diễn viên as t2 on t1.id diễn viên = t2.id diễn viên join bộ phim as t3 on t1.id sê-ri phim = t3.id bộ phim where t3.tiêu đề = the imitation game and t1.vai diễn = alan turing
select diễn viên . tên from diễn viên join phân vai on diễn viên . id diễn viên = phân vai . id diễn viên join bộ phim on phân vai . id sê-ri phim = bộ phim . id bộ phim where bộ phim . tiêu đề = the imitation game and phân vai . vai diễn = alan turing
select t1.tên from diễn viên as t1 join phân vai as t2 on t1.id diễn viên = t2.id diễn viên join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim where t3.tiêu đề = the imitation game and t2.vai diễn = alan turing
select t1.tên from diễn viên as t1 join phân vai as t2 on t1.id diễn viên = t2.id diễn viên join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim where t3.tiêu đề = the imitation game and t2.vai diễn = alan turing
select t1.tên from diễn viên as t1 join phân vai as t2 on t1.id diễn viên = t2.id diễn viên join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim where t3.tiêu đề = the imitation game
select t3.thể loại from bộ phim as t1 join phân loại as t2 on t1.id bộ phim = t2.id sê-ri phim join thể loại as t3 on t2.id thể loại = t3.id thể loại where t1.tiêu đề = jura park
select đạo diễn . tên from đạo diễn bởi as t1 join đạo diễn as t2 on t1.id đạo diễn = t2.id đạo diễn bởi as t3 join bộ phim as t4 on t3.id sê-ri phim = t4.id bộ phim where t4.tiêu đề = joy and t4.năm phát hành = 2015
select t1.tiêu đề from bộ phim as t1 join được viết bởi as t2 on t1.id bộ phim = t2.id sê-ri phim join nhà viết kịch bản as t3 on t2.id nhà viết kịch bản = t3.id nhà viết kịch bản where t3.tên = matt damon
select t1.tiêu đề from bộ phim as t1 join được viết bởi as t2 on t1.id bộ phim = t2.id sê-ri phim join nhà viết kịch bản as t3 on t2.id nhà viết kịch bản = t3.id nhà viết kịch bản where t3.tên = woody allen
select t1.tiêu đề from bộ phim as t1 join phân vai as t2 on t1.id bộ phim = t2.id sê-ri phim join diễn viên as t3 on t2.id diễn viên = t3.id diễn viên where t3.tên = robin wright
select t1.tiêu đề from bộ phim as t1 join được làm bởi as t2 on t1.id bộ phim = t2.id sê-ri phim join diễn viên as t3 on t2.id diễn viên = t3.id diễn viên where t3.tên = robin wright
select t1.tiêu đề from bộ phim as t1 join được làm bởi as t2 on t1.id bộ phim = t2.id sê-ri phim join nhà sản xuất as t3 on t2.id nhà sản xuất = t3.id nhà sản xuất where t3.tên = robin wright
select ngân sách from bộ phim where tiêu đề = juno and năm phát hành = 2007
select tiêu đề from bộ phim where năm phát hành = 2010 and tiêu đề = sci-fi
select tiêu đề from bộ phim where năm phát hành = 2010 and tiêu đề = sci-fi
select tên from diễn viên where nơi sinh = austin and năm sinh > 1980
select tên from diễn viên where nơi sinh = austin and năm sinh > 1980
select tên from diễn viên where nơi sinh like %austin% and năm sinh > 1980
select t1.tiêu đề from bộ phim as t1 join đạo diễn bởi as t2 on t1.id bộ phim = t2.id sê-ri phim join đạo diễn as t3 on t2.id đạo diễn = t3.id đạo diễn where t3.nơi sinh like %los angeles%
select tên from diễn viên where nơi sinh = new york city and năm sinh = 1984
select tiêu đề from bộ phim where tiêu đề = men in arms
select tiêu đề from bộ phim where tiêu đề like %atomic% or tiêu đề like %weapon%
select t1.tiêu đề from bộ phim as t1 join đạo diễn bởi as t2 on t1.id bộ phim = t2.id sê-ri phim join đạo diễn as t3 on t2.id đạo diễn = t3.id đạo diễn where t3.tên = alfred hitchcock
select t3.tiêu đề from đạo diễn bởi as t1 join đạo diễn as t2 on t1.id đạo diễn = t2.id đạo diễn join bộ phim as t3 on t1.id sê-ri phim = t3.id bộ phim join diễn viên as t4 on t4.id diễn viên = t3.id diễn viên where t2.tên = asghar farhadi and t4.tên = taraneh alidoosti
select t3.tiêu đề from đạo diễn bởi as t1 join đạo diễn as t2 on t1.id đạo diễn = t2.id đạo diễn join bộ phim as t3 on t1.id sê-ri phim = t3.id bộ phim join diễn viên as t4 on t4.id diễn viên = t3.id diễn viên where t2.tên = asghar farhadi and t4.tên = taraneh alidoosti
select t3.tiêu đề from đạo diễn bởi as t1 join đạo diễn as t2 on t1.id đạo diễn = t2.id đạo diễn join bộ phim as t3 on t1.id sê-ri phim = t3.id bộ phim join diễn viên as t4 on t4.id diễn viên = t4.id diễn viên where t2.tên = asghar farhadi and t4.tên = taraneh alidoosti
select t3.tiêu đề from đạo diễn bởi as t1 join đạo diễn as t2 on t1.id đạo diễn = t2.id đạo diễn join bộ phim as t3 on t1.id sê-ri phim = t3.id bộ phim join diễn viên as t4 on t4.id diễn viên = t4.id diễn viên where t2.tên = asghar farhad and t4.tên = taraneh alidoosti
select t3.tiêu đề from đạo diễn bởi as t1 join đạo diễn as t2 on t1.id đạo diễn = t2.id đạo diễn join bộ phim as t3 on t1.id sê-ri phim = t3.id sê-ri phim where t2.tên = shonda rhimes
select t1.tên from diễn viên as t1 join phân vai as t2 on t1.id diễn viên = t2.id diễn viên where t2.vai diễn = olivia pope and t2.id sê-ri phim = (select id sê-ri phim from bộ phim where tiêu đề = scandal)
select t1.tên from nhà viết kịch bản as t1 join được viết bởi as t2 on t1.id nhà viết kịch bản = t2.id nhà viết kịch bản join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim where t3.tiêu đề = truman show
select t1.tên from nhà viết kịch bản as t1 join được viết bởi as t2 on t1.id nhà viết kịch bản = t2.id nhà viết kịch bản join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim where t3.tiêu đề = truman show premiere
select t1.tiêu đề from bộ phim as t1 join được làm bởi as t2 on t1.id bộ phim = t2.id sê-ri phim join đạo diễn bởi as t3 on t2.id sê-ri phim = t3.id sê-ri phim join đạo diễn as t4 on t3.id đạo diễn = t4.id đạo diễn where t4.tên = scott foley
select t2.tiêu đề from phân vai as t1 join bộ phim as t2 on t1.id sê-ri phim = t2.id bộ phim join đạo diễn bởi as t3 on t3.id sê-ri phim = t1.id sê-ri phim join đạo diễn as t4 on t3.id đạo diễn = t4.id đạo diễn where t4.tên = scott foley
select distinct t2.tên from đạo diễn bởi as t1 join đạo diễn as t2 on t1.id đạo diễn = t2.id đạo diễn join bộ phim as t3 on t3.id bộ phim = t1.id sê-ri phim join phân vai as t4 on t4.id sê-ri phim = t3.id bộ phim join diễn viên as t5 on t4.id diễn viên = t5.id diễn viên where t5.tên = kate winslet
select t2.tên from đạo diễn bởi as t1 join đạo diễn as t2 on t1.id đạo diễn = t2.id đạo diễn join bộ phim as t3 on t3.id bộ phim = t1.id sê-ri phim join được viết bởi as t4 on t4.id sê-ri phim = t3.id bộ phim join nhà viết kịch bản as t5 on t4.id nhà viết kịch bản = t5.id nhà viết kịch bản where t5.tên = kate winslet
select t1.tên from đạo diễn as t1 join đạo diễn bởi as t2 on t1.id đạo diễn = t2.id đạo diễn join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim where t3.năm phát hành = 2013 and t3.tiêu đề = the political game show
select tên from diễn viên where nơi sinh like %austin% and giới tính = female
select tên from diễn viên where quốc tịch = italy and năm sinh > 1980
select tên from diễn viên where nơi sinh like %new york% and năm sinh > 1980 and giới tính = female
select t1.tên from diễn viên as t1 join phân vai as t2 on t1.id diễn viên = t2.id diễn viên where t2.vai diễn = actress and t1.giới tính = female and t2.id sê-ri phim in (select t3.id sê-ri phim from bộ phim as t3 where t3.tiêu đề = ryans heroes rescue)
select tên from đạo diễn where nơi sinh like %afghanistan%
select t2.tên from bộ phim as t1 join phân loại as t2 on t1.id bộ phim = t2.id sê-ri phim join phân vai as t3 on t2.id sê-ri phim = t3.id sê-ri phim join diễn viên as t4 on t3.id diễn viên = t4.id diễn viên where t1.tiêu đề = soldier of fortune
select t1.tên from diễn viên as t1 join bộ phim as t2 on t1.id diễn viên = t2.id bộ phim where t1.quốc tịch = canada and t2.tiêu đề = james bond
select t3.tiêu đề from phân vai as t1 join diễn viên as t2 on t1.id diễn viên = t2.id diễn viên join bộ phim as t3 on t1.id sê-ri phim = t3.id bộ phim where t2.tên = rowan atkinson and t2.năm sinh > 1940 and t2.năm sinh < 2010
select nơi sinh from đạo diễn where tên = historia
select diễn viên . tên from diễn viên join phân vai on diễn viên . id diễn viên = phân vai . id diễn viên join phim truyền hình nhiều tập on phân vai . id sê-ri phim = phim truyền hình nhiều tập . id sê-ri phim where phim truyền hình nhiều tập . tiêu đề = mr.bean and phân vai . vai diễn = ngài bean
select t3.thể loại from đạo diễn bởi as t1 join đạo diễn as t2 on t1.id đạo diễn = t2.id đạo diễn join phân loại as t3 on t1.id sê-ri phim = t3.id sê-ri phim where t2.tên = asghar farhadi
select t1.tiêu đề from bộ phim as t1 join phân loại as t2 on t1.id bộ phim = t2.id sê-ri phim join thể loại as t3 on t2.id thể loại = t3.id thể loại where t3.thể loại = animals and t1.tiêu đề like %daffy pig%
select t2.vai diễn from bộ phim as t1 join phân vai as t2 on t1.id bộ phim = t2.id sê-ri phim where t1.tiêu đề = the big feather
select distinct t1.tên from đạo diễn as t1 join đạo diễn bởi as t2 on t1.id đạo diễn = t2.id đạo diễn join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim where t3.tiêu đề = star wars
select count (distinct t1.tiêu đề) from bộ phim as t1 join được làm bởi as t2 on t1.id bộ phim = t2.id sê-ri phim join diễn viên as t3 on t2.id diễn viên = t3.id diễn viên where t3.tên = jennifer aniston and t1.năm phát hành > 2010
select count (*) from diễn viên as t1 join phân vai as t2 on t1.id diễn viên = t2.id diễn viên join bộ phim as t3 on t3.id bộ phim = t2.id sê-ri phim where t3.tiêu đề = ryans army of save
select count (distinct t1.tên) from diễn viên as t1 join phân vai as t2 on t1.id diễn viên = t2.id diễn viên join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim where t3.tiêu đề = ryans army of saviors
select count (*) from đạo diễn bởi as t1 join đạo diễn as t2 on t1.id đạo diễn = t2.id đạo diễn join bộ phim as t3 on t3.id bộ phim = t1.id sê-ri phim where t2.tên = steven spielberg
select count (*) from bộ phim where năm phát hành = 2013
select count (*) from bộ phim where năm phát hành = 2013
select count (*) , t1.năm phát hành from bộ phim as t1 join đạo diễn bởi as t2 on t1.id bộ phim = t2.id sê-ri phim join đạo diễn as t3 on t2.id đạo diễn = t3.id đạo diễn where t3.tên = woody allen group by t1.năm phát hành
select count (distinct t1.id bộ phim) from bộ phim as t1 join được viết bởi as t2 on t1.id bộ phim = t2.id sê-ri phim join nhà viết kịch bản as t3 on t2.id nhà viết kịch bản = t3.id nhà viết kịch bản where t3.tên = shahab hosseini
select count (*) from đạo diễn bởi as t1 join đạo diễn as t2 on t1.id đạo diễn = t2.id đạo diễn join bộ phim as t3 on t3.id bộ phim = t1.id sê-ri phim join đạo diễn as t4 on t4.id đạo diễn = t3.id đạo diễn where t2.tên = shahab hosseini
select count (*) from đạo diễn bởi as t1 join đạo diễn as t2 on t1.id đạo diễn = t2.id đạo diễn join bộ phim as t3 on t1.id sê-ri phim = t3.id bộ phim where t2.tên = shahab hosseini
select t1.tên from diễn viên as t1 join phân vai as t2 on t1.id diễn viên = t2.id diễn viên join sê-ri phim as t3 on t2.id sê-ri phim = t3.id sê-ri phim where t3.năm = 1988 and t3.tổng doanh thu trên toàn thế giới = (select max (t4.tổng doanh thu trên toàn thế giới) from sê-ri phim as t4 where t4.năm = 1988 and t3.id sê-ri phim = t4.id sê-ri phim)
select count (distinct tên) from diễn viên where nơi sinh like %los angeles% and năm sinh > 2000
select count (distinct t1.tiêu đề) from bộ phim as t1 join được làm bởi as t2 on t1.id bộ phim = t2.id sê-ri phim join diễn viên as t3 on t2.id diễn viên = t3.id diễn viên where t3.tên = humphrey bogart and t1.năm phát hành < 1942
select năm phát hành , count (*) from diễn viên as t1 join phân vai as t2 on t1.id diễn viên = t2.id diễn viên join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim where t1.tên = brad pitt group by năm phát hành
select count (*) from bộ phim where tiêu đề = war in iraq and năm phát hành = 2015
select count (*) from bộ phim where tiêu đề like %three kings% and năm phát hành > 1990
select count (*) from bộ phim as t1 join đạo diễn bởi as t2 on t1.id bộ phim = t2.id sê-ri phim join đạo diễn as t3 on t2.id đạo diễn = t3.id đạo diễn where t3.tên = quentin tarantino and t1.năm phát hành > 2010
select count (distinct t1.tiêu đề) from bộ phim as t1 join đạo diễn bởi as t2 on t1.id bộ phim = t2.id sê-ri phim join đạo diễn as t3 on t2.id đạo diễn = t3.id đạo diễn where t3.tên = quentin tarantino and t1.năm phát hành < 2010
select count (*) from đạo diễn bởi as t1 join đạo diễn as t2 on t1.id đạo diễn = t2.id đạo diễn join bộ phim as t3 on t3.id bộ phim = t1.id sê-ri phim where t2.tên = quentin tarantino and t3.năm phát hành < 2002 and t3.năm phát hành > 2010
select count (distinct tên) from diễn viên where nơi sinh like %new york% and năm sinh > 1980 and giới tính = female
select count (distinct t1.tên) from diễn viên as t1 join bộ phim as t2 on t1.id diễn viên = t2.id bộ phim join đạo diễn bởi as t3 on t2.id bộ phim = t3.id sê-ri phim join đạo diễn as t4 on t3.id đạo diễn = t4.id đạo diễn where t4.tên = jim jarmusch and t1.quốc tịch = iran
select count (*) from diễn viên as t1 join bộ phim as t2 on t1.id diễn viên = t2.id bộ phim join nhà sản xuất as t3 on t2.id nhà sản xuất = t3.id nhà sản xuất join đạo diễn as t4 on t2.id đạo diễn = t4.id đạo diễn where t3.quốc tịch = china and t4.tên = the clock tower 3
select t1.tiêu đề from bộ phim as t1 join được làm bởi as t2 on t1.id bộ phim = t2.id sê-ri phim join diễn viên as t3 on t2.id diễn viên = t3.id diễn viên where t3.tên = woody strode intersect select t1.tiêu đề from bộ phim as t1 join được làm bởi as t2 on t1.id bộ phim = t2.id sê-ri phim join diễn viên as t3 on t2.id diễn viên = t3.id diễn viên where t3.tên = jason robards
select t1.tiêu đề from bộ phim as t1 join phân vai as t2 on t1.id bộ phim = t2.id sê-ri phim join diễn viên as t3 on t2.id diễn viên = t3.id diễn viên where t3.tên = woody strode and t3.tên = jason robards
select t1.tiêu đề from bộ phim as t1 join được viết bởi as t2 on t1.id bộ phim = t2.id sê-ri phim join đạo diễn bởi as t3 on t2.id đạo diễn = t3.id đạo diễn join đạo diễn as t4 on t3.id đạo diễn = t4.id đạo diễn join nhà sản xuất as t5 on t4.id đạo diễn = t5.id đạo diễn where t4.tên = woody strode intersect select t1.tiêu đề from bộ phim as t1 join được viết bởi as t2 on t1.id bộ phim = t2.id sê-ri phim join đạo diễn bởi as t3 on t2.id đạo diễn = t3.id đạo diễn join đạo diễn as t4 on t3.id đạo diễn = t4.id đạo diễn join nhà sản xuất as t5 on t4.id đạo diễn = t5.id đạo diễn where t4.tên = jason robards
select t1.tiêu đề from bộ phim as t1 join được viết bởi as t2 on t1.id bộ phim = t2.id sê-ri phim join đạo diễn bởi as t3 on t2.id đạo diễn = t3.id đạo diễn join đạo diễn as t4 on t3.id đạo diễn = t4.id đạo diễn join nhà sản xuất as t5 on t4.id đạo diễn = t5.id đạo diễn join nhà sản xuất as t6 on t5.id nhà sản xuất = t6.id nhà sản xuất join được làm bởi as t7 on t1.id bộ phim = t7.id sê-ri phim join nhà sản xuất as t8 on t7.id nhà sản xuất = t8.id nhà sản xuất where t4.tên = woody strode and t6.tên = jason robards
select distinct t1.tên from diễn viên as t1 join phân vai as t2 on t1.id diễn viên = t2.id diễn viên join bộ phim as t3 on t3.id bộ phim = t2.id sê-ri phim join đạo diễn bởi as t4 on t4.id sê-ri phim = t3.id bộ phim join đạo diễn as t5 on t4.id đạo diễn = t5.id đạo diễn where t5.tên = tom hanks
select t1.tiêu đề from bộ phim as t1 join bộ phim as t2 join đạo diễn bởi as t3 on t1.id bộ phim = t3.id sê-ri phim and t2.id bộ phim = t3.id sê-ri phim where t2.tiêu đề = the road
select t1.tiêu đề from phim truyền hình nhiều tập as t1 join phân loại as t2 on t1.id sê-ri phim = t2.id sê-ri phim join thể loại as t3 on t2.id thể loại = t3.id thể loại group by t1.tiêu đề order by count (*) desc limit 1
select t1.tiêu đề from bộ phim as t1 join phân vai as t2 on t1.id bộ phim = t2.id sê-ri phim join diễn viên as t3 on t2.id diễn viên = t3.id diễn viên where t3.quốc tịch = china group by t1.tiêu đề order by count (*) desc limit 1
select t2.tên from bộ phim as t1 join đạo diễn bởi as t2 on t1.id bộ phim = t2.id sê-ri phim join đạo diễn as t3 on t2.id đạo diễn = t3.id đạo diễn where t3.tên = quentin tarantino order by t1.năm phát hành desc limit 1
select t1.tiêu đề , t1.ngân sách from bộ phim as t1 join đạo diễn bởi as t2 on t1.id bộ phim = t2.id sê-ri phim join đạo diễn as t3 on t2.id đạo diễn = t3.id đạo diễn where t3.tên = quentin tarantino order by t1.năm phát hành desc limit 1
select t1.tiêu đề from bộ phim as t1 join đạo diễn bởi as t2 on t1.id bộ phim = t2.id sê-ri phim join đạo diễn as t3 on t2.id đạo diễn = t3.id đạo diễn where t3.tên = jim jarmusch order by t1.năm phát hành desc limit 1
select t2.tên from được làm bởi as t1 join nhà sản xuất as t2 on t1.id nhà sản xuất = t2.id nhà sản xuất group by t1.id nhà sản xuất order by count (distinct t1.id đạo diễn) desc limit 1
select t1.tiêu đề from bộ phim as t1 join được làm bởi as t2 on t1.id bộ phim = t2.id sê-ri phim join đạo diễn bởi as t3 on t2.id = t3.id sê-ri phim join đạo diễn as t4 on t3.id đạo diễn = t4.id đạo diễn where t4.tên = gabriele ferzetti order by t1.năm phát hành desc limit 1
select chi tiết khách hàng from khách hàng order by chi tiết khách hàng
select chi tiết khách hàng from khách hàng order by chi tiết khách hàng asc
select distinct t2.mã loại chính sách from khách hàng as t1 join chính sách as t2 on t1.id khách hàng = t2.id khách hàng where t1.chi tiết khách hàng = dayana robel
select distinct t2.mã loại chính sách from khách hàng as t1 join chính sách as t2 on t1.id khách hàng = t2.id khách hàng where t1.chi tiết khách hàng = dayana robel
select mã loại chính sách from chính sách group by mã loại chính sách order by count (*) desc limit 1
select mã loại chính sách from chính sách group by mã loại chính sách order by count (*) desc limit 1
select mã loại chính sách from chính sách group by mã loại chính sách having count (*) > 2
select mã loại chính sách from chính sách group by mã loại chính sách having count (*) > 2
select sum (số tiền được trả) , avg (số tiền được trả) from xử lý yêu cầu
select sum (số tiền được trả) , avg (số tiền được trả) from xử lý yêu cầu
select sum (t2.số tiền được yêu cầu) from tài liệu của yêu cầu as t1 join t1.id yêu cầu as t2 on t1.mã loại tài liệu = document order by t1.ngày tạo ra desc limit 1
select sum (t1.số tiền được yêu cầu) from tài liệu của yêu cầu as t1 join chính sách as t2 on t1.id yêu cầu = t2.id chính sách order by t1.ngày tạo ra desc limit 1
select t1.chi tiết khách hàng from khách hàng as t1 join tiêu đề của yêu cầu as t2 on t1.id khách hàng = t2.id khách hàng order by t2.số tiền được yêu cầu desc limit 1
select t1.chi tiết khách hàng from khách hàng as t1 join tiêu đề của yêu cầu as t2 on t1.id khách hàng = t2.id khách hàng order by t2.số tiền được yêu cầu desc limit 1
select t1.chi tiết khách hàng from khách hàng as t1 join tiêu đề của yêu cầu as t2 on t1.id khách hàng = t2.id khách hàng join xử lý yêu cầu as t3 on t2.id yêu cầu = t3.id yêu cầu order by t3.số tiền được trả limit 1
select t1.chi tiết khách hàng from khách hàng as t1 join tiêu đề của yêu cầu as t2 on t1.id khách hàng = t2.id khách hàng join xử lý yêu cầu as t3 on t2.id yêu cầu = t3.id yêu cầu order by t3.số tiền được trả limit 1
select chi tiết khách hàng from khách hàng except select t1.chi tiết khách hàng from khách hàng as t1 join chính sách as t2 on t1.id khách hàng = t2.id khách hàng
select t1.chi tiết khách hàng from khách hàng as t1 join chính sách as t2 on t1.id khách hàng = t2.id khách hàng except select t1.chi tiết khách hàng from khách hàng as t1
select count (*) from giai đoạn xử lý yêu cầu
select count (*) from giai đoạn xử lý yêu cầu
select t2.tên tình trạng yêu cầu , t1.id yêu cầu from xử lý yêu cầu as t1 join giai đoạn xử lý yêu cầu as t2 on t1.id giai đoạn xử lý yêu cầu = t2.id giai đoạn yêu cầu tiếp theo group by t1.id yêu cầu order by count (*) desc limit 1
select t1.tên tình trạng yêu cầu , count (*) from giai đoạn xử lý yêu cầu as t1 join xử lý yêu cầu as t2 on t1.id giai đoạn yêu cầu = t2.id giai đoạn xử lý yêu cầu group by t1.id giai đoạn yêu cầu order by count (*) desc limit 1
select chi tiết khách hàng from khách hàng where chi tiết khách hàng like %diana%
select chi tiết khách hàng from khách hàng where chi tiết khách hàng like %diana%
select t1.chi tiết khách hàng from khách hàng as t1 join chính sách as t2 on t1.id khách hàng = t2.id khách hàng where t2.mã loại chính sách = uỷ quyền
select t1.chi tiết khách hàng from khách hàng as t1 join chính sách as t2 on t1.id khách hàng = t2.id khách hàng where t2.mã loại chính sách = uỷ quyền
select t1.chi tiết khách hàng from khách hàng as t1 join chính sách as t2 on t1.id khách hàng = t2.id khách hàng where t2.mã loại chính sách = uyn or t2.mã loại chính sách = unified
select t1.chi tiết khách hàng from khách hàng as t1 join chính sách as t2 on t1.id khách hàng = t2.id khách hàng where t2.mã loại chính sách = uỷ quyền or t2.mã loại chính sách = unified
select chi tiết khách hàng from khách hàng union select chi tiết nhân viên from nhân viên
select chi tiết khách hàng from khách hàng union select chi tiết nhân viên from nhân viên
select mã loại chính sách , count (*) from chính sách group by mã loại chính sách
select mã loại chính sách , count (*) from chính sách group by mã loại chính sách
select t1.chi tiết khách hàng from khách hàng as t1 join chính sách as t2 on t1.id khách hàng = t2.id khách hàng group by t1.id khách hàng order by count (*) desc limit 1
select t1.chi tiết khách hàng from khách hàng as t1 join chính sách as t2 on t1.id khách hàng = t2.id khách hàng group by t1.id khách hàng order by count (*) desc limit 1
select mô tả về tình trạng yêu cầu from giai đoạn xử lý yêu cầu where tên tình trạng yêu cầu = open
select mô tả về tình trạng yêu cầu from giai đoạn xử lý yêu cầu where tên tình trạng yêu cầu = open
select count (distinct mã kết quả của yêu cầu) from xử lý yêu cầu
select count (distinct mã kết quả của yêu cầu) from xử lý yêu cầu
select t1.chi tiết khách hàng from khách hàng as t1 join chính sách as t2 on t1.id khách hàng = t2.id khách hàng order by t2.ngày bắt đầu desc limit 1
select t1.chi tiết khách hàng from khách hàng as t1 join chính sách as t2 on t1.id khách hàng = t2.id khách hàng order by t2.ngày bắt đầu desc limit 1
select t1.chi tiết sự kiện from sự kiện as t1 join dịch vụ as t2 on t1.id dịch vụ = t2.id dịch vụ where t2.mã loại dịch vụ = wedding
select t1.id sự kiện , t2.chi tiết sự kiện from người tham gia sự kiện as t1 join sự kiện as t2 on t1.id sự kiện = t2.id sự kiện group by t1.id sự kiện having count (*) > 1
select t1.id người tham gia , t1.mã loại người tham gia , count (*) from người tham gia as t1 join người tham gia sự kiện as t2 on t1.id người tham gia = t2.id người tham gia group by t1.id người tham gia
select id người tham gia , mã loại người tham gia , chi tiết người tham gia from người tham gia
select count (*) from người tham gia as t1 join người tham gia sự kiện as t2 on t1.id người tham gia = t2.id người tham gia join sự kiện as t3 on t2.id sự kiện = t3.id sự kiện where t1.mã loại người tham gia = organizer
select mã loại dịch vụ from dịch vụ order by mã loại dịch vụ
select id dịch vụ , chi tiết sự kiện from sự kiện
select count (*) from người tham gia sự kiện as t1 join người tham gia as t2 on t1.id người tham gia = t2.id người tham gia join sự kiện as t3 on t1.id sự kiện = t3.id sự kiện where t2.chi tiết người tham gia like %dr%
select mã loại người tham gia from người tham gia group by mã loại người tham gia order by count (*) desc limit 1
select t1.id dịch vụ , t2.mã loại dịch vụ from sự kiện as t1 join dịch vụ as t2 on t1.id dịch vụ = t2.id dịch vụ group by t1.id dịch vụ order by count (*) limit 1
select t1.id sự kiện from người tham gia sự kiện as t1 join người tham gia as t2 on t1.id người tham gia = t2.id người tham gia group by t1.id sự kiện order by count (*) desc limit 1
select id sự kiện from người tham gia sự kiện except select t1.id sự kiện from người tham gia sự kiện as t1 join người tham gia as t2 on t1.id người tham gia = t2.id người tham gia where t2.chi tiết người tham gia = kenyatta kuhn
select t1.mã loại dịch vụ from dịch vụ as t1 join sự kiện as t2 on t1.id dịch vụ = t2.id dịch vụ where t2.chi tiết sự kiện = success intersect select t1.mã loại dịch vụ from dịch vụ as t1 join sự kiện as t2 on t1.id dịch vụ = t2.id dịch vụ where t2.chi tiết sự kiện = failure
select count (*) from sự kiện where id sự kiện not in (select id sự kiện from người tham gia sự kiện)
select count (distinct id người tham gia) from người tham gia sự kiện
select count (*) from kỹ thuật viên
select count (*) from kỹ thuật viên
select tên from kỹ thuật viên order by tuổi asc
select tên from kỹ thuật viên order by tuổi asc
select đội , năm bắt đầu from kỹ thuật viên
select đội , năm bắt đầu from kỹ thuật viên
select tên from kỹ thuật viên where đội != nyy
select tên from kỹ thuật viên where đội != nyy
select tên from kỹ thuật viên where tuổi = 36 or tuổi = 37
select tên from kỹ thuật viên where tuổi = 36 or tuổi = 37
select năm bắt đầu from kỹ thuật viên order by tuổi desc limit 1
select năm bắt đầu from kỹ thuật viên order by năm bắt đầu - năm bắt đầu desc limit 1
select đội , count (*) from kỹ thuật viên group by đội
select đội , count (*) from kỹ thuật viên group by đội
select đội from kỹ thuật viên group by đội order by count (*) desc limit 1
select đội from kỹ thuật viên group by đội order by count (*) desc limit 1
select đội from kỹ thuật viên group by đội having count (*) >= 2
select đội from kỹ thuật viên group by đội having count (*) >= 2
select t1.tên , t3.loạt máy from kỹ thuật viên as t1 join phân công sửa chữa as t2 on t1.id kỹ thuật viên = t2.id kỹ thuật viên join máy móc as t3 on t3.id máy = t2.id máy
select t2.tên , t3.loạt máy from phân công sửa chữa as t1 join kỹ thuật viên as t2 on t1.id kỹ thuật viên = t2.id kỹ thuật viên join máy móc as t3 on t1.id máy = t3.id máy
select t2.tên from phân công sửa chữa as t1 join kỹ thuật viên as t2 on t1.id kỹ thuật viên = t2.id kỹ thuật viên join máy móc as t3 on t1.id máy = t3.id máy order by t3.xếp hạng chất lượng
select t2.tên from phân công sửa chữa as t1 join kỹ thuật viên as t2 on t1.id kỹ thuật viên = t2.id kỹ thuật viên join máy móc as t3 on t1.id máy = t3.id máy order by t3.xếp hạng chất lượng
select t3.tên from phân công sửa chữa as t1 join máy móc as t2 on t1.id máy = t2.id máy join kỹ thuật viên as t3 on t1.id kỹ thuật viên = t3.id kỹ thuật viên where t2.điểm giá trị > 70
select t1.tên from kỹ thuật viên as t1 join phân công sửa chữa as t2 on t1.id kỹ thuật viên = t2.id kỹ thuật viên join máy móc as t3 on t2.id máy = t3.id máy where t3.điểm giá trị > 70
select tên , count (*) from phân công sửa chữa as t1 join kỹ thuật viên as t2 on t1.id kỹ thuật viên = t2.id kỹ thuật viên group by t1.id kỹ thuật viên
select t2.tên , count (*) from phân công sửa chữa as t1 join kỹ thuật viên as t2 on t1.id kỹ thuật viên = t2.id kỹ thuật viên group by t2.tên
select tên from kỹ thuật viên where id kỹ thuật viên not in (select id kỹ thuật viên from phân công sửa chữa)
select tên from kỹ thuật viên where id kỹ thuật viên not in (select id kỹ thuật viên from phân công sửa chữa)
select năm bắt đầu from kỹ thuật viên where đội = cle intersect select năm bắt đầu from kỹ thuật viên where đội = cws
select năm bắt đầu from kỹ thuật viên where đội = cle intersect select năm bắt đầu from kỹ thuật viên where đội = cws
select count (*) from ống kính máy ảnh where độ dài tiêu cự theo mm > 15
select nhãn hiệu , tên from ống kính máy ảnh order by khẩu độ tối đa desc
select id , màu sắc , tên from ảnh
select max (chiều cao) , avg (chiều cao) from núi
select avg (độ nổi) from núi where quốc gia = morocco
select tên , chiều cao , độ nổi from núi where dãy núi != aberdare
select t1.id , t1.tên from ảnh as t1 join núi as t2 on t1.id id núi = t2.id where t2.chiều cao > 4000
select t1.tên , t1.id from núi as t1 join ảnh as t2 on t1.id = t2.id núi group by t2.id núi having count (*) >= 2
select t1.tên from ống kính máy ảnh as t1 join ảnh as t2 on t1.id = t2.id ống kính máy ảnh join núi as t3 on t2.id núi = t3.id order by t3.chiều cao desc limit 1
select t1.tên from ảnh as t1 join ống kính máy ảnh as t2 on t1.id ống kính máy ảnh = t2.id where t2.nhãn hiệu = sigma or t2.nhãn hiệu = olympus
select count (distinct nhãn hiệu) from ống kính máy ảnh
select count (*) from ống kính máy ảnh where id not in (select id ống kính máy ảnh from ảnh)
select count (distinct t1.tên) from ống kính máy ảnh as t1 join ảnh as t2 on t1.id = t2.id ống kính máy ảnh join núi as t3 on t2.id núi = t3.id where t3.quốc gia = ethiopia
select t1.nhãn hiệu from ống kính máy ảnh as t1 join ảnh as t2 on t1.id = t2.id ống kính máy ảnh join núi as t3 on t2.id núi = t3.id where t3.dãy núi = toubkal atlas intersect select t1.nhãn hiệu from ống kính máy ảnh as t1 join ảnh as t2 on t1.id = t2.id ống kính máy ảnh join núi as t3 on t2.id núi = t3.id where t3.dãy núi = lasta massif
select tên , độ nổi from núi except select t1.tên , t1.độ nổi from núi as t1 join ống kính máy ảnh as t2 on t1.id núi = t2.id where t2.nhãn hiệu = sigma
select tên from ống kính máy ảnh where tên like %digital%
select t2.tên , count (*) from ảnh as t1 join ống kính máy ảnh as t2 on t1.id ống kính máy ảnh = t2.id group by t2.tên order by count (*)
select count (*) from ban nhạc
select count (*) from ban nhạc
select distinct hãng thu âm from album
select distinct hãng thu âm from album
select tiêu đề from album where năm = 2012
select tiêu đề from album where năm = 2012
select t2.vị trí trên sân khấu from ban nhạc as t1 join buổi biểu diễn as t2 on t1.id = t2.nghệ sĩ trong ban nhạc where t1.tên = solveig
select t2.vị trí trên sân khấu from ban nhạc as t1 join buổi biểu diễn as t2 on t1.id = t2.nghệ sĩ trong ban nhạc where t1.tên = solveig
select count (*) from bài hát
select count (*) from bài hát
select t2.tiêu đề from ban nhạc as t1 join buổi biểu diễn as t2 on t1.id = t2.nghệ sĩ trong ban nhạc where t1.họ = heilo
select t1.tiêu đề from bài hát as t1 join ban nhạc as t2 on t1.id bài hát = t2.id join buổi biểu diễn as t3 on t2.id = t3.nghệ sĩ trong ban nhạc where t2.họ = hello
select count (*) from buổi biểu diễn as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where t2.tiêu đề = flash
select count (distinct t1.id) from buổi biểu diễn as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where t2.tiêu đề = flash
select t2.tiêu đề from ban nhạc as t1 join nhạc cụ as t2 on t1.id = t2.id nghệ sĩ trong ban nhạc where t1.tên = marianne
select t2.tiêu đề from ban nhạc as t1 join bài hát as t2 on t1.id = t2.id bài hát where t1.tên = marianne
select t1.tên , t1.họ from ban nhạc as t1 join buổi biểu diễn as t2 on t1.id = t2.nghệ sĩ trong ban nhạc where t2.id bài hát = (select id bài hát from bài hát where tiêu đề = badlands)
select t1.tên , t1.họ from ban nhạc as t1 join buổi biểu diễn as t2 on t1.id = t2.nghệ sĩ trong ban nhạc join bài hát as t3 on t2.id bài hát = t3.id bài hát where t3.tiêu đề = badlands
select t1.tên , t1.họ from ban nhạc as t1 join buổi biểu diễn as t2 on t1.id = t2.nghệ sĩ trong ban nhạc where t2.vị trí trên sân khấu = backup intersect select t1.tên , t1.họ from ban nhạc as t1 join buổi biểu diễn as t2 on t1.id = t2.nghệ sĩ trong ban nhạc where t2.id bài hát = (select id bài hát from bài hát where tiêu đề = badlands)
select t1.tên , t1.họ from ban nhạc as t1 join buổi biểu diễn as t2 on t1.id = t2.nghệ sĩ trong ban nhạc join bài hát as t3 on t3.id bài hát = t2.id bài hát where t3.tiêu đề = badlands and t2.vị trí trên sân khấu = backing vocals
select count (distinct hãng thu âm) from album
select count (distinct hãng thu âm) from album
select hãng thu âm from album group by hãng thu âm order by count (*) desc limit 1
select hãng thu âm from album group by hãng thu âm order by count (*) desc limit 1
select t1.họ from ban nhạc as t1 join giọng hát as t2 on t1.id = t2.nghệ sĩ trong ban nhạc group by t1.họ order by count (*) desc limit 1
select t1.họ from ban nhạc as t1 join giọng hát as t2 on t1.id = t2.nghệ sĩ trong ban nhạc group by t1.họ order by count (*) desc limit 1
select t2.họ from buổi biểu diễn as t1 join ban nhạc as t2 on t1.nghệ sĩ trong ban nhạc = t2.id join buổi biểu diễn as t3 on t3.id bài hát = t1.id bài hát and t3.vị trí trên sân khấu = stage group by t2.họ order by count (*) desc limit 1
select t2.họ from buổi biểu diễn as t1 join ban nhạc as t2 on t1.nghệ sĩ trong ban nhạc = t2.id join bài hát as t3 on t1.id bài hát = t3.id bài hát where t3.tiêu đề = hedge group by t2.họ order by count (*) desc limit 1
select tiêu đề from bài hát where tiêu đề like %the%
select tiêu đề from bài hát where tiêu đề like %the%
select distinct nhạc cụ from nhạc cụ
select distinct nhạc cụ from nhạc cụ
select t2.nhạc cụ from ban nhạc as t1 join nhạc cụ as t2 on t1.id = t2.id nghệ sĩ trong ban nhạc join bài hát as t3 on t3.id bài hát = t2.id bài hát where t1.họ = heilo and t3.tiêu đề = le pop
select t2.nhạc cụ from ban nhạc as t1 join nhạc cụ as t2 on t1.id = t2.id nghệ sĩ trong ban nhạc join bài hát as t3 on t3.id bài hát = t2.id bài hát where t1.họ = heilo and t3.tiêu đề = le pop
select nhạc cụ from nhạc cụ group by nhạc cụ order by count (*) desc limit 1
select nhạc cụ from nhạc cụ group by nhạc cụ order by count (*) desc limit 1
select count (*) from nhạc cụ as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where t1.nhạc cụ = guitar
select count (*) from nhạc cụ where nhạc cụ = guitar
select t2.nhạc cụ from bài hát as t1 join nhạc cụ as t2 on t1.id bài hát = t2.id bài hát where t1.tiêu đề = le pop
select t2.nhạc cụ from bài hát as t1 join nhạc cụ as t2 on t1.id bài hát = t2.id bài hát where t1.tiêu đề = le pop
select count (*) from nhạc cụ as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát join ban nhạc as t3 on t1.id nghệ sĩ trong ban nhạc = t3.id where t2.tiêu đề = le pop
select count (distinct nhạc cụ) from nhạc cụ as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where t2.tiêu đề = le pop
select count (distinct nhạc cụ) from nhạc cụ as t1 join ban nhạc as t2 on t1.id nghệ sĩ trong ban nhạc = t2.id where t2.họ = heilo
select count (distinct nhạc cụ) from nhạc cụ as t1 join ban nhạc as t2 on t1.id nghệ sĩ trong ban nhạc = t2.id where t2.họ = hello
select t2.nhạc cụ from ban nhạc as t1 join nhạc cụ as t2 on t1.id = t2.id nghệ sĩ trong ban nhạc where t1.họ = heilo
select t2.nhạc cụ from ban nhạc as t1 join nhạc cụ as t2 on t1.id = t2.id nghệ sĩ trong ban nhạc where t1.họ = hello
select t1.tiêu đề from bài hát as t1 join giọng hát as t2 on t1.id bài hát = t2.id bài hát group by t2.id bài hát order by count (*) desc limit 1
select t1.tiêu đề from bài hát as t1 join giọng hát as t2 on t1.id bài hát = t2.id bài hát group by t2.id bài hát order by count (*) desc limit 1
select loại from giọng hát group by loại order by count (*) desc limit 1
select loại from giọng hát group by loại order by count (*) desc limit 1
select t2.loại from ban nhạc as t1 join giọng hát as t2 on t1.id = t2.nghệ sĩ trong ban nhạc where t1.họ = hello group by t2.loại
select t2.loại from ban nhạc as t1 join giọng hát as t2 on t1.id = t2.nghệ sĩ trong ban nhạc where t1.họ = hello group by t2.loại
select t2.loại from bài hát as t1 join giọng hát as t2 on t1.id bài hát = t2.id bài hát where t1.tiêu đề = le pop
select t2.loại from bài hát as t1 join giọng hát as t2 on t1.id bài hát = t2.id bài hát where t1.tiêu đề = le pop
select count (*) from giọng hát as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where t2.tiêu đề = demon kitty rag
select count (distinct loại) from giọng hát as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where t2.tiêu đề = demon kitty rag
select count (*) from giọng hát as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where t1.loại = lead
select count (*) from giọng hát as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where t1.loại = lead
select t3.loại from bài hát as t1 join giọng hát as t2 on t1.id bài hát = t2.id bài hát join ban nhạc as t3 on t2.nghệ sĩ trong ban nhạc = t3.id join ban nhạc as t4 on t4.id = t1.id album where t3.loại = vocals and t4.tiêu đề = amsterdam bar
select t3.loại from ban nhạc as t1 join giọng hát as t2 on t1.id = t2.nghệ sĩ trong ban nhạc join bài hát as t3 on t2.id bài hát = t3.id bài hát where t1.tên = solveig and t3.tiêu đề = amsterdam bar
select tiêu đề from bài hát except select t1.tiêu đề from bài hát as t1 join giọng hát as t2 on t1.id bài hát = t2.id bài hát where t2.loại = lead
select tiêu đề from bài hát except select t1.tiêu đề from bài hát as t1 join giọng hát as t2 on t1.id bài hát = t2.id bài hát where t2.loại = lead
select distinct loại from giọng hát
select distinct loại from giọng hát
select * from album where năm = 2010
select * from album where năm = 2010
select t2.tên from buổi biểu diễn as t1 join ban nhạc as t2 on t1.nghệ sĩ trong ban nhạc = t2.id join bài hát as t3 on t1.id bài hát = t3.id bài hát where t3.tiêu đề = le pop
select t1.tên , t1.họ from ban nhạc as t1 join buổi biểu diễn as t2 on t1.id = t2.nghệ sĩ trong ban nhạc join bài hát as t3 on t2.id bài hát = t3.id bài hát where t3.tiêu đề = le pop
select t1.họ from ban nhạc as t1 join giọng hát as t2 on t1.id = t2.nghệ sĩ trong ban nhạc group by t1.họ order by count (*) desc limit 1
select t1.họ from ban nhạc as t1 join giọng hát as t2 on t1.id = t2.nghệ sĩ trong ban nhạc group by t1.họ order by count (*) desc limit 1
select t2.nhạc cụ from ban nhạc as t1 join nhạc cụ as t2 on t1.id = t2.id nghệ sĩ trong ban nhạc join bài hát as t3 on t3.id bài hát = t2.id bài hát where t1.họ = heilo and t3.tiêu đề = badlands
select t2.nhạc cụ from bài hát as t1 join nhạc cụ as t2 on t1.id bài hát = t2.id bài hát join ban nhạc as t3 on t3.id = t2.id nghệ sĩ trong ban nhạc where t1.tiêu đề = badlands and t3.họ = hello
select count (*) from nhạc cụ as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where t2.tiêu đề = badlands
select count (distinct nhạc cụ) from nhạc cụ as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where t2.tiêu đề = badlands
select t2.loại from bài hát as t1 join giọng hát as t2 on t1.id bài hát = t2.id bài hát where t1.tiêu đề = badlands
select loại from giọng hát as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where t2.tiêu đề = badlands
select count (*) from giọng hát as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where t2.tiêu đề = le pop
select count (*) from giọng hát as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where t2.tiêu đề = le pop
select count (*) from giọng hát as t1 join ban nhạc as t2 on t1.nghệ sĩ trong ban nhạc = t2.id where t2.tên = shared group by t1.id bài hát having count (*) > 1
select count (distinct id bài hát) from giọng hát where loại = shared
select tiêu đề from bài hát except select t1.tiêu đề from bài hát as t1 join giọng hát as t2 on t1.id bài hát = t2.id bài hát where t2.loại = backing
select tiêu đề from bài hát except select t1.tiêu đề from bài hát as t1 join giọng hát as t2 on t1.id bài hát = t2.id bài hát where t2.loại = sub
select t2.loại from ban nhạc as t1 join giọng hát as t2 on t1.id = t2.nghệ sĩ trong ban nhạc where t1.tên = solveig group by t2.loại order by count (*) desc limit 1
select t2.loại from ban nhạc as t1 join giọng hát as t2 on t1.id = t2.nghệ sĩ trong ban nhạc where t1.tên = solveig group by t2.loại order by count (*) desc limit 1
select t2.loại from bài hát as t1 join giọng hát as t2 on t1.id bài hát = t2.id bài hát join ban nhạc as t3 on t3.id = t2.nghệ sĩ trong ban nhạc where t1.tiêu đề = der kapitan and t3.họ = hello
select t2.loại from ban nhạc as t1 join giọng hát as t2 on t1.id = t2.nghệ sĩ trong ban nhạc join bài hát as t3 on t3.id bài hát = t2.id bài hát where t1.họ = hello and t3.tiêu đề = der kapitan
select t1.tên , t1.họ from ban nhạc as t1 join buổi biểu diễn as t2 on t1.id = t2.nghệ sĩ trong ban nhạc group by t2.nghệ sĩ trong ban nhạc order by count (*) desc limit 1
select t1.tên , t1.họ from ban nhạc as t1 join buổi biểu diễn as t2 on t1.id = t2.nghệ sĩ trong ban nhạc group by t2.nghệ sĩ trong ban nhạc order by count (*) desc limit 1
select t2.loại from giọng hát as t1 join ban nhạc as t2 on t1.nghệ sĩ trong ban nhạc = t2.id join ban nhạc as t3 on t3.id = t1.nghệ sĩ trong ban nhạc and t3.tên = marianne group by t2.loại order by count (*) desc limit 1
select t2.loại from giọng hát as t1 join ban nhạc as t2 on t1.nghệ sĩ trong ban nhạc = t2.id join buổi biểu diễn as t3 on t3.nghệ sĩ trong ban nhạc = t2.id group by t2.loại order by count (*) desc limit 1
select t1.tên , t1.họ from ban nhạc as t1 join buổi biểu diễn as t2 on t1.id = t2.nghệ sĩ trong ban nhạc where vị trí trên sân khấu = backstage intersect select t1.tên , t1.họ from ban nhạc as t1 join buổi biểu diễn as t2 on t1.id = t2.nghệ sĩ trong ban nhạc where t2.id bài hát = (select id bài hát from bài hát where tiêu đề = der kapitan)
select t1.tên , t1.họ from ban nhạc as t1 join buổi biểu diễn as t2 on t1.id = t2.nghệ sĩ trong ban nhạc where t2.vị trí trên sân khấu = sub join bài hát as t3 on t3.id bài hát = t2.id bài hát where t3.tiêu đề = der kapitan
select tiêu đề from bài hát except select t1.tiêu đề from bài hát as t1 join giọng hát as t2 on t1.id bài hát = t2.id bài hát where t2.loại = backing
select tiêu đề from bài hát except select t1.tiêu đề from bài hát as t1 join giọng hát as t2 on t1.id bài hát = t2.id bài hát where t2.loại = sub
select t2.tiêu đề from danh sách bài hát as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát join album as t3 on t3.id album = t1.id album where t3.tiêu đề = a love affair before you go away living in hamburg
select t1.tiêu đề from bài hát as t1 join danh sách bài hát as t2 on t1.id bài hát = t2.id bài hát join album as t3 on t2.id album = t3.id album where t3.tiêu đề = a love affair before you go away live in hamburg
select t1.tiêu đề from bài hát as t1 join danh sách bài hát as t2 on t1.id bài hát = t2.id bài hát join album as t3 on t2.id album = t3.id album where t3.hãng thu âm = universal music group
select t1.tiêu đề from bài hát as t1 join danh sách bài hát as t2 on t1.id bài hát = t2.id bài hát join album as t3 on t2.id album = t3.id album where t3.hãng thu âm = universal music group
select count (*) from danh sách bài hát as t1 join album as t2 on t1.id album = t2.id album where t2.tiêu đề = studio
select count (*) from album as t1 join danh sách bài hát as t2 on t1.id album = t2.id album where t1.tiêu đề = studio
select khách hàng tốt hay xấu from khách hàng where id khách hàng in (select id khách hàng from phiếu giảm giá where số tiền giảm giá = 500)
select t1.id khách hàng , t2.tên , count (*) from lượt đặt mua as t1 join khách hàng as t2 on t1.id khách hàng = t2.id khách hàng group by t1.id khách hàng
select id khách hàng , sum (số tiền còn thiếu) from lượt đặt mua group by id khách hàng order by sum (số tiền còn thiếu) desc limit 1
select t1.id đặt mua , t1.số tiền hoàn trả from thanh toán as t1 join lượt đặt mua as t2 on t1.id đặt mua = t2.id đặt mua group by t1.id đặt mua order by count (*) desc limit 1
select id sản phẩm from sản phẩm được đặt group by id sản phẩm having count (*) >= 3
select t2.mô tả sản phẩm from sản phẩm được đặt as t1 join sản phẩm cho thuê as t2 on t1.id sản phẩm = t2.id sản phẩm where t1.số tiền đã đặt = 102,76
select t1.ngày bắt đầu đặt mua , t1.ngày kết thúc đặt mua from lượt đặt mua as t1 join sản phẩm được đặt as t2 on t1.id đặt mua = t2.id đặt mua join sản phẩm cho thuê as t3 on t2.id sản phẩm = t3.id sản phẩm where t3.tên sản phẩm = pocket book
select t1.tên sản phẩm from sản phẩm được đặt as t1 join sản phẩm có sẵn as t2 on t1.id sản phẩm = t2.id sản phẩm where t2.có sẵn hay không = y
select count (distinct mã loại sản phẩm) from sản phẩm cho thuê
select tên , họ , giới tính from khách hàng where khách hàng tốt hay xấu = good order by họ
select avg (số tiền nợ) from thanh toán
select avg (số lượng đặt mua) , max (số lượng đặt mua) , min (số lượng đặt mua) from sản phẩm được đặt
select distinct mã loại thanh toán from thanh toán
select chi phí thuê hàng ngày from sản phẩm cho thuê where tên sản phẩm like %book%
select count (*) from sản phẩm được đặt where số lượng đặt mua = 0 and số tiền đã đặt < 200
select sum (t1.số tiền giảm giá) from phiếu giảm giá as t1 join khách hàng as t2 on t1.id phiếu giảm giá = t2.id phiếu giảm giá where t2.khách hàng tốt hay xấu = good intersect select sum (t1.số tiền giảm giá) from phiếu giảm giá as t1 join khách hàng as t2 on t1.id phiếu giảm giá = t2.id phiếu giảm giá where t2.khách hàng tốt hay xấu = bad
select ngày thanh toán from thanh toán where số tiền đã trả > 300 or mã loại thanh toán = transaction
select tên sản phẩm , mô tả sản phẩm from sản phẩm cho thuê where mã loại sản phẩm = pull and chi phí thuê hàng ngày < 20
select tên nhà hàng from nhà hàng
select địa chỉ from nhà hàng where tên nhà hàng = subway
select đánh giá xếp hạng from nhà hàng where tên nhà hàng = subway
select tên loại nhà hàng from loại nhà hàng
select mô tả về loại nhà hàng from loại nhà hàng where tên loại nhà hàng = sandwich
select tên nhà hàng , đánh giá xếp hạng from nhà hàng order by đánh giá xếp hạng desc limit 1
select tuổi from sinh viên where tên = linda and họ = smith
select giới tính from sinh viên where tên = linda and họ = smith
select tên , họ from sinh viên where chuyên ngành = 600
select mã thành phố from sinh viên where tên = linda and họ = smith
select count (*) from sinh viên where cố vấn = 1121
select cố vấn , count (*) from sinh viên group by cố vấn order by count (*) desc limit 1
select chuyên ngành , count (*) from sinh viên group by chuyên ngành order by count (*) limit 1
select chuyên ngành , count (*) from sinh viên group by chuyên ngành having count (*) between 2 and 30
select tên , họ from sinh viên where chuyên ngành = 600 and tuổi > 18
select tên , họ from sinh viên where giới tính = f and chuyên ngành != 600 and tuổi > 18
select count (*) from nhà hàng as t1 join loại nhà hàng as t2 on t1.id nhà hàng = t2.id nhà hàng where t2.tên loại nhà hàng = sandwich
select sum (t2.thời gian dành ra) from lượt ghé thăm nhà hàng as t1 join nhà hàng as t2 on t1.id nhà hàng = t2.id nhà hàng join sinh viên as t3 on t1.id sinh viên = t3.id sinh viên where t3.tên = linda and t3.họ = smith
select count (*) from lượt ghé thăm nhà hàng as t1 join nhà hàng as t2 on t1.id nhà hàng = t2.id nhà hàng join sinh viên as t3 on t1.id sinh viên = t3.id sinh viên where t3.tên = linda and t3.họ = smith and t2.tên nhà hàng = subway
select t1.thời gian from lượt ghé thăm nhà hàng as t1 join nhà hàng as t2 on t1.id nhà hàng = t2.id nhà hàng join sinh viên as t3 on t1.id sinh viên = t3.id sinh viên where t3.tên = linda and t3.họ = smith and t2.tên nhà hàng = subway
select t1.tên nhà hàng , sum (t1.thời gian dành ra) from lượt ghé thăm nhà hàng as t1 join nhà hàng as t2 on t1.id nhà hàng = t2.id nhà hàng group by t1.id nhà hàng order by sum (t1.thời gian dành ra) asc limit 1
select t2.tên , t2.họ from lượt ghé thăm nhà hàng as t1 join sinh viên as t2 on t1.id sinh viên = t2.id sinh viên group by t1.id sinh viên order by count (*) desc limit 1
select count (distinct họ) from diễn viên where giới tính = male union select count (distinct họ) from diễn viên where giới tính = female
select count (distinct họ) from diễn viên
select tên from diễn viên group by tên order by count (*) desc limit 1
select tên from diễn viên group by tên order by count (*) desc limit 1
select tên , họ from diễn viên group by tên , họ order by count (*) desc limit 1
select tên , họ from diễn viên group by tên , họ order by count (*) desc limit 1
select quận from địa chỉ group by quận having count (*) >= 2
select quận from địa chỉ group by quận having count (*) >= 2
select số điện thoại , mã bưu điện from địa chỉ where địa chỉ = 1031 daugavpils parkway
select số điện thoại , mã bưu điện from địa chỉ where địa chỉ = 1031 daugavpils parkway
select t2.thành phố , count (*) , t1.id thành phố from địa chỉ as t1 join thành phố as t2 on t1.id thành phố = t2.id thành phố group by t1.id thành phố order by count (*) desc limit 1
select t2.thành phố , t1.id thành phố , count (*) from địa chỉ as t1 join thành phố as t2 on t1.id thành phố = t2.id thành phố group by t1.id thành phố order by count (*) desc limit 1
select count (*) from địa chỉ where quận = california
select count (*) from địa chỉ where quận = california
select t1.tiêu đề , t1.id phim from văn bản phim as t1 join hàng tồn kho as t2 on t1.id phim = t2.id phim join lượt cho thuê as t3 on t2.id hàng tồn kho = t3.id hàng tồn kho where t3.số tiền = 0.99 group by t1.id phim having count (*) < 3
select t1.tiêu đề , t2.id phim from phim as t1 join hàng tồn kho as t2 on t2.id phim = t1.id phim where t1.giá thay thế = 0.99 intersect select t2.id phim from hàng tồn kho as t2 group by t2.id phim having count (*) < 3
select count (*) from thành phố as t1 join quốc gia as t2 on t1.id thành phố = t2.id quốc gia where t2.quốc gia = australia
select count (*) from thành phố as t1 join quốc gia as t2 on t1.id thành phố = t2.id quốc gia where t2.quốc gia = australia
select t1.quốc gia from quốc gia as t1 join thành phố as t2 on t1.id quốc gia = t2.id thành phố group by t1.quốc gia having count (*) >= 3
select t1.quốc gia from quốc gia as t1 join thành phố as t2 on t1.id quốc gia = t2.id thành phố group by t1.quốc gia having count (*) >= 3
select t1.ngày thanh toán from khoản thanh toán as t1 join nhân viên as t2 on t1.id nhân viên = t2.id nhân viên where t1.số tiền > 10 intersect select t1.ngày thanh toán from khoản thanh toán as t1 join nhân viên as t2 on t1.id nhân viên = t2.id nhân viên where t2.tên = elsa
select t1.ngày thanh toán from khoản thanh toán as t1 join nhân viên as t2 on t1.id nhân viên = t2.id nhân viên join khách hàng as t3 on t1.id khách hàng = t3.id khách hàng where t2.tên = elsa and t1.số tiền > 10
select count (*) from khách hàng where có hoạt động không = 1
select count (*) from khách hàng where có hoạt động không = 1
select giá cho thuê from phim order by giá cho thuê desc limit 1
select tiêu đề , giá cho thuê from phim order by giá cho thuê desc limit 1
select t1.tiêu đề , t1.mô tả , t2.id phim from phim as t1 join danh mục phim as t2 on t1.id phim = t2.id phim group by t2.id phim order by count (*) desc limit 1
select t2.tiêu đề , t1.id phim , t2.mô tả from diễn viên điện ảnh as t1 join phim as t2 on t1.id phim = t2.id phim group by t1.id phim order by count (*) desc limit 1
select
select t1.tên , t1.họ , t2.id diễn viên from diễn viên as t1 join diễn viên điện ảnh as t2 on t1.id diễn viên = t2.id diễn viên group by t2.id diễn viên order by count (*) desc limit 1
select
select t1.tên , t1.họ from diễn viên as t1 join diễn viên điện ảnh as t2 on t1.id diễn viên = t2.id diễn viên group by t1.id diễn viên having count (*) > 30
select t1.tên from cửa hàng as t1 join khoản thanh toán as t2 on t1.id cửa hàng = t2.id cửa hàng group by t1.tên order by count (*) desc limit 1
select id cửa hàng from hàng tồn kho group by id cửa hàng order by count (*) desc limit 1
select sum (số tiền) from khoản thanh toán
select sum (số tiền) from khoản thanh toán
select t1.tên , t1.họ , t1.id khách hàng from khách hàng as t1 join khoản thanh toán as t2 on t1.id khách hàng = t2.id khách hàng group by t1.id khách hàng order by sum (t2.số tiền) limit 1
select t1.tên , t1.họ , t1.id khách hàng from khách hàng as t1 join khoản thanh toán as t2 on t1.id khách hàng = t2.id khách hàng group by t1.id khách hàng order by sum (t2.số tiền) limit 1
select t2.tên from danh mục phim as t1 join danh mục as t2 on t1.id danh mục = t2.id danh mục join phim as t3 on t1.id phim = t3.id phim where t3.tiêu đề = hunger roof
select t2.tên from danh mục phim as t1 join danh mục as t2 on t1.id danh mục = t2.id danh mục join phim as t3 on t1.id phim = t3.id phim where t3.tiêu đề = hunger roof
select t1.tên , t2.id danh mục , count (*) from danh mục phim as t1 join danh mục as t2 on t1.id danh mục = t2.id danh mục group by t2.id danh mục
select t2.tên , t1.id danh mục , count (*) from danh mục phim as t1 join danh mục as t2 on t1.id danh mục = t2.id danh mục group by t1.id danh mục
select t1.tiêu đề , t2.id phim from văn bản phim as t1 join hàng tồn kho as t2 on t1.id phim = t2.id phim group by t2.id phim order by count (*) desc limit 1
select t1.tiêu đề , t2.id phim from hàng tồn kho as t1 join phim as t2 on t1.id phim = t2.id phim group by t1.id phim order by count (*) desc limit 1
select t2.tiêu đề , t3.id hàng tồn kho from lượt thuê as t1 join phim as t2 on t1.id phim = t2.id phim join hàng tồn kho as t3 on t1.id hàng tồn kho = t3.id hàng tồn kho group by t3.id hàng tồn kho order by count (*) desc limit 1
select t1.tiêu đề , t2.id hàng tồn kho from phim as t1 join hàng tồn kho as t2 on t1.id phim = t2.id phim join lượt cho thuê as t3 on t2.id hàng tồn kho = t3.id hàng tồn kho group by t2.id hàng tồn kho order by count (*) desc limit 1
select count (distinct id ngôn ngữ) from phim
select count (distinct id ngôn ngữ) from phim
select tiêu đề from phim where đánh giá xếp hạng = r
select tiêu đề from phim where đánh giá xếp hạng = r
select t2.thành phố from cửa hàng as t1 join địa chỉ as t2 on t1.id địa chỉ = t2.id địa chỉ where t1.id cửa hàng = 1
select t2.địa chỉ from cửa hàng as t1 join địa chỉ as t2 on t1.id địa chỉ = t2.id địa chỉ where t1.id cửa hàng = 1
select t1.tên , t1.họ , t2.id nhân viên from nhân viên as t1 join khoản thanh toán as t2 on t1.id nhân viên = t2.id nhân viên group by t2.id nhân viên order by count (*) limit 1
select t1.tên , t1.họ , t1.id nhân viên from nhân viên as t1 join khoản thanh toán as t2 on t1.id nhân viên = t2.id nhân viên group by t1.id nhân viên order by count (*) limit 1
select t1.tên from ngôn ngữ as t1 join phim as t2 on t1.id ngôn ngữ = t2.id ngôn ngữ gốc where t2.tiêu đề = airport pollock
select t1.tên from ngôn ngữ as t1 join phim as t2 on t1.id ngôn ngữ = t2.id ngôn ngữ where t2.tiêu đề = airport pollock
select count (*) from cửa hàng
select count (*) from cửa hàng
select count (distinct đánh giá xếp hạng) from phim
select count (distinct đánh giá xếp hạng) from phim
select tiêu đề from phim where mô tả like %undeleted scene%
select tiêu đề from phim where tính năng đặc biệt like %cleanup%
select count (*) from hàng tồn kho where id cửa hàng = 1
select count (*) from hàng tồn kho where id cửa hàng = 1
select ngày thanh toán from khoản thanh toán order by ngày thanh toán limit 1
select ngày thanh toán from khoản thanh toán order by ngày thanh toán limit 1
select t1.email from khách hàng as t1 join địa chỉ as t2 on t1.id địa chỉ = t2.id địa chỉ where t2.quận = ca and t1.tên = linda
select t1.địa chỉ , t1.email from khách hàng as t1 join địa chỉ as t2 on t1.id địa chỉ = t2.id địa chỉ where t1.tên = linda
select tiêu đề from phim where thời lượng thuê > 100 or đánh giá xếp hạng = pg and giá thay thế < 200
select tiêu đề from phim where thời lượng thuê > 100 or đánh giá xếp hạng = pg and giá thay thế < 200
select t1.tên , t1.họ from khách hàng as t1 join lượt thuê as t2 on t1.id khách hàng = t2.id khách hàng order by t2.ngày trả lại limit 1
select t1.tên , t1.họ from khách hàng as t1 join lượt thuê as t2 on t1.id khách hàng = t2.id khách hàng order by t2.ngày thuê limit 1
select t1.tên , t1.họ from nhân viên as t1 join lượt thuê as t2 on t1.id nhân viên = t2.id nhân viên join khách hàng as t3 on t2.id khách hàng = t3.id khách hàng where t3.tên = april and t3.họ = burns
select t1.tên , t1.họ from nhân viên as t1 join khoản thanh toán as t2 on t1.id nhân viên = t2.id nhân viên join khách hàng as t3 on t2.id khách hàng = t3.id khách hàng where t3.tên = april and t3.họ = burns
select id cửa hàng from khách hàng group by id cửa hàng order by count (*) desc limit 1
select id cửa hàng from khách hàng group by id cửa hàng order by count (*) desc limit 1
select số tiền from khoản thanh toán order by số tiền desc limit 1
select max (số tiền) from khoản thanh toán
select t1.địa chỉ from địa chỉ as t1 join nhân viên as t2 on t1.id địa chỉ = t2.id địa chỉ where t2.tên = elsa
select t2.địa chỉ from nhân viên as t1 join địa chỉ as t2 on t1.id địa chỉ = t2.id địa chỉ where t1.tên = elsa
select tên from khách hàng where id khách hàng not in (select id khách hàng from lượt thuê where ngày trả lại > 2005-08-23 02:06:01)
select tên from khách hàng where id khách hàng not in (select id khách hàng from lượt cho thuê where ngày trả lại > 2005-08-23 02:06:01)
select count (*) from tài xế
select tên , thành phố quê hương , tuổi from tài xế
select đảng , count (*) from tài xế group by đảng
select tên from tài xế order by tuổi desc
select distinct địa điểm from trường học
select thành phố quê hương from tài xế group by thành phố quê hương order by count (*) desc limit 1
select đảng from tài xế where thành phố quê hương = hartford intersect select đảng from tài xế where tuổi > 40
select thành phố quê hương from tài xế where tuổi > 40 group by thành phố quê hương having count (*) >= 2
select distinct thành phố quê hương from tài xế except select distinct thành phố quê hương from tài xế where tuổi > 40
select tên from tài xế where id tài xế not in (select id tài xế from xe buýt của trường học)
select loại hình from trường học group by loại hình having count (*) = 2
select t1.trường học , t2.tên from trường học as t1 join xe buýt của trường học as t2 on t1.id trường học = t2.id trường học join tài xế as t2 on t2.id tài xế = t2.id tài xế
select avg (số năm làm việc) , max (số năm làm việc) , min (số năm làm việc) from xe buýt của trường học
select trường học , loại hình from trường học where id trường học not in (select id trường học from xe buýt của trường học)
select t2.loại hình , count (*) from trường học as t1 join xe buýt của trường học as t2 on t1.id trường học = t2.id trường học group by t2.loại hình
select count (*) from tài xế where thành phố quê hương = hartford or tuổi < 40
select tên from tài xế where thành phố quê hương = hartford and tuổi < 40
select t1.tên from tài xế as t1 join xe buýt của trường học as t2 on t1.id tài xế = t2.id tài xế group by t2.id tài xế order by sum (số năm làm việc) desc limit 1
select count (*) from trường học
select count (*) from trường học
select địa điểm from trường học order by số lượng nhập học asc
select địa điểm from trường học order by số lượng nhập học asc
select địa điểm from trường học order by năm thành lập desc
select địa điểm from trường học order by năm thành lập desc
select số lượng nhập học from trường học where tôn giáo != christian
select số lượng nhập học from trường học where tôn giáo != christian
select avg (số lượng nhập học) from trường học
select avg (số lượng nhập học) from trường học
select đội from cầu thủ order by đội asc
select đội from cầu thủ order by đội asc
select count (distinct vị trí) from cầu thủ
select count (distinct vị trí) from cầu thủ
select đội from cầu thủ order by tuổi desc limit 1
select đội from cầu thủ order by tuổi desc limit 1
select đội from cầu thủ order by tuổi desc limit 5
select đội from cầu thủ order by tuổi desc limit 5
select t1.cầu thủ , t2.trường học from cầu thủ as t1 join trường học as t2 on t1.id trường = t2.id trường
select t1.cầu thủ , t2.trường học from cầu thủ as t1 join trường học as t2 on t1.id trường = t2.id trường
select t1.địa điểm from trường học as t1 join cầu thủ as t2 on t1.id trường = t2.id trường group by t1.id trường having count (*) > 1
select t2.địa điểm from cầu thủ as t1 join trường học as t2 on t1.id trường = t2.id trường group by t1.id trường having count (*) > 1
select tôn giáo from trường học where id trường in (select id trường from cầu thủ group by id trường order by count (*) desc limit 1)
select tôn giáo from trường học order by số lượng nhập học desc limit 1
select t3.địa điểm , t2.biệt danh from trường học as t1 join chi tiết trường học as t2 on t1.id trường = t2.id trường join trường học as t3 on t1.id trường = t3.id trường
select t2.biệt danh , t1.địa điểm from trường học as t1 join chi tiết trường học as t2 on t1.id trường = t2.id trường
select tôn giáo , count (*) from trường học group by tôn giáo
select tôn giáo , count (*) from trường học group by tôn giáo
select tôn giáo , count (*) from trường học group by tôn giáo order by count (*) desc
select tôn giáo , count (*) from trường học group by tôn giáo order by count (*) desc
select màu của trường from trường học order by số lượng nhập học desc limit 1
select màu của trường học from trường học order by số lượng nhập học desc limit 1
select địa điểm from trường học where id trường not in (select id trường from cầu thủ)
select địa điểm from trường học where id trường not in (select id trường from cầu thủ)
select tôn giáo from trường học where năm thành lập < 1890 intersect select tôn giáo from trường học where năm thành lập > 1900
select tôn giáo from trường học where năm thành lập < 1890 intersect select tôn giáo from trường học where năm thành lập > 1900
select biệt danh from chi tiết trường học where phân hạng != 1
select biệt danh from chi tiết trường học where phân hạng != 1
select tôn giáo from trường học group by tôn giáo having count (*) > 1
select tôn giáo from trường học group by tôn giáo having count (*) > 1
select t1.tên , t2.tên from quốc gia as t1 join giải đấu as t2 on t1.id = t2.id quốc gia
select count (*) from giải đấu as t1 join quốc gia as t2 on t1.id quốc gia = t2.id where t2.tên = england
select avg (cân nặng) from cầu thủ
select max (cân nặng) , min (cân nặng) from cầu thủ
select distinct t1.tên cầu thủ from cầu thủ as t1 join đặc điểm của cầu thủ as t2 on t1.id = t2.id cầu thủ api order by t2.đánh giá tổng thể desc limit 1
select t1.tên cầu thủ from cầu thủ as t1 join đặc điểm của cầu thủ as t2 on t1.id = t2.id cầu thủ api order by t2.rê bóng desc limit 1
select t1.tên cầu thủ from cầu thủ as t1 join đặc điểm của cầu thủ as t2 on t1.id = t2.id cầu thủ api join đặc điểm của cầu thủ as t3 on t1.id = t3.id cầu thủ api của fifa where t2.tạt bóng > 90 and t3.chân thuận = r
select distinct t1.tên cầu thủ from cầu thủ as t1 join đặc điểm của cầu thủ as t2 on t1.id = t2.id cầu thủ api join đặc điểm của cầu thủ as t3 on t1.id cầu thủ api của fifa = t3.id cầu thủ api join đặc điểm của cầu thủ as t4 on t1.id cầu thủ api = t4.id cầu thủ api where t2.chân thuận = left and t3.đánh giá tổng thể between 85 and 90
select avg (đánh giá tổng thể) from đặc điểm của cầu thủ where chân thuận = left group by chân thuận union select avg (đánh giá tổng thể) from đặc điểm của cầu thủ where chân thuận = right group by chân thuận
select count (*) , chân thuận from đặc điểm của cầu thủ where đánh giá tổng thể > 80 group by chân thuận
select id from cầu thủ where chiều cao >= 180 intersect select id cầu thủ api của fifa from đặc điểm của cầu thủ where đánh giá tổng thể > 85
select id from cầu thủ where chiều cao between 180 and 190 and chân thuận = left
select t1.tên cầu thủ from cầu thủ as t1 join đặc điểm của cầu thủ as t2 on t1.id = t2.id cầu thủ order by t2.đánh giá tổng thể desc limit 3
select t1.tên cầu thủ , t1.ngày sinh from cầu thủ as t1 join đặc điểm của cầu thủ as t2 on t1.id = t2.id cầu thủ order by t2.tiềm năng desc limit 5
select distinct tên quận from quận order by diện tích của các thành phố desc
select tên quận from quận order by diện tích của các thành phố desc
select kích thước trang tối đa from sản phẩm group by kích thước trang tối đa having count (*) > 3
select kích thước trang tối đa from sản phẩm group by kích thước trang tối đa having count (*) > 3
select tên quận , dân số thành phố from quận where dân số thành phố between 200000 and 2000000
select tên quận , dân số thành phố from quận where dân số thành phố between 200000 and 2000000
select tên quận from quận where diện tích của các thành phố > 10 or dân số thành phố > 100000
select tên quận from quận where diện tích của các thành phố > 10 or dân số thành phố > 100000
select tên quận from quận order by dân số thành phố desc limit 1
select tên quận from quận order by dân số thành phố desc limit 1
select tên quận from quận order by diện tích của các thành phố limit 1
select tên quận from quận order by diện tích của các thành phố limit 1
select sum (dân số thành phố) from quận order by diện tích của các thành phố desc limit 3
select sum (dân số thành phố) from quận order by diện tích của các thành phố desc limit 3
select loại , count (*) from cửa hàng group by loại
select loại , count (*) from cửa hàng group by loại
select t2.tên cửa hàng from quận của cửa hàng as t1 join cửa hàng as t2 on t1.id cửa hàng = t2.id cửa hàng where t1.id quận = 1
select t2.tên cửa hàng from quận của cửa hàng as t1 join cửa hàng as t2 on t1.id cửa hàng = t2.id cửa hàng join quận as t3 on t1.id quận = t3.id quận where t3.tên quận = khanewal
select t2.tên cửa hàng from quận của cửa hàng as t1 join cửa hàng as t2 on t1.id cửa hàng = t2.id cửa hàng join quận as t3 on t1.id quận = t3.id quận where t3.tên quận = (select tên quận from quận where dân số thành phố = (select max (dân số thành phố) from quận))
select t2.tên quận , t1.tên cửa hàng from quận của cửa hàng as t1 join quận as t2 on t1.id quận = t2.id quận group by t1.id quận order by count (*) desc limit 1
select t2.thành phố của các trụ sở from cửa hàng as t1 join quận của cửa hàng as t2 on t1.id cửa hàng = t2.id cửa hàng where t1.tên cửa hàng = blackville
select t2.tên quận from cửa hàng as t1 join quận của cửa hàng as t2 on t1.id cửa hàng = t2.id cửa hàng where t1.tên cửa hàng = blackville
select count (*) , t1.tên quận from quận as t1 join quận của cửa hàng as t2 on t1.id quận = t2.id quận group by t1.tên quận
select count (*) , t1.tên quận from quận as t1 join quận của cửa hàng as t2 on t1.id quận = t2.id quận group by t1.tên quận
select t1.tên quận from quận as t1 join quận của cửa hàng as t2 on t1.id quận = t2.id quận group by t1.tên quận order by count (*) desc limit 1
select t1.tên quận from quận as t1 join quận của cửa hàng as t2 on t1.id quận = t2.id quận group by t1.tên quận order by count (*) desc limit 1
select avg (số trang màu trên từng phút) from sản phẩm
select avg (số trang màu trên từng phút) from sản phẩm
select t3.sản phẩm from cửa hàng as t1 join quận của cửa hàng as t2 on t1.id cửa hàng = t2.id cửa hàng join sản phẩm của cửa hàng as t3 on t1.id cửa hàng = t3.id cửa hàng where t1.tên cửa hàng = miramichi
select t2.sản phẩm from cửa hàng as t1 join sản phẩm của cửa hàng as t2 on t1.id cửa hàng = t2.id cửa hàng where t1.tên cửa hàng = miramichi
select sản phẩm from sản phẩm where kích thước trang tối đa = a4 and số trang màu trên từng phút < 5
select sản phẩm from sản phẩm where kích thước trang tối đa = a4 and số trang màu trên từng phút < 5
select sản phẩm from sản phẩm where kích thước trang tối đa = a4 union select sản phẩm from sản phẩm where số trang màu trên từng phút < 5
select sản phẩm from sản phẩm where kích thước trang tối đa = a 4 or số trang màu trên từng phút < 5
select sản phẩm from sản phẩm where sản phẩm like %scanner%
select sản phẩm from sản phẩm where sản phẩm like %printer%
select max (kích thước trang tối đa) from sản phẩm
select kích thước trang tối đa from sản phẩm group by kích thước trang tối đa order by count (*) desc limit 1
select sản phẩm from sản phẩm where sản phẩm not in (select sản phẩm from sản phẩm where kích thước trang tối đa = (select kích thước trang tối đa from sản phẩm group by kích thước trang tối đa order by count (*) desc limit 1))
select sản phẩm from sản phẩm where sản phẩm not in (select sản phẩm from sản phẩm where kích thước trang tối đa = (select kích thước trang tối đa from sản phẩm group by kích thước trang tối đa order by count (*) desc limit 1))
select sum (dân số thành phố) from quận where diện tích của các thành phố > (select avg (diện tích của các thành phố) from quận)
select sum (dân số thành phố) from quận where diện tích của các thành phố > (select avg (diện tích của các thành phố) from quận)
select t1.tên quận from quận as t1 join quận của cửa hàng as t2 on t1.id quận = t2.id quận join cửa hàng as t3 on t2.id cửa hàng = t3.id cửa hàng where t3.loại = hypermarch intersect select t1.tên quận from quận as t1 join quận của cửa hàng as t2 on t1.id quận = t2.id quận join cửa hàng as t3 on t2.id cửa hàng = t3.id cửa hàng where t3.loại = retail
select t1.tên quận from quận as t1 join quận của cửa hàng as t2 on t1.id quận = t2.id quận join cửa hàng as t3 on t2.id cửa hàng = t3.id cửa hàng where t3.loại = hypermarket
select count (*) from khu vực
select count (*) from khu vực
select mã khu vực , tên khu vực from khu vực order by mã khu vực
select mã khu vực , tên khu vực from khu vực order by mã khu vực
select tên khu vực from khu vực order by tên khu vực
select tên khu vực from khu vực order by tên khu vực asc
select tên khu vực from khu vực where tên khu vực != denmark
select tên khu vực from khu vực where tên khu vực != denmark
select count (*) from bão where số lượng người chết > 0
select count (*) from bão where số lượng người chết >= 1
select tên , ngày hoạt động , số lượng người chết from bão where số lượng người chết >= 1
select tên , ngày hoạt động , số lượng người chết from bão where số lượng người chết >= 1
select avg (thiệt hại theo triệu usd) , max (thiệt hại theo triệu usd) from bão where tốc độ tối đa > 1000
select avg (thiệt hại theo triệu usd) , max (thiệt hại theo triệu usd) from bão where tốc độ tối đa > 1000
select số lượng người chết , thiệt hại theo triệu usd from bão where tốc độ tối đa > (select avg (tốc độ tối đa) from bão)
select sum (số lượng người chết) , sum (thiệt hại theo triệu usd) from bão where tốc độ tối đa > (select avg (tốc độ tối đa) from bão)
select tên , thiệt hại theo triệu usd from bão order by tốc độ tối đa desc
select tên , thiệt hại theo triệu usd , tốc độ tối đa from bão order by tốc độ tối đa desc
select count (distinct t2.tên khu vực) from khu vực bị ảnh hưởng as t1 join khu vực as t2 on t1.id khu vực = t2.id khu vực
select count (distinct tên khu vực) from khu vực bị ảnh hưởng
select tên khu vực from khu vực where id khu vực not in (select id khu vực from khu vực bị ảnh hưởng)
select tên khu vực from khu vực where id khu vực not in (select id khu vực from khu vực bị ảnh hưởng)
select t2.tên khu vực , count (*) from khu vực bị ảnh hưởng as t1 join khu vực as t2 on t1.id khu vực = t2.id khu vực group by t1.id khu vực
select count (*) , t2.tên khu vực from khu vực bị ảnh hưởng as t1 join khu vực as t2 on t1.id khu vực = t2.id khu vực group by t2.tên khu vực
select t2.tên , count (*) from khu vực bị ảnh hưởng as t1 join bão as t2 on t1.id bão = t2.id cơn bão group by t1.id bão
select count (*) , t1.tên from bão as t1 join khu vực bị ảnh hưởng as t2 on t1.id cơn bão = t2.id bão group by t1.tên
select t1.tên , t1.tốc độ tối đa from bão as t1 join khu vực bị ảnh hưởng as t2 on t1.id cơn bão = t2.id bão group by t1.id cơn bão order by count (*) desc limit 1
select t2.tên , t2.tốc độ tối đa from khu vực bị ảnh hưởng as t1 join bão as t2 on t1.id bão = t2.id cơn bão group by t1.id bão order by count (*) desc limit 1
select tên from bão where id cơn bão not in (select id bão from khu vực bị ảnh hưởng)
select tên from bão where id cơn bão not in (select id bão from khu vực bị ảnh hưởng)
select t1.tên from bão as t1 join khu vực bị ảnh hưởng as t2 on t1.id cơn bão = t2.id bão join khu vực as t3 on t2.id khu vực = t3.id khu vực group by t1.id cơn bão having count (*) >= 2
select t1.tên from bão as t1 join khu vực bị ảnh hưởng as t2 on t1.id cơn bão = t2.id bão group by t2.id bão having count (*) >= 2 intersect select t1.tên from bão as t1 join khu vực bị ảnh hưởng as t2 on t1.id cơn bão = t2.id bão join khu vực as t3 on t2.id khu vực = t3.id khu vực group by t2.id bão, t3.id khu vực having count (*) >= 10
select tên from bão except select t1.tên from bão as t1 join khu vực bị ảnh hưởng as t2 on t1.id cơn bão = t2.id bão group by t2.id bão having count (*) >= 2
select tên from bão except select t1.tên from bão as t1 join khu vực bị ảnh hưởng as t2 on t1.id cơn bão = t2.id bão group by t2.id bão having count (*) > 2
select t1.tên khu vực from khu vực as t1 join khu vực bị ảnh hưởng as t2 on t1.id khu vực = t2.id khu vực join bão as t3 on t2.id bão = t3.id cơn bão where t3.số lượng người chết >= 10
select t1.tên khu vực from khu vực as t1 join khu vực bị ảnh hưởng as t2 on t1.id khu vực = t2.id khu vực join bão as t3 on t2.id bão = t3.id cơn bão where t3.số lượng người chết >= 10
select t2.tên from khu vực bị ảnh hưởng as t1 join bão as t2 on t1.id bão = t2.id cơn bão join khu vực as t3 on t1.id khu vực = t3.id khu vực where t3.tên khu vực = switzerland
select t1.tên from bão as t1 join khu vực bị ảnh hưởng as t2 on t1.id cơn bão = t2.id bão join khu vực as t3 on t2.id khu vực = t3.id khu vực where t3.tên khu vực = denmark
select t1.tên khu vực from khu vực as t1 join khu vực bị ảnh hưởng as t2 on t1.id khu vực = t2.id khu vực join bão as t3 on t2.id bão = t3.id cơn bão group by t1.tên khu vực having count (*) >= 2
select t1.tên khu vực from khu vực as t1 join khu vực bị ảnh hưởng as t2 on t1.id khu vực = t2.id khu vực group by t2.id khu vực having count (*) >= 2
select t1.tên khu vực from khu vực as t1 join khu vực bị ảnh hưởng as t2 on t1.id khu vực = t2.id khu vực join bão as t3 on t2.id bão = t3.id cơn bão order by t3.số lượng người chết desc limit 1
select t1.tên khu vực from khu vực as t1 join khu vực bị ảnh hưởng as t2 on t1.id khu vực = t2.id khu vực join bão as t3 on t2.id bão = t3.id cơn bão order by t3.số lượng người chết desc limit 1
select t1.tên from bão as t1 join khu vực bị ảnh hưởng as t2 on t1.id cơn bão = t2.id bão join khu vực as t3 on t2.id khu vực = t3.id khu vực where t3.tên khu vực = afghanistan intersect select t1.tên from bão as t1 join khu vực bị ảnh hưởng as t2 on t1.id cơn bão = t2.id bão join khu vực as t3 on t2.id khu vực = t3.id khu vực where t3.tên khu vực = albania
select t1.tên from bão as t1 join khu vực bị ảnh hưởng as t2 on t1.id cơn bão = t2.id bão join khu vực as t3 on t2.id khu vực = t3.id khu vực where t3.tên khu vực = afghanistan intersect select t1.tên from bão as t1 join khu vực bị ảnh hưởng as t2 on t1.id cơn bão = t2.id bão join khu vực as t3 on t2.id khu vực = t3.id khu vực where t3.tên khu vực = albania
select count (*) from danh sách
select count (*) from danh sách
select họ from danh sách where phòng học = 111
select họ from danh sách where phòng học = 111
select tên from danh sách where phòng học = 108
select tên from danh sách where phòng học = 108
select tên from danh sách where phòng học = 107
select distinct tên from danh sách where phòng học = 107
select distinct phòng học , khối lớp from danh sách
select distinct khối lớp , phòng học from danh sách
select khối lớp from danh sách where phòng học = 103
select khối lớp from danh sách where phòng học = 103
select distinct khối lớp from danh sách where phòng học = 105
select khối lớp from danh sách where phòng học = 105
select distinct phòng học from danh sách where khối lớp = 4
select phòng học from danh sách where khối lớp = 4
select distinct phòng học from danh sách where khối lớp = 5
select distinct phòng học from danh sách where khối lớp = 5
select họ from giáo viên where khối lớp = 5
select distinct t2.họ from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t1.khối lớp = 5
select tên from giáo viên where phòng học = 1
select tên from giáo viên where phòng học = 1
select tên from giáo viên where phòng học = 110
select tên from giáo viên where phòng học = 110
select họ from giáo viên where phòng học = 109
select họ from giáo viên where phòng học = 109
select distinct tên , họ from giáo viên
select distinct tên , họ from giáo viên
select distinct tên , họ from danh sách
select tên , họ from danh sách
select t2.tên , t2.họ from giáo viên as t1 join danh sách as t2 on t1.phòng học = t2.phòng học where t1.tên = otha and t1.họ = moyer
select t2.tên , t2.họ from giáo viên as t1 join danh sách as t2 on t1.phòng học = t2.phòng học where t1.tên = otha and t1.họ = moyer
select distinct t1.tên , t1.họ from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t2.tên = kirk and t2.họ = marrotte
select t1.tên , t1.họ from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t2.tên = marrotte and t2.họ = kirk
select t2.tên , t2.họ from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t1.tên = evelina and t1.họ = bromley
select distinct t2.tên , t2.họ from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t1.tên = evelina and t1.họ = bromley
select distinct t2.họ from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t1.tên = gell and t1.họ = tami
select t2.họ from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t1.tên = gell and t2.tên = tami
select count (*) from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t1.tên = loria and t2.tên = ondersma
select count (*) from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t1.tên = loria and t1.họ = ondersma and t2.tên = loria and t2.họ = ondersma
select count (*) from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t1.tên = kawa and t1.họ = gordon and t2.tên = kawa and t2.họ = gordon
select count (*) from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t1.tên = kawa and t2.tên = gordon
select count (*) from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t2.tên = leia and t2.họ = tarring
select count (*) from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t1.tên = leia and t1.họ = tarring
select count (distinct t2.họ) from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t1.tên = chrissy and t1.họ = nabozny
select count (distinct t2.họ) from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t1.tên = chrissy and t1.họ = nabozny
select count (distinct t2.họ) from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t1.tên = ray and t1.họ = madlock
select count (distinct t2.họ) from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t1.tên = madlock and t1.họ = ray
select tên , họ from danh sách where khối lớp = 1 and tên != otha and họ != moyer
select distinct t1.họ from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t1.khối lớp = 1 and t2.họ = otha and t2.tên = moyer
select distinct t2.họ from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t1.khối lớp = 3 and t2.họ != covin and t2.tên != jerome
select distinct t2.họ from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t1.khối lớp = 3 and t2.tên != covin and t2.họ != jerome
select khối lớp , count (distinct phòng học) , count (*) from danh sách group by khối lớp
select khối lớp , count (distinct phòng học) , count (*) from danh sách group by khối lớp
select phòng học , count (distinct khối lớp) from danh sách group by phòng học
select phòng học , count (distinct khối lớp) from danh sách group by phòng học
select phòng học from danh sách group by phòng học order by count (*) desc limit 1
select phòng học from danh sách group by phòng học order by count (*) desc limit 1
select phòng học , count (*) from danh sách group by phòng học
select phòng học , count (*) from danh sách group by phòng học
select sum (t2.phòng học) , t1.phòng học from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t1.khối lớp = 0 group by t1.phòng học
select phòng học , count (*) from danh sách where khối lớp = 0 group by phòng học
select phòng học , count (*) from danh sách where khối lớp = 4 group by phòng học
select phòng học , count (*) from danh sách where khối lớp = 4 group by phòng học
select t2.tên , t2.họ from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học group by t2.họ order by count (*) desc limit 1
select t2.tên , t2.họ from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học group by t2.họ order by count (*) desc limit 1
select phòng học , count (*) from danh sách group by phòng học
select phòng học , count (*) from danh sách group by phòng học
select t1.tên khoá học from khoá học as t1 join lượt đăng ký khoá học của sinh viên as t2 on t1.id khoá học = t2.id khoá học group by t1.tên khoá học order by count (*) desc limit 1
select t1.tên khoá học from khoá học as t1 join lượt đăng ký khoá học của sinh viên as t2 on t1.id khoá học = t2.id khoá học group by t1.tên khoá học order by count (*) desc limit 1
select id sinh viên from lượt đăng ký khoá học của sinh viên group by id sinh viên having count (*) = (select count (*) from lượt đăng ký khoá học của sinh viên group by id sinh viên order by count (*) limit 1)
select id sinh viên from lượt đăng ký khoá học của sinh viên group by id sinh viên having count (*) = (select min (count (*)) from lượt đăng ký khoá học của sinh viên)
select t1.tên , t1.họ from cá nhân as t1 join ứng cử viên as t2 on t1.id cá nhân = t2.id ứng cử viên
select t1.tên , t1.họ from cá nhân as t1 join ứng cử viên as t2 on t1.id cá nhân = t2.id ứng cử viên
select id sinh viên from lần tham dự khoá học của sinh viên except select id sinh viên from lần tham dự khoá học của sinh viên where ngày tham dự is null
select id sinh viên from lần tham dự khoá học của sinh viên except select id sinh viên from lượt đăng ký khoá học của sinh viên
select id sinh viên from lần tham dự khoá học của sinh viên
select id sinh viên from lần tham dự khoá học của sinh viên group by id sinh viên having count (*) >= 1
select t1.id sinh viên , t2.tên khoá học from lượt đăng ký khoá học của sinh viên as t1 join khoá học as t2 on t1.id khoá học = t2.id khoá học
select t1.chi tiết sinh viên from sinh viên as t1 join lượt đăng ký khoá học của sinh viên as t2 on t1.id sinh viên = t2.id sinh viên order by t2.ngày đăng kí desc limit 1
select t1.chi tiết sinh viên from sinh viên as t1 join lượt đăng ký khoá học của sinh viên as t2 on t1.id sinh viên = t2.id sinh viên order by t2.ngày đăng kí desc limit 1
select count (*) from lần tham dự khoá học của sinh viên as t1 join khoá học as t2 on t1.id khoá học = t2.id khoá học where t2.tên khoá học = english
select count (*) from khoá học as t1 join lượt đăng ký khoá học của sinh viên as t2 on t1.id khoá học = t2.id khoá học where t1.tên khoá học = english
select count (*) from lần tham dự khoá học của sinh viên where id sinh viên = 171
select count (*) from lần tham dự khoá học của sinh viên where id sinh viên = 171
select t1.id ứng cử viên from ứng cử viên as t1 join cá nhân as t2 on t1.chi tiết ứng cử viên = t2.id cá nhân where t2.địa chỉ email = stanley.monahan@example.org
select t2.id ứng cử viên from cá nhân as t1 join ứng cử viên as t2 on t1.id cá nhân = t2.id ứng cử viên where t1.địa chỉ email = stanley.monahan@example.org
select id ứng cử viên from đánh giá ứng cử viên order by ngày đánh giá desc limit 1
select id ứng cử viên from đánh giá ứng cử viên order by ngày đánh giá desc limit 1
select t1.chi tiết sinh viên from sinh viên as t1 join lượt đăng ký khoá học của sinh viên as t2 on t1.id sinh viên = t2.id sinh viên group by t1.id sinh viên order by count (*) desc limit 1
select t1.chi tiết sinh viên from sinh viên as t1 join lượt đăng ký khoá học của sinh viên as t2 on t1.id sinh viên = t2.id sinh viên group by t1.id sinh viên order by count (*) desc limit 1
select t1.id sinh viên , count (*) from lượt đăng ký khoá học của sinh viên as t1 join sinh viên as t2 on t1.id sinh viên = t2.id sinh viên group by t1.id sinh viên
select count (*) , id sinh viên from lượt đăng ký khoá học của sinh viên group by id sinh viên
select t1.tên khoá học , count (*) from khoá học as t1 join lượt đăng ký khoá học của sinh viên as t2 on t1.id khoá học = t2.id khoá học group by t1.tên khoá học
select count (*) , t1.tên khoá học from khoá học as t1 join lượt đăng ký khoá học của sinh viên as t2 on t1.id khoá học = t2.id khoá học group by t1.tên khoá học
select id ứng cử viên from đánh giá ứng cử viên where mã kết quả đánh giá = pass
select id ứng cử viên from đánh giá ứng cử viên where mã kết quả đánh giá = pass
select t1.số di động from cá nhân as t1 join ứng cử viên as t2 on t1.id cá nhân = t2.id ứng cử viên join đánh giá ứng cử viên as t3 on t2.id ứng cử viên = t3.id ứng cử viên where t3.mã kết quả đánh giá = fail
select t1.số di động from cá nhân as t1 join ứng cử viên as t2 on t1.id cá nhân = t2.id ứng cử viên join đánh giá ứng cử viên as t3 on t2.id ứng cử viên = t3.id ứng cử viên where t3.mã kết quả đánh giá = fail
select id sinh viên from lượt đăng ký khoá học của sinh viên where id khoá học = 301
select id sinh viên from lượt đăng ký khoá học của sinh viên where id khoá học = 301
select id sinh viên from lần tham dự khoá học của sinh viên where ngày tham dự = (select ngày tham dự from lần tham dự khoá học của sinh viên where id khoá học = 301 order by ngày tham dự desc limit 1)
select id sinh viên from lần tham dự khoá học của sinh viên where id khoá học = 301 order by ngày tham dự desc limit 1
select distinct thành phố from địa chỉ
select distinct thành phố from địa chỉ
select distinct t3.thành phố from cá nhân as t1 join địa chỉ cá nhân as t2 on t1.id cá nhân = t2.id cá nhân join địa chỉ as t3 on t2.id địa chỉ = t3.id địa chỉ
select distinct thành phố from địa chỉ cá nhân as t1 join cá nhân as t2 on t1.id cá nhân = t2.id cá nhân
select tên khoá học from khoá học order by tên khoá học
select tên khoá học from khoá học order by tên khoá học
select tên from cá nhân order by tên asc
select tên from cá nhân order by tên
select id sinh viên from lượt đăng ký khoá học của sinh viên union select id sinh viên from lần tham dự khoá học của sinh viên
select id sinh viên from lượt đăng ký khoá học của sinh viên intersect select id sinh viên from lần tham dự khoá học của sinh viên
select id khoá học from lượt đăng ký khoá học của sinh viên where id sinh viên = 121 union select id khoá học from lần tham dự khoá học của sinh viên where id sinh viên = 121
select id khoá học from lượt đăng ký khoá học của sinh viên where id sinh viên = 121 union select id khoá học from lần tham dự khoá học của sinh viên where id sinh viên = 121
select * from lượt đăng ký khoá học của sinh viên where id sinh viên not in (select id sinh viên from lần tham dự khoá học của sinh viên)
select chi tiết sinh viên from sinh viên where id sinh viên not in (select id sinh viên from lần tham dự khoá học của sinh viên)
select t1.id sinh viên from lượt đăng ký khoá học của sinh viên as t1 join khoá học as t2 on t1.id khoá học = t2.id khoá học where t2.tên khoá học = statistics order by t1.ngày đăng kí
select id sinh viên from lượt đăng ký khoá học của sinh viên where id khoá học = (select id khoá học from khoá học where tên khoá học = statistics) order by ngày đăng ký
select t1.id sinh viên from lần tham dự khoá học của sinh viên as t1 join khoá học as t2 on t1.id khoá học = t2.id khoá học where t2.tên khoá học = statistics order by t1.ngày tham dự
select t1.id sinh viên from lần tham dự khoá học của sinh viên as t1 join khoá học as t2 on t1.id khoá học = t2.id khoá học where t2.tên khoá học = statistics order by t1.ngày tham dự
select count (*) from lượt nộp bài
select count (*) from lượt nộp bài
select tác giả from lượt nộp bài order by số điểm asc
select tác giả from lượt nộp bài order by số điểm asc
select tác giả , trường đại học from lượt nộp bài
select tác giả , trường đại học from lượt nộp bài
select tác giả from lượt nộp bài where trường đại học = florida or trường đại học = temple
select tác giả from lượt nộp bài where trường đại học = florida or trường đại học = temple
select avg (số điểm) from lượt nộp bài
select avg (số điểm) from lượt nộp bài
select tác giả from lượt nộp bài order by số điểm desc limit 1
select tác giả from lượt nộp bài order by số điểm desc limit 1
select trường đại học , count (*) from lượt nộp bài group by trường đại học
select trường đại học , count (*) from lượt nộp bài group by trường đại học
select trường đại học from lượt nộp bài group by trường đại học order by count (*) desc limit 1
select trường đại học from lượt nộp bài group by trường đại học order by count (*) desc limit 1
select trường đại học from lượt nộp bài where số điểm > 90 intersect select trường đại học from lượt nộp bài where số điểm < 80
select trường đại học from lượt nộp bài where số điểm > 90 intersect select trường đại học from lượt nộp bài where số điểm < 80
select t1.tác giả , t2.kết quả from lượt nộp bài as t1 join chấp thuận as t2 on t1.id lượt nộp bài = t2.id lượt nộp bài
select t1.tác giả , t2.kết quả from lượt nộp bài as t1 join chấp thuận as t2 on t1.id lượt nộp bài = t2.id lượt nộp bài
select t2.kết quả from lượt nộp bài as t1 join chấp thuận as t2 on t1.id lượt nộp bài = t2.id lượt nộp bài order by t1.số điểm desc limit 1
select t2.kết quả from lượt nộp bài as t1 join chấp thuận as t2 on t1.id lượt nộp bài = t2.id lượt nộp bài where t1.số điểm = (select max (số điểm) from lượt nộp bài)
select t1.tác giả , count (*) from lượt nộp bài as t1 join chấp thuận as t2 on t1.id lượt nộp bài = t2.id lượt nộp bài group by t1.tác giả
select t1.tác giả , count (*) from lượt nộp bài as t1 join chấp thuận as t2 on t1.id lượt nộp bài = t2.id lượt nộp bài group by t1.tác giả
select t1.tác giả from lượt nộp bài as t1 join chấp thuận as t2 on t1.id lượt nộp bài = t2.id lượt nộp bài group by t1.tác giả having count (*) > 1
select t1.tác giả from lượt nộp bài as t1 join chấp thuận as t2 on t1.id lượt nộp bài = t2.id lượt nộp bài group by t1.tác giả having count (*) > 1
select ngày , địa điểm from hội thảo order by địa điểm
select ngày , địa điểm from hội thảo order by địa điểm
select tác giả from lượt nộp bài except select tác giả from lượt nộp bài where id lượt nộp bài in (select id lượt nộp bài from chấp thuận)
select tác giả from lượt nộp bài except select tác giả from chấp thuận
select t2.tên from đánh giá as t1 join doanh nghiệp as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t1.đánh giá xếp hạng > 4.5
select t2.tên from đánh giá as t1 join doanh nghiệp as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t1.đánh giá xếp hạng = 3.5
select id người tiêu dùng from người tiêu dùng where tên = michelle
select tiểu bang from doanh nghiệp where tên = whataburger
select t1.thành phố from doanh nghiệp as t1 join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t2.tên loại hình = restaurant and t1.tên = mgm steakhouse
select thành phố from doanh nghiệp where đánh giá xếp hạng < 1.5
select thành phố from doanh nghiệp where tên = taj mahal
select văn bản from đánh giá where đánh giá xếp hạng < 1
select t1.tên from doanh nghiệp as t1 join đánh giá as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t2.đánh giá xếp hạng > 3.5
select t2.thành phố from doanh nghiệp as t1 join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t1.tên = taj mahal
select distinct t3.văn bản from đánh giá as t1 join người tiêu dùng as t2 on t1.id người tiêu dùng = t2.id người tiêu dùng join đánh giá as t3 on t1.id đánh giá = t3.id đánh giá where t2.tên = niloofar
select distinct t2.tên from đánh giá as t1 join doanh nghiệp as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp join người tiêu dùng as t3 on t1.id người tiêu dùng = t3.id người tiêu dùng where t3.tên = niloofar
select distinct t3.tên from đánh giá as t1 join doanh nghiệp as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp join người tiêu dùng as t3 on t1.id người tiêu dùng = t3.id người tiêu dùng where t3.tên = niloofar and t1.đánh giá xếp hạng = 5
select t2.văn bản from doanh nghiệp as t1 join đánh giá as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp join loại hình as t3 on t1.id doanh nghiệp = t3.id doanh nghiệp where t3.tên loại hình = italian restaurant and t2.id người tiêu dùng = 1 and t2.văn bản is not null
select count (*) from đánh giá as t1 join doanh nghiệp as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp join người tiêu dùng as t3 on t1.id người tiêu dùng = t3.id người tiêu dùng where t2.tên = cafe zinho and t2.tiểu bang = texas
select t1.tên from doanh nghiệp as t1 join đánh giá as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp join loại hình as t3 on t1.id doanh nghiệp = t3.id doanh nghiệp where t2.đánh giá xếp hạng = 5 and t3.tên loại hình = italian restaurant
select t1.tên khu phố lân cận from khu vực lân cận as t1 join doanh nghiệp as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp join loại hình as t3 on t2.id doanh nghiệp = t3.id doanh nghiệp where t2.thành phố = madison and t3.tên loại hình = italian restaurant
select t1.tên khu phố lân cận from khu vực lân cận as t1 join doanh nghiệp as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp join đánh giá as t3 on t2.id doanh nghiệp = t3.id doanh nghiệp where t3.đánh giá xếp hạng < 2.5 and t2.thành phố = madison and t2.loại hình = italian restaurant
select t1.tên from doanh nghiệp as t1 join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t2.tên loại hình = restaurant and t1.tiểu bang = pennsylvania
select t1.tên from doanh nghiệp as t1 join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t2.tên loại hình = restaurant and t1.tiểu bang = pennsylvania
select t2.văn bản from loại hình as t1 join đánh giá as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t1.tên loại hình = pet grooming group by t2.id đánh giá having count (*) > 100
select t1.tên from doanh nghiệp as t1 join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t2.tên loại hình = beer bar and t1.thành phố = los angeles
select t1.tên from doanh nghiệp as t1 join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t2.tên loại hình = brewpub and t1.thành phố = los angeles
select t1.tên from doanh nghiệp as t1 join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t2.tên loại hình = brewery and t1.thành phố = los angeles
select t2.tên from đánh giá as t1 join người tiêu dùng as t2 on t1.id người tiêu dùng = t2.id người tiêu dùng where t1.id doanh nghiệp in (select t1.id doanh nghiệp from doanh nghiệp as t1 join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t2.tên loại hình = restaurant and t1.tên = mesa grill)
select địa chỉ đầy đủ from doanh nghiệp where thành phố = los angeles
select t3.tên from doanh nghiệp as t3 join loại hình as t2 on t3.id doanh nghiệp = t2.id doanh nghiệp join người tiêu dùng as t1 on t2.id = t1.id người tiêu dùng where t3.thành phố = dallas and t1.tên = patrick
select t2.tên from doanh nghiệp as t2 join đánh giá as t1 on t2.id doanh nghiệp = t1.id doanh nghiệp join người tiêu dùng as t3 on t1.id người tiêu dùng = t3.id người tiêu dùng where t3.tên = patrick and t2.thành phố = dallas
select distinct t1.tên from doanh nghiệp as t1 join đánh giá as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp join người tiêu dùng as t3 on t2.id người tiêu dùng = t3.id người tiêu dùng where t3.tên = patrick
select distinct t3.id doanh nghiệp from đánh giá as t1 join người tiêu dùng as t2 on t1.id người tiêu dùng = t2.id người tiêu dùng join doanh nghiệp as t3 on t1.id doanh nghiệp = t3.id doanh nghiệp where t2.tên = patrick and t1.đánh giá xếp hạng >= 3
select t1.tên from người tiêu dùng as t1 join khoản tiền boa as t2 on t1.id người tiêu dùng = t2.id người tiêu dùng join doanh nghiệp as t3 on t2.id doanh nghiệp = t3.id doanh nghiệp where t3.tên = barrio cafe and t2.năm = 2015
select tên from doanh nghiệp where tiểu bang = texas and đánh giá xếp hạng < 2
select t1.tên from doanh nghiệp as t1 join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp join địa chỉ as t3 on t1.id doanh nghiệp = t3.id doanh nghiệp where t2.tên loại hình = seafood and t3.thành phố = los angeles
select t1.tên from doanh nghiệp as t1 join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp join địa chỉ as t3 on t1.id doanh nghiệp = t3.id doanh nghiệp where t2.tên loại hình = seafood and t3.thành phố = los angeles
select t1.tên from doanh nghiệp as t1 join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp join địa chỉ as t3 on t1.id doanh nghiệp = t3.id doanh nghiệp where t2.tên loại hình = restaurant and t3.thành phố = los angeles and t3.tiểu bang = california
select t2.văn bản from đánh giá as t1 join người tiêu dùng as t2 on t1.id người tiêu dùng = t2.id người tiêu dùng where t2.tên = patrick and t1.đánh giá xếp hạng > 4
select tên from doanh nghiệp where thành phố = los angeles and tên = apple store
select t1.tên from doanh nghiệp as t1 join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t2.tên loại hình = restaurant and t1.thành phố = dallas and t1.đánh giá xếp hạng > 4.5
select tên khu phố lân cận from khu vực lân cận as t1 join doanh nghiệp as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t2.tên = flat top grill
select t2.văn bản from khoản tiền boa as t1 join đánh giá as t2 on t1.id đánh giá = t2.id đánh giá where t1.số lượt thích > 9 and t2.id doanh nghiệp in (select t1.id doanh nghiệp from doanh nghiệp as t1 join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t2.tên loại hình = restaurant and t1.tên = vintner grill)
select t2.văn bản from đánh giá as t1 join các loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t2.tên loại hình = kabob and t1.năm = 2014
select t1.tên from người tiêu dùng as t1 join khoản tiền boa as t2 on t1.id người tiêu dùng = t2.id người tiêu dùng join doanh nghiệp as t3 on t2.id doanh nghiệp = t3.id doanh nghiệp where t3.thành phố = dallas
select t1.thành phố from doanh nghiệp as t1 join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp join người tiêu dùng as t3 on t2.id = t3.id người tiêu dùng where t3.tên = mgm formosa restaurant and t1.tiểu bang = texas
select t1.tên from người tiêu dùng as t1 join khoản tiền boa as t2 on t1.id người tiêu dùng = t2.id người tiêu dùng join doanh nghiệp as t3 on t2.id doanh nghiệp = t3.id doanh nghiệp join loại hình as t4 on t3.id doanh nghiệp = t4.id doanh nghiệp where t4.tên loại hình = pet grooming
select t2.văn bản from doanh nghiệp as t1 join khoản tiền boa as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp join người tiêu dùng as t3 on t2.id người tiêu dùng = t3.id người tiêu dùng where t1.tên = cafe zinho and t3.tên = texas
select t2.tên from đánh giá as t1 join người tiêu dùng as t2 on t1.id người tiêu dùng = t2.id người tiêu dùng join doanh nghiệp as t3 on t1.id doanh nghiệp = t3.id doanh nghiệp join loại hình as t4 on t3.id doanh nghiệp = t4.id doanh nghiệp where t4.tên loại hình = restaurant
select t2.văn bản from doanh nghiệp as t1 join khoản tiền boa as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp join đánh giá as t3 on t1.id doanh nghiệp = t3.id doanh nghiệp where t1.tên = cafe zinho and t3.năm = 2010
select t2.tên from đánh giá as t1 join người tiêu dùng as t2 on t1.id người tiêu dùng = t2.id người tiêu dùng where t1.năm = 2010 and t1.đánh giá xếp hạng is not null
select t2.văn bản from khoản tiền boa as t1 join đánh giá as t2 on t1.id đánh giá = t2.id đánh giá where t1.năm = 2012
select t2.văn bản from đánh giá as t1 join các đánh giá as t2 on t1.id đánh giá = t2.id đánh giá where t1.đánh giá xếp hạng = 2.5
select count (*) from doanh nghiệp as t1 join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t1.thành phố = madison and t2.tên loại hình = escape room
select count (*) from doanh nghiệp as t1 join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t1.thành phố = madison and t2.tên loại hình = escape room
select count (*) from doanh nghiệp as t1 join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t1.thành phố = madison and t2.tên loại hình = escape room
select count (*) from doanh nghiệp as t1 join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t2.tên loại hình = escape room and t1.thành phố = madison
select count (*) from doanh nghiệp as t1 join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t2.tên loại hình = escape room and t1.thành phố = madison
select count (*) from đánh giá as t1 join doanh nghiệp as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t1.đánh giá xếp hạng > 3.5 group by t1.id doanh nghiệp having count (*) > 1
select sum (t2.số lượng) from doanh nghiệp as t1 join lượt đăng ký as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t1.thành phố = los angeles and t1.tên = mexican
select sum (t2.số lượng) from doanh nghiệp as t1 join lượt đăng ký as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t1.tên = marrokats and t1.thành phố = los angeles and t2.ngày = friday
select sum (t2.số lượng) , t1.ngày from khu vực lân cận as t3 join doanh nghiệp as t1 on t3.id doanh nghiệp = t1.id doanh nghiệp join lượt đăng ký as t2 on t2.id doanh nghiệp = t1.id doanh nghiệp where t1.thành phố = los angeles and t3.tên khu phố lân cận = mexican group by t1.ngày
select sum (t2.số lượng) , t1.tiểu bang from doanh nghiệp as t1 join lượt đăng ký as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t1.tên = italian delis and t2.ngày = sunday group by t1.tiểu bang
select count (distinct t2.id đánh giá) from đánh giá as t2 join người tiêu dùng as t1 on t2.id người tiêu dùng = t1.id người tiêu dùng where t1.tên = niloofar and t2.năm = 2015
select avg (t2.đánh giá xếp hạng) from người tiêu dùng as t1 join đánh giá as t2 on t1.id người tiêu dùng = t2.id người tiêu dùng where t1.tên = michelle
select t2.số lượng from doanh nghiệp as t1 join lượt đăng ký as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t1.tên = cafe zinho and t2.ngày = friday
select count (distinct t2.id người tiêu dùng) from đánh giá as t1 join người tiêu dùng as t2 on t1.id người tiêu dùng = t2.id người tiêu dùng join doanh nghiệp as t3 on t1.id doanh nghiệp = t3.id doanh nghiệp where t3.tên = sushi too and t3.thành phố = pittsburgh
select count (*) from doanh nghiệp as t1 join đánh giá as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t1.thành phố = pittsburgh and t2.đánh giá xếp hạng > 4.5
select count (distinct t1.id đánh giá) from đánh giá as t1 join khoản tiền boa as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t2.năm = 2015
select sum (t2.số lượt thích) from khoản tiền boa as t1 join đánh giá as t2 on t1.id đánh giá = t2.id đánh giá join người tiêu dùng as t3 on t3.id người tiêu dùng = t2.id người tiêu dùng where t3.tên = niloofar
select sum (t2.số lượt thích) from khoản tiền boa as t1 join đánh giá as t2 on t1.id đánh giá = t2.id đánh giá where t1.id doanh nghiệp = (select id doanh nghiệp from doanh nghiệp where tên = cafe zinho)
select sum (t2.số lượt thích) from đánh giá as t1 join khoản tiền boa as t2 on t1.id đánh giá = t2.id đánh giá join doanh nghiệp as t3 on t1.id doanh nghiệp = t3.id doanh nghiệp where t3.tên = cafe zinho and t2.id người tiêu dùng = niloofar
select count (distinct t2.văn bản) from đánh giá as t1 join khoản tiền boa as t2 on t1.id đánh giá = t2.id đánh giá join người tiêu dùng as t3 on t1.id người tiêu dùng = t3.id người tiêu dùng where t3.tên = michelle and t2.năm = 2010
select count (distinct t2.văn bản) from đánh giá as t1 join khoản tiền boa as t2 on t1.id đánh giá = t2.id đánh giá join người tiêu dùng as t3 on t1.id người tiêu dùng = t3.id người tiêu dùng where t3.tên = michelle and t2.năm = 2010
select count (*) from đánh giá as t1 join khoản tiền boa as t2 on t1.id đánh giá = t2.id đánh giá join người tiêu dùng as t3 on t3.id người tiêu dùng = t2.id người tiêu dùng where t3.tên = michelle and t2.tháng = april
select count (*) from doanh nghiệp where tiểu bang = texas
select count (*) from doanh nghiệp as t1 join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t1.thành phố = dallas and t2.tên loại hình = bar and t1.đánh giá xếp hạng > 3.5
select count (*) from doanh nghiệp as t1 join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t1.thành phố = dallas and t2.tên loại hình = bar and t1.đánh giá xếp hạng > 3.5
select count (distinct t2.id người tiêu dùng) from đánh giá as t1 join người tiêu dùng as t2 on t1.id người tiêu dùng = t2.id người tiêu dùng join doanh nghiệp as t3 on t1.id doanh nghiệp = t3.id doanh nghiệp where t3.tên = texas de brazil and t3.thành phố = dallas and t1.văn bản like %texas de brazil%
select count (distinct t1.id người tiêu dùng) from đánh giá as t1 join doanh nghiệp as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t2.tên = bistro di napoli and t1.năm = 2015
select count (*) from doanh nghiệp as t1 join khu vực lân cận as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp join loại hình as t3 on t1.id doanh nghiệp = t3.id where t2.tên khu phố lân cận = hazelwood and t3.tên loại hình = restaurant and t1.thành phố = dallas
select count (*) from doanh nghiệp where tiểu bang = texas and thành phố = dallas
select số lượng đánh giá from doanh nghiệp where tên = acacia cafe
select avg (t2.số lượng) from doanh nghiệp as t1 join lượt đăng ký as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t1.tên = barrio cafe
select count (*) from khu vực lân cận as t1 join doanh nghiệp as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t1.tên khu phố lân cận = stone meadows and t2.thành phố = madison
select distinct count (t1.id đánh giá) from đánh giá as t1 join người tiêu dùng as t2 on t1.id người tiêu dùng = t2.id người tiêu dùng where t2.tên = adrienne
select count (distinct t3.văn bản) from đánh giá as t1 join người tiêu dùng as t2 on t1.id người tiêu dùng = t2.id người tiêu dùng join đánh giá as t3 on t3.id đánh giá = t1.id đánh giá where t2.tên = michelle and t3.tháng = march and t3.năm = 2014
select count (*) from đánh giá as t1 join người tiêu dùng as t2 on t1.id người tiêu dùng = t2.id người tiêu dùng where t2.tên = michelle and t1.năm = 2010
select count (*) from doanh nghiệp as t1 join đánh giá as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp join người tiêu dùng as t3 on t2.id người tiêu dùng = t3.id người tiêu dùng where t1.thành phố = san diego and t3.tên = christine and t2.năm = 2010
select count (*) from doanh nghiệp where tên = target and thành phố = los angeles
select count (distinct t2.id người tiêu dùng) from đánh giá as t1 join người tiêu dùng as t2 on t1.id người tiêu dùng = t2.id người tiêu dùng where t1.id doanh nghiệp in (select t1.id doanh nghiệp from doanh nghiệp as t1 join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t2.tên loại hình = wine bar) and t1.tên = ailen
select avg (đánh giá xếp hạng) from đánh giá where năm = 2014
select count (distinct t2.id người tiêu dùng) from đánh giá as t1 join người tiêu dùng as t2 on t1.id người tiêu dùng = t2.id người tiêu dùng where t1.id doanh nghiệp in (select t1.id doanh nghiệp from doanh nghiệp as t1 join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t2.tên loại hình = restaurant and t1.tên = vintner grill) and t1.năm = 2010
select t2.số lượng đánh giá from khu vực lân cận as t1 join doanh nghiệp as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t1.tên khu phố lân cận = south summerlin group by t2.id doanh nghiệp
select count (*) from người tiêu dùng where tên = michelle
select count (*) from doanh nghiệp as t1 join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t2.tên loại hình = restaurant
select count (distinct thành phố) from doanh nghiệp where tên = panda express
select count (*) from đánh giá as t1 join khoản tiền boa as t2 on t1.id đánh giá = t2.id đánh giá join người tiêu dùng as t3 on t3.id người tiêu dùng = t1.id người tiêu dùng where t3.tên = michelle
select sum (t2.số lượng) from khu vực lân cận as t1 join lượt đăng ký as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t1.tên khu phố lân cận = brighton heights
select count (distinct id đánh giá) from đánh giá where tháng = mar
select count (*) , tháng from khoản tiền boa group by tháng
select count (*) from khu vực lân cận as t1 join doanh nghiệp as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t2.địa chỉ đầy đủ = madison and t2.đánh giá xếp hạng = 5
select t1.tên from doanh nghiệp as t1 join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t2.tên loại hình = middle eastern restaurant and t1.tiểu bang = texas
select t1.tên from doanh nghiệp as t1 join lượt đăng ký as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp group by t1.tên order by sum (t2.số lượng) desc limit 1
select tên khu phố lân cận from khu vực lân cận as t1 join doanh nghiệp as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t2.thành phố = madison group by tên khu phố lân cận order by count (*) desc limit 1
select t1.tên from doanh nghiệp as t1 join đánh giá as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp join người tiêu dùng as t3 on t2.id người tiêu dùng = t3.id người tiêu dùng where t1.thành phố = dallas and t3.tên = mexico and t2.đánh giá xếp hạng >= 3.5
select distinct t1.tên from doanh nghiệp as t1 join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp join đánh giá as t3 on t1.id doanh nghiệp = t3.id doanh nghiệp where t2.tên loại hình = restaurant and t3.đánh giá xếp hạng >= 3.5 and t1.thành phố = dallas and t1.tiểu bang = texas
select t1.tên from doanh nghiệp as t1 join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t1.thành phố = dallas and t1.tiểu bang = texas and t2.tên loại hình = car service
select t1.tên from doanh nghiệp as t1 join khu vực lân cận as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp join loại hình as t3 on t1.id doanh nghiệp = t3.id doanh nghiệp where t2.tên khu phố lân cận = meadowood and t3.tên loại hình = italian restaurant and t1.thành phố = madison
select t1.tên from doanh nghiệp as t1 join đánh giá as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t1.thành phố = los angeles and t2.đánh giá xếp hạng > 3 group by t2.id doanh nghiệp having count (*) >= 30
select count (*) from doanh nghiệp as t1 join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t1.thành phố = edinburgh and t2.tên loại hình = ai cập
select t1.tên from người tiêu dùng as t1 join đánh giá as t2 on t1.id người tiêu dùng = t2.id người tiêu dùng group by t1.id người tiêu dùng having avg (t2.đánh giá xếp hạng) < 3
select t1.tên from doanh nghiệp as t1 join đánh giá as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t2.tháng = april group by t2.id doanh nghiệp order by count (*) desc limit 1
select t1.tên from doanh nghiệp as t1 join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp group by t2.id doanh nghiệp order by count (*) desc limit 1