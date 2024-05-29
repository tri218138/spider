select t1.id tài sản , t1.chi tiết tài sản from tài sản as t1 join bộ phận của tài sản as t2 on t1.id tài sản = t2.id tài sản group by t1.id tài sản having count ( * ) = 2 except select t1.id tài sản , t1.chi tiết tài sản from tài sản as t1 join bộ phận của tài sản as t2 on t1.id tài sản = t2.id tài sản group by t1.id tài sản join nhật ký lỗi as t3 on t1.id tài sản = t3.id tài sản
select t1.id hợp đồng bảo trì , count ( * ) from hợp đồng bảo trì as t1 join tài sản as t2 on t1.id hợp đồng bảo trì = t2.id hợp đồng bảo trì group by t1.id hợp đồng bảo trì
select t1.id công ty , count ( * ) from công ty bên thứ ba as t1 join tài sản as t2 on t1.id công ty = t2.id công ty cung cấp group by t1.id công ty
select t1.tên công ty , t1.id công ty from công ty bên thứ ba as t1 join kỹ sư bảo trì as t2 on t1.id công ty = t2.id công ty group by t1.id công ty having count ( * ) >= 2 union select t1.tên công ty , t1.id công ty from công ty bên thứ ba as t1 join hợp đồng bảo trì as t2 on t1.id công ty = t2.id hợp đồng bảo trì của công ty group by t1.id công ty having count ( * ) >= 2
select t1.tên nhân viên , t1.id nhân viên from nhân viên as t1 join nhật ký lỗi as t2 on t1.id nhân viên = t2.được ghi lại bởi nhân viên có id where id mục nhập của nhật ký lỗi not in ( select id mục nhập của nhật ký lỗi from chuyến thăm của kỹ sư )
select t1.id kỹ sư , t1.tên , t1.họ from kỹ sư bảo trì as t1 join chuyến thăm của kỹ sư as t2 on t1.id kỹ sư = t2.id kỹ sư group by t1.id kỹ sư order by count ( * ) desc limit 1
select t1.id bộ phận , t1.tên bộ phận from bộ phận as t1 join nhật ký của lỗi bộ phận as t2 on t1.id bộ phận = t2.id bộ phận bị lỗi group by t1.id bộ phận having count ( * ) > 2
select t1.tên , t1.họ , t1.những chi tiết khác from kỹ sư bảo trì as t1 join kỹ năng của kỹ sư as t2 on t1.id kỹ sư = t2.id kỹ sư join kỹ năng as t3 on t2.id kỹ năng = t3.id kỹ năng
select t1.mô tả về lỗi , t2.mô tả về kỹ năng from lỗi bộ phận as t1 join kỹ năng cần để sửa chữa as t2 on t1.id bộ phận bị lỗi = t2.id bộ phận bị lỗi
select t2.tên bộ phận , count ( * ) from bộ phận của tài sản as t1 join bộ phận as t2 on t1.id bộ phận = t2.id bộ phận group by t2.tên bộ phận
select tình trạng lỗi , mô tả về lỗi from nhật ký lỗi
select t1.id mục nhập của nhật ký lỗi , count ( * ) from nhật ký lỗi as t1 join chuyến thăm của kỹ sư as t2 on t1.id mục nhập của nhật ký lỗi = t2.id mục nhập của nhật ký lỗi group by t1.id mục nhập của nhật ký lỗi order by count ( * ) desc limit 1
select distinct họ from kỹ sư bảo trì
select distinct tình trạng lỗi from nhật ký lỗi
select tên , họ from kỹ sư bảo trì where id kỹ sư not in ( select id kỹ sư from chuyến thăm của kỹ sư )
select id tài sản , chi tiết tài sản , thương hiệu tài sản , mẫu mã tài sản from tài sản
select ngày mua tài sản from tài sản order by ngày mua tài sản limit 1
select t1.id bộ phận bị lỗi , t2.tên viết tắt của lỗi from lỗi bộ phận as t1 join kỹ năng cần để sửa chữa as t2 on t1.id bộ phận bị lỗi = t2.id bộ phận bị lỗi group by t1.id bộ phận bị lỗi order by count ( * ) desc limit 1
select t1.tên bộ phận from bộ phận as t1 join lỗi bộ phận as t2 on t1.id bộ phận = t2.id bộ phận group by t1.tên bộ phận order by count ( * ) asc limit 1
select
select t1.tên , t1.họ from nhân viên as t1 join chuyến thăm của kỹ sư as t2 on t1.id nhân viên = t2.id nhân viên liên lạc
select t1.id mục nhập của nhật ký lỗi , t2.mô tả về lỗi , t1.thời gian mục nhập của nhật ký lỗi from nhật ký lỗi as t1 join lỗi bộ phận as t2 on t1.id mục nhập của nhật ký lỗi = t2.id mục nhập của nhật ký lỗi group by t1.id mục nhập của nhật ký lỗi order by count ( * ) desc limit 1
select t1.id kỹ năng , t1.mô tả về kỹ năng from kỹ năng as t1 join kỹ năng cần để sửa chữa as t2 on t1.id kỹ năng = t2.id kỹ năng group by t1.id kỹ năng order by count ( * ) desc limit 1
select distinct mẫu mã tài sản from tài sản
select thương hiệu tài sản , mẫu mã tài sản , chi tiết tài sản from tài sản order by ngày thanh lý tài sản asc
select id bộ phận , số tiền phải trả from bộ phận order by số tiền phải trả asc limit 1
select t1.tên công ty from công ty bên thứ ba as t1 join hợp đồng bảo trì as t2 on t1.id công ty = t2.id hợp đồng bảo trì của công ty order by t2.ngày bắt đầu hợp đồng asc limit 1
select t1.tên công ty from công ty bên thứ ba as t1 join hợp đồng bảo trì as t2 on t1.id công ty = t2.id hợp đồng bảo trì của công ty order by t2.ngày kết thúc hợp đồng desc limit 1
select giới tính from nhân viên group by giới tính order by count ( * ) desc limit 1
select t1.tên nhân viên , count ( * ) from nhân viên as t1 join chuyến thăm của kỹ sư as t2 on t1.id nhân viên = t2.id nhân viên liên lạc group by t1.id nhân viên
select mẫu mã tài sản from tài sản where id tài sản not in ( select id tài sản from nhật ký lỗi )
select count ( * ) from sách
select tác giả from sách order by tác giả asc
select tiêu đề from sách order by số lượng phát hành asc
select tiêu đề from sách where tác giả != "Elaine Lee"
select tiêu đề , số lượng phát hành from sách
select ngày xuất bản from ấn phẩm order by giá bán desc
select distinct nhà xuất bản from ấn phẩm where giá bán > 5000000
select nhà xuất bản from ấn phẩm order by giá bán desc limit 1
select ngày xuất bản from ấn phẩm order by giá bán limit 3
select t1.tiêu đề , t2.ngày xuất bản from sách as t1 join ấn phẩm as t2 on t1.id sách = t2.id sách
select t1.tác giả from sách as t1 join ấn phẩm as t2 on t1.id sách = t2.id sách where t2.giá bán > 4000000
select t1.tiêu đề from sách as t1 join ấn phẩm as t2 on t1.id sách = t2.id sách order by t2.giá bán desc
select nhà xuất bản from ấn phẩm group by nhà xuất bản having count ( * ) > 1
select nhà xuất bản , count ( * ) from ấn phẩm group by nhà xuất bản
select ngày xuất bản from ấn phẩm group by ngày xuất bản order by count ( * ) desc limit 1
select tác giả from sách group by tác giả having count ( * ) > 1
select tiêu đề from sách where id sách not in ( select id sách from ấn phẩm )
select nhà xuất bản from ấn phẩm where giá bán > 10000000 intersect select nhà xuất bản from ấn phẩm where giá bán < 5000000
select count ( distinct ngày xuất bản ) from ấn phẩm
select count ( distinct ngày xuất bản ) from ấn phẩm
select giá bán from ấn phẩm where nhà xuất bản = "Person" or nhà xuất bản = "Wiley"
select tên bộ phận from bộ phận order by ngày bắt đầu quản lý
select tên người phụ thuộc from người phụ thuộc where mối quan hệ = "Spouse" intersect select tên from nhân viên
select count ( * ) from người phụ thuộc where giới tính = "F"
select t1.tên bộ phận from bộ phận as t1 join địa điểm của bộ phận as t2 on t1.mã số bộ phận = t2.mã số bộ phận where t2.địa điểm bộ phận = "Houston"
select tên , họ from nhân viên where lương > 30000
select count ( * ) , giới tính from nhân viên where lương < 50000 group by giới tính
select tên , họ , địa chỉ from nhân viên order by ngày sinh
select count ( * ) from giáo viên
select count ( * ) from giáo viên
select tên from giáo viên order by tuổi asc
select tên from giáo viên order by tuổi asc
select tuổi , quê quán from giáo viên
select tên , tuổi , quê quán from giáo viên
select tên from giáo viên where quê quán != "Little Lever Urban Area"
select tên from giáo viên where quê quán != "Little Lever Urban Area"
select tên from giáo viên where tuổi = 32 or tuổi = 33
select tên from giáo viên where tuổi = 32 or tuổi = 33
select quê quán from giáo viên order by tuổi limit 1
select quê quán from giáo viên order by tuổi limit 1
select quê quán , count ( * ) from giáo viên group by quê quán
select quê quán , count ( * ) from giáo viên group by quê quán
select quê quán from giáo viên group by quê quán order by count ( * ) desc limit 1
select quê quán from giáo viên group by quê quán order by count ( * ) desc limit 1
select quê quán from giáo viên group by quê quán having count ( * ) >= 2
select quê quán from giáo viên group by quê quán having count ( * ) >= 2
select t2.tên , t3.khoá học from sắp xếp khoá học as t1 join giáo viên as t2 on t1.id giáo viên = t2.id giáo viên join khoá học as t3 on t1.id khoá học = t3.id khoá học
select distinct t1.tên , t3.khoá học from giáo viên as t1 join sắp xếp khoá học as t2 on t1.id giáo viên = t2.id giáo viên join khoá học as t3 on t2.id khoá học = t3.id khoá học
select t2.tên , t3.khoá học from sắp xếp khoá học as t1 join giáo viên as t2 on t1.id giáo viên = t2.id giáo viên join khoá học as t3 on t1.id khoá học = t3.id khoá học order by t2.tên
select t2.tên , t3.khoá học from sắp xếp khoá học as t1 join giáo viên as t2 on t1.id giáo viên = t2.id giáo viên join khoá học as t3 on t1.id khoá học = t3.id khoá học order by t2.tên
select t3.tên from khoá học as t1 join sắp xếp khoá học as t2 on t1.id khoá học = t2.id khoá học join giáo viên as t3 on t2.id giáo viên = t3.id giáo viên where t1.khoá học = "Math"
select t2.tên from sắp xếp khoá học as t1 join giáo viên as t2 on t1.id giáo viên = t2.id giáo viên join khoá học as t3 on t1.id khoá học = t3.id khoá học where t3.khoá học = "Math"
select t2.tên , count ( * ) from sắp xếp khoá học as t1 join giáo viên as t2 on t1.id giáo viên = t2.id giáo viên group by t2.tên
select t2.tên , count ( * ) from sắp xếp khoá học as t1 join giáo viên as t2 on t1.id giáo viên = t2.id giáo viên group by t2.tên
select t2.tên from sắp xếp khoá học as t1 join giáo viên as t2 on t1.id giáo viên = t2.id giáo viên group by t2.tên having count ( * ) >= 2
select t2.tên from sắp xếp khoá học as t1 join giáo viên as t2 on t1.id giáo viên = t2.id giáo viên group by t2.tên having count ( * ) >= 2
select tên from giáo viên where id giáo viên not in ( select id giáo viên from sắp xếp khoá học )
select tên from giáo viên where id giáo viên not in ( select id giáo viên from sắp xếp khoá học )
select count ( * ) from thành viên
select tên from thành viên order by tên asc
select tên , quốc gia from thành viên
select tên from thành viên where quốc gia = "United States" or quốc gia = "Canada"
select quốc gia , count ( * ) from thành viên group by quốc gia
select quốc gia from thành viên group by quốc gia order by count ( * ) desc limit 1
select quốc gia from thành viên group by quốc gia having count ( * ) > 2
select tên lãnh đạo , địa điểm trường đại học from trường đại học
select t1.tên , t2.tên from thành viên as t1 join trường đại học as t2 on t1.id đại học = t2.id đại học
select tên from nhà khoa học order by tên
select t1.tên lãnh đạo from trường đại học as t1 join thành viên as t2 on t1.id đại học = t2.id đại học where t2.quốc gia = "Canada"
select t2.tên , t1.chủ đề trang trí from vòng as t1 join thành viên as t2 on t1.id thành viên = t2.id thành viên
select t2.tên from vòng as t1 join thành viên as t2 on t1.id thành viên = t2.id thành viên where t1.xếp hạng từng vòng <= 3
select t2.tên from vòng as t1 join thành viên as t2 on t1.id thành viên = t2.id thành viên order by xếp hạng từng vòng asc
select tên from thành viên where id thành viên not in ( select id thành viên from vòng )
select count ( * ) from cuộc bầu cử
select số lượng phiếu bầu from cuộc bầu cử order by số lượng phiếu bầu desc
select ngày , tỉ lệ phiếu bầu from cuộc bầu cử
select min ( tỉ lệ phiếu bầu ) , max ( tỉ lệ phiếu bầu ) from cuộc bầu cử
select tên , đảng from đại diện
select tên from đại diện where đảng != "Republican"
select tuổi thọ from đại diện where tiểu bang = "New York" or tiểu bang = "Indiana"
select t2.tên , t1.ngày from cuộc bầu cử as t1 join đại diện as t2 on t1.id đại diện = t2.id đại diện
select t1.tên from đại diện as t1 join cuộc bầu cử as t2 on t1.id đại diện = t2.id đại diện where t2.số lượng phiếu bầu > 10000
select t1.tên from đại diện as t1 join cuộc bầu cử as t2 on t1.id đại diện = t2.id đại diện order by t2.số lượng phiếu bầu desc
select t2.đảng from cuộc bầu cử as t1 join đại diện as t2 on t1.id đại diện = t2.id đại diện order by t1.số lượng phiếu bầu limit 1
select t1.tuổi thọ from đại diện as t1 join cuộc bầu cử as t2 on t1.id đại diện = t2.id đại diện order by t2.tỉ lệ phiếu bầu desc
select avg ( số lượng phiếu bầu ) from cuộc bầu cử as t1 join đại diện as t2 on t1.id đại diện = t2.id đại diện where t2.đảng = "Republican"
select đảng , count ( * ) from đại diện group by đảng
select đảng from đại diện group by đảng order by count ( * ) desc limit 1
select đảng from đại diện group by đảng having count ( * ) >= 3
select tiểu bang from đại diện group by tiểu bang having count ( * ) >= 2
select tên from đại diện where id đại diện not in ( select id đại diện from cuộc bầu cử )
select đảng from đại diện where tiểu bang = "New York" intersect select đảng from đại diện where tiểu bang = "Pennsylvania"
select count ( distinct đảng ) from đại diện
select count ( * ) from quốc gia
select count ( * ) from quốc gia
select tên quốc gia , thủ đô from quốc gia
select tên quốc gia , thủ đô from quốc gia
select ngôn ngữ bản địa chính thức from quốc gia where ngôn ngữ bản địa chính thức like "%English%"
select ngôn ngữ bản địa chính thức from quốc gia where ngôn ngữ bản địa chính thức like "%English%"
select distinct vị trí from trận đấu trong mùa giải
select distinct vị trí from trận đấu trong mùa giải
select cầu thủ from trận đấu trong mùa giải where trường đại học = "UCLA"
select cầu thủ from trận đấu trong mùa giải where trường đại học = "UCLA"
select distinct t1.vị trí from trận đấu trong mùa giải as t1 join đội as t2 on t1.đội = t2.id đội where t2.trường đại học = "UCLA" or t2.trường đại học = "Duke"
select distinct t1.vị trí from trận đấu trong mùa giải as t1 join đội as t2 on t1.đội = t2.id đội where t2.trường đại học = "UCLA" or t2.trường đại học = "Duke"
select mã số tuyển chọn tân binh , mùa tuyển chọn from trận đấu trong mùa giải where vị trí = "Defender"
select mã số tuyển chọn tân binh , mùa tuyển chọn from trận đấu trong mùa giải where vị trí = "Defender"
select count ( distinct đội ) from trận đấu trong mùa giải
select count ( distinct đội ) from trận đấu trong mùa giải
select cầu thủ , số năm đã chơi from cầu thủ
select cầu thủ , số năm đã chơi from cầu thủ
select tên from đội
select tên from đội
select t1.mùa giải , t1.cầu thủ , t2.tên quốc gia from trận đấu trong mùa giải as t1 join quốc gia as t2 on t1.quốc gia = t2.id quốc gia
select
select t2.cầu thủ from quốc gia as t1 join trận đấu trong mùa giải as t2 on t1.id quốc gia = t2.quốc gia where t1.tên quốc gia = "Indonesia"
select t2.cầu thủ from quốc gia as t1 join trận đấu trong mùa giải as t2 on t1.id quốc gia = t2.quốc gia where t1.tên quốc gia = "Indonesia"
select distinct t2.vị trí from quốc gia as t1 join trận đấu trong mùa giải as t2 on t1.id quốc gia = t2.quốc gia where t1.thủ đô = "Dublin"
select distinct t2.vị trí from quốc gia as t1 join trận đấu trong mùa giải as t2 on t1.id quốc gia = t2.quốc gia where t1.thủ đô = "Dublin"
select t1.ngôn ngữ bản địa chính thức from quốc gia as t1 join trận đấu trong mùa giải as t2 on t1.id quốc gia = t2.quốc gia where t2.trường đại học = "Maryland" or t2.trường đại học = "Duke"
select t1.ngôn ngữ bản địa chính thức from quốc gia as t1 join trận đấu trong mùa giải as t2 on t1.id quốc gia = t2.quốc gia where t2.trường đại học = "Maryland" or t2.trường đại học = "Duke"
select count ( distinct t1.ngôn ngữ bản địa chính thức ) from quốc gia as t1 join trận đấu trong mùa giải as t2 on t1.id quốc gia = t2.quốc gia where t2.vị trí = "Defender"
select count ( distinct t1.ngôn ngữ bản địa chính thức ) from quốc gia as t1 join trận đấu trong mùa giải as t2 on t1.id quốc gia = t2.quốc gia where t2.vị trí = "Defender"
select t1.mùa giải , t2.cầu thủ , t2.đội from trận đấu trong mùa giải as t1 join cầu thủ as t2 on t1.cầu thủ = t2.id cầu thủ
select t1.cầu thủ , t1.mùa giải , t2.tên from trận đấu trong mùa giải as t1 join đội as t2 on t1.đội = t2.id đội
select t2.vị trí from đội as t1 join trận đấu trong mùa giải as t2 on t1.id đội = t2.đội where t1.tên = "Ryley Goldner"
select cầu thủ from trận đấu trong mùa giải where trường đại học != "United States"
select count ( * ) from trận đấu trong mùa giải as t1 join đội as t2 on t1.đội = t2.id đội where t2.tên = "Texas"
select count ( distinct trường đại học ) from trận đấu trong mùa giải as t1 join đội as t2 on t1.đội = t2.id đội where t2.tên = "Columbus Crew"
select t1.cầu thủ , t1.số năm đã chơi from cầu thủ as t1 join đội as t2 on t1.đội = t2.id đội where t2.tên = "Columbus Crew"
select
select vị trí , count ( * ) from trận đấu trong mùa giải group by vị trí
select vị trí , count ( * ) from trận đấu trong mùa giải group by vị trí
select t1.tên quốc gia , count ( * ) from quốc gia as t1 join trận đấu trong mùa giải as t2 on t1.id quốc gia = t2.quốc gia group by t1.tên quốc gia
select t1.tên quốc gia , count ( * ) from quốc gia as t1 join trận đấu trong mùa giải as t2 on t1.id quốc gia = t2.quốc gia group by t1.tên quốc gia
select cầu thủ from trận đấu trong mùa giải order by trường đại học asc
select cầu thủ from trận đấu trong mùa giải order by trường đại học asc
select vị trí from trận đấu trong mùa giải group by vị trí order by count ( * ) desc limit 1
select vị trí from trận đấu trong mùa giải group by vị trí order by count ( * ) desc limit 1
select trường đại học from trận đấu trong mùa giải group by trường đại học order by count ( * ) desc limit 3
select trường đại học from trận đấu trong mùa giải group by trường đại học order by count ( * ) desc limit 3
select trường đại học from trận đấu trong mùa giải group by trường đại học having count ( * ) >= 2
select trường đại học from trận đấu trong mùa giải group by trường đại học having count ( * ) >= 2
select trường đại học from trận đấu trong mùa giải group by trường đại học having count ( * ) >= 2 order by trường đại học desc
select trường đại học from trận đấu trong mùa giải group by trường đại học having count ( * ) >= 2 order by trường đại học desc
select tên from đội where id đội not in ( select đội from trận đấu trong mùa giải )
select tên from đội where id đội not in ( select đội from trận đấu trong mùa giải )
select t1.tên quốc gia from quốc gia as t1 join trận đấu trong mùa giải as t2 on t1.id quốc gia = t2.quốc gia where t2.vị trí = "Striker" intersect select t1.tên quốc gia from quốc gia as t1 join trận đấu trong mùa giải as t2 on t1.id quốc gia = t2.quốc gia where t2.vị trí = "Defender"
select t1.tên quốc gia from quốc gia as t1 join trận đấu trong mùa giải as t2 on t1.id quốc gia = t2.quốc gia where t2.vị trí = "Striker" intersect select t1.tên quốc gia from quốc gia as t1 join trận đấu trong mùa giải as t2 on t1.id quốc gia = t2.quốc gia where t2.vị trí = "Defender"
select trường đại học from trận đấu trong mùa giải where vị trí = "Midfielder" intersect select trường đại học from trận đấu trong mùa giải where vị trí = "Defender"
select trường đại học from trận đấu trong mùa giải where vị trí = "Midfielder" intersect select trường đại học from trận đấu trong mùa giải where vị trí = "Defender"
select count ( * ) from tội phạm
select ngày from tội phạm order by số người bị giết desc
select số người bị thương from tội phạm order by số người bị thương asc
select avg ( số người bị thương ) from tội phạm
select t1.địa điểm from tội phạm as t1 join cá nhân as t2 on t1.id cá nhân = t2.id cá nhân where số người bị giết = ( select max ( số người bị giết ) from tội phạm )
select tên from cá nhân order by chiều cao asc
select t1.tên from cá nhân as t1 join tội phạm as t2 on t1.id cá nhân = t2.id cá nhân
select t1.tên from cá nhân as t1 join tội phạm as t2 on t1.id cá nhân = t2.id cá nhân where t2.quốc gia != "China"
select t1.tên from cá nhân as t1 join tội phạm as t2 on t1.id cá nhân = t2.id cá nhân order by t1.cân nặng desc limit 1
select sum ( t1.số người bị giết ) from tội phạm as t1 join cá nhân as t2 on t1.id cá nhân = t2.id cá nhân where t2.chiều cao > 1.84
select t1.tên from cá nhân as t1 join tội phạm as t2 on t1.id cá nhân = t2.id cá nhân where t2.quốc gia = "China" or t2.quốc gia = "Japan"
select t1.chiều cao from cá nhân as t1 join tội phạm as t2 on t1.id cá nhân = t2.id cá nhân order by t2.số người bị thương desc
select quốc gia , count ( * ) from tội phạm group by quốc gia
select quốc gia from tội phạm group by quốc gia order by count ( * ) desc limit 1
select quốc gia from tội phạm group by quốc gia having count ( * ) >= 2
select t1.tên from cá nhân as t1 join tội phạm as t2 on t1.id cá nhân = t2.id cá nhân order by t2.năm desc
select tên from cá nhân where id cá nhân not in ( select id cá nhân from tội phạm )
select quốc gia from tội phạm where số người bị thương > 50 intersect select quốc gia from tội phạm where số người bị thương < 20
select count ( distinct địa điểm ) from tội phạm
select t1.ngày from tội phạm as t1 join cá nhân as t2 on t1.id cá nhân = t2.id cá nhân order by t2.chiều cao desc limit 1
select năm from tội phạm order by ngày desc limit 1
select chính quyền địa phương , dịch vụ from nhà ga
select số hiệu tàu , tên from tàu hoả order by thời gian
select số hiệu tàu , thời gian from tàu hoả where điểm đến = "Chennai" order by thời gian
select count ( * ) from tàu hoả where tên like "%Express%"
select số hiệu tàu , thời gian from tàu hoả where điểm khởi hành = "Chennai" and điểm đến = "Guruvayur"
select điểm khởi hành , count ( * ) from tàu hoả group by điểm khởi hành
select t1.tên from tàu hoả as t1 join lộ trình as t2 on t1.id = t2.id tàu group by t2.id tàu order by count ( * ) desc limit 1
select count ( * ) , t1.tên mạng lưới , t1.dịch vụ from nhà ga as t1 join lộ trình as t2 on t1.id = t2.id nhà ga group by t1.id
select avg ( nhiệt độ cao ) , ngày trong tuần from thời tiết hàng tuần group by ngày trong tuần
select max ( t1.nhiệt độ thấp ) , avg ( t1.lượng mưa ) from thời tiết hàng tuần as t1 join nhà ga as t2 on t1.id nhà ga = t2.id where t2.tên mạng lưới = "Amersham"
select t1.tên , t1.thời gian from tàu hoả as t1 join lộ trình as t2 on t1.id = t2.id tàu join nhà ga as t3 on t2.id nhà ga = t3.id where t3.chính quyền địa phương = "Chiltern"
select count ( distinct dịch vụ ) from nhà ga
select t2.id , t2.chính quyền địa phương from thời tiết hàng tuần as t1 join nhà ga as t2 on t1.id nhà ga = t2.id group by t2.id order by avg ( nhiệt độ cao ) desc limit 1
select t2.id , t2.chính quyền địa phương from thời tiết hàng tuần as t1 join nhà ga as t2 on t1.id nhà ga = t2.id group by t1.id nhà ga having max ( t1.lượng mưa ) > 50
select min ( nhiệt độ thấp ) , max ( tốc độ gió mph ) from thời tiết hàng tuần
select điểm khởi hành from tàu hoả group by điểm khởi hành having count ( * ) > 1
select count ( * ) from nhà thờ where ngày mở cửa < 1850
select tên , ngày mở cửa , được tổ chức bởi from nhà thờ
select tên from nhà thờ order by ngày mở cửa desc
select ngày mở cửa from nhà thờ group by ngày mở cửa having count ( * ) >= 2
select tên , được tổ chức bởi from nhà thờ where ngày mở cửa between 1830 and 1840
select ngày mở cửa , count ( * ) from nhà thờ group by ngày mở cửa
select tên , ngày mở cửa from nhà thờ order by ngày mở cửa desc limit 3
select count ( * ) from cá nhân where là nam hay nữ = "female" and tuổi > 30
select quốc gia from cá nhân where tuổi > 30 intersect select quốc gia from cá nhân where tuổi < 25
select min ( tuổi ) , max ( tuổi ) , avg ( tuổi ) from cá nhân
select tên , quốc gia from cá nhân where tuổi < ( select avg ( tuổi ) from cá nhân )
select t1.tên , t2.tên from cá nhân as t1 join lễ cưới as t3 on t3.id nam = t1.id cá nhân join cá nhân as t2 on t3.id nữ = t2.id cá nhân where t3.năm > 2014
select tên , tuổi from cá nhân where là nam hay nữ = "male" and id cá nhân not in ( select id nam from lễ cưới )
select tên from nhà thờ except select t2.tên from lễ cưới as t1 join nhà thờ as t2 on t1.id nhà thờ = t2.id nhà thờ where t1.năm = 2015
select t2.tên from lễ cưới as t1 join nhà thờ as t2 on t1.id nhà thờ = t2.id nhà thờ group by t1.id nhà thờ having count ( * ) >= 2
select t2.tên from lễ cưới as t1 join cá nhân as t2 on t1.id nữ = t2.id cá nhân where t1.năm = 2016 and t2.là nam hay nữ = "female" and t2.quốc gia = "Canada"
select count ( * ) from lễ cưới where năm = 2016
select t3.tên from lễ cưới as t1 join cá nhân as t2 on t1.id nam = t2.id cá nhân join nhà thờ as t3 on t1.id nhà thờ = t3.id nhà thờ where t2.tuổi > 30
select quốc gia , count ( * ) from cá nhân group by quốc gia
select count ( distinct id nhà thờ ) from lễ cưới where năm = 2016
select count ( * ) from giảng viên
select count ( * ) from giảng viên
select distinct ngạch from giảng viên
select distinct ngạch from giảng viên
select distinct toà nhà from giảng viên
select toà nhà from giảng viên
select tên , họ , ngạch from giảng viên
select tên , họ , ngạch from giảng viên
select tên , họ , số điện thoại from giảng viên where giới tính = "F"
select tên , họ , số điện thoại from giảng viên where giới tính = "F"
select id giảng viên from giảng viên where giới tính = "M"
select id giảng viên from giảng viên where giới tính = "M"
select count ( * ) from giảng viên where giới tính = "F" and ngạch = "Professor"
select count ( * ) from giảng viên where giới tính = "F" and ngạch = "Professor"
select số điện thoại , số phòng , toà nhà from giảng viên where tên = "Prince" and họ = "Jerry"
select số phòng , toà nhà , số điện thoại from giảng viên where tên = "Prince" and họ = "Jerry"
select count ( * ) from giảng viên where toà nhà = "NEB" and ngạch = "Professor"
select count ( * ) from giảng viên where toà nhà = "NEB"
select tên , họ from giảng viên
select tên , họ from giảng viên
select toà nhà , count ( * ) from giảng viên group by toà nhà
select toà nhà , count ( * ) from giảng viên group by toà nhà
select toà nhà from giảng viên group by toà nhà order by count ( * ) desc limit 1
select toà nhà from giảng viên group by toà nhà order by count ( * ) desc limit 1
select toà nhà from giảng viên group by toà nhà having count ( * ) >= 10
select toà nhà from giảng viên where ngạch = "Professor" group by toà nhà having count ( * ) >= 10
select ngạch , count ( * ) from giảng viên group by ngạch
select ngạch , count ( * ) from giảng viên group by ngạch
select ngạch , giới tính , count ( * ) from giảng viên group by ngạch , giới tính
select ngạch , giới tính , count ( * ) from giảng viên group by ngạch , giới tính
select ngạch from giảng viên group by ngạch order by count ( * ) limit 1
select ngạch from giảng viên group by ngạch order by count ( * ) asc limit 1
select giới tính , count ( * ) from giảng viên where ngạch = "AsstProf" group by giới tính
select count ( * ) , giới tính from giảng viên where ngạch = "AsstProf" and giới tính = "F" group by giới tính
select t1.tên , t1.họ from giảng viên as t1 join sinh viên as t2 on t1.id giảng viên = t2.cố vấn where t2.tên = "Linda" and t2.họ = "Smith"
select t2.tên , t2.họ from sinh viên as t1 join giảng viên as t2 on t1.cố vấn = t2.id giảng viên where t1.tên = "Linda" and t1.họ = "Smith"
select t1.id sinh viên from sinh viên as t1 join giảng viên as t2 on t1.cố vấn = t2.id giảng viên where t2.ngạch = "Professor"
select t1.id sinh viên from sinh viên as t1 join giảng viên as t2 on t1.cố vấn = t2.id giảng viên where t2.ngạch = "Professor"
select t1.tên , t1.họ from sinh viên as t1 join giảng viên as t2 on t1.cố vấn = t2.id giảng viên where t2.tên = "Michael" and t2.họ = "Goodrich"
select t1.tên , t1.họ from sinh viên as t1 join giảng viên as t2 on t1.cố vấn = t2.id giảng viên where t2.tên = "Michael" and t2.họ = "Goodrich"
select t1.id giảng viên , count ( * ) from giảng viên as t1 join sinh viên as t2 on t1.id giảng viên = t2.cố vấn group by t1.id giảng viên
select t1.id giảng viên , count ( * ) from giảng viên as t1 join sinh viên as t2 on t1.id giảng viên = t2.cố vấn group by t1.id giảng viên
select t1.ngạch , count ( * ) from giảng viên as t1 join sinh viên as t2 on t1.id giảng viên = t2.cố vấn group by t1.ngạch
select t1.ngạch , count ( * ) from giảng viên as t1 join sinh viên as t2 on t1.id giảng viên = t2.cố vấn group by t1.ngạch
select t1.tên , t1.họ from giảng viên as t1 join sinh viên as t2 on t1.id giảng viên = t2.cố vấn group by t1.id giảng viên order by count ( * ) desc limit 1
select t1.tên , t1.họ from giảng viên as t1 join sinh viên as t2 on t1.id giảng viên = t2.cố vấn group by t1.id giảng viên order by count ( * ) desc limit 1
select t1.cố vấn from sinh viên as t1 join giảng viên as t2 on t1.cố vấn = t2.id giảng viên group by t1.cố vấn having count ( * ) >= 2
select t1.id giảng viên from giảng viên as t1 join sinh viên as t2 on t1.id giảng viên = t2.cố vấn group by t1.id giảng viên having count ( * ) >= 2
select id giảng viên from giảng viên except select cố vấn from sinh viên
select id giảng viên from giảng viên except select cố vấn from sinh viên
select tên hoạt động from hoạt động
select tên hoạt động from hoạt động
select count ( * ) from hoạt động
select count ( * ) from hoạt động
select count ( distinct id giảng viên ) from giảng viên tham gia vào
select count ( distinct id giảng viên ) from giảng viên tham gia vào
select id giảng viên from giảng viên except select id giảng viên from giảng viên tham gia vào
select id giảng viên from giảng viên except select id giảng viên from giảng viên tham gia vào
select id giảng viên from giảng viên tham gia vào intersect select cố vấn from sinh viên
select id giảng viên from giảng viên tham gia vào intersect select cố vấn from sinh viên
select count ( * ) from giảng viên as t1 join giảng viên tham gia vào as t2 on t1.id giảng viên = t2.id giảng viên join hoạt động as t3 on t2.id hoạt động = t2.id hoạt động where t1.tên = "Mark" and t1.họ = "Giuliano"
select count ( * ) from giảng viên as t1 join giảng viên tham gia vào as t2 on t1.id giảng viên = t2.id giảng viên join hoạt động as t3 on t2.id hoạt động = t2.id hoạt động where t1.tên = "Mark" and t1.họ = "Giuliano"
select t3.tên hoạt động from giảng viên as t1 join giảng viên tham gia vào as t2 on t1.id giảng viên = t2.id giảng viên join hoạt động as t3 on t2.id hoạt động = t3.id hoạt động where t1.tên = "Mark" and t1.họ = "Giuliano"
select t1.tên hoạt động from hoạt động as t1 join giảng viên tham gia vào as t2 on t1.id hoạt động = t2.id hoạt động join giảng viên as t3 on t2.id giảng viên = t3.id giảng viên where t3.tên = "Mark" and t3.họ = "Giuliano"
select t1.tên , t1.họ , count ( * ) , t1.id giảng viên from giảng viên as t1 join giảng viên tham gia vào as t2 on t1.id giảng viên = t2.id giảng viên group by t1.id giảng viên
select t1.tên , t1.họ , count ( * ) , t1.id giảng viên from giảng viên as t1 join giảng viên tham gia vào as t2 on t1.id giảng viên = t2.id giảng viên group by t1.id giảng viên
select t1.tên hoạt động , count ( * ) from hoạt động as t1 join giảng viên tham gia vào as t2 on t1.id hoạt động = t2.id hoạt động group by t1.id hoạt động
select t1.tên hoạt động , count ( * ) from hoạt động as t1 join giảng viên tham gia vào as t2 on t1.id hoạt động = t2.id hoạt động group by t1.id hoạt động
select t1.tên , t1.họ from giảng viên as t1 join giảng viên tham gia vào as t2 on t1.id giảng viên = t2.id giảng viên group by t1.id giảng viên order by count ( * ) desc limit 1
select t1.tên , t1.họ from giảng viên as t1 join giảng viên tham gia vào as t2 on t1.id giảng viên = t2.id giảng viên group by t1.id giảng viên order by count ( * ) desc limit 1
select t1.tên hoạt động from hoạt động as t1 join giảng viên tham gia vào as t2 on t1.id hoạt động = t2.id hoạt động group by t1.id hoạt động order by count ( * ) desc limit 1
select t1.tên hoạt động from hoạt động as t1 join giảng viên tham gia vào as t2 on t1.id hoạt động = t2.id hoạt động group by t1.id hoạt động order by count ( * ) desc limit 1
select id sinh viên from sinh viên except select id sinh viên from tham gia vào
select id sinh viên from sinh viên except select id sinh viên from tham gia vào
select id sinh viên from tham gia vào intersect select id sinh viên from sinh viên where tuổi < 20
select id sinh viên from tham gia vào intersect select id sinh viên from sinh viên where tuổi < 20
select t1.tên , t1.họ from sinh viên as t1 join tham gia vào as t2 on t1.id sinh viên = t2.id sinh viên group by t1.id sinh viên order by count ( * ) desc limit 1
select t1.tên , t1.họ from sinh viên as t1 join tham gia vào as t2 on t1.id sinh viên = t2.id sinh viên group by t1.id sinh viên order by count ( * ) desc limit 1
select t1.tên hoạt động from hoạt động as t1 join tham gia vào as t2 on t1.id hoạt động = t2.id hoạt động group by t1.id hoạt động order by count ( * ) desc limit 1
select t1.tên hoạt động from hoạt động as t1 join tham gia vào as t2 on t1.id hoạt động = t2.id hoạt động group by t1.id hoạt động order by count ( * ) desc limit 1
select t1.tên from giảng viên as t1 join giảng viên tham gia vào as t2 on t1.id giảng viên = t2.id giảng viên join hoạt động as t3 on t2.id hoạt động = t2.id hoạt động where t3.tên hoạt động = "Canoeing" or t3.tên hoạt động = "Kayaking"
select t1.tên from giảng viên as t1 join giảng viên tham gia vào as t2 on t1.id giảng viên = t2.id giảng viên join hoạt động as t3 on t2.id hoạt động = t2.id hoạt động where t3.tên hoạt động = "Canoeing" or t3.tên hoạt động = "Kayaking"
select tên from giảng viên where ngạch = "Professor" except select t1.tên from giảng viên as t1 join giảng viên tham gia vào as t2 on t1.id giảng viên = t2.id giảng viên join hoạt động as t3 on t2.id hoạt động = t2.id hoạt động where t3.tên hoạt động = "Canoeing" or t3.tên hoạt động = "Kayaking"
select tên from giảng viên where ngạch = "Professor" except select t1.tên from giảng viên as t1 join giảng viên tham gia vào as t2 on t1.id giảng viên = t2.id giảng viên join hoạt động as t3 on t2.id hoạt động = t2.id hoạt động where t3.tên hoạt động = "Canoeing" or t3.tên hoạt động = "Kayaking"
select t1.tên from giảng viên as t1 join giảng viên tham gia vào as t2 on t1.id giảng viên = t2.id giảng viên join hoạt động as t3 on t2.id hoạt động = t2.id hoạt động where t3.tên hoạt động = "Canoeing" intersect select t1.tên from giảng viên as t1 join giảng viên tham gia vào as t2 on t1.id giảng viên = t2.id giảng viên join hoạt động as t3 on t2.id hoạt động = t2.id hoạt động where t3.tên hoạt động = "Kayaking"
select t1.tên from giảng viên as t1 join giảng viên tham gia vào as t2 on t1.id giảng viên = t2.id giảng viên join hoạt động as t3 on t2.id hoạt động = t2.id hoạt động where t3.tên hoạt động = "Canoeing" intersect select t1.tên from giảng viên as t1 join giảng viên tham gia vào as t2 on t1.id giảng viên = t2.id giảng viên join hoạt động as t3 on t2.id hoạt động = t2.id hoạt động where t3.tên hoạt động = "Kayaking"
select t1.id sinh viên from tham gia vào as t1 join hoạt động as t2 on t1.id hoạt động = t2.id hoạt động where t2.tên hoạt động = "Canoeing" intersect select t1.id sinh viên from tham gia vào as t1 join hoạt động as t2 on t1.id hoạt động = t2.id hoạt động where t2.tên hoạt động = "Kayaking"
select t1.id sinh viên from tham gia vào as t1 join hoạt động as t2 on t1.id hoạt động = t2.id hoạt động where t2.tên hoạt động = "Canoeing" intersect select t1.id sinh viên from tham gia vào as t1 join hoạt động as t2 on t1.id hoạt động = t2.id hoạt động where t2.tên hoạt động = "Kayaking"
select count ( * ) from người luyện thể hình
select tổng from người luyện thể hình order by tổng asc
select cử giật , cử đẩy from người luyện thể hình order by cử giật
select avg ( cử giật ) from người luyện thể hình
select cử đẩy from người luyện thể hình order by tổng desc limit 1
select ngày sinh from cá nhân order by chiều cao asc
select t2.tên from người luyện thể hình as t1 join cá nhân as t2 on t1.id cá nhân = t2.id cá nhân
select t2.tên from người luyện thể hình as t1 join cá nhân as t2 on t1.id cá nhân = t2.id cá nhân where t1.tổng > 300
select t2.tên from người luyện thể hình as t1 join cá nhân as t2 on t1.id cá nhân = t2.id cá nhân order by t2.cân nặng desc limit 1
select t2.ngày sinh , t2.nơi sinh from người luyện thể hình as t1 join cá nhân as t2 on t1.id cá nhân = t2.id cá nhân order by t1.tổng desc limit 1
select t2.chiều cao from người luyện thể hình as t1 join cá nhân as t2 on t1.id cá nhân = t2.id cá nhân where t1.tổng < 315
select avg ( t1.tổng ) from người luyện thể hình as t1 join cá nhân as t2 on t1.id cá nhân = t2.id cá nhân where t2.chiều cao > 200
select t2.tên from người luyện thể hình as t1 join cá nhân as t2 on t1.id cá nhân = t2.id cá nhân order by t1.tổng desc
select nơi sinh , count ( * ) from cá nhân group by nơi sinh
select nơi sinh from cá nhân group by nơi sinh order by count ( * ) desc limit 1
select nơi sinh from cá nhân group by nơi sinh having count ( * ) >= 2
select chiều cao , cân nặng from cá nhân order by chiều cao desc
select * from người luyện thể hình
select
select count ( distinct nơi sinh ) from cá nhân
select count ( * ) from cá nhân where id cá nhân not in ( select id cá nhân from người luyện thể hình )
select
select t2.tổng from cá nhân as t1 join người luyện thể hình as t2 on t1.id cá nhân = t2.id cá nhân where t1.ngày sinh like "01"
select min ( cử giật ) from người luyện thể hình
select count ( * ) from ứng cử viên
select count ( * ) from ứng cử viên
select nguồn thăm dò ý kiến from ứng cử viên group by nguồn thăm dò ý kiến order by count ( * ) desc limit 1
select nguồn thăm dò ý kiến from ứng cử viên group by nguồn thăm dò ý kiến order by count ( * ) desc limit 1
select tỷ lệ ủng hộ from ứng cử viên order by tỷ lệ ủng hộ desc limit 3
select tỷ lệ ủng hộ from ứng cử viên order by tỷ lệ ủng hộ desc limit 3
select id ứng cử viên from ứng cử viên order by tỷ lệ phản đối limit 1
select ngày phát hành from tuyển t
select tỷ lệ ủng hộ , tỷ lệ xem xét , tỷ lệ phản đối from ứng cử viên order by tỷ lệ không chắc chắn
select tỷ lệ ủng hộ , tỷ lệ xem xét , tỷ lệ phản đối from ứng cử viên order by tỷ lệ không chắc chắn
select nguồn thăm dò ý kiến from ứng cử viên order by tỷ lệ phản đối desc limit 1
select t1.nguồn thăm dò ý kiến from ứng cử viên as t1 join cá nhân as t2 on t1.id cá nhân = t2.id cá nhân order by t1.tỷ lệ phản đối desc limit 1
select tên from cá nhân order by ngày sinh
select tên from cá nhân order by ngày sinh
select avg ( chiều cao ) , avg ( cân nặng ) from cá nhân where giới tính = "M"
select avg ( chiều cao ) , avg ( cân nặng ) from cá nhân where giới tính = "Male"
select tên from cá nhân where chiều cao > 200 or chiều cao < 190
select tên from cá nhân where chiều cao > 200 or chiều cao < 190
select avg ( cân nặng ) , min ( cân nặng ) , max ( cân nặng ) , giới tính from cá nhân group by giới tính
select avg ( cân nặng ) , min ( cân nặng ) , max ( cân nặng ) , giới tính from cá nhân group by giới tính
select t1.tên , t1.giới tính from cá nhân as t1 join ứng cử viên as t2 on t1.id cá nhân = t2.id cá nhân order by t2.tỷ lệ ủng hộ desc limit 1
select t1.tên , t1.giới tính from cá nhân as t1 join ứng cử viên as t2 on t1.id cá nhân = t2.id cá nhân order by t2.tỷ lệ ủng hộ desc limit 1
select t1.tên , t1.giới tính from cá nhân as t1 join ứng cử viên as t2 on t1.id cá nhân = t2.id cá nhân order by t2.tỷ lệ phản đối limit 1
select t1.tên , t1.giới tính , min ( t2.tỷ lệ phản đối ) from cá nhân as t1 join ứng cử viên as t2 on t1.id cá nhân = t2.id cá nhân group by t1.giới tính
select giới tính from cá nhân group by giới tính order by avg ( tỷ lệ không chắc chắn ) desc limit 1
select t1.giới tính from cá nhân as t1 join ứng cử viên as t2 on t1.id cá nhân = t2.id cá nhân group by t2.id cá nhân order by avg ( t2.tỷ lệ không chắc chắn ) desc limit 1
select tên from cá nhân where id cá nhân not in ( select id cá nhân from ứng cử viên )
select tên from cá nhân where id cá nhân not in ( select id cá nhân from ứng cử viên )
select t1.tên from cá nhân as t1 join ứng cử viên as t2 on t1.id cá nhân = t2.id cá nhân where t2.tỷ lệ ủng hộ < t2.tỷ lệ phản đối
select t1.tên from cá nhân as t1 join ứng cử viên as t2 on t1.id cá nhân = t2.id cá nhân where t2.tỷ lệ ủng hộ < t2.tỷ lệ phản đối
select count ( * ) , giới tính from cá nhân where cân nặng > 85 group by giới tính
select count ( * ) , giới tính from cá nhân where cân nặng > 85 group by giới tính
select max ( tỷ lệ ủng hộ ) , min ( tỷ lệ xem xét ) , min ( tỷ lệ phản đối ) from ứng cử viên
select max ( tỷ lệ ủng hộ ) , min ( tỷ lệ xem xét ) , min ( tỷ lệ phản đối ) from ứng cử viên
select tên from cá nhân where giới tính = "F" order by tên
select t1.tên from cá nhân as t1 join ứng cử viên as t2 on t1.id cá nhân = t2.id cá nhân where t1.giới tính = "Female" order by t1.tên
select tên from cá nhân where chiều cao < ( select avg ( chiều cao ) from cá nhân )
select tên from cá nhân where chiều cao < ( select avg ( chiều cao ) from cá nhân )
select * from cá nhân
select * from cá nhân
select thành phố chủ nhà from thành phố chủ nhà order by năm desc limit 1
select id thành phố chủ nhà from thành phố chủ nhà order by năm desc limit 1
select id trận đấu from trận đấu where giải đấu = "1994 FIFA World Cup qualification"
select id trận đấu from trận đấu where giải đấu = "1994 FIFA World Cup qualification"
select distinct t3.thành phố chủ nhà from trận đấu as t1 join thành phố chủ nhà as t2 on t1.id trận đấu = t2.id trận đấu join thành phố as t3 on t2.thành phố chủ nhà = t3.id thành phố where t2.năm > 2010
select t3.thành phố from thành phố chủ nhà as t1 join trận đấu as t2 on t1.id trận đấu = t2.id trận đấu join thành phố as t3 on t3.id thành phố = t1.thành phố chủ nhà where t2.năm > 2010
select t1.thành phố from thành phố as t1 join thành phố chủ nhà as t2 on t1.id thành phố = t2.thành phố chủ nhà group by t2.thành phố chủ nhà order by count ( * ) desc limit 1
select t1.thành phố from thành phố as t1 join thành phố chủ nhà as t2 on t1.id thành phố = t2.thành phố chủ nhà group by t2.thành phố chủ nhà order by count ( * ) desc limit 1
select t2.địa điểm from trận đấu as t2 join thành phố as t1 on t2.id trận đấu = t1.id thành phố where t1.thành phố = "Nam Ky(Guangdong)" and t2.giải đấu = "1994 FIFA World Cup qualification"
select t3.địa điểm from trận đấu as t1 join giải đấu as t2 on t1.giải đấu = t2.id giải đấu join thành phố chủ nhà as t3 on t1.id trận đấu = t3.id trận đấu where t2.giải đấu = "1994 FIFA World Cup qualification" and t3.thành phố chủ nhà = "Nam Kinh(Guangdong)"
select t1.tháng một from nhiệt độ as t1 join thành phố as t2 on t1.id thành phố = t2.id thành phố where t2.thành phố = "Paris"
select t2.tháng một from thành phố as t1 join nhiệt độ as t2 on t1.id thành phố = t2.id thành phố where t1.thành phố = "Shanghai"
select năm from thành phố chủ nhà where thành phố chủ nhà = "Taipei(Taiwan)"
select t2.năm from thành phố as t1 join thành phố chủ nhà as t2 on t1.id thành phố = t2.thành phố chủ nhà where t1.thành phố = "Taizhou(Zhejiang)"
select thành phố from thành phố order by dân số khu vực desc limit 3
select thành phố from thành phố order by dân số khu vực desc limit 3
select thành phố , gdp from thành phố order by gdp asc limit 1
select thành phố , gdp from thành phố order by gdp asc limit 1
select t1.thành phố from thành phố as t1 join nhiệt độ as t2 on t1.id thành phố = t2.id thành phố order by t2.tháng hai desc limit 1
select t1.thành phố from thành phố as t1 join nhiệt độ as t2 on t1.id thành phố = t2.id thành phố order by t2.tháng hai desc limit 1
select t1.thành phố from thành phố as t1 join nhiệt độ as t2 on t1.id thành phố = t2.id thành phố where t2.tháng ba < t2.tháng bảy or t2.tháng bảy > t2.tháng mười or t2.tháng mười > t2.tháng mười hai
select t1.thành phố from thành phố as t1 join nhiệt độ as t2 on t1.id thành phố = t2.id thành phố where t2.tháng ba < t2.tháng bảy or t2.tháng ba > t2.tháng mười or t2.tháng mười một > t2.tháng bảy
select t1.thành phố from thành phố as t1 join nhiệt độ as t2 on t1.id thành phố = t2.id thành phố where t2.tháng ba < t2.tháng bảy intersect select t3.thành phố from thành phố as t3 join thành phố chủ nhà as t4 on t3.id thành phố = t4.thành phố chủ nhà
select t1.thành phố from thành phố as t1 join nhiệt độ as t2 on t1.id thành phố = t2.id thành phố where t2.tháng ba < t2.tháng bảy intersect select t3.thành phố from thành phố as t3 join thành phố chủ nhà as t4 on t3.id thành phố = t4.thành phố chủ nhà
select t1.thành phố from thành phố as t1 join nhiệt độ as t2 on t1.id thành phố = t2.id thành phố where t2.tháng ba < t2.tháng mười hai except select t3.thành phố from thành phố as t3 join thành phố chủ nhà as t4 on t3.id thành phố = t4.thành phố chủ nhà
select t1.thành phố from thành phố as t1 join nhiệt độ as t2 on t1.id thành phố = t2.id thành phố where t2.tháng ba < t2.tháng mười hai except select t3.thành phố from thành phố as t3 join thành phố chủ nhà as t4 on t3.id thành phố = t4.thành phố chủ nhà
select t1.thành phố from thành phố as t1 join nhiệt độ as t2 on t1.id thành phố = t2.id thành phố where t2.tháng hai > t2.tháng sáu union select t3.thành phố from thành phố as t3 join thành phố chủ nhà as t4 on t3.id thành phố = t4.thành phố chủ nhà
select t1.thành phố from thành phố as t1 join nhiệt độ as t2 on t1.id thành phố = t2.id thành phố where t2.tháng hai > t2.tháng sáu union select t3.thành phố from thành phố as t3 join thành phố chủ nhà as t4 on t3.id thành phố = t4.thành phố chủ nhà
select thành phố from thành phố where dân số khu vực > 10000000
select thành phố from thành phố where dân số khu vực > 10000000
select thành phố from thành phố where dân số khu vực > 8000000 or dân số khu vực < 5000000
select thành phố from thành phố where dân số khu vực > 8000000 or dân số khu vực < 5000000
select t1.thành phố from thành phố as t1 join nhiệt độ as t2 on t1.id thành phố = t2.id thành phố where t2.tháng ba < t2.tháng mười hai
select giải đấu , count ( * ) from trận đấu group by giải đấu
select địa điểm from trận đấu order by ngày desc
select địa điểm from trận đấu order by ngày desc
select gdp from thành phố order by dân số khu vực desc limit 1
select gdp from thành phố order by dân số khu vực desc limit 1
select t1.gdp , t1.dân số khu vực from thành phố as t1 join thành phố chủ nhà as t2 on t1.id thành phố = t2.thành phố chủ nhà group by t2.thành phố chủ nhà having count ( * ) > 1
select t1.gdp , t1.dân số khu vực from thành phố as t1 join thành phố chủ nhà as t2 on t1.id thành phố = t2.thành phố chủ nhà group by t2.thành phố chủ nhà having count ( * ) > 1
select count ( * ) from giáo sư as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa where tên khoa = "Accounting"
select count ( * ) from giáo sư as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa where tên khoa = "Accounting"
select count ( distinct mã số nhân viên của giáo sư ) from lớp học as t1 join đăng ký khoá học as t2 on t1.mã lớp học = t2.mã lớp where t1.mã khoá học = "ACCT-211"
select count ( distinct mã số nhân viên của giáo sư ) from lớp học where mã khoá học = "ACCT-211"
select t2.tên của nhân viên , t2.họ của nhân viên from giáo sư as t1 join nhân viên as t2 on t1.mã số nhân viên = t2.mã số nhân viên join khoa as t3 on t1.mã khoa = t3.mã khoa where t3.tên khoa = "Biology"
select t2.tên của nhân viên , t2.họ của nhân viên from giáo sư as t1 join nhân viên as t2 on t1.mã số nhân viên = t2.mã số nhân viên join khoa as t3 on t1.mã khoa = t3.mã khoa where t3.tên khoa = "Biology"
select t2.tên của nhân viên , t2.ngày sinh của nhân viên from lớp học as t1 join nhân viên as t2 on t1.mã số nhân viên của giáo sư = t2.mã số nhân viên join khoá học as t3 on t1.mã khoá học = t3.mã khoá học where t3.mô tả về khoá học = "ACCT-211"
select t2.tên của nhân viên , t2.ngày sinh của nhân viên from lớp học as t1 join nhân viên as t2 on t1.mã số nhân viên của giáo sư = t2.mã số nhân viên join khoá học as t3 on t1.mã khoá học = t3.mã khoá học where t3.mô tả về khoá học = "ACCT-211"
select count ( * ) from lớp học as t1 join nhân viên as t2 on t1.mã số nhân viên của giáo sư = t2.mã số nhân viên where t2.họ của nhân viên = "Graztevski"
select count ( * ) from giáo sư as t1 join lớp học as t2 on t1.mã số nhân viên = t2.mã số nhân viên của giáo sư where t1.họ của nhân viên = "Graztevski"
select mã trường from khoa where tên khoa = "Accounting"
select mã trường from khoa where tên khoa = "Accounting"
select số lượng tín chỉ của khoá học , mô tả về khoá học from khoá học where mã khoá học = "CIS-220"
select mô tả về khoá học , số lượng tín chỉ của khoá học from khoá học where mã khoá học = "CIS-220"
select địa chỉ khoa from khoa where tên khoa = "History"
select địa chỉ khoa from khoa where tên khoa = "History"
select count ( distinct địa chỉ khoa ) from khoa where mã trường = "BUS"
select count ( distinct địa chỉ khoa ) , mã trường from khoa where mã trường = "BUS"
select count ( distinct địa chỉ khoa ) , mã trường from khoa group by mã trường
select count ( distinct địa chỉ khoa ) , mã trường from khoa group by mã trường
select mô tả về khoá học , số lượng tín chỉ của khoá học from khoá học where mã khoá học = "QM-261"
select số lượng tín chỉ của khoá học from khoá học where mã khoá học = "QM-261"
select count ( distinct tên khoa ) , mã trường from khoa group by mã trường
select count ( distinct tên khoa ) , mã trường from khoa group by mã trường
select count ( distinct tên khoa ) , mã trường from khoa group by mã trường having count ( distinct tên khoa ) < 5
select count ( distinct tên khoa ) , mã trường from khoa group by mã trường having count ( distinct tên khoa ) < 5
select count ( * ) , mã lớp học from lớp học group by mã lớp học
select count ( * ) , mã khoá học from lớp học group by mã khoá học
select sum ( số lượng tín chỉ của khoá học ) , mã khoa from khoá học group by mã khoa
select sum ( số lượng tín chỉ của khoá học ) , mã khoa from khoá học group by mã khoa
select count ( * ) , phòng học from lớp học group by phòng học having count ( * ) >= 2
select count ( * ) , phòng học from lớp học group by phòng học having count ( * ) >= 2
select count ( * ) , mã khoa from lớp học as t1 join khoá học as t2 on t1.mã khoá học = t2.mã khoá học group by mã khoa
select count ( * ) , t1.mã khoa from lớp học as t1 join khoá học as t2 on t1.mã khoá học = t2.mã khoá học group by t1.mã khoa
select count ( * ) , t1.mã trường from khoa as t1 join lớp học as t2 on t1.mã khoa = t2.mã khoa group by t1.mã trường
select count ( * ) , t1.mã trường from khoa as t1 join lớp học as t2 on t1.mã khoa = t2.mã khoa group by t1.mã trường
select count ( * ) , t1.mã trường from khoa as t1 join giáo sư as t2 on t1.mã khoa = t2.mã khoa group by t1.mã trường
select count ( * ) , mã trường from khoa group by mã trường
select mã công việc của nhân viên , count ( * ) from nhân viên group by mã công việc của nhân viên order by count ( * ) desc limit 1
select mã công việc của nhân viên , count ( * ) from nhân viên group by mã công việc của nhân viên order by count ( * ) desc limit 1
select t1.mã trường from khoa as t1 join giáo sư as t2 on t1.mã khoa = t2.mã khoa group by t1.mã trường order by count ( * ) limit 1
select t2.mã trường from giáo sư as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa group by t1.mã khoa order by count ( * ) asc limit 1
select count ( * ) , mã khoa from giáo sư where bằng cấp cao nhất = "Ph.D." group by mã khoa
select count ( * ) , mã khoa from giáo sư where bằng cấp cao nhất = "Ph.D." group by mã khoa
select count ( * ) , mã khoa from sinh viên group by mã khoa
select count ( * ) , mã khoa from sinh viên group by mã khoa
select sum ( giờ học của sinh viên ) , mã khoa from sinh viên group by mã khoa
select sum ( giờ học của sinh viên ) , mã khoa from sinh viên group by mã khoa
select max ( gpa của sinh viên ) , avg ( gpa của sinh viên ) , min ( gpa của sinh viên ) , mã khoa from sinh viên group by mã khoa
select avg ( gpa của sinh viên ) , max ( gpa của sinh viên ) , min ( gpa của sinh viên ) , mã khoa from sinh viên group by mã khoa
select t2.tên khoa , avg ( t1.gpa của sinh viên ) from sinh viên as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa group by t1.mã khoa order by avg ( t1.gpa của sinh viên ) desc limit 1
select avg ( gpa của sinh viên ) , mã khoa from sinh viên group by mã khoa order by avg ( gpa của sinh viên ) desc limit 1
select count ( distinct mã trường ) from khoa
select count ( distinct mã trường ) from khoa
select count ( distinct mã lớp học ) from lớp học
select count ( distinct mã lớp học ) from lớp học
select count ( distinct mô tả về khoá học ) from khoá học
select count ( distinct mã khoá học ) from lớp học
select count ( distinct tên khoa ) from khoa
select count ( distinct tên khoa ) from khoa
select count ( * ) from khoá học as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa where t2.tên khoa = "Computer Info. Systems"
select count ( * ) from khoá học as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa where tên khoa = "Computer Info. Systems"
select count ( distinct lớp học phần ) from lớp học where mã khoá học = "ACCT-211"
select count ( distinct lớp học phần ) from lớp học where mã khoá học = "ACCT-211"
select sum ( số lượng tín chỉ của khoá học ) , mã khoa from khoá học group by mã khoa
select sum ( số lượng tín chỉ của khoá học ) , mã khoa from khoá học group by mã khoa
select t2.tên khoa from khoá học as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa group by t1.mã khoa order by sum ( t1.số lượng tín chỉ của khoá học ) desc limit 1
select t1.mã khoa from khoá học as t1 join lớp học as t2 on t1.mã khoá học = t2.mã khoá học group by t1.mã khoa order by sum ( t1.số lượng tín chỉ của khoá học ) desc limit 1
select count ( distinct mã số sinh viên ) from đăng ký khoá học where mã lớp = "ACCT-211"
select count ( * ) from lớp học as t1 join đăng ký khoá học as t2 on t1.mã lớp học = t2.mã lớp where t1.mã khoá học = "ACCT-211"
select t1.tên của sinh viên from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên join lớp học as t3 on t2.mã lớp = t3.mã lớp học where t3.mã khoá học = "ACCT-211"
select t1.tên của sinh viên from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên join lớp học as t3 on t2.mã lớp = t3.mã lớp học join khoá học as t4 on t3.mã khoá học = t4.mã khoá học where t4.mã khoá học = "ACCT-211"
select t1.tên của sinh viên from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên where t2.điểm số = "C" and t2.mã khoá học = "ACCT-211"
select t1.tên của sinh viên from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên join lớp học as t3 on t2.mã lớp = t3.mã lớp học where t2.điểm số = "C" and t3.mã khoá học = "ACCT-211"
select count ( * ) from nhân viên
select count ( * ) from nhân viên
select count ( * ) from giáo sư where bằng cấp cao nhất = "Ph.D."
select count ( * ) from giáo sư where bằng cấp cao nhất = "Ph.D."
select count ( * ) from lớp học as t1 join đăng ký khoá học as t2 on t1.mã lớp học = t2.mã lớp join khoá học as t3 on t1.mã khoá học = t3.mã khoá học join khoa as t4 on t3.mã khoa = t4.mã khoa where t4.tên khoa = "Accounting"
select count ( * ) from lớp học as t1 join đăng ký khoá học as t2 on t1.mã lớp học = t2.mã lớp join khoá học as t3 on t1.mã khoá học = t3.mã khoá học join khoa as t4 on t3.mã khoa = t4.mã khoa where t4.tên khoa = "Accounting"
select t2.tên khoa from đăng ký khoá học as t1 join khoá học as t2 on t1.mã khoá học = t2.mã khoá học group by t2.mã khoa order by count ( * ) desc limit 1
select t1.tên khoa from khoa as t1 join sinh viên as t2 on t1.mã khoa = t2.mã khoa group by t1.tên khoa order by count ( * ) desc limit 1
select tên khoa from khoa order by tên khoa asc
select tên khoa from khoa order by tên khoa
select mã lớp học from lớp học where phòng học = "KLR 209"
select mã khoá học from lớp học where phòng học = "KLR 209"
select tên của nhân viên from nhân viên where mã công việc của nhân viên = "Professor" order by ngày sinh của nhân viên
select tên của nhân viên from nhân viên where mã công việc của nhân viên = "Professor" order by ngày sinh của nhân viên
select t1.tên của nhân viên , t2.văn phòng giáo sư from nhân viên as t1 join giáo sư as t2 on t1.mã số nhân viên = t2.mã số nhân viên order by t1.tên của nhân viên
select t2.tên của nhân viên , t1.văn phòng giáo sư from giáo sư as t1 join nhân viên as t2 on t1.mã số nhân viên = t2.mã số nhân viên order by t2.tên của nhân viên
select tên của nhân viên , họ của nhân viên from nhân viên order by ngày sinh của nhân viên limit 1
select tên của nhân viên , họ của nhân viên from nhân viên order by ngày sinh của nhân viên limit 1
select tên của sinh viên , họ của sinh viên , gpa của sinh viên from sinh viên where gpa của sinh viên > 3 order by ngày sinh của sinh viên desc limit 1
select tên của sinh viên , họ của sinh viên , gpa của sinh viên from sinh viên where gpa của sinh viên > 3 order by ngày sinh của sinh viên desc limit 1
select t1.tên của sinh viên from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên where t2.điểm số = "C"
select distinct t1.tên của sinh viên from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên where điểm số = "C"
select t2.tên khoa from giáo sư as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa group by t1.mã khoa order by count ( * ) asc limit 1
select t2.tên khoa from giáo sư as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa group by t1.mã khoa order by count ( * ) asc limit 1
select t2.tên khoa , t1.mã khoa from giáo sư as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa where t1.bằng cấp cao nhất = "Ph.D." group by t1.mã khoa order by count ( * ) desc limit 1
select t2.tên khoa from giáo sư as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa where t1.bằng cấp cao nhất = "Ph.D." group by t1.mã khoa order by count ( * ) desc limit 1
select tên của nhân viên from nhân viên where mã công việc của nhân viên = "PROF" except select t1.tên của nhân viên from nhân viên as t1 join lớp học as t2 on t1.mã số nhân viên = t2.mã số nhân viên của giáo sư
select tên của nhân viên from nhân viên except select t1.tên của nhân viên from nhân viên as t1 join lớp học as t2 on t1.mã số nhân viên = t2.mã số nhân viên của giáo sư
select t1.tên của nhân viên from nhân viên as t1 join giáo sư as t2 on t1.mã số nhân viên = t2.mã số nhân viên join khoa as t3 on t2.mã khoa = t3.mã khoa where t3.tên khoa = "History" except select t4.tên của nhân viên from nhân viên as t4 join lớp học as t5 on t4.mã số nhân viên = t5.mã số nhân viên của giáo sư
select t1.tên của nhân viên from nhân viên as t1 join giáo sư as t2 on t1.mã số nhân viên = t2.mã số nhân viên join khoa as t3 on t2.mã khoa = t3.mã khoa where t3.tên khoa = "History" except select t4.tên của nhân viên from nhân viên as t4 join lớp học as t5 on t4.mã số nhân viên = t5.mã số nhân viên của giáo sư
select t1.họ của nhân viên , t3.văn phòng giáo sư from nhân viên as t1 join giáo sư as t2 on t1.mã số nhân viên = t2.mã số nhân viên join khoa as t3 on t2.mã khoa = t3.mã khoa where t3.tên khoa = "History"
select t1.họ của nhân viên , t2.văn phòng giáo sư from nhân viên as t1 join giáo sư as t2 on t1.mã số nhân viên = t2.mã số nhân viên join khoa as t3 on t2.mã khoa = t3.mã khoa where t3.tên khoa = "History"
select t2.tên khoa , t1.văn phòng giáo sư from giáo sư as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa where t1.họ của nhân viên = "Heffington"
select t1.mã khoa , t1.văn phòng giáo sư from giáo sư as t1 join nhân viên as t2 on t1.mã số nhân viên = t2.mã số nhân viên where t2.họ của nhân viên = "Heffington"
select t1.họ của nhân viên , t1.ngày bắt đầu công việc của nhân viên from nhân viên as t1 join giáo sư as t2 on t1.mã số nhân viên = t2.mã số nhân viên where t2.văn phòng giáo sư = "DRE 102"
select t1.họ của nhân viên , t1.ngày bắt đầu công việc của nhân viên from nhân viên as t1 join giáo sư as t2 on t1.mã số nhân viên = t2.mã số nhân viên where t2.văn phòng giáo sư = "DRE 102"
select t1.mã lớp from lớp học as t1 join đăng ký khoá học as t2 on t1.mã lớp = t2.mã lớp join sinh viên as t3 on t3.mã số sinh viên = t2.mã số sinh viên where t3.họ của sinh viên = "Smithson"
select t1.mã lớp from đăng ký khoá học as t1 join sinh viên as t2 on t1.mã số sinh viên = t2.mã số sinh viên where t2.họ của sinh viên = "Smithson"
select t4.mô tả về khoá học , t4.số lượng tín chỉ của khoá học from lớp học as t1 join đăng ký khoá học as t2 on t1.mã lớp học = t2.mã lớp join sinh viên as t3 on t3.mã số sinh viên = t2.mã số sinh viên join khoá học as t4 on t4.mã khoá học = t1.mã khoá học where t3.họ của sinh viên = "Smithson"
select t4.mô tả về khoá học , t4.số lượng tín chỉ của khoá học from lớp học as t1 join đăng ký khoá học as t2 on t1.mã lớp học = t2.mã lớp join sinh viên as t3 on t3.mã số sinh viên = t2.mã số sinh viên join khoá học as t4 on t4.mã khoá học = t1.mã khoá học where t3.họ của sinh viên = "Smithson"
select count ( * ) from giáo sư where bằng cấp cao nhất = "Ph.D." or bằng cấp cao nhất = "MA"
select count ( * ) from giáo sư where bằng cấp cao nhất = "Ph.D." or bằng cấp cao nhất = "MA"
select count ( * ) from giáo sư as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa where t2.tên khoa = "Accounting" or t2.tên khoa = "Biology"
select count ( * ) from giáo sư as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa where t2.tên khoa = "Accounting" or t2.tên khoa = "Biology"
select t1.tên của nhân viên from nhân viên as t1 join lớp học as t2 on t1.mã số nhân viên = t2.mã số nhân viên của giáo sư where t2.mã khoá học = "CIS-220" intersect select t1.tên của nhân viên from nhân viên as t1 join lớp học as t2 on t1.mã số nhân viên = t2.mã số nhân viên của giáo sư where t2.mã khoá học = "QM-261"
select t1.tên của nhân viên from nhân viên as t1 join lớp học as t2 on t1.mã số nhân viên = t2.mã số nhân viên của giáo sư where t2.mã khoá học = "CIS-220" intersect select t1.tên của nhân viên from nhân viên as t1 join lớp học as t2 on t1.mã số nhân viên = t2.mã số nhân viên của giáo sư where t2.mã khoá học = "QM-261"
select t1.tên của sinh viên from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên join lớp học as t3 on t2.mã lớp = t3.mã lớp join khoá học as t4 on t3.mã khoá học = t4.mã khoá học join khoa as t5 on t5.mã khoa = t4.mã khoa where t5.tên khoa = "Accounting" intersect select t1.tên của sinh viên from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên join lớp học as t3 on t2.mã lớp = t3.mã lớp join khoá học as t4 on t3.mã khoá học = t4.mã khoá học join khoa as t5 on t5.mã khoa = t4.mã khoa where t5.tên khoa = "Computer Info. Systems"
select t1.tên của sinh viên from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên join lớp học as t3 on t2.mã lớp = t3.mã lớp học join khoá học as t4 on t3.mã khoá học = t4.mã khoá học join khoa as t5 on t5.mã khoa = t4.mã khoa where t5.tên khoa = "Accounting" intersect select t1.tên của sinh viên from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên join lớp học as t3 on t2.mã lớp = t3.mã lớp học join khoá học as t4 on t3.mã khoá học = t4.mã khoá học join khoa as t5 on t5.mã khoa = t4.mã khoa where t5.tên khoa = "Computer Info. Systems"
select avg ( t1.gpa of student ) from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên where t2.mã khoá học = "ACCT-211"
select avg ( gpa của sinh viên ) from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên where t2.mã khoá học = "ACCT-211"
select tên của sinh viên , gpa của sinh viên , số điện thoại của sinh viên from sinh viên order by gpa của sinh viên desc limit 5
select tên của sinh viên , gpa của sinh viên , số điện thoại của sinh viên from sinh viên order by gpa của sinh viên desc limit 5
select t2.tên khoa from đăng ký khoá học as t1 join khoá học as t2 on t1.mã khoá học = t2.mã khoá học join sinh viên as t3 on t1.mã số sinh viên = t3.mã số sinh viên group by t2.mã khoa order by avg ( t3.gpa của sinh viên ) limit 1
select t1.mã khoa from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên order by t1.gpa của sinh viên limit 1
select tên của sinh viên , gpa của sinh viên from sinh viên where gpa của sinh viên < ( select avg ( gpa của sinh viên ) from sinh viên )
select tên của sinh viên , gpa của sinh viên from sinh viên where gpa của sinh viên < ( select avg ( gpa của sinh viên ) from sinh viên )
select t2.tên khoa , t2.địa chỉ khoa from đăng ký khoá học as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa group by t1.mã khoa order by count ( * ) desc limit 1
select t2.tên khoa , t2.địa chỉ khoa from sinh viên as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa group by t1.mã khoa order by count ( * ) desc limit 1
select t2.tên khoa , t2.địa chỉ khoa , count ( * ) from sinh viên as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa group by t1.mã khoa order by count ( * ) desc limit 3
select t2.tên khoa , t2.địa chỉ khoa , count ( * ) from sinh viên as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa group by t1.mã khoa order by count ( * ) desc limit 3
select t2.tên của nhân viên , t4.văn phòng giáo sư from giáo sư as t1 join nhân viên as t2 on t1.mã số nhân viên = t2.mã số nhân viên join khoa as t3 on t1.mã khoa = t3.mã khoa join khoá học as t4 on t4.mã khoá học = t3.mã khoá học where t3.tên khoa = "History" and t1.bằng cấp cao nhất = "Ph.D."
select t1.tên của nhân viên , t2.văn phòng giáo sư from nhân viên as t1 join giáo sư as t2 on t1.mã số nhân viên = t2.mã số nhân viên join khoa as t3 on t2.mã khoa = t3.mã khoa where t3.tên khoa = "History" and t2.bằng cấp cao nhất = "Ph.D."
select t2.tên của nhân viên , t1.mã khoá học from lớp học as t1 join nhân viên as t2 on t1.mã số nhân viên của giáo sư = t2.mã số nhân viên
select t2.tên của nhân viên , t1.mã khoá học from lớp học as t1 join nhân viên as t2 on t1.mã số nhân viên của giáo sư = t2.mã số nhân viên
select t2.tên của nhân viên , t4.mô tả về khoá học from lớp học as t1 join nhân viên as t2 on t1.mã số nhân viên của giáo sư = t2.mã số nhân viên join giáo sư as t3 on t2.mã số nhân viên = t3.mã số nhân viên join khoá học as t4 on t1.mã khoá học = t4.mã khoá học
select t2.tên của nhân viên , t3.mô tả về khoá học from lớp học as t1 join nhân viên as t2 on t1.mã số nhân viên của giáo sư = t2.mã số nhân viên join khoá học as t3 on t1.mã khoá học = t3.mã khoá học
select t2.tên của nhân viên , t4.văn phòng giáo sư , t3.mô tả về khoá học from lớp học as t1 join nhân viên as t2 on t1.mã số nhân viên của giáo sư = t2.mã số nhân viên join khoá học as t3 on t1.mã khoá học = t3.mã khoá học join giáo sư as t4 on t2.mã số nhân viên = t4.mã số nhân viên
select t2.tên của nhân viên , t4.văn phòng giáo sư , t3.mô tả về khoá học from lớp học as t1 join nhân viên as t2 on t1.mã số nhân viên của giáo sư = t2.mã số nhân viên join khoá học as t3 on t1.mã khoá học = t3.mã khoá học join giáo sư as t4 on t2.mã số nhân viên = t4.mã số nhân viên
select t2.tên của nhân viên , t4.văn phòng giáo sư , t3.mô tả về khoá học , t5.tên khoa from lớp học as t1 join nhân viên as t2 on t1.mã số nhân viên của giáo sư = t2.mã số nhân viên join khoá học as t3 on t1.mã khoá học = t3.mã khoá học join giáo sư as t4 on t2.mã số nhân viên = t4.mã số nhân viên join khoa as t5 on t4.mã khoa = t5.mã khoa
select t2.tên của nhân viên , t4.văn phòng giáo sư , t3.mô tả về khoá học , t3.mã khoa from lớp học as t1 join nhân viên as t2 on t1.mã số nhân viên của giáo sư = t2.mã số nhân viên join khoá học as t3 on t1.mã khoá học = t3.mã khoá học join giáo sư as t4 on t2.mã số nhân viên = t4.mã số nhân viên
select t1.tên của sinh viên , t1.họ của sinh viên , t4.mô tả về khoá học from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên join lớp học as t3 on t2.mã lớp = t3.mã lớp học join khoá học as t4 on t3.mã khoá học = t4.mã khoá học
select t1.tên của sinh viên , t1.họ của sinh viên , t4.mô tả về khoá học from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên join lớp học as t3 on t2.mã lớp = t3.mã lớp học join khoá học as t4 on t3.mã khoá học = t4.mã khoá học
select tên của sinh viên from sinh viên where mã số sinh viên in ( select mã số sinh viên from đăng ký khoá học where điểm số = "C" or điểm số = "A" )
select t1.tên của sinh viên from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên where t2.điểm số = "C" or t2.điểm số = "A"
select t2.tên của nhân viên , t1.phòng học from lớp học as t1 join nhân viên as t2 on t1.mã số nhân viên của giáo sư = t2.mã số nhân viên join khoa as t3 on t3.mã khoa = t2.mã khoa where tên khoa = "Accounting"
select t2.tên của nhân viên , t1.phòng học from lớp học as t1 join nhân viên as t2 on t1.mã số nhân viên của giáo sư = t2.mã số nhân viên join khoa as t3 on t3.mã khoa = t2.mã khoa where t3.tên khoa = "Accounting"
select t2.tên của nhân viên , t3.bằng cấp cao nhất from giáo sư as t1 join nhân viên as t2 on t1.mã số nhân viên = t2.mã số nhân viên join khoa as t3 on t1.mã khoa = t3.mã khoa where t3.tên khoa = "Computer Info. Systems"
select t2.tên của nhân viên , t3.bằng cấp cao nhất from giáo sư as t1 join nhân viên as t2 on t1.mã số nhân viên = t2.mã số nhân viên join khoa as t3 on t1.mã khoa = t3.mã khoa where t3.tên khoa = "Computer Info. Systems"
select t1.họ của sinh viên from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên where t2.điểm số = "A" and t2.mã lớp = 10018
select t1.họ của sinh viên from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên where t2.điểm số = "A" and t2.mã lớp = 10018
select t1.tên của nhân viên , t3.văn phòng giáo sư from nhân viên as t1 join giáo sư as t2 on t1.mã số nhân viên = t2.mã số nhân viên join khoa as t3 on t2.mã khoa = t3.mã khoa where t3.tên khoa = "History" and t2.bằng cấp cao nhất != "Ph.D."
select t1.tên của nhân viên , t1.văn phòng giáo sư from nhân viên as t1 join giáo sư as t2 on t1.mã số nhân viên = t2.mã số nhân viên join khoa as t3 on t2.mã khoa = t3.mã khoa where t3.tên khoa = "History" and t2.bằng cấp cao nhất != "Ph.D."
select t1.tên của nhân viên from nhân viên as t1 join lớp học as t2 on t1.mã số nhân viên = t2.mã số nhân viên của giáo sư group by t1.mã số nhân viên having count ( * ) > 1
select t2.tên của nhân viên from lớp học as t1 join nhân viên as t2 on t1.mã số nhân viên của giáo sư = t2.mã số nhân viên group by t1.mã số nhân viên của giáo sư having count ( * ) > 1
select distinct t1.tên của sinh viên from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên group by t1.mã số sinh viên having count ( * ) = 1
select t1.tên của sinh viên from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên group by t1.mã số sinh viên having count ( * ) = 1
select t2.tên khoa from khoá học as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa where t1.mô tả về khoá học like "%Statistics%"
select t2.tên khoa from khoá học as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa where t1.mô tả về khoá học like "%Statistics%"
select t3.tên của sinh viên from lớp học as t1 join đăng ký khoá học as t2 on t1.mã lớp học = t2.mã lớp join sinh viên as t3 on t2.mã số sinh viên = t3.mã số sinh viên where t1.mã khoá học = "ACCT-211" and t3.họ của sinh viên like "S%"
select t1.tên của sinh viên from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên where t1.họ của sinh viên like "S%" and t2.mã khoá học = "ACCT-211"
select mã trạng thái tài liệu from trạng thái của tài liệu
select mô tả về trạng thái tài liệu from trạng thái của tài liệu where mã trạng thái tài liệu = "in process"
select mã loại tài liệu from loại tài liệu
select mô tả về loại tài liệu from loại tài liệu where mã loại tài liệu = "Paper"
select tên đại lý vận chuyển from đại lý vận chuyển tài liệu
select mã đại lý vận chuyển from đại lý vận chuyển tài liệu where tên đại lý vận chuyển = "UPS"
select mã vai trò from vai trò
select mô tả về vai trò from vai trò where mã vai trò = "ED"
select count ( * ) from nhân viên
select t2.mô tả về vai trò from nhân viên as t1 join vai trò as t2 on t1.mã vai trò = t2.mã vai trò where t1.tên nhân viên = "Koby"
select id tài liệu , ngày lập biên lai from tài liệu
select t1.mô tả về vai trò , t2.mã vai trò , count ( * ) from vai trò as t1 join nhân viên as t2 on t1.mã vai trò = t2.mã vai trò group by t2.mã vai trò
select t1.mô tả về vai trò , count ( * ) from vai trò as t1 join nhân viên as t2 on t1.mã vai trò = t2.mã vai trò group by t2.mã vai trò having count ( * ) > 1
select mô tả về trạng thái tài liệu from trạng thái của tài liệu where mã trạng thái tài liệu = ( select mã trạng thái tài liệu from tài liệu where id tài liệu = 1 )
select count ( * ) from tài liệu where mã trạng thái tài liệu = "done"
select mã loại tài liệu from tài liệu where id tài liệu = 2
select id tài liệu from tài liệu where mã trạng thái tài liệu = "done" and mã loại tài liệu = "Paper"
select t3.tên đại lý vận chuyển from tài liệu as t1 join đại lý vận chuyển tài liệu as t2 on t1.mã đại lý vận chuyển = t2.mã đại lý vận chuyển join đại lý vận chuyển tài liệu as t3 on t2.mã đại lý vận chuyển = t3.mã đại lý vận chuyển where t1.id tài liệu = 2
select count ( * ) from tài liệu where mã đại lý vận chuyển = "USPS"
select t1.tên đại lý vận chuyển , count ( * ) from đại lý vận chuyển tài liệu as t1 join tài liệu as t2 on t1.mã đại lý vận chuyển = t2.mã đại lý vận chuyển group by t1.mã đại lý vận chuyển order by count ( * ) desc limit 1
select ngày lập biên lai from tài liệu where id tài liệu = 3
select t2.chi tiết địa chỉ from tài liệu được gửi as t1 join địa chỉ as t2 on t1.gửi đến địa chỉ có id = t2.id địa chỉ where t1.id tài liệu = 4
select ngày gửi from tài liệu được gửi where id tài liệu = 7
select id tài liệu from tài liệu where mã trạng thái tài liệu = "done" and mã loại tài liệu = "Paper" except select id tài liệu from tài liệu join đại lý vận chuyển tài liệu on tài liệu.mã đại lý vận chuyển = đại lý vận chuyển tài liệu.mã đại lý vận chuyển where đại lý vận chuyển tài liệu.tên đại lý vận chuyển = "USPS"
select id tài liệu from tài liệu where mã trạng thái tài liệu = "done" and mã loại tài liệu = "Paper" intersect select id tài liệu from tài liệu join đại lý vận chuyển tài liệu on tài liệu.mã đại lý vận chuyển = đại lý vận chuyển tài liệu.mã đại lý vận chuyển where đại lý vận chuyển tài liệu.tên đại lý vận chuyển = "USPS"
select chi tiết dự thảo from bản dự thảo của tài liệu where id tài liệu = 7
select count ( * ) from bản dự thảo của tài liệu where id tài liệu = 2
select id tài liệu , số lượng bản sao from bản sao group by id tài liệu order by số lượng bản sao desc limit 1
select id tài liệu , count ( * ) from bản sao group by id tài liệu having count ( * ) > 1
select t1.tên nhân viên from nhân viên as t1 join lịch sử lưu hành as t2 on t1.id nhân viên = t2.id nhân viên where t2.id tài liệu = 1
select tên nhân viên from nhân viên except select nhân viên.tên nhân viên from nhân viên join lịch sử lưu hành on lịch sử lưu hành.id nhân viên = nhân viên.id nhân viên
select t1.tên nhân viên , count ( * ) from nhân viên as t1 join lịch sử lưu hành as t2 on t1.id nhân viên = t2.id nhân viên group by t1.id nhân viên order by count ( * ) desc limit 1
select id tài liệu , count ( * ) from lịch sử lưu hành group by id tài liệu
select count ( * ) from khách hàng
select count ( * ) from lượt đặt hàng
select ngày đặt hàng from lượt đặt hàng
select ngày đặt hàng from lượt đặt hàng
select ngày giao hàng theo kế hoạch , ngày giao hàng thực tế from lượt đặt hàng
select ngày giao hàng theo kế hoạch , ngày giao hàng thực tế from lượt đặt hàng
select count ( * ) from khách hàng
select count ( * ) from khách hàng
select số điện thoại khách hàng , địa chỉ email khách hàng from khách hàng where tên khách hàng = "Harold"
select địa chỉ email khách hàng , số điện thoại khách hàng from khách hàng where tên khách hàng = "Harold"
select tên cửa hàng from nhóm hội thảo kịch
select tên cửa hàng from nhóm hội thảo kịch
select min ( số lượng đặt hàng ) , avg ( số lượng đặt hàng ) , max ( số lượng đặt hàng ) from hoá đơn
select min ( số lượng đặt hàng ) , avg ( số lượng đặt hàng ) , max ( số lượng đặt hàng ) from hoá đơn
select distinct mã phương thức thanh toán from hoá đơn
select distinct mã phương thức thanh toán from hoá đơn
select mô tả về khu vực tiếp thị from khu vực tiếp thị where tên khu vực tiếp thị = "China"
select mô tả về khu vực tiếp thị from khu vực tiếp thị where tên khu vực tiếp thị = "China"
select distinct tên sản phẩm from các sản phẩm where giá sản phẩm > ( select avg ( giá sản phẩm ) from các sản phẩm )
select tên sản phẩm from các sản phẩm where giá sản phẩm > ( select avg ( giá sản phẩm ) from các sản phẩm )
select t1.tên sản phẩm from các sản phẩm as t1 join mặt hàng được đặt as t2 on t1.id sản phẩm = t2.id sản phẩm group by t1.tên sản phẩm order by count ( * ) desc limit 1
select tên sản phẩm , giá sản phẩm from các sản phẩm order by giá sản phẩm asc
select tên sản phẩm from các sản phẩm order by giá sản phẩm asc
select tên sản phẩm from các sản phẩm order by giá sản phẩm asc
select số điện thoại khách hàng from người biểu diễn where tên khách hàng = "Ashley"
select số điện thoại khách hàng from người biểu diễn where tên khách hàng = "Ashley"
select mã phương thức thanh toán , count ( * ) from hoá đơn group by mã phương thức thanh toán
select mã phương thức thanh toán from hoá đơn group by mã phương thức thanh toán order by count ( * ) desc limit 1
select mã phương thức thanh toán from hoá đơn group by mã phương thức thanh toán order by count ( * ) desc limit 1
select mã phương thức thanh toán from hoá đơn group by mã phương thức thanh toán order by count ( * ) desc limit 1
select distinct t1.tên sản phẩm from các sản phẩm as t1 join mặt hàng được đặt as t2 on t1.id sản phẩm = t2.id sản phẩm
select t1.thành phố thị trấn from địa chỉ as t1 join cửa hàng as t2 on t1.id địa chỉ = t2.id địa chỉ where t2.tên cửa hàng = "FJA Filming"
select t1.quận hạt from địa chỉ as t1 join cửa hàng as t2 on t1.id địa chỉ = t2.id địa chỉ where t2.mã khu vực tiếp thị = "CA"
select t1.quận hạt from địa chỉ as t1 join cửa hàng as t2 on t1.id địa chỉ = t2.id địa chỉ where t2.mã khu vực tiếp thị = "CA"
select t1.tên khu vực tiếp thị from khu vực tiếp thị as t1 join cửa hàng as t2 on t1.mã khu vực tiếp thị = t2.mã khu vực tiếp thị where t2.tên cửa hàng = "Rob Dinning"
select t1.tên khu vực tiếp thị from khu vực tiếp thị as t1 join cửa hàng as t2 on t1.mã khu vực tiếp thị = t2.mã khu vực tiếp thị where t2.tên cửa hàng = "Rob Dinning"
select t1.mô tả về loại dịch vụ from loại dịch vụ as t1 join dịch vụ as t2 on t1.mã loại dịch vụ = t2.mã loại dịch vụ where t2.giá sản phẩm > 100
select t1.mô tả về loại dịch vụ from loại dịch vụ as t1 join dịch vụ as t2 on t1.mã loại dịch vụ = t2.mã loại dịch vụ where t2.giá sản phẩm > 100
select t2.tên sản phẩm , avg ( t1.số lượng đặt hàng ) from mặt hàng được đặt as t1 join các sản phẩm as t2 on t1.id sản phẩm = t2.id sản phẩm group by t2.tên sản phẩm
select t1.mô tả về loại dịch vụ , t2.mã loại dịch vụ , count ( * ) from loại dịch vụ as t1 join dịch vụ as t2 on t1.mã loại dịch vụ = t2.mã loại dịch vụ group by t2.mã loại dịch vụ
select t1.mô tả về loại dịch vụ , t1.mã loại dịch vụ from loại dịch vụ as t1 join dịch vụ as t2 on t1.mã loại dịch vụ = t2.mã loại dịch vụ group by t1.mã loại dịch vụ order by count ( * ) desc limit 1
select t1.mô tả về loại dịch vụ , t1.mã loại dịch vụ from loại dịch vụ as t1 join dịch vụ as t2 on t1.mã loại dịch vụ = t2.mã loại dịch vụ group by t1.mã loại dịch vụ order by count ( * ) desc limit 1
select t2.tên cửa hàng from địa chỉ as t1 join nhóm hội thảo kịch as t2 on t1.id địa chỉ = t2.id địa chỉ where t1.thành phố thị trấn = "Feliciaberg"
select t2.địa chỉ email cửa hàng , t2.số điện thoại cửa hàng from dịch vụ as t1 join nhóm hội thảo kịch as t2 on t1.id nhóm hội thảo kịch = t2.id nhóm hội thảo kịch
select t2.số điện thoại cửa hàng , t2.địa chỉ email cửa hàng from dịch vụ as t1 join nhóm hội thảo kịch as t2 on t1.id nhóm hội thảo kịch = t2.id nhóm hội thảo kịch where t1.tên sản phẩm = "film"
select t1.id nhóm hội thảo kịch from nhóm hội thảo kịch as t1 join dịch vụ as t2 on t1.id nhóm hội thảo kịch = t2.id nhóm hội thảo kịch where t2.tên sản phẩm = "film"
select tên sản phẩm , avg ( giá sản phẩm ) from các sản phẩm group by tên sản phẩm
select tên sản phẩm , avg ( giá sản phẩm ) from các sản phẩm group by tên sản phẩm
select tên sản phẩm from các sản phẩm group by tên sản phẩm having avg ( giá sản phẩm ) < 1000000
select tên sản phẩm from các sản phẩm group by tên sản phẩm having avg ( giá sản phẩm ) < 1000000
select
select sum ( t1.số lượng đặt hàng ) from mặt hàng được đặt as t1 join các sản phẩm as t2 on t1.id sản phẩm = t2.id sản phẩm where t2.tên sản phẩm = "photo"
select t1.chi tiết khác về mặt hàng from mặt hàng được đặt as t1 join các sản phẩm as t2 on t1.id sản phẩm = t2.id sản phẩm where t2.giá sản phẩm > 2000
select t1.tên sản phẩm from các sản phẩm as t1 join mặt hàng được đặt as t2 on t1.id sản phẩm = t2.id sản phẩm group by t2.id sản phẩm having count ( * ) > 3
select t1.ngày giao hàng thực tế from lượt đặt hàng của khách hàng as t1 join mặt hàng được đặt as t2 on t1.id đơn hàng = t2.id đơn hàng where t2.số lượng đặt hàng = 1
select t1.ngày giao hàng thực tế from lượt đặt hàng as t1 join mặt hàng được đặt as t2 on t1.id đơn hàng = t2.id đơn hàng where t2.số lượng đặt hàng = 1
select
select t1.ngày đặt hàng from lượt đặt hàng của khách hàng as t1 join lượt đặt hàng as t2 on t1.id đơn hàng = t2.id đơn hàng where t2.chi tiết khác về đơn hàng > 1000
select count ( distinct mã tiền tệ ) from nhóm hội thảo kịch
select count ( distinct mã tiền tệ ) from nhóm hội thảo kịch
select t2.tên cửa hàng from địa chỉ as t1 join nhóm hội thảo kịch as t2 on t1.id địa chỉ = t2.id địa chỉ where t1.thành phố thị trấn = "Feliciaberg"
select t1.tên cửa hàng from nhóm hội thảo kịch as t1 join địa chỉ as t2 on t1.id địa chỉ = t2.id địa chỉ where t2.thành phố thị trấn = "Feliciaberg"
select t2.tên sản phẩm from lượt đặt hàng của khách hàng as t1 join các sản phẩm as t2 on t1.id sản phẩm = t2.id sản phẩm group by t1.id sản phẩm order by count ( * ) desc limit 1
select t1.địa chỉ email cửa hàng from nhóm hội thảo kịch as t1 join địa chỉ as t2 on t1.id địa chỉ = t2.id địa chỉ where t2.quận hạt = "Alaska"
select t1.thành phố thị trấn , count ( * ) from địa chỉ as t1 join nhóm hội thảo kịch as t2 on t1.id địa chỉ = t2.id địa chỉ group by t1.thành phố thị trấn
select t2.thành phố thị trấn , count ( * ) from nhóm hội thảo kịch as t1 join địa chỉ as t2 on t1.id địa chỉ = t2.id địa chỉ group by t2.thành phố thị trấn
select mã khu vực tiếp thị from nhóm hội thảo kịch group by mã khu vực tiếp thị order by count ( * ) desc limit 1
select mã khu vực tiếp thị from nhóm hội thảo kịch group by mã khu vực tiếp thị order by count ( * ) desc limit 1
select t1.thành phố thị trấn from địa chỉ as t1 join khách hàng as t2 on t1.id địa chỉ = t2.id địa chỉ except select t1.thành phố thị trấn from địa chỉ as t1 join người biểu diễn as t2 on t1.id địa chỉ = t2.id địa chỉ
select t1.tên khách hàng from khách hàng as t1 join lượt đặt hàng as t2 on t1.id khách hàng = t2.id khách hàng where t2.số lượng đặt hàng > 10
select mã trạng thái from lượt đặt hàng group by mã trạng thái order by count ( * ) desc limit 1
select mã trạng thái from lượt đặt hàng group by mã trạng thái order by count ( * ) desc limit 1
select avg ( số lượng đặt hàng ) , id sản phẩm from hoá đơn as t1 join mặt hàng được đặt as t2 on t1.id hoá đơn = t2.id hoá đơn group by id sản phẩm
select t1.tên cửa hàng from nhóm hội thảo kịch as t1 join lượt đặt hàng as t2 on t1.id nhóm hội thảo kịch = t2.id nhóm hội thảo kịch where t2.mã trạng thái = "stop"
select tên khách hàng from khách hàng except select t1.tên khách hàng from khách hàng as t1 join lượt đặt hàng as t2 on t1.id khách hàng = t2.id khách hàng
select t2.tên cửa hàng from địa chỉ as t1 join nhóm hội thảo kịch as t2 on t1.id địa chỉ = t2.id địa chỉ where t1.thành phố thị trấn = "Brandon" and t1.quận hạt = "Montana"
select avg ( số lượng đặt hàng ) from hoá đơn where mã phương thức thanh toán = "Mastercard"
select avg ( số lượng đặt hàng ) from hoá đơn where mã phương thức thanh toán = "Mastercard"
select id sản phẩm from mặt hàng được đặt group by id sản phẩm having count ( * ) > 3
select mã loại dịch vụ from lượt đặt hàng group by mã loại dịch vụ order by count ( * ) desc limit 1
select
select t1.mô tả về loại dịch vụ from loại dịch vụ as t1 join dịch vụ as t2 on t1.mã loại dịch vụ = t2.mã loại dịch vụ where t2.tên sản phẩm = "pictures" intersect select t1.mô tả về loại dịch vụ from loại dịch vụ as t1 join dịch vụ as t2 on t1.mã loại dịch vụ = t2.mã loại dịch vụ where t2.tên sản phẩm = "films"
select count ( * ) from tài khoản
select count ( * ) from tài khoản
select count ( distinct id khách hàng ) from tài khoản
select count ( distinct id khách hàng ) from tài khoản
select id tài khoản , ngày mở tài khoản , tên tài khoản , chi tiết khác về tài khoản from tài khoản
select id tài khoản , ngày mở tài khoản , tên tài khoản , chi tiết khác về tài khoản from tài khoản
select t1.id tài khoản , t1.tên tài khoản , t1.ngày mở tài khoản , t1.chi tiết khác về tài khoản from tài khoản as t1 join khách hàng as t2 on t1.id khách hàng = t2.id khách hàng where t2.tên khách hàng = "Meaghan"
select t1.id tài khoản , t1.tên tài khoản , t1.ngày mở tài khoản , t1.chi tiết khác về tài khoản from tài khoản as t1 join khách hàng as t2 on t1.id khách hàng = t2.id khách hàng where t2.tên khách hàng = "Meaghan"
select t1.tên tài khoản , t1.chi tiết khác về tài khoản from tài khoản as t1 join khách hàng as t2 on t1.id khách hàng = t2.id khách hàng where t2.tên khách hàng = "Meaghan" and t2.họ của khách hàng = "Afghanistan"
select t1.tên tài khoản , t1.chi tiết khác về tài khoản from tài khoản as t1 join khách hàng as t2 on t1.id khách hàng = t2.id khách hàng where t2.tên khách hàng = "Meaghan"
select t1.tên khách hàng , t1.họ của khách hàng from khách hàng as t1 join tài khoản as t2 on t1.id khách hàng = t2.id khách hàng where t2.tên tài khoản = "900"
select t1.tên khách hàng , t1.họ của khách hàng from khách hàng as t1 join tài khoản as t2 on t1.id khách hàng = t2.id khách hàng where t2.tên tài khoản = "900"
select count ( * ) from khách hàng where id khách hàng not in ( select id khách hàng from tài khoản )
select count ( * ) from khách hàng where id khách hàng not in ( select id khách hàng from tài khoản )
select distinct t1.tên khách hàng , t1.họ của khách hàng , t1.số điện thoại from khách hàng as t1 join tài khoản as t2 on t1.id khách hàng = t2.id khách hàng
select distinct t1.tên khách hàng , t1.họ của khách hàng , t1.số điện thoại from khách hàng as t1 join tài khoản as t2 on t1.id khách hàng = t2.id khách hàng
select id khách hàng from khách hàng except select id khách hàng from tài khoản
select id khách hàng from khách hàng except select id khách hàng from tài khoản
select count ( * ) , id khách hàng from tài khoản group by id khách hàng
select id khách hàng , count ( * ) from tài khoản group by id khách hàng
select t1.tên khách hàng , t1.họ của khách hàng , t1.id khách hàng from khách hàng as t1 join tài khoản as t2 on t1.id khách hàng = t2.id khách hàng group by t1.id khách hàng order by count ( * ) desc limit 1
select t1.id khách hàng , t2.tên khách hàng , t2.họ của khách hàng from tài khoản as t1 join khách hàng as t2 on t1.id khách hàng = t2.id khách hàng group by t1.id khách hàng order by count ( * ) desc limit 1
select t1.id khách hàng , t2.tên khách hàng , t2.họ của khách hàng , count ( * ) from tài khoản as t1 join khách hàng as t2 on t1.id khách hàng = t2.id khách hàng group by t1.id khách hàng
select t1.id khách hàng , t2.tên của khách hàng , t2.họ của khách hàng , count ( * ) from tài khoản as t1 join khách hàng as t2 on t1.id khách hàng = t2.id khách hàng group by t1.id khách hàng
select t1.tên khách hàng , t1.id khách hàng from khách hàng as t1 join tài khoản as t2 on t1.id khách hàng = t2.id khách hàng group by t1.id khách hàng having count ( * ) >= 2
select t1.tên khách hàng , t1.id khách hàng from khách hàng as t1 join tài khoản as t2 on t1.id khách hàng = t2.id khách hàng group by t1.id khách hàng having count ( * ) >= 2
select count ( * ) from khách hàng
select count ( * ) from khách hàng
select count ( * ) , giới tính from khách hàng group by giới tính
select count ( * ) , giới tính from khách hàng group by giới tính
select count ( * ) from giao dịch tài chính
select count ( * ) from giao dịch tài chính
select count ( * ) , id tài khoản from giao dịch tài chính group by id tài khoản
select id tài khoản , count ( * ) from giao dịch tài chính group by id tài khoản
select count ( * ) from giao dịch tài chính as t1 join tài khoản as t2 on t1.id tài khoản = t2.id tài khoản where t2.tên tài khoản = "337"
select count ( * ) from giao dịch tài chính as t1 join tài khoản as t2 on t1.id tài khoản = t2.id tài khoản where t2.tên tài khoản = "337"
select avg ( số tiền giao dịch ) , min ( số tiền giao dịch ) , max ( số tiền giao dịch ) , sum ( số tiền giao dịch ) from giao dịch tài chính
select avg ( số tiền giao dịch ) , min ( số tiền giao dịch ) , max ( số tiền giao dịch ) , sum ( số tiền giao dịch ) from giao dịch tài chính
select id giao dịch from giao dịch tài chính where số tiền giao dịch > ( select avg ( số tiền giao dịch ) from giao dịch tài chính )
select id giao dịch from giao dịch tài chính where số tiền giao dịch > ( select avg ( số tiền giao dịch ) from giao dịch tài chính )
select loại giao dịch , sum ( số tiền giao dịch ) from giao dịch tài chính group by loại giao dịch
select sum ( số tiền giao dịch ) , loại giao dịch from giao dịch tài chính group by loại giao dịch
select t1.tên tài khoản , t1.id tài khoản , count ( * ) from tài khoản as t1 join giao dịch tài chính as t2 on t1.id tài khoản = t2.id tài khoản group by t1.id tài khoản
select t1.tên tài khoản , t1.id tài khoản , count ( * ) from tài khoản as t1 join giao dịch tài chính as t2 on t1.id tài khoản = t2.id tài khoản group by t1.id tài khoản
select id tài khoản from giao dịch tài chính group by id tài khoản order by count ( * ) desc limit 1
select id tài khoản from giao dịch tài chính group by id tài khoản order by count ( * ) desc limit 1
select t1.tên tài khoản , t1.id tài khoản from tài khoản as t1 join giao dịch tài chính as t2 on t1.id tài khoản = t2.id tài khoản group by t1.id tài khoản having count ( * ) >= 4
select t1.tên tài khoản , t1.id tài khoản from tài khoản as t1 join giao dịch tài chính as t2 on t1.id tài khoản = t2.id tài khoản group by t1.id tài khoản having count ( * ) >= 4
select distinct kích thước sản phẩm from sản phẩm
select distinct kích thước sản phẩm from sản phẩm
select distinct màu sản phẩm from sản phẩm
select count ( distinct màu sản phẩm ) from sản phẩm
select số hoá đơn , count ( * ) from giao dịch tài chính group by số hoá đơn
select số hoá đơn , count ( * ) from giao dịch tài chính group by số hoá đơn
select t2.số hoá đơn , t2.ngày lập hoá đơn from giao dịch tài chính as t1 join hoá đơn as t2 on t1.số hoá đơn = t2.số hoá đơn group by t1.số hoá đơn order by count ( * ) desc limit 1
select t1.số hoá đơn , t1.ngày lập hoá đơn from hoá đơn as t1 join giao dịch tài chính as t2 on t1.số hoá đơn = t2.số hoá đơn group by t1.số hoá đơn order by sum ( t2.số tiền giao dịch ) desc limit 1
select count ( * ) from hoá đơn
select count ( * ) from hoá đơn
select
select t2.ngày lập hoá đơn , t2.id đơn hàng , t1.chi tiết đặt hàng from đơn đặt hàng as t2 join hoá đơn as t1 on t2.id đơn hàng = t1.id đơn hàng
select id đơn hàng , count ( * ) from hoá đơn group by id đơn hàng
select id đơn hàng , count ( * ) from hoá đơn group by id đơn hàng
select t1.id đơn hàng , t1.chi tiết đặt hàng from đơn đặt hàng as t1 join hoá đơn as t2 on t1.id đơn hàng = t2.id đơn hàng group by t1.id đơn hàng having count ( * ) > 2
select t1.id đơn hàng , t1.chi tiết đặt hàng from đơn đặt hàng as t1 join hoá đơn as t2 on t1.id đơn hàng = t2.id đơn hàng group by t1.id đơn hàng having count ( * ) >= 2
select t1.id khách hàng , t1.họ của khách hàng , t1.số điện thoại from khách hàng as t1 join đơn đặt hàng as t2 on t1.id khách hàng = t2.id khách hàng group by t1.id khách hàng order by count ( * ) desc limit 1
select t2.họ của khách hàng , t1.id khách hàng , t2.số điện thoại from đơn đặt hàng as t1 join khách hàng as t2 on t1.id khách hàng = t2.id khách hàng group by t1.id khách hàng order by count ( * ) desc limit 1
select tên sản phẩm from sản phẩm except select t2.tên sản phẩm from mặt hàng được đặt as t1 join sản phẩm as t2 on t1.id sản phẩm = t2.id sản phẩm
select tên sản phẩm from sản phẩm except select t2.tên sản phẩm from mặt hàng được đặt as t1 join sản phẩm as t2 on t1.id sản phẩm = t2.id sản phẩm
select t2.tên sản phẩm , sum ( t1.số lượng sản phẩm ) from mặt hàng được đặt as t1 join sản phẩm as t2 on t1.id sản phẩm = t2.id sản phẩm group by t2.tên sản phẩm
select t2.tên sản phẩm , sum ( t1.số lượng sản phẩm ) from mặt hàng được đặt as t1 join sản phẩm as t2 on t1.id sản phẩm = t2.id sản phẩm group by t2.tên sản phẩm
select id đơn hàng , count ( * ) from mặt hàng được đặt group by id đơn hàng
select count ( * ) , id đơn hàng from mặt hàng được đặt group by id đơn hàng
select id sản phẩm , count ( distinct id đơn hàng ) from mặt hàng được đặt group by id sản phẩm
select count ( distinct id đơn hàng ) , id sản phẩm from mặt hàng được đặt group by id sản phẩm
select t2.tên sản phẩm , count ( * ) from mặt hàng được đặt as t1 join sản phẩm as t2 on t1.id sản phẩm = t2.id sản phẩm join đơn đặt hàng as t3 on t3.id đơn hàng = t1.id đơn hàng group by t2.tên sản phẩm
select t2.tên sản phẩm , count ( * ) from mặt hàng được đặt as t1 join sản phẩm as t2 on t1.id sản phẩm = t2.id sản phẩm join đơn đặt hàng as t3 on t3.id đơn hàng = t1.id đơn hàng group by t2.tên sản phẩm
select id đơn hàng , count ( * ) from mặt hàng được đặt group by id đơn hàng
select count ( distinct id sản phẩm ) , id đơn hàng from mặt hàng được đặt group by id đơn hàng
select giới tính , count ( * ) from khách hàng group by giới tính
select id đơn hàng , sum ( số lượng sản phẩm ) from mặt hàng được đặt group by id đơn hàng
select count ( * ) from sản phẩm where id sản phẩm not in ( select id sản phẩm from mặt hàng được đặt )
select count ( * ) from sản phẩm where id sản phẩm not in ( select id sản phẩm from mặt hàng được đặt )
select count ( * ) from địa chỉ where quốc gia = "USA"
select distinct thành phố from địa chỉ
select tiểu bang , count ( * ) from địa chỉ group by tiểu bang
select tên khách hàng , điện thoại khách hàng from khách hàng where id khách hàng not in ( select id khách hàng from lịch sử địa chỉ khách hàng )
select t1.tên khách hàng from khách hàng as t1 join lượt đặt hàng của khách hàng as t2 on t1.id khách hàng = t2.id khách hàng group by t1.id khách hàng order by count ( * ) desc limit 1
select mã loại sản phẩm from sản phẩm group by mã loại sản phẩm having count ( * ) >= 2
select t1.tên khách hàng from khách hàng as t1 join lượt đặt hàng của khách hàng as t2 on t1.id khách hàng = t2.id khách hàng where t2.mã trạng thái đơn hàng = "Completed" intersect select t1.tên khách hàng from khách hàng as t1 join lượt đặt hàng của khách hàng as t2 on t1.id khách hàng = t2.id khách hàng where t2.mã trạng thái đơn hàng = "Partially Completed"
select tên khách hàng , điện thoại khách hàng , mã phương thức thanh toán from khách hàng order by mã số khách hàng desc
select t2.tên sản phẩm , sum ( t1.số lượng đặt hàng ) from mặt hàng được đặt as t1 join sản phẩm as t2 on t1.id sản phẩm = t2.id sản phẩm group by t2.id sản phẩm
select max ( giá sản phẩm ) , min ( giá sản phẩm ) , avg ( giá sản phẩm ) from sản phẩm
select count ( * ) from sản phẩm where giá sản phẩm > ( select avg ( giá sản phẩm ) from sản phẩm )
select t1.tên khách hàng , t2.thành phố , t1.ngày đặt hàng , t2.đến ngày from lượt đặt hàng của khách hàng as t1 join lịch sử địa chỉ khách hàng as t2 on t1.id khách hàng = t2.id khách hàng
select t1.tên khách hàng from khách hàng as t1 join lượt đặt hàng của khách hàng as t2 on t1.id khách hàng = t2.id khách hàng where t1.mã phương thức thanh toán = "Credit Card" group by t1.id khách hàng having count ( * ) > 2
select t1.tên khách hàng , t1.điện thoại khách hàng from khách hàng as t1 join lượt đặt hàng của khách hàng as t2 on t1.id khách hàng = t2.id khách hàng join mặt hàng được đặt as t3 on t2.id đơn hàng = t3.id đơn hàng group by t1.id khách hàng order by sum ( t3.số lượng đặt hàng ) desc limit 1
select tên sản phẩm , mã loại sản phẩm from sản phẩm where giá sản phẩm > 1000 or giá sản phẩm < 500
select count ( * ) from bộ trưởng where tuổi > 56
select tên , sinh ra ở tiểu bang , tuổi from bộ trưởng order by tuổi
select năm thành lập , tên , ngân sách tính theo tỷ from các bộ
select max ( ngân sách tính theo tỷ ) , min ( ngân sách tính theo tỷ ) from các bộ
select avg ( số lượng nhân viên ) from các bộ where xếp hạng between 10 and 15
select tên from bộ trưởng where sinh ra ở tiểu bang != "California"
select distinct t1.năm thành lập from các bộ as t1 join sự quản lý as t2 on t1.id các bộ = t2.id các bộ join bộ trưởng as t3 on t2.id người đứng đầu = t3.id người đứng đầu where t3.sinh ra ở tiểu bang = "Alabama"
select sinh ra ở tiểu bang from bộ trưởng group by sinh ra ở tiểu bang having count ( * ) >= 3
select năm thành lập from các bộ group by năm thành lập order by count ( * ) desc limit 1
select t1.tên , t1.số lượng nhân viên from các bộ as t1 join sự quản lý as t2 on t1.id các bộ = t2.id các bộ where t2.vai trò tạm thời = "T"
select count ( distinct vai trò tạm thời ) from sự quản lý
select count ( * ) from các bộ where id các bộ not in ( select id các bộ from bộ trưởng )
select distinct tuổi from bộ trưởng except select distinct tuổi from sự quản lý
select distinct sinh ra ở tiểu bang from bộ trưởng where tên = "Finance Director" intersect select distinct sinh ra ở tiểu bang from bộ trưởng where tên = "Internal Security Director"
select t1.id các bộ , t1.tên , count ( * ) from các bộ as t1 join bộ trưởng as t2 on t1.id các bộ = t2.id người đứng đầu group by t1.id các bộ having count ( * ) > 1
select id người đứng đầu , tên from bộ trưởng where tên like "%Ha%"
select id from xe
select id from xe
select count ( * ) from xe
select count ( * ) from xe
select chi tiết về xe from xe where id = 1
select chi tiết về xe from xe where id = 1
select tên , tên đệm , họ from nhân viên
select tên , tên đệm , họ from nhân viên
select ngày sinh from nhân viên where tên = "Janessa" and họ = "Sawayn"
select ngày sinh from nhân viên where tên = "Janessa" and họ = "Sawayn"
select ngày nhân viên gia nhập from nhân viên where tên = "Janessa" and họ = "Sawayn"
select ngày nhân viên gia nhập from nhân viên where tên = "Janessa" and họ = "Sawayn"
select ngày nhân viên rời đi from nhân viên where tên = "Janessa" and họ = "Sawayn"
select ngày nhân viên rời đi from nhân viên where tên = "Janessa" and họ = "Sawayn"
select count ( * ) from nhân viên where tên = "Ludie"
select count ( * ) from nhân viên where tên = "Ludie"
select biệt danh from nhân viên where tên = "Janessa" and họ = "Sawayn"
select biệt danh from nhân viên where tên = "Janessa" and họ = "Sawayn"
select count ( * ) from nhân viên
select count ( * ) from nhân viên
select t3.thành phố from nhân viên as t1 join khách hàng as t2 on t1.id khách hàng = t2.id khách hàng join địa chỉ as t3 on t1.id địa chỉ nhân viên = t3.id địa chỉ where t1.tên = "Janessa" and t1.họ = "Sawayn"
select t2.thành phố from nhân viên as t1 join địa chỉ as t2 on t1.id địa chỉ nhân viên = t2.id địa chỉ where t1.tên = "Janessa" and t1.họ = "Sawayn"
select t3.quốc gia , t3.tiểu bang from nhân viên as t1 join địa chỉ as t2 on t1.id địa chỉ nhân viên = t2.id địa chỉ join khách hàng as t3 on t1.id khách hàng = t3.id khách hàng where t1.tên = "Janessa" and t1.họ = "Sawayn"
select t3.quốc gia , t3.tiểu bang from khách hàng as t1 join địa chỉ as t2 on t1.id địa chỉ khách hàng = t2.id địa chỉ join địa chỉ as t3 on t2.id địa chỉ dòng 1 của tòa nhà = t3.id địa chỉ join nhân viên as t4 on t4.id địa chỉ nhân viên = t2.id địa chỉ where t1.tên = "Janessa" and t1.họ = "Sawayn"
select sum ( t1.giờ học ) from bài giảng as t1 join khách hàng as t2 on t1.id khách hàng = t2.id khách hàng where t2.tên = "Rylan" and t2.họ = "Goodwin"
select sum ( giờ học ) from bài giảng as t1 join khách hàng as t2 on t1.id khách hàng = t2.id khách hàng where t2.tên = "Rylan" and t2.họ = "Goodwin"
select t1.mã bưu điện from địa chỉ as t1 join nhân viên as t2 on t1.id địa chỉ = t2.id địa chỉ nhân viên where t2.tên = "Janessa" and t2.họ = "Sawayn"
select t3.mã bưu điện from nhân viên as t1 join khách hàng as t2 join địa chỉ as t3 on t1.id địa chỉ nhân viên = t2.id địa chỉ khách hàng where t1.tên = "Janessa" and t1.họ = "Sawayn"
select count ( * ) from địa chỉ where tiểu bang = "Georgia"
select count ( * ) from địa chỉ where tiểu bang = "Georgia"
select t1.tên , t1.họ from nhân viên as t1 join địa chỉ as t2 on t1.id địa chỉ nhân viên = t2.id địa chỉ where t2.thành phố = "Fremont"
select t1.tên , t1.họ from nhân viên as t1 join địa chỉ as t2 on t1.id địa chỉ nhân viên = t2.id địa chỉ where t2.thành phố = "Damianfort"
select t1.thành phố , count ( * ) from địa chỉ as t1 join nhân viên as t2 on t1.id địa chỉ = t2.id địa chỉ nhân viên group by t1.thành phố order by count ( * ) desc limit 1
select t1.thành phố , count ( * ) from địa chỉ as t1 join nhân viên as t2 on t1.id địa chỉ = t2.id địa chỉ nhân viên group by t1.thành phố order by count ( * ) desc limit 1
select t1.tiểu bang from địa chỉ as t1 join nhân viên as t2 on t1.id địa chỉ = t2.id địa chỉ nhân viên group by t1.tiểu bang having count ( * ) between 2 and 4
select t1.tiểu bang from địa chỉ as t1 join nhân viên as t2 on t1.id địa chỉ = t2.id địa chỉ nhân viên group by t1.tiểu bang having count ( * ) between 2 and 4
select tên , họ from khách hàng
select tên , họ from khách hàng
select địa chỉ email , ngày sinh from khách hàng where tên = "Carole"
select địa chỉ email , ngày sinh from khách hàng where tên = "Carole"
select số điện thoại , địa chỉ email from khách hàng where số tiền còn thiếu > 2000
select số điện thoại , địa chỉ email from khách hàng where số tiền còn thiếu > 2000
select mã trạng thái khách hàng , số điện thoại di động , địa chỉ email from khách hàng where tên = "Marina" or họ = "Kohler"
select mã trạng thái khách hàng , số điện thoại di động , địa chỉ email from khách hàng where tên = "Marina" or họ = "Kohler"
select ngày sinh from khách hàng where mã trạng thái khách hàng = "Good Customer"
select ngày sinh from khách hàng where mã trạng thái khách hàng = "Good Customer"
select ngày trở thành khách hàng from khách hàng where tên = "Carole" and họ = "Bernhard"
select ngày trở thành khách hàng from khách hàng where tên = "Carole" and họ = "Bernhard"
select count ( * ) from khách hàng
select count ( * ) from khách hàng
select mã trạng thái khách hàng , count ( * ) from khách hàng group by mã trạng thái khách hàng
select mã trạng thái khách hàng , count ( * ) from khách hàng group by mã trạng thái khách hàng
select mã trạng thái khách hàng from khách hàng group by mã trạng thái khách hàng order by count ( * ) asc limit 1
select mã trạng thái khách hàng from khách hàng group by mã trạng thái khách hàng order by count ( * ) limit 1
select count ( * ) from bài giảng as t1 join khách hàng as t2 on t1.id khách hàng = t2.id khách hàng where t2.tên = "Rylan" and t2.họ = "Goodwin" and t1.mã trạng thái bài giảng = "Completed"
select count ( * ) from bài giảng as t1 join nhân viên as t2 on t1.id nhân viên = t2.id nhân viên join khách hàng as t3 on t3.id khách hàng = t1.id khách hàng where t2.tên = "Rylan" and t2.họ = "Goodwin" and t3.tên = "Rylan" and t3.họ = "Goodwin"
select max ( số tiền còn thiếu ) , min ( số tiền còn thiếu ) , avg ( số tiền còn thiếu ) from khách hàng
select max ( số tiền còn thiếu ) , min ( số tiền còn thiếu ) , avg ( số tiền còn thiếu ) from khách hàng
select tên , họ from khách hàng where số tiền còn thiếu between 1000 and 3000
select tên , họ from khách hàng where số tiền còn thiếu between 1000 and 3000
select t1.tên , t1.họ from khách hàng as t1 join địa chỉ as t2 on t1.id địa chỉ khách hàng = t2.id địa chỉ where t2.thành phố = "Lockmanfurt"
select t1.tên , t1.họ from khách hàng as t1 join địa chỉ as t2 on t1.id địa chỉ khách hàng = t2.id địa chỉ where t2.thành phố = "Lockmanfurt"
select t3.quốc gia from khách hàng as t1 join địa chỉ as t2 on t1.id địa chỉ khách hàng = t2.id địa chỉ join nhân viên as t3 on t1.id nhân viên = t3.id nhân viên where t1.tên = "Carole" and t1.họ = "Bernhard"
select t3.quốc gia from khách hàng as t1 join địa chỉ as t2 on t1.id địa chỉ khách hàng = t2.id địa chỉ join địa chỉ as t3 on t1.id địa chỉ khách hàng = t3.id địa chỉ where t1.tên = "Carole" and t1.họ = "Bernhard"
select t2.mã bưu điện from khách hàng as t1 join địa chỉ as t2 on t1.id địa chỉ khách hàng = t2.id địa chỉ where t1.tên = "Carole" and t1.họ = "Bernhard"
select t2.mã bưu điện from khách hàng as t1 join địa chỉ as t2 on t1.id địa chỉ khách hàng = t2.id địa chỉ where t1.tên = "Carole" and t1.họ = "Bernhard"
select t2.thành phố from khách hàng as t1 join địa chỉ as t2 on t1.id địa chỉ khách hàng = t2.id địa chỉ group by t2.thành phố order by count ( * ) desc limit 1
select t2.thành phố from khách hàng as t1 join địa chỉ as t2 on t1.id địa chỉ khách hàng = t2.id địa chỉ group by t2.thành phố order by count ( * ) desc limit 1
select sum ( t1.số tiền thanh toán ) from khoản thanh toán của khách hàng as t1 join khách hàng as t2 on t1.id khách hàng = t2.id khách hàng where t2.tên = "Carole" and t2.họ = "Bernhard"
select sum ( t1.số tiền thanh toán ) from khoản thanh toán của khách hàng as t1 join khách hàng as t2 on t1.id khách hàng = t2.id khách hàng where t2.tên = "Carole" and t2.họ = "Bernhard"
select count ( * ) from khách hàng where id khách hàng not in ( select id khách hàng from khoản thanh toán của khách hàng )
select count ( * ) from khách hàng where id khách hàng not in ( select id khách hàng from khoản thanh toán của khách hàng )
select t1.tên , t1.họ from khách hàng as t1 join khoản thanh toán của khách hàng as t2 on t1.id khách hàng = t2.id khách hàng group by t1.id khách hàng having count ( * ) > 2
select t2.tên , t2.họ from khoản thanh toán của khách hàng as t1 join khách hàng as t2 on t1.id khách hàng = t2.id khách hàng group by t1.id khách hàng having count ( * ) > 2
select mã phương thức thanh toán , count ( * ) from khoản thanh toán của khách hàng group by mã phương thức thanh toán
select mã phương thức thanh toán , count ( * ) from khoản thanh toán của khách hàng group by mã phương thức thanh toán
select count ( * ) from bài giảng where mã trạng thái bài giảng = "Cancelled"
select count ( * ) from bài giảng where mã trạng thái bài giảng = "Cancelled"
select t1.id bài giảng from bài giảng as t1 join nhân viên as t2 on t1.id nhân viên = t2.id nhân viên where t2.tên = "Janessa" and t2.họ = "Sawayn" and biệt danh like "%s%"
select t1.id bài giảng from bài giảng as t1 join nhân viên as t2 on t1.id nhân viên = t2.id nhân viên where t2.tên = "Janessa" and t2.họ = "Sawayn" and biệt danh like "%s%"
select count ( * ) from bài giảng as t1 join nhân viên as t2 on t1.id nhân viên = t2.id nhân viên where t2.tên like "%a%"
select count ( * ) from bài giảng as t1 join nhân viên as t2 on t1.id nhân viên = t2.id nhân viên where t2.tên like "%a%"
select sum ( giờ học ) from bài giảng as t1 join nhân viên as t2 on t1.id nhân viên = t2.id nhân viên where t2.tên = "Janessa" and t2.họ = "Sawayn"
select sum ( giờ học ) from bài giảng as t1 join nhân viên as t2 on t1.id nhân viên = t2.id nhân viên where t2.tên = "Janessa" and t2.họ = "Sawayn"
select avg ( giá ) from bài giảng as t1 join nhân viên as t2 on t1.id nhân viên = t2.id nhân viên where t2.tên = "Janessa" and t2.họ = "Sawayn"
select avg ( giá ) from bài giảng as t1 join nhân viên as t2 on t1.id nhân viên = t2.id nhân viên where t2.tên = "Janessa" and t2.họ = "Sawayn"
select count ( * ) from bài giảng as t1 join khách hàng as t2 on t1.id khách hàng = t2.id khách hàng where t2.tên = "Ray"
select count ( * ) from bài giảng as t1 join khách hàng as t2 on t1.id khách hàng = t2.id khách hàng where t2.tên = "Ray"
select họ from khách hàng intersect select họ from nhân viên
select họ from khách hàng intersect select họ from nhân viên
select tên from nhân viên except select t2.tên from bài giảng as t1 join nhân viên as t2 on t1.id nhân viên = t2.id nhân viên
select tên from nhân viên except select t2.tên from bài giảng as t1 join nhân viên as t2 on t1.id nhân viên = t2.id nhân viên
select t1.id , t1.chi tiết về xe from xe as t1 join bài giảng as t2 on t1.id = t2.id xe group by t1.id order by count ( * ) desc limit 1
select count ( * ) from nhân viên
select count ( * ) from nhân viên
select tên from nhân viên order by tuổi
select tên from nhân viên order by tuổi asc
select count ( * ) , thành phố from nhân viên group by thành phố
select count ( * ) , thành phố from nhân viên group by thành phố
select thành phố from nhân viên where tuổi < 30 group by thành phố having count ( * ) > 1
select thành phố from nhân viên where tuổi < 30 group by thành phố having count ( * ) > 1
select count ( * ) , địa điểm from cửa hàng group by địa điểm
select count ( * ) , địa điểm from cửa hàng group by địa điểm
select tên người quản lý , quận from cửa hàng order by số lượng sản phẩm desc limit 1
select tên người quản lý , quận from cửa hàng order by số lượng sản phẩm desc limit 1
select max ( số lượng sản phẩm ) , min ( số lượng sản phẩm ) from cửa hàng
select max ( số lượng sản phẩm ) , min ( số lượng sản phẩm ) from cửa hàng
select tên , địa điểm , quận from cửa hàng order by số lượng sản phẩm desc
select tên , địa điểm , quận from cửa hàng order by số lượng sản phẩm desc
select tên from cửa hàng where số lượng sản phẩm > ( select avg ( số lượng sản phẩm ) from cửa hàng )
select tên from cửa hàng where số lượng sản phẩm > ( select avg ( số lượng sản phẩm ) from cửa hàng )
select t1.tên from nhân viên as t1 join đánh giá as t2 on t1.id nhân viên = t2.id nhân viên group by t2.id nhân viên order by count ( * ) desc limit 1
select t1.tên from nhân viên as t1 join đánh giá as t2 on t1.id nhân viên = t2.id nhân viên group by t2.id nhân viên order by count ( * ) desc limit 1
select t1.tên from nhân viên as t1 join đánh giá as t2 on t1.id nhân viên = t2.id nhân viên order by t2.tiền thưởng desc limit 1
select t1.tên from nhân viên as t1 join đánh giá as t2 on t1.id nhân viên = t2.id nhân viên order by t2.tiền thưởng desc limit 1
select tên from nhân viên where id nhân viên not in ( select id nhân viên from đánh giá )
select tên from nhân viên where id nhân viên not in ( select id nhân viên from đánh giá )
select t2.tên from tuyển dụng as t1 join cửa hàng as t2 on t1.id cửa hàng = t2.id cửa hàng group by t1.id cửa hàng order by count ( * ) desc limit 1
select t1.tên from cửa hàng as t1 join tuyển dụng as t2 on t1.id cửa hàng = t2.id cửa hàng group by t1.id cửa hàng order by count ( * ) desc limit 1
select tên from cửa hàng where id cửa hàng not in ( select id cửa hàng from tuyển dụng )
select tên from cửa hàng where id cửa hàng not in ( select id cửa hàng from tuyển dụng )
select t2.tên , count ( * ) from tuyển dụng as t1 join cửa hàng as t2 on t1.id cửa hàng = t2.id cửa hàng group by t1.id cửa hàng
select t1.tên , count ( * ) from cửa hàng as t1 join tuyển dụng as t2 on t1.id cửa hàng = t2.id cửa hàng group by t1.id cửa hàng
select sum ( tiền thưởng ) from đánh giá
select sum ( tiền thưởng ) from đánh giá
select * from tuyển dụng
select * from tuyển dụng
select quận from cửa hàng where số lượng sản phẩm < 3000 intersect select quận from cửa hàng where số lượng sản phẩm > 10000
select quận from cửa hàng where số lượng sản phẩm < 3000 intersect select quận from cửa hàng where số lượng sản phẩm > 10000
select count ( distinct địa điểm ) from cửa hàng
select count ( distinct địa điểm ) from cửa hàng
select quốc gia from hãng hàng không where tên hãng hàng không = "JetBlue Airways"
select t1.quốc gia from hãng hàng không as t1 join chuyến bay as t2 on t1.id hãng hàng không = t2.hãng hàng không where t1.tên hãng hàng không = "JetBlue Airways"
select tên viết tắt from hãng hàng không where tên hãng hàng không = "JetBlue Airways"
select tên viết tắt from hãng hàng không where tên hãng hàng không = "JetBlue Airways"
select tên hãng hàng không , tên viết tắt from hãng hàng không where quốc gia = "United States"
select tên hãng hàng không , tên viết tắt from hãng hàng không where quốc gia = "United States"
select mã sân bay , tên sân bay from sân bay where thành phố = "Anthony"
select mã sân bay , tên sân bay from sân bay where thành phố = "Anthony"
select count ( * ) from hãng hàng không
select count ( * ) from hãng hàng không
select count ( * ) from sân bay
select count ( * ) from sân bay
select count ( * ) from chuyến bay
select count ( * ) from chuyến bay
select tên hãng hàng không from hãng hàng không where tên viết tắt = "UAL"
select tên hãng hàng không from hãng hàng không where tên viết tắt = "UAL"
select count ( * ) from hãng hàng không where quốc gia = "United States"
select count ( * ) from hãng hàng không where quốc gia = "United States"
select thành phố , quốc gia from sân bay where tên sân bay = "Alton"
select thành phố , quốc gia from sân bay where tên sân bay = "Alton"
select tên sân bay from sân bay where mã sân bay = "AKO"
select tên sân bay from sân bay where mã sân bay = "AKO"
select tên sân bay from sân bay where thành phố = "Aberdeen"
select tên sân bay from sân bay where thành phố = "Aberdeen"
select count ( * ) from chuyến bay where sân bay khởi hành = "APG"
select count ( * ) from chuyến bay where sân bay khởi hành = "APG"
select count ( * ) from chuyến bay where sân bay đích = "ATO"
select count ( * ) from chuyến bay where sân bay đích = "ATO"
select count ( * ) from chuyến bay as t1 join sân bay as t2 on t1.sân bay khởi hành = t2.mã sân bay where t2.thành phố = "Aberdeen"
select count ( * ) from chuyến bay as t1 join sân bay as t2 on t1.sân bay khởi hành = t2.mã sân bay where t2.thành phố = "Aberdeen"
select count ( * ) from chuyến bay as t1 join sân bay as t2 on t1.sân bay đích = t2.mã sân bay where t2.thành phố = "Aberdeen"
select count ( * ) from chuyến bay as t1 join sân bay as t2 on t1.sân bay đích = t2.mã sân bay where t2.thành phố = "Aberdeen"
select count ( * ) from chuyến bay as t1 join sân bay as t2 on t1.sân bay khởi hành = t2.mã sân bay join sân bay as t3 on t1.sân bay đích = t3.mã sân bay where t2.thành phố = "Aberdeen" and t3.thành phố = "Ashley"
select count ( * ) from chuyến bay as t1 join sân bay as t2 on t1.sân bay đích = t2.mã sân bay join sân bay as t3 on t1.sân bay khởi hành = t3.mã sân bay where t2.thành phố = "Ashley" and t3.thành phố = "Aberdeen"
select count ( * ) from hãng hàng không as t1 join chuyến bay as t2 on t1.id hãng hàng không = t2.hãng hàng không where t1.tên hãng hàng không = "JetBlue Airways"
select count ( * ) from chuyến bay as t1 join hãng hàng không as t2 on t1.hãng hàng không = t2.id hãng hàng không where t2.tên hãng hàng không = "Jetblue Airways"
select count ( * ) from chuyến bay as t1 join hãng hàng không as t2 on t1.hãng hàng không = t2.id hãng hàng không join sân bay as t3 on t1.sân bay đích = t3.mã sân bay where t2.tên hãng hàng không = "United Airlines" and t3.tên sân bay = "ASY"
select count ( * ) from chuyến bay as t1 join hãng hàng không as t2 on t1.hãng hàng không = t2.id hãng hàng không where t1.sân bay đích = "ASY" and t2.tên hãng hàng không = "United Airlines"
select count ( * ) from chuyến bay as t1 join hãng hàng không as t2 on t1.hãng hàng không = t2.id hãng hàng không where t1.sân bay khởi hành = "AHD" and t2.tên hãng hàng không = "United Airlines"
select count ( * ) from chuyến bay as t1 join hãng hàng không as t2 on t1.hãng hàng không = t2.id hãng hàng không where t1.sân bay khởi hành = "AHD" and t2.tên hãng hàng không = "United Airlines"
select count ( * ) from chuyến bay as t1 join sân bay as t2 on t1.sân bay đích = t2.mã sân bay join hãng hàng không as t3 on t3.id hãng hàng không = t1.hãng hàng không where t2.thành phố = "Aberdeen" and t3.tên hãng hàng không = "United Airlines"
select count ( * ) from chuyến bay as t1 join hãng hàng không as t2 on t1.hãng hàng không = t2.id hãng hàng không where t2.tên hãng hàng không = "United Airlines" and t1.sân bay đích = "Aberdeen"
select t1.thành phố from sân bay as t1 join chuyến bay as t2 on t1.mã sân bay = t2.sân bay đích group by t1.thành phố order by count ( * ) desc limit 1
select t1.thành phố from sân bay as t1 join chuyến bay as t2 on t1.mã sân bay = t2.sân bay đích group by t1.thành phố order by count ( * ) desc limit 1
select t1.thành phố from sân bay as t1 join chuyến bay as t2 on t1.mã sân bay = t2.sân bay khởi hành group by t1.thành phố order by count ( * ) desc limit 1
select t1.thành phố from sân bay as t1 join chuyến bay as t2 on t1.mã sân bay = t2.sân bay khởi hành group by t1.thành phố order by count ( * ) desc limit 1
select t1.mã sân bay from sân bay as t1 join chuyến bay as t2 on t1.mã sân bay = t2.sân bay đích or t1.mã sân bay = t2.sân bay khởi hành group by t1.mã sân bay order by count ( * ) desc limit 1
select t1.mã sân bay from sân bay as t1 join chuyến bay as t2 on t1.mã sân bay = t2.sân bay đích or t1.mã sân bay = t2.sân bay khởi hành group by t1.mã sân bay order by count ( * ) desc limit 1
select t1.mã sân bay from sân bay as t1 join chuyến bay as t2 on t1.mã sân bay = t2.sân bay đích or t1.mã sân bay = t2.sân bay khởi hành group by t1.mã sân bay order by count ( * ) limit 1
select t1.mã sân bay from sân bay as t1 join chuyến bay as t2 on t1.mã sân bay = t2.sân bay đích or t1.mã sân bay = t2.sân bay khởi hành group by t1.mã sân bay order by count ( * ) limit 1
select t1.tên hãng hàng không from hãng hàng không as t1 join chuyến bay as t2 on t1.id hãng hàng không = t2.hãng hàng không group by t1.tên hãng hàng không order by count ( * ) desc limit 1
select t1.tên hãng hàng không from hãng hàng không as t1 join chuyến bay as t2 on t1.id hãng hàng không = t2.hãng hàng không group by t1.tên hãng hàng không order by count ( * ) desc limit 1
select t1.tên viết tắt , t1.quốc gia from hãng hàng không as t1 join chuyến bay as t2 on t1.id hãng hàng không = t2.hãng hàng không group by t1.id hãng hàng không order by count ( * ) limit 1
select t1.tên viết tắt , t1.quốc gia from hãng hàng không as t1 join chuyến bay as t2 on t1.id hãng hàng không = t2.hãng hàng không group by t1.id hãng hàng không order by count ( * ) asc limit 1
select t1.tên hãng hàng không from hãng hàng không as t1 join chuyến bay as t2 on t1.id hãng hàng không = t2.hãng hàng không where t2.sân bay khởi hành = "AHD"
select t1.tên hãng hàng không from hãng hàng không as t1 join chuyến bay as t2 on t1.id hãng hàng không = t2.hãng hàng không where t2.sân bay khởi hành = "AHD"
select t1.tên hãng hàng không from hãng hàng không as t1 join chuyến bay as t2 on t1.id hãng hàng không = t2.hãng hàng không where t2.sân bay đích = "AHD"
select t1.tên hãng hàng không from hãng hàng không as t1 join chuyến bay as t2 on t1.id hãng hàng không = t2.hãng hàng không where t2.sân bay đích = "AHD"
select t1.tên hãng hàng không from hãng hàng không as t1 join chuyến bay as t2 on t1.id hãng hàng không = t2.hãng hàng không where t2.sân bay khởi hành = "APG" intersect select t1.tên hãng hàng không from hãng hàng không as t1 join chuyến bay as t2 on t1.id hãng hàng không = t2.hãng hàng không where t2.sân bay khởi hành = "CVO"
select t1.tên hãng hàng không from hãng hàng không as t1 join chuyến bay as t2 on t1.id hãng hàng không = t2.hãng hàng không where t2.sân bay khởi hành = "APG" intersect select t1.tên hãng hàng không from hãng hàng không as t1 join chuyến bay as t2 on t1.id hãng hàng không = t2.hãng hàng không where t2.sân bay khởi hành = "CVO"
select t1.tên hãng hàng không from hãng hàng không as t1 join chuyến bay as t2 on t1.id hãng hàng không = t2.hãng hàng không where t2.sân bay khởi hành = "CVO" except select t1.tên hãng hàng không from hãng hàng không as t1 join chuyến bay as t2 on t1.id hãng hàng không = t2.hãng hàng không where t2.sân bay khởi hành = "APG"
select t1.tên hãng hàng không from hãng hàng không as t1 join chuyến bay as t2 on t1.id hãng hàng không = t2.hãng hàng không where t2.sân bay khởi hành = "CVO" except select t1.tên hãng hàng không from hãng hàng không as t1 join chuyến bay as t2 on t1.id hãng hàng không = t2.hãng hàng không where t2.sân bay khởi hành = "APG"
select t1.tên hãng hàng không from hãng hàng không as t1 join chuyến bay as t2 on t1.id hãng hàng không = t2.hãng hàng không group by t1.tên hãng hàng không having count ( * ) >= 10
select t1.tên hãng hàng không from hãng hàng không as t1 join chuyến bay as t2 on t1.id hãng hàng không = t2.hãng hàng không group by t1.tên hãng hàng không having count ( * ) >= 10
select t1.tên hãng hàng không from hãng hàng không as t1 join chuyến bay as t2 on t1.id hãng hàng không = t2.hãng hàng không group by t1.tên hãng hàng không having count ( * ) < 200
select t1.tên hãng hàng không from hãng hàng không as t1 join chuyến bay as t2 on t1.id hãng hàng không = t2.hãng hàng không group by t1.tên hãng hàng không having count ( * ) < 200
select t1.số hiệu chuyến bay from chuyến bay as t1 join hãng hàng không as t2 on t1.hãng hàng không = t2.id hãng hàng không where t2.tên hãng hàng không = "United Airlines"
select t1.số hiệu chuyến bay from chuyến bay as t1 join hãng hàng không as t2 on t1.hãng hàng không = t2.id hãng hàng không where t2.tên hãng hàng không = "United Airlines"
select số hiệu chuyến bay from chuyến bay where sân bay khởi hành = "APG"
select số hiệu chuyến bay from chuyến bay where sân bay khởi hành = "APG"
select số hiệu chuyến bay from chuyến bay where sân bay đích = "APG"
select số hiệu chuyến bay from chuyến bay where sân bay đích = "APG"
select t1.số hiệu chuyến bay from chuyến bay as t1 join sân bay as t2 on t1.sân bay khởi hành = t2.mã sân bay where t2.thành phố = "Aberdeen"
select t1.số hiệu chuyến bay from chuyến bay as t1 join sân bay as t2 on t1.sân bay khởi hành = t2.mã sân bay where t2.thành phố = "Aberdeen"
select t1.số hiệu chuyến bay from chuyến bay as t1 join sân bay as t2 on t1.sân bay đích = t2.mã sân bay where t2.thành phố = "Aberdeen"
select t1.số hiệu chuyến bay from chuyến bay as t1 join sân bay as t2 on t1.sân bay đích = t2.mã sân bay where t2.thành phố = "Aberdeen"
select count ( * ) from chuyến bay as t1 join sân bay as t2 on t1.sân bay đích = t2.mã sân bay where t2.thành phố = "Aberdeen" or t2.thành phố = "Abilene"
select count ( * ) from chuyến bay as t1 join sân bay as t2 on t1.sân bay đích = t2.mã sân bay where t2.thành phố = "Aberdeen" or t2.thành phố = "Abilene"
select tên sân bay from sân bay where mã sân bay not in ( select sân bay đích from chuyến bay union select sân bay khởi hành from chuyến bay )
select tên sân bay from sân bay where mã sân bay not in ( select sân bay khởi hành from chuyến bay )
select
select ngày from trận đấu order by đội chủ nhà desc
select mùa giải , đội chủ nhà , đội khách from trận đấu
select avg ( trận đấu sân nhà ) , max ( trận đấu sân nhà ) , min ( trận đấu sân nhà ) from sân vận động
select avg ( số lượng người tham dự trung bình ) from sân vận động where phần trăm sức chứa > 100
select cầu thủ , số lượng trận đấu , nguồn thông tin from chấn thương except select 'head' , số lượng trận đấu , nguồn thông tin from chấn thương
select t1.mùa giải from trận đấu as t1 join chấn thương as t2 on t1.id = t2.id trận đấu where t2.cầu thủ = "Walter Samuel"
select
select t1.id , t1.tên from sân vận động as t1 join trận đấu as t2 on t1.id = t2.id sân vận động join chấn thương as t3 on t2.id = t3.id trận đấu group by t1.id order by count ( * ) desc limit 1
select t3.tên , t3.tên người quản lý from trạm xăng của công ty as t1 join công ty as t2 on t1.id công ty = t2.id công ty join trạm xăng as t3 on t1.id trạm = t3.id trạm order by t2.doanh thu tính theo tỷ desc limit 3
select t2.mùa giải , t1.tên from sân vận động as t1 join trận đấu as t2 on t1.id = t2.id sân vận động join chấn thương as t3 on t2.id = t3.id trận đấu where t3.chấn thương = "knee" or t3.chấn thương = "head"
select count ( distinct nguồn thông tin ) from chấn thương
select count ( * ) from trận đấu where id not in ( select id trận đấu from chấn thương )
select count ( distinct t1.chấn thương ) from chấn thương as t1 join trận đấu as t2 on t1.id trận đấu = t2.id where t2.mùa giải > 2010
select t2.tên from chấn thương as t1 join sân vận động as t2 on t1.id sân vận động = t2.id join cầu thủ as t3 on t1.cầu thủ = t3.id where t3.tên = "Walter Samuel" intersect select t2.tên from chấn thương as t1 join sân vận động as t2 on t1.id sân vận động = t2.id join cầu thủ as t3 on t1.cầu thủ = t3.id where t3.tên = "Thiago Motta"
select tên , số lượng người tham dự trung bình , tổng số người tham dự from sân vận động where id not in ( select id sân vận động from chấn thương )
select tên from sân vận động where tên like "%bank%"
select count ( * ) , t1.id from sân vận động as t1 join trận đấu as t2 on t1.id = t2.id sân vận động group by t1.id
select t1.ngày , t2.cầu thủ from trận đấu as t1 join chấn thương as t2 on t1.id = t2.id trận đấu order by t1.mùa giải desc
select năm phát hành from bộ phim where tiêu đề = "The Imitation Game"
select năm phát hành from bộ phim where tiêu đề = "The Imitation Game"
select năm sinh from diễn viên where tên = "Benedict Cumberbatch"
select năm sinh from diễn viên where tên = "Benedict Cumberbatch"
select quốc tịch from diễn viên where giới tính = "female" and tên = "Christoph Waltz"
select quốc tịch from diễn viên where tên = "Christoph Waltz"
select tiêu đề from bộ phim where năm phát hành = 2015
select tên from diễn viên where nơi sinh = "Tehran"
select tên from diễn viên where nơi sinh = "Tehran"
select tên from diễn viên where nơi sinh = "Tehran"
select tên from diễn viên where quốc tịch = "Afghanistan"
select tên from diễn viên where quốc tịch = "Afghanistan"
select tên from diễn viên where quốc tịch = "Afghanistan"
select tên from diễn viên where năm sinh = 1984
select năm sinh from đạo diễn where tên = "Kevin Spacey"
select năm sinh from diễn viên where tên = "Kevin Spacey"
select nơi sinh from diễn viên where tên = "Kevin Spacey"
select nơi sinh from diễn viên where tên = "Kevin Spacey"
select quốc tịch from diễn viên where tên = "Kevin Spacey"
select ngân sách from bộ phim where tiêu đề = "Finding Nemo"
select t3.tiêu đề from đạo diễn bởi as t2 join đạo diễn as t1 on t2.id đạo diễn = t1.id đạo diễn join bộ phim as t3 on t3.id bộ phim = t2.id sê-ri phim where t1.tên = "Steven Spielberg" and t3.năm phát hành > 2006
select t2.tên from đạo diễn bởi as t1 join đạo diễn as t2 on t1.id đạo diễn = t2.id đạo diễn join bộ phim as t3 on t3.id bộ phim = t1.id sê-ri phim where t3.tiêu đề = "James Bond"
select t2.tên from đạo diễn bởi as t1 join đạo diễn as t2 on t1.id đạo diễn = t2.id đạo diễn join bộ phim as t3 on t3.id bộ phim = t1.id sê-ri phim where t3.tiêu đề = "James Bond"
select t2.tên from đạo diễn as t2 join đạo diễn bởi as t1 on t2.id đạo diễn = t1.id đạo diễn join bộ phim as t3 on t3.id bộ phim = t1.id sê-ri phim where t3.tiêu đề = "James Bond"
select t1.tên from diễn viên as t1 join phân vai as t2 on t1.id diễn viên = t2.id diễn viên join bộ phim as t3 on t3.id bộ phim = t2.id sê-ri phim where t2.vai diễn = "Alan Turing" and t3.tiêu đề = "The Imitation Game"
select t1.tên from diễn viên as t1 join phân vai as t2 on t1.id diễn viên = t2.id diễn viên join bộ phim as t3 on t3.id bộ phim = t2.id sê-ri phim where t2.vai diễn = "Alan Turing" and t3.tiêu đề = "The Imitation Game"
select t2.tên from phân vai as t4 join diễn viên as t2 on t4.id diễn viên = t2.id diễn viên join bộ phim as t1 on t1.id bộ phim = t4.id sê-ri phim join phân vai as t3 on t1.id bộ phim = t3.id sê-ri phim where t3.vai diễn = "Alan Turing" and t1.tiêu đề = "The Imitation Game"
select t2.tên from phân vai as t4 join diễn viên as t2 on t4.id diễn viên = t2.id diễn viên join bộ phim as t1 on t1.id bộ phim = t4.id sê-ri phim where t1.tiêu đề = "The Imitation Game" and t4.vai diễn = "Alan Turing"
select t1.tên from diễn viên as t1 join phân vai as t2 on t1.id diễn viên = t2.id diễn viên join bộ phim as t3 on t3.id bộ phim = t2.id sê-ri phim where t2.vai diễn = "Alan Turing" and t3.tiêu đề = "The Imitation Game"
select t2.thể loại from phân loại as t2 join bộ phim as t1 on t2.id sê-ri phim = t1.id bộ phim where t1.tiêu đề = "Jurassic Park"
select t1.tên from đạo diễn as t1 join đạo diễn bởi as t2 on t1.id đạo diễn = t2.id đạo diễn join bộ phim as t3 on t3.id bộ phim = t2.id sê-ri phim where t3.tiêu đề = "Joy" and t3.năm phát hành = 2015
select t3.tiêu đề from được viết bởi as t2 join diễn viên as t1 on t2.id nhà viết kịch bản = t1.id diễn viên join bộ phim as t3 on t3.id bộ phim = t2.id sê-ri phim where t1.tên = "Matt Damon"
select t3.tiêu đề from được viết bởi as t2 join đạo diễn as t1 on t2.id đạo diễn = t1.id đạo diễn join bộ phim as t3 on t3.id bộ phim = t2.id sê-ri phim where t1.tên = "Woody Allen"
select t3.tiêu đề from phân vai as t2 join diễn viên as t1 on t2.id diễn viên = t1.id diễn viên join bộ phim as t3 on t3.id bộ phim = t2.id sê-ri phim where t1.tên = "Robin Wright"
select t3.tiêu đề from phân vai as t2 join diễn viên as t1 on t2.id diễn viên = t1.id diễn viên join bộ phim as t3 on t3.id bộ phim = t2.id sê-ri phim where t1.tên = "Robin Wright"
select t3.tiêu đề from phân vai as t2 join diễn viên as t1 on t2.id diễn viên = t1.id diễn viên join bộ phim as t3 on t3.id bộ phim = t2.id sê-ri phim where t1.tên = "Robin Wright"
select ngân sách from bộ phim where năm phát hành = 2007 and tiêu đề = "Juno"
select t3.tiêu đề from thể loại as t2 join phân loại as t1 on t2.id thể loại = t1.id thể loại join bộ phim as t3 on t3.id bộ phim = t1.id sê-ri phim where t2.thể loại = "Sci-Fi" and t3.năm phát hành = 2010
select t3.tiêu đề from thể loại as t2 join phân loại as t1 on t2.id thể loại = t1.id thể loại join bộ phim as t3 on t3.id bộ phim = t1.id bộ phim where t2.thể loại = "Sci-Fi" and t3.năm phát hành = 2010
select tên from diễn viên where nơi sinh = "Austin" and năm sinh > 1980
select tên from diễn viên where nơi sinh = "Austin" and năm sinh > 1980
select tên from diễn viên where nơi sinh = "Austin" and năm sinh > 1980
select t3.tiêu đề from đạo diễn as t2 join đạo diễn bởi as t1 on t2.id đạo diễn = t1.id đạo diễn join bộ phim as t3 on t3.id bộ phim = t1.id sê-ri phim where t2.nơi sinh = "Los Angeles"
select tên from diễn viên where nơi sinh = "New York City" and năm sinh = 1984
select t3.tiêu đề from nhãn as t2 join từ khoá as t1 on t2.id từ khoá = t1.id join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim where t1.từ khoá = "nuclear weapons"
select t3.tiêu đề from nhãn as t2 join từ khoá as t1 on t2.id từ khoá = t1.id join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim where t1.từ khoá = "nuclear weapons"
select t1.tiêu đề from bộ phim as t1 join đạo diễn bởi as t2 on t1.id bộ phim = t2.id sê-ri phim join đạo diễn as t3 on t2.id đạo diễn = t3.id đạo diễn where t3.tên = "Alfred Hitchcock"
select t3.tiêu đề from đạo diễn as t2 join đạo diễn bởi as t1 on t2.id đạo diễn = t1.id đạo diễn join bộ phim as t3 on t3.id bộ phim = t1.id sê-ri phim join phân vai as t4 on t4.id sê-ri phim = t3.id bộ phim join diễn viên as t5 on t4.id diễn viên = t5.id diễn viên where t2.tên = "Asghar Farhadi" and t5.tên = "Taraneh Alidoosti"
select t3.tiêu đề from đạo diễn as t2 join đạo diễn bởi as t1 on t2.id đạo diễn = t1.id đạo diễn join bộ phim as t3 on t3.id bộ phim = t1.id sê-ri phim join phân vai as t4 on t4.id sê-ri phim = t3.id bộ phim join diễn viên as t5 on t4.id diễn viên = t5.id diễn viên where t2.tên = "Asghar Farhadi" and t5.tên = "Taraneh Alidoosti"
select t3.tiêu đề from đạo diễn as t2 join đạo diễn bởi as t1 on t2.id đạo diễn = t1.id đạo diễn join bộ phim as t3 on t3.id bộ phim = t1.id sê-ri phim join phân vai as t4 on t3.id bộ phim = t4.id sê-ri phim join diễn viên as t5 on t4.id diễn viên = t5.id diễn viên where t2.tên = "Asghar Farhadi" and t5.tên = "Taraneh Alidoosti"
select t3.tiêu đề from đạo diễn as t2 join đạo diễn bởi as t1 on t2.id đạo diễn = t1.id đạo diễn join bộ phim as t3 on t3.id bộ phim = t1.id sê-ri phim join phân vai as t4 on t4.id sê-ri phim = t3.id bộ phim join diễn viên as t5 on t4.id diễn viên = t5.id diễn viên where t2.tên = "Asghar Farhad" and t5.tên = "Taraneh Alidoosti"
select t3.tiêu đề from đạo diễn as t2 join đạo diễn bởi as t1 on t2.id đạo diễn = t1.id đạo diễn join bộ phim as t3 on t3.id bộ phim = t1.id sê-ri phim where t2.tên = "Shonda Rhimes"
select t1.tên from nhà sản xuất as t2 join được làm bởi as t3 on t2.id nhà sản xuất = t3.id nhà sản xuất join bộ phim as t1 on t1.id bộ phim = t3.id sê-ri phim where t1.tiêu đề = "Scandal" and t3.id sê-ri phim = ( select t2.id sê-ri phim from phân vai as t2 join diễn viên as t1 on t2.id diễn viên = t1.id diễn viên where t1.tên = "Olivia Pope" and t2.vai diễn = 1 )
select t2.tên from được viết bởi as t3 join nhà viết kịch bản as t2 on t3.id nhà viết kịch bản = t2.id nhà viết kịch bản join bộ phim as t1 on t1.id bộ phim = t3.id sê-ri phim where t1.tiêu đề = "The Truman Show"
select t2.tên from được viết bởi as t1 join nhà viết kịch bản as t2 on t1.id nhà viết kịch bản = t2.id nhà viết kịch bản join bộ phim as t3 on t3.id bộ phim = t1.id sê-ri phim where t3.tiêu đề = "The Truman Show"
select t3.tiêu đề from phân vai as t2 join diễn viên as t1 on t2.id diễn viên = t1.id diễn viên join bộ phim as t3 on t3.id bộ phim = t2.id sê-ri phim where t1.tên = "Scott Foley"
select t3.tiêu đề from phân vai as t2 join diễn viên as t1 on t2.id diễn viên = t1.id diễn viên join bộ phim as t3 on t3.id bộ phim = t2.id sê-ri phim where t1.tên = "Scott Foley"
select t2.tên from phân vai as t1 join diễn viên as t2 on t1.id diễn viên = t2.id diễn viên join bộ phim as t3 on t3.id bộ phim = t1.id sê-ri phim where t2.tên = "Kate Winslet"
select t2.tên from đạo diễn as t2 join đạo diễn bởi as t1 on t2.id đạo diễn = t1.id đạo diễn join bộ phim as t3 on t3.id bộ phim = t1.id sê-ri phim join phân vai as t4 on t3.id bộ phim = t4.id sê-ri phim join diễn viên as t5 on t4.id diễn viên = t5.id diễn viên where t5.tên = "Kate Winslet"
select t2.tên from đạo diễn bởi as t1 join đạo diễn as t2 on t1.id đạo diễn = t2.id đạo diễn join bộ phim as t3 on t3.id bộ phim = t1.id sê-ri phim where t3.năm phát hành = 2013 and t3.tiêu đề = "Political Square"
select tên from diễn viên where nơi sinh = "Austin" and giới tính = "female"
select tên from diễn viên where quốc tịch = "Italy" and năm sinh > 1980
select tên from diễn viên where nơi sinh = "New York City" and năm sinh > 1980 and giới tính = "female"
select t1.tên from diễn viên as t1 join phân vai as t2 on t1.id diễn viên = t2.id diễn viên join bộ phim as t3 on t3.id bộ phim = t2.id sê-ri phim where t3.tiêu đề = "Saving Private Ryan" and t1.giới tính = "female"
select tên from đạo diễn where quốc tịch = "Afghanistan"
select t2.tên from phân vai as t1 join diễn viên as t2 on t1.id diễn viên = t2.id diễn viên join bộ phim as t3 on t3.id bộ phim = t1.id sê-ri phim where t3.tiêu đề = "The Women Warriors"
select t1.tên from diễn viên as t1 join phân vai as t2 on t1.id diễn viên = t2.id diễn viên join bản quyền as t3 on t2.id sê-ri phim = t3.id sê-ri phim join bộ phim as t4 on t4.id bộ phim = t3.id bộ phim where t1.quốc tịch = "Canada" and t4.tiêu đề = "James Bond"
select t3.tiêu đề from phân vai as t2 join diễn viên as t1 on t2.id diễn viên = t1.id diễn viên join bộ phim as t3 on t3.id bộ phim = t2.id sê-ri phim where t1.tên = "Rowan Atkinson" and t2.vai diễn = "Nigel Bean"
select t2.nơi sinh from đạo diễn as t2 join đạo diễn bởi as t1 on t2.id đạo diễn = t1.id đạo diễn join bộ phim as t3 on t3.id bộ phim = t1.id sê-ri phim where t3.tiêu đề = "The Past"
select t1.tên from phân vai as t2 join diễn viên as t1 on t2.id diễn viên = t1.id diễn viên join bộ phim as t3 on t3.id bộ phim = t2.id sê-ri phim where t2.vai diễn = "Godfather"
select t3.thể loại from đạo diễn as t2 join đạo diễn bởi as t1 on t2.id đạo diễn = t1.id đạo diễn join phim truyền hình nhiều tập as t3 on t3.id sê-ri phim = t1.id sê-ri phim join phân loại as t4 on t3.id sê-ri phim = t4.id sê-ri phim join thể loại as t5 on t4.id thể loại = t5.id thể loại where t2.tên = "Asghar Farhadi"
select t3.tiêu đề from phân vai as t2 join diễn viên as t1 on t2.id diễn viên = t1.id diễn viên join bộ phim as t3 on t3.id bộ phim = t2.id sê-ri phim where t1.tên = "Daffy Duck"
select t2.vai diễn from phân vai as t2 join diễn viên as t1 on t2.id diễn viên = t1.id diễn viên join bộ phim as t3 on t3.id bộ phim = t2.id sê-ri phim where t3.tiêu đề = "The Shadow" and t2.vai diễn = "chính"
select t3.tên from phân loại as t2 join thể loại as t1 on t2.id thể loại = t1.id thể loại join bộ phim as t3 on t3.id bộ phim = t2.id sê-ri phim where t1.thể loại = "Nuclear Weapon"
select count ( distinct t3.tiêu đề ) from phân vai as t2 join diễn viên as t1 on t2.id diễn viên = t1.id diễn viên join bộ phim as t3 on t3.id bộ phim = t2.id sê-ri phim where t1.tên = "Jennifer Aniston" and t3.năm phát hành > 2010
select count ( distinct t3.tên ) from bộ phim as t1 join phân vai as t2 on t1.id bộ phim = t2.id sê-ri phim join diễn viên as t3 on t2.id diễn viên = t3.id diễn viên where t1.tiêu đề = "Ryan's Hero"
select count ( * ) from phân vai as t2 join diễn viên as t1 on t2.id diễn viên = t1.id diễn viên join bộ phim as t3 on t3.id bộ phim = t2.id sê-ri phim where t3.tiêu đề = "Saving Private Ryan"
select count ( distinct t1.tiêu đề ) from bộ phim as t1 join đạo diễn bởi as t2 on t1.id bộ phim = t2.id sê-ri phim join đạo diễn as t3 on t2.id đạo diễn = t3.id đạo diễn where t3.tên = "Steven Spielberg"
select count ( distinct tiêu đề ) from bộ phim where năm phát hành = 2013
select count ( distinct tiêu đề ) from bộ phim where năm phát hành = 2013
select t1.năm sinh , count ( t1.năm sinh ) from đạo diễn as t1 join đạo diễn bởi as t2 on t1.id đạo diễn = t2.id đạo diễn join bộ phim as t3 on t3.id bộ phim = t2.id sê-ri phim where t1.tên = "Woody Allen" group by t1.năm sinh
select count ( distinct t3.tiêu đề ) from phân vai as t2 join diễn viên as t1 on t2.id diễn viên = t1.id diễn viên join bộ phim as t3 on t3.id bộ phim = t2.id sê-ri phim where t1.tên = "Shahab Hosseini"
select count ( distinct t3.tiêu đề ) from được viết bởi as t2 join nhà viết kịch bản as t1 on t2.id nhà viết kịch bản = t1.id nhà viết kịch bản join bộ phim as t3 on t3.id bộ phim = t2.id sê-ri phim where t1.tên = "Shahab Hosseini"
select count ( distinct t3.tiêu đề ) from phân vai as t4 join diễn viên as t1 on t4.id diễn viên = t1.id diễn viên join bộ phim as t3 on t3.id bộ phim = t4.id sê-ri phim join đạo diễn bởi as t2 on t2.id sê-ri phim = t3.id bộ phim join đạo diễn as t5 on t2.id đạo diễn = t5.id đạo diễn where t5.tên = "Shahab Hosseini"
select
select count ( distinct tên ) from diễn viên where nơi sinh = "Los Angeles" and năm sinh > 2000
select count ( distinct t3.tiêu đề ) from phân vai as t2 join diễn viên as t1 on t2.id diễn viên = t1.id diễn viên join bộ phim as t3 on t3.id bộ phim = t2.id sê-ri phim where t1.tên = "Humphrey Bogart" and t3.năm phát hành < 1942
select t3.năm phát hành , count ( t3.năm phát hành ) from phân vai as t1 join diễn viên as t2 on t1.id diễn viên = t2.id diễn viên join bộ phim as t3 on t3.id bộ phim = t1.id sê-ri phim where t2.tên = "Brad Pitt" group by t3.năm phát hành
select count ( distinct t3.tiêu đề ) from nhãn as t1 join từ khoá as t2 on t1.id từ khoá = t2.id join bộ phim as t3 on t1.id sê-ri phim = t3.id bộ phim where t2.từ khoá = "Iraq War" and t3.năm phát hành = 2015
select count ( distinct t3.tiêu đề ) from thể loại as t2 join phân loại as t1 on t2.id thể loại = t1.id thể loại join bộ phim as t3 on t3.id bộ phim = t1.id sê-ri phim where t2.thể loại = "Drama" and t3.năm phát hành > 1990
select
select count ( distinct t3.tiêu đề ) from đạo diễn as t2 join đạo diễn bởi as t1 on t2.id đạo diễn = t1.id đạo diễn join bộ phim as t3 on t3.id bộ phim = t1.id sê-ri phim where t2.tên = "Quentin Tarantino" and t3.năm phát hành < 2010
select count ( distinct t3.tiêu đề ) from đạo diễn as t2 join đạo diễn bởi as t1 on t2.id đạo diễn = t1.id đạo diễn join bộ phim as t3 on t3.id bộ phim = t1.id sê-ri phim where t2.tên = "Quentin Tarantino" and t3.năm phát hành < 2002 and t3.năm phát hành > 2010
select count ( distinct tên ) from diễn viên where nơi sinh = "New York City" and năm sinh > 1980 and giới tính = "female"
select count ( distinct t2.tên ) from đạo diễn as t3 join đạo diễn bởi as t1 on t3.id đạo diễn = t1.id đạo diễn join bộ phim as t4 on t4.id bộ phim = t1.id sê-ri phim join diễn viên as t2 on t4.id bộ phim = t2.id sê-ri phim where t3.quốc tịch = "Iran" and t3.tên = "Jim Jarmusch"
select count ( distinct t1.tên ) from diễn viên as t1 join phân vai as t2 on t1.id diễn viên = t2.id diễn viên join bộ phim as t3 on t3.id bộ phim = t2.id sê-ri phim where t1.quốc tịch = "China" and t3.tiêu đề = "Clock Tower 3"
select t3.tiêu đề from phân vai as t2 join diễn viên as t1 on t2.id diễn viên = t1.id diễn viên join bộ phim as t3 on t3.id bộ phim = t2.id sê-ri phim where t1.tên = "Woody Strode" and t2.vai diễn = "Jason Robards"
select t4.tiêu đề from phân vai as t5 join diễn viên as t1 on t5.id diễn viên = t1.id diễn viên join bộ phim as t4 on t4.id bộ phim = t5.id sê-ri phim join phân vai as t3 on t4.id bộ phim = t3.id sê-ri phim join diễn viên as t2 on t3.id diễn viên = t2.id diễn viên where t1.tên = "Woody Strode" and t2.tên = "Jason Robards"
select t3.tiêu đề from phân vai as t2 join diễn viên as t1 on t2.id diễn viên = t1.id diễn viên join bộ phim as t3 on t3.id bộ phim = t2.id sê-ri phim where t1.tên = "Woody Strode" intersect select t3.tiêu đề from phân vai as t2 join diễn viên as t1 on t2.id diễn viên = t1.id diễn viên join bộ phim as t3 on t3.id bộ phim = t2.id sê-ri phim where t1.tên = "Jason Robards"
select t3.tiêu đề from phân vai as t4 join diễn viên as t2 on t4.id diễn viên = t2.id diễn viên join bộ phim as t3 on t3.id bộ phim = t4.id sê-ri phim join phân vai as t5 on t3.id bộ phim = t5.id sê-ri phim join diễn viên as t1 on t5.id diễn viên = t1.id diễn viên join diễn viên as t3 on t3.id diễn viên = t4.id diễn viên where t2.tên = "Woody Strode" and t1.tên = "Jason Robards"
select t2.tên from phân vai as t3 join diễn viên as t2 on t3.id diễn viên = t2.id diễn viên join bộ phim as t1 on t1.id bộ phim = t3.id sê-ri phim where t1.tiêu đề = "Tom Hanks"
select t3.tiêu đề from đạo diễn bởi as t2 join đạo diễn as t1 on t2.id đạo diễn = t1.id đạo diễn join bộ phim as t3 on t3.id bộ phim = t2.id sê-ri phim where t3.tiêu đề = "The Road to Nowhere"
select t3.tiêu đề from thể loại as t2 join phân loại as t1 on t2.id thể loại = t1.id thể loại join bộ phim as t3 on t3.id bộ phim = t1.id sê-ri phim group by t3.tiêu đề order by count ( distinct t2.thể loại ) desc limit 1
select t3.tiêu đề from diễn viên as t1 join phân vai as t2 on t1.id diễn viên = t2.id diễn viên join bộ phim as t3 on t3.id bộ phim = t2.id sê-ri phim where t1.quốc tịch = "China" group by t3.tiêu đề order by count ( * ) desc limit 1
select t3.tên from đạo diễn as t2 join đạo diễn bởi as t1 on t2.id đạo diễn = t1.id đạo diễn join phim truyền hình nhiều tập as t3 on t3.id sê-ri phim truyền hình = t1.id sê-ri phim join phân vai as t4 on t4.id sê-ri phim = t3.id sê-ri phim join diễn viên as t5 on t4.id diễn viên = t5.id diễn viên where t2.tên = "Quentin Tarantino" order by t3.năm phát hành desc limit 1
select t3.tiêu đề , t3.ngân sách from đạo diễn as t2 join đạo diễn bởi as t1 on t2.id đạo diễn = t1.id đạo diễn join bộ phim as t3 on t3.id bộ phim = t1.id sê-ri phim where t2.tên = "Quentin Tarantino" order by t3.năm phát hành desc limit 1
select t3.tiêu đề from đạo diễn bởi as t2 join đạo diễn as t1 on t2.id đạo diễn = t1.id đạo diễn join bộ phim as t3 on t3.id bộ phim = t2.id sê-ri phim where t1.tên = "Jim Jarmusch" order by t3.năm phát hành desc limit 1
select t2.tên from đạo diễn as t1 join đạo diễn bởi as t2 on t1.id đạo diễn = t2.id đạo diễn join bộ phim as t3 on t3.id bộ phim = t2.id sê-ri phim group by t2.tên order by count ( * ) desc limit 1
select t3.tiêu đề from phân vai as t2 join diễn viên as t1 on t2.id diễn viên = t1.id diễn viên join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim where t1.tên = "Gabriele Ferzetti" order by t3.năm phát hành desc limit 1
select chi tiết khách hàng from khách hàng order by chi tiết khách hàng
select chi tiết khách hàng from khách hàng order by chi tiết khách hàng
select distinct mã loại chính sách from chính sách as t1 join khách hàng as t2 on t1.id khách hàng = t2.id khách hàng where t2.chi tiết khách hàng = "Dayana Robel"
select distinct t2.mã loại chính sách from khách hàng as t1 join chính sách as t2 on t1.id khách hàng = t2.id khách hàng where t1.chi tiết khách hàng = "Dayana Robel"
select mã loại chính sách from chính sách group by mã loại chính sách order by count ( * ) desc limit 1
select mã loại chính sách from chính sách group by mã loại chính sách order by count ( * ) desc limit 1
select mã loại chính sách from chính sách group by mã loại chính sách having count ( * ) > 2
select mã loại chính sách from chính sách group by mã loại chính sách having count ( * ) > 2
select sum ( số tiền được trả ) , avg ( số tiền được trả ) from tiêu đề của yêu cầu
select sum ( số tiền được trả ) , avg ( số tiền được trả ) from tiêu đề của yêu cầu
select sum ( t1.số tiền được yêu cầu ) from tiêu đề của yêu cầu as t1 join tài liệu của yêu cầu as t2 on t1.id tiêu đề của yêu cầu = t2.id yêu cầu order by t2.ngày tạo ra limit 1
select sum ( t2.số tiền được yêu cầu ) from tiêu đề của yêu cầu as t1 join tài liệu của yêu cầu as t2 on t1.id tiêu đề của yêu cầu = t2.id yêu cầu order by t2.ngày tạo ra limit 1
select t3.chi tiết khách hàng from tiêu đề của yêu cầu as t1 join chính sách as t2 on t1.id chính sách = t2.id chính sách join khách hàng as t3 on t2.id khách hàng = t3.id khách hàng where t1.số tiền được yêu cầu = ( select max ( số tiền được yêu cầu ) from tiêu đề của yêu cầu )
select t3.chi tiết khách hàng from tiêu đề của yêu cầu as t1 join chính sách as t2 on t1.id chính sách = t2.id chính sách join khách hàng as t3 on t2.id khách hàng = t3.id khách hàng where t1.số tiền được yêu cầu = ( select max ( số tiền được yêu cầu ) from tiêu đề của yêu cầu )
select t3.chi tiết khách hàng from tiêu đề của yêu cầu as t1 join chính sách as t2 on t1.id chính sách = t2.id chính sách join khách hàng as t3 on t2.id khách hàng = t3.id khách hàng where t1.số tiền được trả = ( select min ( số tiền được trả ) from tiêu đề của yêu cầu )
select t3.chi tiết khách hàng from tiêu đề của yêu cầu as t1 join chính sách as t2 on t1.id chính sách = t2.id chính sách join khách hàng as t3 on t2.id khách hàng = t3.id khách hàng where t1.số tiền được trả = ( select min ( số tiền được trả ) from tiêu đề của yêu cầu )
select chi tiết khách hàng from khách hàng except select t2.chi tiết khách hàng from chính sách as t1 join khách hàng as t2 on t1.id khách hàng = t2.id khách hàng
select chi tiết khách hàng from khách hàng except select t2.chi tiết khách hàng from chính sách as t1 join khách hàng as t2 on t1.id khách hàng = t2.id khách hàng
select count ( * ) from giai đoạn xử lý yêu cầu
select count ( distinct id giai đoạn xử lý yêu cầu ) from xử lý yêu cầu
select t1.mô tả về tình trạng yêu cầu from giai đoạn xử lý yêu cầu as t1 join xử lý yêu cầu as t2 on t1.id giai đoạn yêu cầu = t2.id giai đoạn yêu cầu group by t1.id giai đoạn yêu cầu order by count ( * ) desc limit 1
select t1.tên tình trạng yêu cầu from giai đoạn xử lý yêu cầu as t1 join xử lý yêu cầu as t2 on t1.id giai đoạn yêu cầu = t2.id giai đoạn xử lý yêu cầu group by t1.id giai đoạn yêu cầu order by count ( * ) desc limit 1
select chi tiết khách hàng from khách hàng where chi tiết khách hàng like "%Diana%"
select chi tiết khách hàng from khách hàng where chi tiết khách hàng like "%Diana%"
select distinct t2.chi tiết khách hàng from chính sách as t1 join khách hàng as t2 on t1.id khách hàng = t2.id khách hàng where t1.mã loại chính sách = "Delegation"
select t2.chi tiết khách hàng from chính sách as t1 join khách hàng as t2 on t1.id khách hàng = t2.id khách hàng where t1.mã loại chính sách = "Auth"
select distinct t2.chi tiết khách hàng from chính sách as t1 join khách hàng as t2 on t1.id khách hàng = t2.id khách hàng where t1.mã loại chính sách = "Delegation" or t1.mã loại chính sách = "Unified"
select distinct t2.chi tiết khách hàng from chính sách as t1 join khách hàng as t2 on t1.id khách hàng = t2.id khách hàng where t1.mã loại chính sách = "Unified" or t1.mã loại chính sách = "Right"
select * from khách hàng union select * from nhân viên
select chi tiết khách hàng from khách hàng union select chi tiết nhân viên from nhân viên
select mã loại chính sách , count ( * ) from chính sách group by mã loại chính sách
select mã loại chính sách , count ( * ) from chính sách group by mã loại chính sách
select t2.chi tiết khách hàng from chính sách as t1 join khách hàng as t2 on t1.id khách hàng = t2.id khách hàng group by t2.chi tiết khách hàng order by count ( * ) desc limit 1
select t2.chi tiết khách hàng from chính sách as t1 join khách hàng as t2 on t1.id khách hàng = t2.id khách hàng group by t2.chi tiết khách hàng order by count ( * ) desc limit 1
select mô tả về tình trạng yêu cầu from giai đoạn xử lý yêu cầu where tên tình trạng yêu cầu = "Open"
select mô tả về tình trạng yêu cầu from giai đoạn xử lý yêu cầu where tên tình trạng yêu cầu = "Open"
select count ( distinct mã kết quả của yêu cầu ) from xử lý yêu cầu
select count ( distinct mã kết quả của yêu cầu ) from xử lý yêu cầu
select t2.chi tiết khách hàng from chính sách as t1 join khách hàng as t2 on t1.id khách hàng = t2.id khách hàng order by t1.ngày bắt đầu desc limit 1
select t3.chi tiết khách hàng from chính sách as t1 join khách hàng as t3 on t1.id khách hàng = t3.id khách hàng where t1.ngày bắt đầu = ( select max ( ngày bắt đầu ) from chính sách )
select t1.chi tiết sự kiện from sự kiện as t1 join dịch vụ as t2 on t1.id dịch vụ = t2.id dịch vụ where t2.mã loại dịch vụ = "Wedding"
select t1.id sự kiện , t2.chi tiết sự kiện from người tham gia sự kiện as t1 join sự kiện as t2 on t1.id sự kiện = t2.id sự kiện group by t1.id sự kiện having count ( * ) > 1
select t1.id người tham gia , t1.mã loại người tham gia , count ( * ) from người tham gia as t1 join người tham gia sự kiện as t2 on t1.id người tham gia = t2.id người tham gia group by t1.id người tham gia
select id người tham gia , mã loại người tham gia , chi tiết người tham gia from người tham gia
select count ( * ) from người tham gia where mã loại người tham gia = "Organizer"
select mã loại dịch vụ from dịch vụ order by mã loại dịch vụ
select id dịch vụ , chi tiết sự kiện from sự kiện
select count ( * ) from người tham gia sự kiện as t1 join sự kiện as t2 on t1.id sự kiện = t2.id sự kiện join người tham gia as t3 on t1.id người tham gia = t3.id người tham gia where t3.chi tiết người tham gia like "%Dr.%"
select mã loại người tham gia from người tham gia group by mã loại người tham gia order by count ( * ) desc limit 1
select t1.id dịch vụ , t2.mã loại người tham gia from sự kiện as t1 join người tham gia sự kiện as t2 on t1.id sự kiện = t2.id sự kiện group by t1.id dịch vụ order by count ( * ) limit 1
select id sự kiện from người tham gia sự kiện group by id sự kiện order by count ( * ) desc limit 1
select id sự kiện from sự kiện except select t1.id sự kiện from người tham gia sự kiện as t1 join người tham gia as t2 on t1.id người tham gia = t2.id người tham gia where t2.chi tiết người tham gia = "Kenyatta Kuhn"
select t1.mã loại dịch vụ from dịch vụ as t1 join sự kiện as t2 on t1.id dịch vụ = t2.id dịch vụ where t2.chi tiết sự kiện = "Success" intersect select t1.mã loại dịch vụ from dịch vụ as t1 join sự kiện as t2 on t1.id dịch vụ = t2.id dịch vụ where t2.chi tiết sự kiện = "Failure"
select count ( * ) from sự kiện where id sự kiện not in ( select id sự kiện from người tham gia sự kiện )
select count ( distinct id người tham gia ) from người tham gia sự kiện
select count ( * ) from kỹ thuật viên
select count ( * ) from kỹ thuật viên
select tên from kỹ thuật viên order by tuổi asc
select tên from kỹ thuật viên order by tuổi asc
select đội , năm bắt đầu from kỹ thuật viên
select đội , năm bắt đầu from kỹ thuật viên
select tên from kỹ thuật viên where đội != "NYY"
select tên from kỹ thuật viên where đội != "NYY"
select tên from kỹ thuật viên where tuổi = 36 or tuổi = 37
select tên from kỹ thuật viên where tuổi = 36 or tuổi = 37
select năm bắt đầu from kỹ thuật viên order by tuổi desc limit 1
select năm bắt đầu from kỹ thuật viên order by tuổi desc limit 1
select đội , count ( * ) from kỹ thuật viên group by đội
select đội , count ( * ) from kỹ thuật viên group by đội
select đội from kỹ thuật viên group by đội order by count ( * ) desc limit 1
select đội from kỹ thuật viên group by đội order by count ( * ) desc limit 1
select đội from kỹ thuật viên group by đội having count ( * ) >= 2
select đội from kỹ thuật viên group by đội having count ( * ) >= 2
select t2.tên , t3.loạt máy from phân công sửa chữa as t1 join kỹ thuật viên as t2 on t1.id kỹ thuật viên = t2.id kỹ thuật viên join máy móc as t3 on t1.id máy = t3.id máy
select t3.tên , t2.loạt máy from phân công sửa chữa as t1 join máy móc as t2 on t1.id máy = t2.id máy join kỹ thuật viên as t3 on t1.id kỹ thuật viên = t3.id kỹ thuật viên
select t3.tên from phân công sửa chữa as t1 join máy móc as t2 on t1.id máy = t2.id máy join kỹ thuật viên as t3 on t1.id kỹ thuật viên = t3.id kỹ thuật viên order by t2.xếp hạng chất lượng
select t3.tên from phân công sửa chữa as t1 join máy móc as t2 on t1.id máy = t2.id máy join kỹ thuật viên as t3 on t1.id kỹ thuật viên = t3.id kỹ thuật viên order by t2.xếp hạng chất lượng
select t3.tên from phân công sửa chữa as t1 join máy móc as t2 on t1.id máy = t2.id máy join kỹ thuật viên as t3 on t1.id kỹ thuật viên = t3.id kỹ thuật viên where t2.điểm giá trị > 70
select t3.tên from máy móc as t1 join phân công sửa chữa as t2 on t1.id máy = t2.id máy join kỹ thuật viên as t3 on t2.id kỹ thuật viên = t3.id kỹ thuật viên where t1.điểm giá trị > 70
select t2.tên , count ( * ) from phân công sửa chữa as t1 join kỹ thuật viên as t2 on t1.id kỹ thuật viên = t2.id kỹ thuật viên group by t2.tên
select t2.tên , count ( * ) from phân công sửa chữa as t1 join kỹ thuật viên as t2 on t1.id kỹ thuật viên = t2.id kỹ thuật viên group by t2.tên
select tên from kỹ thuật viên where id kỹ thuật viên not in ( select id kỹ thuật viên from phân công sửa chữa )
select tên from kỹ thuật viên where id kỹ thuật viên not in ( select id kỹ thuật viên from phân công sửa chữa )
select năm bắt đầu from kỹ thuật viên where đội = "CLE" intersect select năm bắt đầu from kỹ thuật viên where đội = "CWS"
select năm bắt đầu from kỹ thuật viên where đội = "CLE" intersect select năm bắt đầu from kỹ thuật viên where đội = "CWS"
select count ( * ) from ống kính máy ảnh where độ dài tiêu cự theo mm > 15
select nhãn hiệu , tên from ống kính máy ảnh order by khẩu độ tối đa desc
select id , màu sắc , tên from ảnh
select max ( chiều cao ) , avg ( chiều cao ) from núi
select avg ( độ nổi ) from núi where quốc gia = "Morocco"
select tên , chiều cao , độ nổi from núi where dãy núi != "Aberdare Range"
select t1.id , t1.tên from núi as t1 join ảnh as t2 on t1.id = t2.id núi where t1.chiều cao > 4000
select t1.tên , t1.id from núi as t1 join ảnh as t2 on t1.id = t2.id núi group by t1.id having count ( * ) >= 2
select t2.tên from núi as t1 join ống kính máy ảnh as t2 on t1.id ống kính máy ảnh = t2.id order by t1.chiều cao desc limit 1
select t1.tên from ảnh as t1 join ống kính máy ảnh as t2 on t1.id ống kính máy ảnh = t2.id where t2.nhãn hiệu = "Sigma" or t2.nhãn hiệu = "Olympus"
select count ( distinct nhãn hiệu ) from ống kính máy ảnh
select count ( * ) from ống kính máy ảnh where id not in ( select id ống kính máy ảnh from ảnh )
select count ( distinct t1.tên ) from ống kính máy ảnh as t1 join ảnh as t2 on t1.id = t2.id ống kính máy ảnh join núi as t3 on t2.id núi = t3.id where t3.quốc gia = "Ethiopia"
select t2.nhãn hiệu from núi as t1 join ống kính máy ảnh as t2 on t1.id ống kính máy ảnh = t2.id join ảnh as t3 on t2.id = t3.id ống kính máy ảnh where t1.dãy núi = "Toubkal Atlas" and t1.dãy núi = "Lasta Massif"
select tên , độ nổi from núi except select t1.tên , t1.độ nổi from núi as t1 join ảnh as t2 on t1.id = t2.id núi join ống kính máy ảnh as t3 on t2.id ống kính máy ảnh = t3.id where t3.nhãn hiệu = "Sigma"
select tên from ống kính máy ảnh where tên like "%Digital%"
select t2.tên , count ( * ) from ảnh as t1 join ống kính máy ảnh as t2 on t1.id ống kính máy ảnh = t2.id group by t2.tên order by count ( * )
select count ( * ) from ban nhạc
select count ( * ) from ban nhạc
select distinct hãng thu âm from album
select distinct hãng thu âm from album
select tiêu đề from album where năm = 2012
select tiêu đề from album where năm = 2012
select t2.vị trí trên sân khấu from ban nhạc as t1 join buổi biểu diễn as t2 on t1.id = t2.nghệ sĩ trong ban nhạc where t1.tên = "Solveig"
select vị trí trên sân khấu from buổi biểu diễn as t1 join ban nhạc as t2 on t1.nghệ sĩ trong ban nhạc = t2.id where t2.tên = "Solveig"
select count ( * ) from bài hát
select count ( * ) from bài hát
select t3.tiêu đề from buổi biểu diễn as t1 join ban nhạc as t2 on t1.nghệ sĩ trong ban nhạc = t2.id join bài hát as t3 on t3.id bài hát = t1.id bài hát where t2.họ = "Heilo"
select t3.tiêu đề from buổi biểu diễn as t1 join ban nhạc as t2 on t1.nghệ sĩ trong ban nhạc = t2.id join bài hát as t3 on t3.id bài hát = t1.id bài hát where t2.họ = "Heilo"
select count ( * ) from buổi biểu diễn as t1 join ban nhạc as t2 on t1.nghệ sĩ trong ban nhạc = t2.id join bài hát as t3 on t3.id bài hát = t1.id bài hát where t3.tiêu đề = "Flash"
select count ( * ) from buổi biểu diễn as t1 join ban nhạc as t2 on t1.nghệ sĩ trong ban nhạc = t2.id where t1.id bài hát in ( select id bài hát from bài hát where tiêu đề = "Flash" )
select t3.tiêu đề from buổi biểu diễn as t1 join ban nhạc as t2 on t1.nghệ sĩ trong ban nhạc = t2.id join bài hát as t3 on t3.id bài hát = t1.id bài hát where t2.tên = "Marianne"
select t3.tiêu đề from buổi biểu diễn as t1 join ban nhạc as t2 on t1.nghệ sĩ trong ban nhạc = t2.id join bài hát as t3 on t3.id bài hát = t1.id bài hát where t2.tên = "Marianne"
select t1.tên , t1.họ from ban nhạc as t1 join buổi biểu diễn as t2 on t1.id = t2.nghệ sĩ trong ban nhạc join bài hát as t3 on t2.id bài hát = t3.id bài hát where t3.tiêu đề = "Badlands"
select t2.tên , t2.họ from buổi biểu diễn as t1 join ban nhạc as t2 on t1.nghệ sĩ trong ban nhạc = t2.id join bài hát as t3 on t3.id bài hát = t1.id bài hát where t3.tiêu đề = "Badlands"
select t2.tên , t2.họ from buổi biểu diễn as t1 join ban nhạc as t2 on t1.nghệ sĩ trong ban nhạc = t2.id join bài hát as t3 on t3.id bài hát = t1.id bài hát where t3.tiêu đề = "Badlands" and t1.vị trí trên sân khấu = "back"
select t2.tên , t2.họ from buổi biểu diễn as t1 join ban nhạc as t2 on t1.nghệ sĩ trong ban nhạc = t2.id join bài hát as t3 on t3.id bài hát = t1.id bài hát where t3.tiêu đề = "Badlands" and t1.vị trí trên sân khấu = "back"
select count ( distinct hãng thu âm ) from album
select count ( distinct hãng thu âm ) from album
select hãng thu âm from album group by hãng thu âm order by count ( * ) desc limit 1
select hãng thu âm from album group by hãng thu âm order by count ( * ) desc limit 1
select t2.họ from nhạc cụ as t1 join ban nhạc as t2 on t1.id nghệ sĩ trong ban nhạc = t2.id join bài hát as t3 on t3.id bài hát = t1.id bài hát group by t2.họ order by count ( * ) desc limit 1
select t1.họ from ban nhạc as t1 join nhạc cụ as t2 on t1.id = t2.id nghệ sĩ trong ban nhạc group by t2.id nghệ sĩ trong ban nhạc order by count ( * ) desc limit 1
select t2.họ from buổi biểu diễn as t1 join ban nhạc as t2 on t1.nghệ sĩ trong ban nhạc = t2.id join bài hát as t3 on t3.id bài hát = t1.id bài hát where t1.vị trí trên sân khấu = "back" group by t2.họ order by count ( * ) desc limit 1
select t2.họ from buổi biểu diễn as t1 join ban nhạc as t2 on t1.nghệ sĩ trong ban nhạc = t2.id where vị trí trên sân khấu = "back" group by t2.họ order by count ( * ) desc limit 1
select tiêu đề from bài hát where tiêu đề like "%the%"
select tiêu đề from bài hát where tiêu đề like "%the%"
select distinct nhạc cụ from nhạc cụ
select distinct nhạc cụ from nhạc cụ
select nhạc cụ from nhạc cụ as t1 join ban nhạc as t2 on t1.id nghệ sĩ trong ban nhạc = t2.id where t2.họ = "Heilo" and t1.id bài hát in ( select t1.id bài hát from buổi biểu diễn as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where t2.tiêu đề = "Le Pop" )
select t4.nhạc cụ from buổi biểu diễn as t1 join ban nhạc as t2 on t1.nghệ sĩ trong ban nhạc = t2.id join bài hát as t3 on t3.id bài hát = t1.id bài hát join nhạc cụ as t4 on t4.id bài hát = t3.id bài hát and t4.id nghệ sĩ trong ban nhạc = t2.id where t2.họ = "Heilo" and t3.tiêu đề = "Le Pop"
select nhạc cụ from nhạc cụ group by nhạc cụ order by count ( * ) desc limit 1
select nhạc cụ from nhạc cụ group by nhạc cụ order by count ( * ) desc limit 1
select count ( * ) from nhạc cụ where nhạc cụ = "drums"
select count ( * ) from nhạc cụ where nhạc cụ = "drums"
select t3.nhạc cụ from bài hát as t1 join nhạc cụ as t2 on t1.id bài hát = t2.id bài hát join ban nhạc as t3 on t2.id nghệ sĩ trong ban nhạc = t3.id where t1.tiêu đề = "Le Pop"
select nhạc cụ from nhạc cụ as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where tiêu đề = "Le Pop"
select count ( * ) from nhạc cụ as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát join ban nhạc as t3 on t1.id nghệ sĩ trong ban nhạc = t3.id where t2.tiêu đề = "Le Pop"
select count ( distinct nhạc cụ ) from nhạc cụ as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where t2.tiêu đề = "Le Pop"
select count ( distinct nhạc cụ ) from nhạc cụ as t1 join ban nhạc as t2 on t1.id nghệ sĩ trong ban nhạc = t2.id where t2.họ = "Heilo"
select count ( distinct nhạc cụ ) from nhạc cụ as t1 join ban nhạc as t2 on t1.id nghệ sĩ trong ban nhạc = t2.id where t2.họ = "Heilo"
select t3.nhạc cụ from buổi biểu diễn as t1 join ban nhạc as t2 on t1.nghệ sĩ trong ban nhạc = t2.id join nhạc cụ as t3 on t3.id bài hát = t1.id bài hát and t2.họ = "Heilo"
select t3.nhạc cụ from nhạc cụ as t3 join ban nhạc as t2 on t3.id nghệ sĩ trong ban nhạc = t2.id where t2.họ = "Heilo"
select t1.tiêu đề from bài hát as t1 join giọng hát as t2 on t1.id bài hát = t2.id bài hát group by t2.id bài hát order by count ( * ) desc limit 1
select t1.tiêu đề from bài hát as t1 join giọng hát as t2 on t1.id bài hát = t2.id bài hát group by t2.id bài hát order by count ( * ) desc limit 1
select loại from giọng hát group by loại order by count ( * ) desc limit 1
select loại from giọng hát group by loại order by count ( * ) desc limit 1
select loại from giọng hát as t1 join ban nhạc as t2 on t1.nghệ sĩ trong ban nhạc = t2.id where t2.họ = "Heilo" group by loại order by count ( * ) desc limit 1
select loại from giọng hát as t1 join ban nhạc as t2 on t1.nghệ sĩ trong ban nhạc = t2.id where t2.họ = "Heilo" group by loại order by count ( * ) desc limit 1
select loại from giọng hát as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where tiêu đề = "Le Pop"
select loại from giọng hát as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where t2.tiêu đề = "Le Pop"
select count ( * ) from giọng hát as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where t2.tiêu đề = "Demon Kitty Rag"
select count ( * ) from giọng hát as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where tiêu đề = "Demon Kitty Rag"
select count ( distinct tiêu đề ) from giọng hát as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where loại = "lead"
select count ( distinct tiêu đề ) from giọng hát as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where loại = "lead"
select loại from giọng hát as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát join ban nhạc as t3 on t1.nghệ sĩ trong ban nhạc = t3.id where t3.tên = "Solveig" and t2.tiêu đề = "A Bar In Amsterdam"
select t3.loại from buổi biểu diễn as t1 join ban nhạc as t2 on t1.nghệ sĩ trong ban nhạc = t2.id join giọng hát as t3 on t1.nghệ sĩ trong ban nhạc = t3.nghệ sĩ trong ban nhạc where t2.tên = "Solveig" and t3.tiêu đề = "A Bar In Amsterdam"
select distinct tiêu đề from giọng hát as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát except select t2.tiêu đề from giọng hát as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where loại = "lead"
select distinct tiêu đề from giọng hát as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát except select t2.tiêu đề from giọng hát as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where loại = "lead"
select distinct loại from giọng hát
select distinct loại from giọng hát
select * from album where năm = 2010
select * from album where năm = 2010
select t2.tên , t2.họ from buổi biểu diễn as t1 join ban nhạc as t2 on t1.nghệ sĩ trong ban nhạc = t2.id join bài hát as t3 on t3.id bài hát = t1.id bài hát where t3.tiêu đề = "Le Pop"
select t2.tên , t2.họ from buổi biểu diễn as t1 join ban nhạc as t2 on t1.nghệ sĩ trong ban nhạc = t2.id join bài hát as t3 on t3.id bài hát = t1.id bài hát where t3.tiêu đề = "Le Pop"
select t2.họ from buổi biểu diễn as t1 join ban nhạc as t2 on t1.nghệ sĩ trong ban nhạc = t2.id join bài hát as t3 on t3.id bài hát = t1.id bài hát group by t2.họ order by count ( * ) desc limit 1
select t2.họ from giọng hát as t1 join ban nhạc as t2 on t1.nghệ sĩ trong ban nhạc = t2.id join bài hát as t3 on t3.id bài hát = t1.id bài hát group by t2.họ order by count ( * ) desc limit 1
select t4.nhạc cụ from buổi biểu diễn as t1 join ban nhạc as t2 on t1.nghệ sĩ trong ban nhạc = t2.id join bài hát as t3 on t3.id bài hát = t1.id bài hát join nhạc cụ as t4 on t4.id bài hát = t3.id bài hát and t4.id nghệ sĩ trong ban nhạc = t2.id where t2.họ = "Heilo" and t3.tiêu đề = "Badlands"
select t4.nhạc cụ from buổi biểu diễn as t1 join ban nhạc as t2 on t1.nghệ sĩ trong ban nhạc = t2.id join bài hát as t3 on t3.id bài hát = t1.id bài hát join nhạc cụ as t4 on t4.id bài hát = t3.id bài hát and t4.id nghệ sĩ trong ban nhạc = t2.id where t2.họ = "Heilo" and t3.tiêu đề = "Badlands"
select count ( * ) from nhạc cụ as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát join ban nhạc as t3 on t1.id nghệ sĩ trong ban nhạc = t3.id where t3.tên = "Badlands" and t2.tiêu đề = "Badlands"
select count ( distinct nhạc cụ ) from nhạc cụ as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát join ban nhạc as t3 on t1.id nghệ sĩ trong ban nhạc = t3.id where t3.tên = "Badlands"
select loại from giọng hát as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where t2.tiêu đề = "Badlands"
select loại from giọng hát as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where t2.tiêu đề = "Badlands"
select count ( * ) from giọng hát as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where t2.tiêu đề = "Le Pop"
select count ( * ) from giọng hát as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where tiêu đề = "Le Pop"
select count ( distinct tiêu đề ) from giọng hát as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where loại = "shared"
select count ( distinct tiêu đề ) from giọng hát as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where loại = "shared"
select distinct tiêu đề from giọng hát as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát except select t2.tiêu đề from giọng hát as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where loại = "back"
select distinct tiêu đề from giọng hát as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát except select t2.tiêu đề from giọng hát as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where loại = "back"
select loại from giọng hát as t1 join ban nhạc as t2 on t1.nghệ sĩ trong ban nhạc = t2.id where t2.tên = "Solveig" group by loại order by count ( * ) desc limit 1
select loại from giọng hát as t1 join ban nhạc as t2 on t1.nghệ sĩ trong ban nhạc = t2.id where t2.tên = "Solveig" group by loại order by count ( * ) desc limit 1
select loại from giọng hát as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát join ban nhạc as t3 on t1.nghệ sĩ trong ban nhạc = t3.id where t3.họ = "Heilo" and t2.tiêu đề = "Der Kapitan"
select loại from giọng hát as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát join ban nhạc as t3 on t1.nghệ sĩ trong ban nhạc = t3.id where t3.họ = "Heilo" and t2.tiêu đề = "Der Kapitan"
select t1.tên , t1.họ from ban nhạc as t1 join buổi biểu diễn as t2 on t1.id = t2.nghệ sĩ trong ban nhạc group by t2.nghệ sĩ trong ban nhạc order by count ( * ) desc limit 1
select t1.tên , t1.họ from ban nhạc as t1 join nhạc cụ as t2 on t1.id = t2.id nghệ sĩ trong ban nhạc group by t1.id order by count ( * ) desc limit 1
select loại from giọng hát as t1 join ban nhạc as t2 on t1.nghệ sĩ trong ban nhạc = t2.id where t2.tên = "Marianne" group by loại order by count ( * ) desc limit 1
select loại from giọng hát as t1 join ban nhạc as t2 on t1.nghệ sĩ trong ban nhạc = t2.id where tên = "Marianne" group by loại order by count ( * ) desc limit 1
select t2.tên , t2.họ from buổi biểu diễn as t1 join ban nhạc as t2 on t1.nghệ sĩ trong ban nhạc = t2.id join bài hát as t3 on t3.id bài hát = t1.id bài hát where t3.tiêu đề = "Der Kapitan" and t1.vị trí trên sân khấu = "back"
select t2.tên , t2.họ from buổi biểu diễn as t1 join ban nhạc as t2 on t1.nghệ sĩ trong ban nhạc = t2.id join bài hát as t3 on t3.id bài hát = t1.id bài hát where t3.tiêu đề = "Der Kapitan" and t1.vị trí trên sân khấu = "back"
select distinct tiêu đề from giọng hát as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát except select t2.tiêu đề from giọng hát as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where loại = "back"
select distinct tiêu đề from giọng hát as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát except select distinct t2.tiêu đề from giọng hát as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where loại = "back"
select t3.tiêu đề from album as t1 join danh sách bài hát as t2 on t1.id album = t2.id album join bài hát as t3 on t2.id bài hát = t3.id bài hát where t1.tiêu đề = "A Kiss Before You Go: Live in Hamburg"
select t3.tiêu đề from album as t1 join danh sách bài hát as t2 on t1.id album = t2.id album join bài hát as t3 on t2.id bài hát = t3.id bài hát where t1.tiêu đề = "A Kiss Before You Go: Live in Hamburg"
select t3.tiêu đề from album as t1 join danh sách bài hát as t2 on t1.id album = t2.id album join bài hát as t3 on t2.id bài hát = t3.id bài hát where t1.hãng thu âm = "Universal Music Group"
select t3.tiêu đề from album as t1 join danh sách bài hát as t2 on t1.id album = t2.id album join bài hát as t3 on t2.id bài hát = t3.id bài hát where t1.hãng thu âm = "Universal Music Group"
select count ( distinct t3.tiêu đề ) from album as t1 join danh sách bài hát as t2 on t1.id album = t2.id album join bài hát as t3 on t2.id bài hát = t3.id bài hát where t1.loại = "Studio"
select count ( distinct t3.tiêu đề ) from album as t1 join danh sách bài hát as t2 on t1.id album = t2.id album join bài hát as t3 on t2.id bài hát = t3.id bài hát where t1.loại = "Studio"
select t1.khách hàng tốt hay xấu from khách hàng as t1 join phiếu giảm giá as t2 on t1.id phiếu giảm giá = t2.id phiếu giảm giá where t2.số tiền giảm giá = 500
select t1.id khách hàng , t1.tên , count ( * ) from khách hàng as t1 join lượt đặt mua as t2 on t1.id khách hàng = t2.id khách hàng group by t1.id khách hàng
select id khách hàng , sum ( số tiền phải trả ) from lượt đặt mua group by id khách hàng order by sum ( số tiền phải trả ) desc limit 1
select t1.id đặt mua , t1.số tiền hoàn trả from lượt đặt mua as t1 join thanh toán as t2 on t1.id đặt mua = t2.id đặt mua group by t1.id đặt mua order by count ( * ) desc limit 1
select id sản phẩm from sản phẩm được đặt group by id sản phẩm having count ( * ) = 3
select t2.mô tả Sản phẩm from sản phẩm cho thuê as t2 join sản phẩm được đặt as t1 on t2.id sản phẩm = t1.id sản phẩm where t1.số tiền đã đặt = 102.76
select t1.ngày bắt đầu đặt mua , t1.ngày kết thúc đặt mua from lượt đặt mua as t1 join sản phẩm được đặt as t2 on t1.id đặt mua = t2.id đặt mua join sản phẩm cho thuê as t3 on t2.id sản phẩm = t3.id sản phẩm where t3.tên sản phẩm = "Book Collection"
select t1.tên sản phẩm from sản phẩm cho thuê as t1 join sản phẩm có sẵn as t2 on t1.id sản phẩm = t2.id sản phẩm where t2.có sẵn hay không = "Y"
select count ( distinct mã loại sản phẩm ) from sản phẩm cho thuê
select tên , họ , giới tính from khách hàng where khách hàng tốt hay xấu = "good" order by họ
select avg ( số tiền nợ ) from thanh toán
select avg ( số lượng đặt mua ) , min ( số lượng đặt mua ) , max ( số lượng đặt mua ) from sản phẩm được đặt
select distinct mã loại thanh toán from thanh toán
select chi phí thuê hàng ngày from sản phẩm cho thuê where tên sản phẩm like "%Book%"
select count ( * ) from sản phẩm cho thuê where id sản phẩm not in ( select id sản phẩm from sản phẩm được đặt where số tiền đã đặt > 200 )
select t1.số tiền giảm giá from phiếu giảm giá as t1 join khách hàng as t2 on t1.id phiếu giảm giá = t2.id phiếu giảm giá where t2.khách hàng tốt hay xấu = "good" intersect select t1.số tiền giảm giá from phiếu giảm giá as t1 join khách hàng as t2 on t1.id phiếu giảm giá = t2.id phiếu giảm giá where t2.khách hàng tốt hay xấu = "bad"
select ngày thanh toán from thanh toán where số tiền đã trả > 300 or mã loại thanh toán = "Transaction"
select tên sản phẩm , mô tả sản phẩm from sản phẩm cho thuê where mã loại sản phẩm = "Cutlery" and chi phí thuê hàng ngày < 20
select tên nhà hàng from nhà hàng
select địa chỉ from nhà hàng where tên nhà hàng = "Subway"
select đánh giá xếp hạng from nhà hàng where tên nhà hàng = "Subway"
select tên loại nhà hàng from loại nhà hàng
select mô tả về loại nhà hàng from loại nhà hàng where tên loại nhà hàng = "Sandwich"
select tên nhà hàng , đánh giá xếp hạng from nhà hàng order by đánh giá xếp hạng desc limit 1
select tuổi from sinh viên where tên = "Linda" and họ = "Smith"
select giới tính from sinh viên where tên = "Linda" and họ = "Smith"
select tên , họ from sinh viên where chuyên ngành = 600
select mã thành phố from sinh viên where tên = "Linda" and họ = "Smith"
select count ( * ) from sinh viên where cố vấn = 1121
select cố vấn , count ( * ) from sinh viên group by cố vấn order by count ( * ) desc limit 1
select chuyên ngành , count ( * ) from sinh viên group by chuyên ngành order by count ( chuyên ngành ) asc limit 1
select chuyên ngành , count ( * ) from sinh viên where tuổi between 2 and 30 group by chuyên ngành
select tên , họ from sinh viên where tuổi > 18 and chuyên ngành = 600
select tên , họ from sinh viên where tuổi > 18 and chuyên ngành != 600 and giới tính = "F"
select count ( * ) from nhà hàng as t1 join loại của nhà hàng as t2 on t1.id nhà hàng = t2.id nhà hàng join loại nhà hàng as t3 on t2.id loại nhà hàng = t3.id loại nhà hàng where t3.tên loại nhà hàng = "Sandwich"
select sum ( t1.thời gian dành ra ) from lượt ghé thăm nhà hàng as t1 join sinh viên as t2 on t1.id sinh viên = t2.id sinh viên where t2.tuổi > 18
select count ( * ) from lượt ghé thăm nhà hàng as t1 join sinh viên as t2 on t1.id sinh viên = t2.id sinh viên join nhà hàng as t3 on t1.id nhà hàng = t3.id nhà hàng where t2.tên = "Linda" and t2.họ = "Smith" and t3.tên nhà hàng = "Subway"
select t1.thời gian from lượt ghé thăm nhà hàng as t1 join sinh viên as t2 on t1.id sinh viên = t2.id sinh viên join nhà hàng as t3 on t1.id nhà hàng = t3.id nhà hàng where t2.tên = "Linda" and t2.họ = "Smith" and t3.tên nhà hàng = "Subway"
select t1.tên nhà hàng , sum ( t1.thời gian dành ra ) from lượt ghé thăm nhà hàng as t1 join nhà hàng as t2 on t1.id nhà hàng = t2.id nhà hàng group by t1.id nhà hàng order by sum ( t1.thời gian dành ra ) limit 1
select t1.tên , t1.họ from sinh viên as t1 join lượt ghé thăm nhà hàng as t2 on t1.id sinh viên = t2.id sinh viên group by t1.id sinh viên order by count ( * ) desc limit 1
select count ( distinct họ ) from diễn viên where giới tính = "male" union select count ( distinct họ ) from diễn viên where giới tính = "female"
select count ( distinct họ ) from diễn viên
select tên from diễn viên group by tên order by count ( * ) desc limit 1
select tên from diễn viên group by tên order by count ( * ) desc limit 1
select tên , họ from diễn viên group by tên , họ order by count ( * ) desc limit 1
select tên , họ from diễn viên group by tên , họ order by count ( * ) desc limit 1
select quận from địa chỉ group by quận having count ( * ) >= 2
select quận from địa chỉ group by quận having count ( * ) >= 2
select số điện thoại , mã bưu điện from địa chỉ where id địa chỉ = 1031
select số điện thoại , mã bưu điện from địa chỉ where địa chỉ = "1031 Daugavpils Parkway"
select t2.thành phố , count ( * ) , t1.id thành phố from địa chỉ as t1 join thành phố as t2 on t1.id thành phố = t2.id thành phố group by t1.id thành phố order by count ( * ) desc limit 1
select t2.thành phố , t1.id thành phố , count ( * ) from địa chỉ as t1 join thành phố as t2 on t1.id thành phố = t2.id thành phố group by t1.id thành phố order by count ( * ) desc limit 1
select count ( * ) from vùng sản xuất where quận = "Napa"
select count ( * ) from địa chỉ where quận = "California"
select t1.tiêu đề , t1.id phim from phim as t1 join lượt cho thuê as t2 on t1.id phim = t2.id hàng tồn kho where t2.số tiền = 0.99 group by t1.id phim having count ( * ) < 3
select t1.tiêu đề , t1.id phim from phim as t1 join hàng tồn kho as t2 on t1.id phim = t2.id phim where t1.giá cho thuê = 0.99 intersect select t1.tiêu đề , t1.id phim from phim as t1 join hàng tồn kho as t2 on t1.id phim = t2.id phim group by t1.id phim having count ( * ) < 3
select count ( * ) from thành phố as t1 join quốc gia as t2 on t1.id quốc gia = t2.id quốc gia where t2.quốc gia = "Australia"
select count ( * ) from thành phố as t1 join quốc gia as t2 on t1.id quốc gia = t2.id quốc gia where t2.quốc gia = "Australia"
select t1.quốc gia from quốc gia as t1 join thành phố as t2 on t1.id quốc gia = t2.id quốc gia group by t1.quốc gia having count ( * ) >= 3
select t1.quốc gia from quốc gia as t1 join thành phố as t2 on t1.id quốc gia = t2.id quốc gia group by t1.id quốc gia having count ( * ) >= 3
select ngày thanh toán from khoản thanh toán where số tiền > 10 union select t1.ngày thanh toán from khoản thanh toán as t1 join nhân viên as t2 on t1.id nhân viên = t2.id nhân viên where t2.tên = "Elsa"
select t1.ngày thanh toán from khoản thanh toán as t1 join nhân viên as t2 on t1.id nhân viên = t2.id nhân viên where t2.tên = "Elsa" or t1.số tiền > 10
select
select count ( * ) from khách hàng where có hoạt động không = 1
select giá cho thuê from phim order by giá cho thuê desc limit 1
select tiêu đề , giá cho thuê from phim order by giá cho thuê desc limit 1
select t2.tiêu đề , t2.mô tả , t1.id phim from diễn viên điện ảnh as t1 join phim as t2 on t1.id phim = t2.id phim group by t1.id phim order by count ( * ) desc limit 1
select t1.tiêu đề , t1.id phim , t1.mô tả from phim as t1 join diễn viên điện ảnh as t2 on t1.id phim = t2.id phim group by t1.id phim order by count ( * ) desc limit 1
select
select t1.tên , t1.họ , t1.id diễn viên from diễn viên as t1 join diễn viên điện ảnh as t2 on t1.id diễn viên = t2.id diễn viên group by t1.id diễn viên order by count ( * ) desc limit 1
select
select t1.tên , t1.họ from diễn viên as t1 join diễn viên điện ảnh as t2 on t1.id diễn viên = t2.id diễn viên group by t1.id diễn viên having count ( * ) > 30
select id cửa hàng from khách hàng group by id cửa hàng order by count ( * ) desc limit 1
select id cửa hàng from hàng tồn kho group by id cửa hàng order by count ( * ) desc limit 1
select sum ( số tiền ) from khoản thanh toán
select sum ( số tiền ) from khoản thanh toán
select t1.tên , t1.họ , t1.id khách hàng from khách hàng as t1 join khoản thanh toán as t2 on t1.id khách hàng = t2.id khách hàng group by t1.id khách hàng order by sum ( số tiền ) asc limit 1
select t1.tên , t1.họ , t1.id khách hàng from khách hàng as t1 join khoản thanh toán as t2 on t1.id khách hàng = t2.id khách hàng group by t1.id khách hàng order by sum ( số tiền ) limit 1
select t1.tên from danh mục as t1 join danh mục phim as t2 on t1.id danh mục = t2.id danh mục join phim as t3 on t2.id phim = t3.id phim where t3.tiêu đề = "HUNGER ROOF"
select t1.tên from danh mục as t1 join danh mục phim as t2 on t1.id danh mục = t2.id danh mục join phim as t3 on t2.id phim = t3.id phim where t3.tiêu đề = "HUNGER ROOF"
select t2.tên , t2.họ from diễn viên điện ảnh as t1 join diễn viên as t2 on t1.id diễn viên = t2.id diễn viên group by t2.id diễn viên having count ( * ) > 10
select t1.tên , t1.id danh mục , count ( * ) from danh mục as t1 join danh mục phim as t2 on t1.id danh mục = t2.id danh mục group by t1.id danh mục
select t2.tiêu đề , t1.id phim from hàng tồn kho as t1 join phim as t2 on t1.id phim = t2.id phim group by t1.id phim order by count ( * ) desc limit 1
select t2.tiêu đề , t1.id phim from hàng tồn kho as t1 join phim as t2 on t1.id phim = t2.id phim group by t1.id phim order by count ( * ) desc limit 1
select t2.tiêu đề , t3.id hàng tồn kho from lượt cho thuê as t1 join phim as t2 on t1.id hàng tồn kho = t2.id phim join hàng tồn kho as t3 on t1.id hàng tồn kho = t3.id hàng tồn kho group by t3.id hàng tồn kho order by count ( * ) desc limit 1
select t1.tiêu đề , t2.id hàng tồn kho from phim as t1 join hàng tồn kho as t2 on t1.id phim = t2.id phim join lượt cho thuê as t3 on t2.id hàng tồn kho = t3.id hàng tồn kho group by t2.id hàng tồn kho order by count ( * ) desc limit 1
select count ( distinct tiêu đề ) from phim
select count ( distinct id ngôn ngữ ) from phim
select tiêu đề from phim where đánh giá xếp hạng = "R"
select tiêu đề from phim where đánh giá xếp hạng = "R"
select t1.địa chỉ from địa chỉ as t1 join cửa hàng as t2 on t1.id địa chỉ = t2.id địa chỉ where t2.id cửa hàng = 1
select t2.địa chỉ from cửa hàng as t1 join địa chỉ as t2 on t1.id địa chỉ = t2.id địa chỉ where t1.id cửa hàng = 1
select t1.tên , t1.họ , t1.id nhân viên from nhân viên as t1 join khoản thanh toán as t2 on t1.id nhân viên = t2.id nhân viên group by t1.id nhân viên order by count ( * ) limit 1
select t1.tên , t1.họ , t1.id nhân viên from nhân viên as t1 join khoản thanh toán as t2 on t1.id nhân viên = t2.id nhân viên group by t1.id nhân viên order by count ( * ) asc limit 1
select t1.tên from ngôn ngữ as t1 join phim as t2 on t1.id ngôn ngữ = t2.id ngôn ngữ where t2.tiêu đề = "AIRPORT POLLOCK"
select t1.tên from ngôn ngữ as t1 join phim as t2 on t1.id ngôn ngữ = t2.id ngôn ngữ where t2.tiêu đề = "AIRPORT POLLOCK"
select count ( * ) from cửa hàng
select count ( * ) from cửa hàng
select count ( distinct đánh giá xếp hạng ) from phim
select count ( distinct đánh giá xếp hạng ) from phim
select tiêu đề from phim where tính năng đặc biệt like "%Deleted Scenes%"
select tiêu đề from phim where tính năng đặc biệt like "%Deleted Scenes%"
select count ( * ) from hàng tồn kho where id cửa hàng = 1
select count ( * ) from hàng tồn kho where id cửa hàng = 1
select ngày thanh toán from khoản thanh toán order by ngày thanh toán asc limit 1
select ngày thanh toán from khoản thanh toán order by ngày thanh toán limit 1
select t1.email from khách hàng as t1 join địa chỉ as t2 on t1.id địa chỉ = t2.id địa chỉ join diễn viên as t3 on t1.id khách hàng = t3.id diễn viên where t3.tên = "Linda"
select t1.địa chỉ , t1.email from khách hàng as t1 join địa chỉ as t2 on t1.id địa chỉ = t2.id địa chỉ where t1.tên = "Linda"
select tiêu đề from phim where thời lượng phim > 100 or đánh giá xếp hạng = "PG" except select tiêu đề from phim where giá thay thế > 200
select tiêu đề from phim where thời lượng phim > 100 or đánh giá xếp hạng = "PG" except select tiêu đề from phim where giá thay thế > 200
select t1.tên , t1.họ from khách hàng as t1 join lượt cho thuê as t2 on t1.id khách hàng = t2.id khách hàng order by t2.ngày cho thuê asc limit 1
select t1.tên , t1.họ from khách hàng as t1 join lượt cho thuê as t2 on t1.id khách hàng = t2.id khách hàng order by t2.ngày cho thuê asc limit 1
select t3.tên , t3.họ from lượt cho thuê as t1 join khách hàng as t2 join nhân viên as t3 on t1.id khách hàng = t2.id khách hàng and t1.id nhân viên = t3.id nhân viên join phim as t4 on t1.id hàng tồn kho = t4.id phim where t2.tên = "April" and t2.họ = "Burns"
select t3.tên , t3.họ from lượt cho thuê as t1 join khách hàng as t2 join nhân viên as t3 on t1.id khách hàng = t2.id khách hàng and t1.id nhân viên = t3.id nhân viên where t2.tên = "April" and t2.họ = "Burns"
select id cửa hàng from khách hàng group by id cửa hàng order by count ( * ) desc limit 1
select id cửa hàng from khách hàng group by id cửa hàng order by count ( * ) desc limit 1
select số tiền from khoản thanh toán order by số tiền desc limit 1
select số tiền from khoản thanh toán order by số tiền desc limit 1
select t1.địa chỉ from địa chỉ as t1 join nhân viên as t2 on t1.id địa chỉ = t2.id địa chỉ where t2.tên = "Elsa"
select t2.địa chỉ from nhân viên as t1 join địa chỉ as t2 on t1.id địa chỉ = t2.id địa chỉ where t1.tên = "Elsa"
select tên from khách hàng where id khách hàng not in ( select id khách hàng from lượt cho thuê where ngày trả lại > "2005-08-23 02:06:01" )
select tên from khách hàng where id khách hàng not in ( select id khách hàng from lượt cho thuê where ngày trả lại > "2005-08-23 02:06:01" )
select count ( * ) from tài xế
select tên , thành phố quê hương , tuổi from tài xế
select đảng , count ( * ) from tài xế group by đảng
select tên from tài xế order by tuổi desc
select distinct thành phố quê hương from tài xế
select thành phố quê hương from tài xế group by thành phố quê hương order by count ( * ) desc limit 1
select đảng from tài xế where thành phố quê hương = "Hartford" and tuổi > 40
select thành phố quê hương from tài xế where tuổi > 40 group by thành phố quê hương having count ( * ) >= 2
select thành phố quê hương from tài xế except select thành phố quê hương from tài xế where tuổi > 40
select tên from tài xế where id tài xế not in ( select id tài xế from xe buýt của trường học )
select loại hình from trường học group by loại hình having count ( * ) = 2
select t2.trường học , t1.tên from xe buýt của trường học as t1 join trường học as t2 on t1.id trường học = t2.id trường học
select avg ( số năm làm việc ) , max ( số năm làm việc ) , min ( số năm làm việc ) from xe buýt của trường học
select trường học , loại hình from trường học where id trường học not in ( select id trường học from xe buýt của trường học )
select t1.loại hình , count ( * ) from trường học as t1 join xe buýt của trường học as t2 on t1.id trường học = t2.id trường học group by t1.loại hình
select count ( * ) from tài xế where thành phố quê hương = "Hartford" or tuổi < 40
select tên from tài xế where thành phố quê hương = "Hartford" and tuổi < 40
select t1.tên from tài xế as t1 join xe buýt của trường học as t2 on t1.id tài xế = t2.id tài xế order by t2.số năm làm việc desc limit 1
select count ( * ) from trường học
select count ( * ) from trường học
select địa điểm from trường học order by số lượng nhập học asc
select địa điểm from trường học order by số lượng nhập học asc
select địa điểm from trường học order by năm thành lập desc
select địa điểm from trường học order by năm thành lập desc
select số lượng nhập học from trường học where tôn giáo != "Catholic"
select số lượng nhập học from trường học where tôn giáo != "Catholic"
select avg ( số lượng nhập học ) from trường học
select avg ( số lượng nhập học ) from trường học
select đội from cầu thủ order by đội asc
select đội from cầu thủ order by đội asc
select count ( distinct vị trí ) from cầu thủ
select count ( distinct vị trí ) from cầu thủ
select đội from cầu thủ order by tuổi desc limit 1
select đội from cầu thủ order by tuổi desc limit 1
select đội , cầu thủ from cầu thủ
select đội from cầu thủ order by tuổi desc limit 5
select t2.đội , t1.trường học from trường học as t1 join cầu thủ as t2 on t1.id trường = t2.id trường
select t2.đội , t1.địa điểm from trường học as t1 join cầu thủ as t2 on t1.id trường = t2.id trường
select t1.địa điểm from trường học as t1 join cầu thủ as t2 on t1.id trường = t2.id trường group by t1.id trường having count ( * ) > 1
select t1.địa điểm from trường học as t1 join cầu thủ as t2 on t1.id trường = t2.id trường group by t1.id trường having count ( * ) > 1
select t1.tôn giáo from trường học as t1 join cầu thủ as t2 on t1.id trường = t2.id trường group by t1.tôn giáo order by count ( * ) desc limit 1
select t2.tôn giáo from trường học as t1 join chi tiết trường học as t2 on t1.id trường = t2.id trường join cầu thủ as t3 on t1.id trường = t3.id trường group by t1.id trường order by count ( * ) desc limit 1
select t1.địa điểm , t2.biệt danh from trường học as t1 join chi tiết trường học as t2 on t1.id trường = t2.id trường
select t1.biệt danh , t1.trường học , t2.địa điểm from chi tiết trường học as t1 join trường học as t2 on t1.id trường = t2.id trường
select tôn giáo , count ( * ) from trường học group by tôn giáo
select tôn giáo , count ( * ) from trường học group by tôn giáo
select tôn giáo , count ( * ) from trường học group by tôn giáo order by count ( * ) desc
select tôn giáo , count ( * ) from trường học group by tôn giáo order by count ( * ) desc
select màu của trường from trường học order by số lượng nhập học desc limit 1
select màu của trường from trường học order by số lượng nhập học desc limit 1
select địa điểm from trường học where id trường not in ( select id trường from cầu thủ )
select địa điểm from trường học where id trường not in ( select id trường from cầu thủ )
select tôn giáo from trường học where năm thành lập < 1890 intersect select tôn giáo from trường học where năm thành lập > 1900
select tôn giáo from trường học where năm thành lập < 1890 intersect select tôn giáo from trường học where năm thành lập > 1900
select biệt danh from chi tiết trường học where phân hạng != "Division 1"
select biệt danh from chi tiết trường học where phân hạng != "Division 1"
select tôn giáo from trường học group by tôn giáo having count ( * ) > 1
select tôn giáo from trường học group by tôn giáo having count ( * ) > 1
select t1.tên , t2.tên from quốc gia as t1 join giải đấu as t2 on t1.id = t2.id quốc gia
select count ( * ) from giải đấu as t1 join quốc gia as t2 on t1.id quốc gia = t2.id where t2.tên = "England"
select avg ( cân nặng ) from cầu thủ
select max ( cân nặng ) , min ( cân nặng ) from cầu thủ
select distinct t1.tên cầu thủ from cầu thủ as t1 join đặc điểm của cầu thủ as t2 on t1.id cầu thủ api = t2.id cầu thủ api của fifa where t2.đánh giá tổng thể > ( select avg ( đánh giá tổng thể ) from đặc điểm của cầu thủ )
select t1.tên cầu thủ from cầu thủ as t1 join đặc điểm của cầu thủ as t2 on t1.id cầu thủ api = t2.id cầu thủ api của fifa order by t2.rê bóng desc limit 1
select t1.tên cầu thủ from cầu thủ as t1 join đặc điểm của cầu thủ as t2 on t1.id cầu thủ api = t2.id cầu thủ api where t2.tạt bóng > 90 and t2.chân thuận = "R"
select distinct t1.tên cầu thủ from cầu thủ as t1 join đặc điểm của cầu thủ as t2 on t1.id cầu thủ api = t2.id cầu thủ api của fifa where t2.chân thuận = "left" and t2.đánh giá tổng thể between 85 and 90
select avg ( đánh giá tổng thể ) from đặc điểm của cầu thủ where chân thuận = "left" union select avg ( đánh giá tổng thể ) from đặc điểm của cầu thủ where chân thuận = "right"
select count ( * ) , chân thuận from đặc điểm của cầu thủ where đánh giá tổng thể > 80 group by chân thuận
select id cầu thủ api from cầu thủ where chiều cao >= 180 and đánh giá tổng thể > 85
select id cầu thủ api from cầu thủ where chiều cao between 180 and 190 and chân thuận = "left"
select distinct t1.tên cầu thủ from cầu thủ as t1 join đặc điểm của cầu thủ as t2 on t1.id cầu thủ api = t2.id cầu thủ api order by t2.đánh giá tổng thể desc limit 3
select t1.tên cầu thủ , t1.ngày sinh from cầu thủ as t1 join đặc điểm của cầu thủ as t2 on t1.id cầu thủ api = t2.id cầu thủ api order by t2.tiềm năng desc limit 5
select distinct tên quận from quận order by diện tích của các thành phố desc
select tên quận from quận order by diện tích của các thành phố desc
select kích thước trang tối đa from sản phẩm group by kích thước trang tối đa having count ( * ) > 3
select kích thước trang tối đa from sản phẩm group by kích thước trang tối đa having count ( * ) > 3
select tên quận , dân số thành phố from quận where dân số thành phố between 200000 and 20000000
select tên quận , dân số thành phố from quận where dân số thành phố between 200000 and 2000000
select tên quận from quận where diện tích của các thành phố > 10 or dân số thành phố > 100000
select tên quận from quận where diện tích của các thành phố > 10 or dân số thành phố > 100000
select tên quận from quận order by dân số thành phố desc limit 1
select tên quận from quận order by dân số thành phố desc limit 1
select tên quận from quận order by diện tích của các thành phố asc limit 1
select tên quận from quận order by diện tích của các thành phố asc limit 1
select sum ( dân số thành phố ) from quận order by diện tích của các thành phố desc limit 3
select sum ( dân số thành phố ) from quận order by diện tích của các thành phố desc limit 3
select loại , count ( * ) from cửa hàng group by loại
select loại , count ( * ) from cửa hàng group by loại
select t1.tên cửa hàng from cửa hàng as t1 join quận của cửa hàng as t2 on t1.id cửa hàng = t2.id cửa hàng join quận as t3 on t2.id quận = t3.id quận where t3.tên quận = "Khanewal"
select t1.tên cửa hàng from cửa hàng as t1 join quận của cửa hàng as t2 on t1.id cửa hàng = t2.id cửa hàng join quận as t3 on t2.id quận = t3.id quận where t3.tên quận = "Khanewal"
select t1.tên cửa hàng from cửa hàng as t1 join quận của cửa hàng as t2 on t1.id cửa hàng = t2.id cửa hàng join quận as t3 on t2.id quận = t3.id quận order by t3.dân số thành phố desc limit 1
select t1.tên quận , t2.tên cửa hàng from quận as t1 join quận của cửa hàng as t2 on t1.id quận = t2.id quận group by t1.id quận order by sum ( t1.dân số thành phố ) desc limit 1
select t3.thành phố của các trụ sở from cửa hàng as t1 join quận của cửa hàng as t2 on t1.id cửa hàng = t2.id cửa hàng join quận as t3 on t2.id quận = t3.id quận where t1.tên cửa hàng = "Blackville"
select t3.thành phố của các trụ sở from cửa hàng as t1 join quận của cửa hàng as t2 on t1.id cửa hàng = t2.id cửa hàng join quận as t3 on t2.id quận = t3.id quận where t1.tên cửa hàng = "Blackville"
select t3.thành phố của các trụ sở , count ( * ) from cửa hàng as t1 join quận của cửa hàng as t2 on t1.id cửa hàng = t2.id cửa hàng join quận as t3 on t2.id quận = t3.id quận group by t3.thành phố của các trụ sở
select t3.thành phố của các trụ sở , count ( * ) from cửa hàng as t1 join quận của cửa hàng as t2 on t1.id cửa hàng = t2.id cửa hàng join quận as t3 on t2.id quận = t3.id quận group by t3.thành phố của các trụ sở
select t3.thành phố của các trụ sở from cửa hàng as t1 join quận của cửa hàng as t2 on t1.id cửa hàng = t2.id cửa hàng join quận as t3 on t2.id quận = t3.id quận group by t3.thành phố của các trụ sở order by count ( * ) desc limit 1
select t3.thành phố của các trụ sở from cửa hàng as t1 join quận của cửa hàng as t2 on t1.id cửa hàng = t2.id cửa hàng join quận as t3 on t2.id quận = t3.id quận group by t3.thành phố của các trụ sở order by count ( * ) desc limit 1
select avg ( số trang màu trên từng phút ) from sản phẩm
select avg ( số trang màu trên từng phút ) from sản phẩm
select t3.sản phẩm from cửa hàng as t1 join quận của cửa hàng as t2 on t1.id cửa hàng = t2.id cửa hàng join sản phẩm của cửa hàng as t3 on t1.id cửa hàng = t3.id cửa hàng where t1.tên cửa hàng = "Miramichi"
select t3.sản phẩm from cửa hàng as t1 join quận của cửa hàng as t2 on t1.id cửa hàng = t2.id cửa hàng join sản phẩm của cửa hàng as t3 on t1.id cửa hàng = t3.id cửa hàng join quận as t4 on t2.id quận = t4.id quận where t4.tên quận = "Miramichi"
select sản phẩm from sản phẩm where kích thước trang tối đa = "A4" intersect select sản phẩm from sản phẩm where số trang màu trên từng phút < 5
select sản phẩm from sản phẩm where kích thước trang tối đa = "A4" and số trang màu trên từng phút < 5
select sản phẩm from sản phẩm where kích thước trang tối đa = "A4" or số trang màu trên từng phút < 5
select sản phẩm from sản phẩm where kích thước trang tối đa = "A4" or số trang màu trên từng phút < 5
select sản phẩm from sản phẩm where sản phẩm like "%Scanner%"
select sản phẩm from sản phẩm where sản phẩm like "%Scanner%"
select kích thước trang tối đa from sản phẩm group by kích thước trang tối đa order by count ( * ) desc limit 1
select kích thước trang tối đa from sản phẩm group by kích thước trang tối đa order by count ( * ) desc limit 1
select sản phẩm from sản phẩm where sản phẩm != ( select kích thước trang tối đa from sản phẩm group by kích thước trang tối đa order by count ( * ) desc limit 1 )
select sản phẩm from sản phẩm where sản phẩm != ( select kích thước trang tối đa from sản phẩm group by kích thước trang tối đa order by count ( * ) desc limit 1 )
select sum ( dân số thành phố ) from quận where diện tích của các thành phố > ( select avg ( diện tích của các thành phố ) from quận )
select sum ( dân số thành phố ) from quận where diện tích của các thành phố > ( select avg ( diện tích của các thành phố ) from quận )
select t1.tên quận from quận as t1 join quận của cửa hàng as t2 on t1.id quận = t2.id quận join cửa hàng as t3 on t2.id cửa hàng = t3.id cửa hàng where t3.loại = "Mall" intersect select t1.tên quận from quận as t1 join quận của cửa hàng as t2 on t1.id quận = t2.id quận join cửa hàng as t3 on t2.id cửa hàng = t3.id cửa hàng where t3.loại = "Retail"
select t1.tên quận from quận as t1 join quận của cửa hàng as t2 on t1.id quận = t2.id quận join cửa hàng as t3 on t2.id cửa hàng = t3.id cửa hàng where t3.loại = "Mall" intersect select t1.tên quận from quận as t1 join quận của cửa hàng as t2 on t1.id quận = t2.id quận join cửa hàng as t3 on t2.id cửa hàng = t3.id cửa hàng where t3.loại = "Retail"
select count ( * ) from khu vực
select count ( * ) from khu vực
select mã khu vực , tên khu vực from khu vực order by mã khu vực
select mã khu vực , tên khu vực from khu vực order by mã khu vực
select tên khu vực from khu vực order by tên khu vực
select tên khu vực from khu vực order by tên khu vực
select tên khu vực from khu vực where tên khu vực != "Denmark"
select tên khu vực from khu vực where tên khu vực != "Denmark"
select count ( * ) from bão where số lượng người chết > 0
select count ( * ) from bão where số lượng người chết >= 1
select tên , ngày hoạt động , số lượng người chết from bão where số lượng người chết >= 1
select tên , ngày hoạt động , số lượng người chết from bão where số lượng người chết >= 1
select avg ( thiệt hại theo triệu usd ) , max ( thiệt hại theo triệu usd ) from bão where tốc độ tối đa > 1000
select avg ( thiệt hại theo triệu usd ) , max ( thiệt hại theo triệu usd ) from bão where tốc độ tối đa > 1000
select số lượng người chết , thiệt hại theo triệu usd from bão where tốc độ tối đa > ( select avg ( tốc độ tối đa ) from bão )
select sum ( số lượng người chết ) , sum ( thiệt hại theo triệu usd ) from bão where tốc độ tối đa > ( select avg ( tốc độ tối đa ) from bão )
select tên , thiệt hại theo triệu usd from bão order by tốc độ tối đa desc
select tên , thiệt hại theo triệu usd from bão order by tốc độ tối đa desc
select count ( distinct id khu vực ) from khu vực bị ảnh hưởng
select count ( distinct id khu vực ) from khu vực bị ảnh hưởng
select tên khu vực from khu vực where id khu vực not in ( select id khu vực from khu vực bị ảnh hưởng )
select tên khu vực from khu vực where id khu vực not in ( select id khu vực from khu vực bị ảnh hưởng )
select t1.tên khu vực , count ( * ) from khu vực as t1 join khu vực bị ảnh hưởng as t2 on t1.id khu vực = t2.id khu vực group by t1.id khu vực
select count ( * ) , t1.tên khu vực from khu vực as t1 join khu vực bị ảnh hưởng as t2 on t1.id khu vực = t2.id khu vực group by t1.tên khu vực
select t1.tên , count ( * ) from bão as t1 join khu vực bị ảnh hưởng as t2 on t1.id cơn bão = t2.id bão group by t1.id cơn bão
select count ( * ) , t1.tên from bão as t1 join khu vực bị ảnh hưởng as t2 on t1.id cơn bão = t2.id bão group by t1.tên
select t1.tên , t1.tốc độ tối đa from bão as t1 join khu vực bị ảnh hưởng as t2 on t1.id cơn bão = t2.id bão group by t1.id cơn bão order by count ( * ) desc limit 1
select t1.tên , t1.tốc độ tối đa from bão as t1 join khu vực bị ảnh hưởng as t2 on t1.id cơn bão = t2.id bão group by t1.id cơn bão order by count ( * ) desc limit 1
select tên from bão where id cơn bão not in ( select id bão from khu vực bị ảnh hưởng )
select tên from bão where id cơn bão not in ( select id bão from khu vực bị ảnh hưởng )
select t1.tên from bão as t1 join khu vực bị ảnh hưởng as t2 on t1.id cơn bão = t2.id bão group by t1.id cơn bão having count ( * ) >= 2 intersect select t3.tên from khu vực as t3 join khu vực bị ảnh hưởng as t4 on t3.id khu vực = t4.id khu vực join bão as t1 on t1.id cơn bão = t4.id bão where t4.số thành phố bị ảnh hưởng >= 10
select t1.tên from bão as t1 join khu vực bị ảnh hưởng as t2 on t1.id cơn bão = t2.id bão group by t1.id cơn bão having count ( * ) >= 2 and sum ( t2.số thành phố bị ảnh hưởng ) >= 10
select tên from bão except select t1.tên from bão as t1 join khu vực bị ảnh hưởng as t2 on t1.id cơn bão = t2.id bão group by t1.id cơn bão having count ( * ) > 2
select t1.tên from bão as t1 join khu vực bị ảnh hưởng as t2 on t1.id cơn bão = t2.id bão group by t1.id cơn bão having count ( * ) < 2 except select t1.tên from bão as t1 join khu vực bị ảnh hưởng as t2 on t1.id cơn bão = t2.id bão
select t1.tên khu vực from khu vực as t1 join khu vực bị ảnh hưởng as t2 on t1.id khu vực = t2.id khu vực join bão as t3 on t2.id bão = t3.id cơn bão where t3.số lượng người chết >= 10
select t1.tên khu vực from khu vực as t1 join khu vực bị ảnh hưởng as t2 on t1.id khu vực = t2.id khu vực join bão as t3 on t2.id bão = t3.id cơn bão where t3.số lượng người chết >= 10
select t1.tên from bão as t1 join khu vực bị ảnh hưởng as t2 on t1.id cơn bão = t2.id bão join khu vực as t3 on t3.id khu vực = t2.id khu vực where t3.tên khu vực = "Switzerland"
select t1.tên from bão as t1 join khu vực bị ảnh hưởng as t2 on t1.id cơn bão = t2.id bão join khu vực as t3 on t3.id khu vực = t2.id khu vực where t3.tên khu vực = "Denmark"
select t1.tên khu vực from khu vực as t1 join khu vực bị ảnh hưởng as t2 on t1.id khu vực = t2.id khu vực join bão as t3 on t2.id bão = t3.id cơn bão group by t1.tên khu vực having count ( * ) >= 2
select t1.tên khu vực from khu vực as t1 join khu vực bị ảnh hưởng as t2 on t1.id khu vực = t2.id khu vực group by t1.id khu vực having count ( * ) >= 2
select t1.tên khu vực from khu vực as t1 join khu vực bị ảnh hưởng as t2 on t1.id khu vực = t2.id khu vực join bão as t3 on t2.id bão = t3.id cơn bão where t3.số lượng người chết > 10 group by t1.tên khu vực order by count ( * ) desc limit 1
select t1.tên khu vực from khu vực as t1 join khu vực bị ảnh hưởng as t2 on t1.id khu vực = t2.id khu vực join bão as t3 on t2.id bão = t3.id cơn bão group by t1.tên khu vực order by sum ( t3.số lượng người chết ) desc limit 1
select t1.tên from bão as t1 join khu vực bị ảnh hưởng as t2 on t1.id cơn bão = t2.id bão join khu vực as t3 on t2.id khu vực = t3.id khu vực where t3.tên khu vực = "Afghanistan" intersect select t1.tên from bão as t1 join khu vực bị ảnh hưởng as t2 on t1.id cơn bão = t2.id bão join khu vực as t3 on t2.id khu vực = t3.id khu vực where t3.tên khu vực = "Albania"
select t1.tên from bão as t1 join khu vực bị ảnh hưởng as t2 on t1.id cơn bão = t2.id bão join khu vực as t3 on t2.id khu vực = t3.id khu vực where t3.tên khu vực = "Afghanistan" intersect select t1.tên from bão as t1 join khu vực bị ảnh hưởng as t2 on t1.id cơn bão = t2.id bão join khu vực as t3 on t2.id khu vực = t3.id khu vực where t3.tên khu vực = "Albania"
select count ( * ) from danh sách
select count ( * ) from danh sách
select họ from danh sách where phòng học = 111
select họ from danh sách where phòng học = 111
select tên from danh sách where phòng học = 108
select tên from danh sách where phòng học = 108
select tên from danh sách where phòng học = 107
select distinct tên from danh sách where phòng học = 107
select phòng học , khối lớp from danh sách group by phòng học
select distinct phòng học , khối lớp from danh sách
select distinct khối lớp from danh sách where phòng học = 103
select distinct khối lớp from danh sách where phòng học = 103
select distinct khối lớp from danh sách where phòng học = 105
select distinct khối lớp from danh sách where phòng học = 105
select distinct phòng học from danh sách where khối lớp = "4"
select distinct phòng học from danh sách where khối lớp = 4
select distinct phòng học from danh sách where khối lớp = 5
select distinct phòng học from danh sách where khối lớp = 5
select distinct t2.họ from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where khối lớp = 5
select distinct t2.họ from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t1.khối lớp = 5
select distinct t1.tên from giáo viên as t1 join danh sách as t2 on t1.phòng học = t2.phòng học where t2.khối lớp = 1
select t2.tên from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t1.khối lớp = 1
select tên from giáo viên where phòng học = 110
select tên from giáo viên where phòng học = 110
select họ from giáo viên where phòng học = 109
select họ from giáo viên where phòng học = 109
select distinct tên , họ from giáo viên
select distinct tên , họ from giáo viên
select distinct tên , họ from danh sách
select distinct tên , họ from danh sách
select t1.tên , t1.họ from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t2.tên = "OTHA" and t2.họ = "MOYER"
select t1.tên , t1.họ from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t2.tên = "OTHA" and t2.họ = "MOYER"
select distinct t1.tên , t1.họ from giáo viên as t1 join danh sách as t2 on t1.phòng học = t2.phòng học where t1.tên = "MARROTTE" and t1.họ = "KIRK"
select t1.tên , t1.họ from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t2.tên = "MARROTTE" and t2.họ = "KIRK"
select distinct t2.tên , t2.họ from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t1.tên = "EVELINA" and t1.họ = "BROMLEY"
select distinct t2.tên , t2.họ from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t1.tên = "EVELINA" and t1.họ = "BROMLEY"
select t2.họ from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t1.tên = "GELL" and t1.họ = "TAMI"
select t2.họ from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t1.tên = "GELL" and t1.họ = "TAMI"
select count ( * ) from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t2.tên = "LORIA" and t2.họ = "ONDERSMA"
select count ( * ) from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t2.tên = "LORIA" and t2.họ = "ONDERSMA"
select count ( * ) from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t2.tên = "KAWA" and t2.họ = "GORDON"
select count ( * ) from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t2.tên = "KAWA" and t2.họ = "GORDON"
select count ( * ) from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t2.tên = "TARRING" and t2.họ = "LEIA"
select count ( * ) from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t2.tên = "TARRING" and t2.họ = "LEIA"
select count ( * ) from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t1.tên = "CHRISSY" and t1.họ = "NABOZNY"
select count ( * ) from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t1.tên = "CHRISSY" and t1.họ = "NABOZNY"
select count ( * ) from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t1.tên = "MADLOCK" and t1.họ = "RAY"
select count ( * ) from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t1.tên = "MADLOCK" and t1.họ = "RAY"
select tên , họ from danh sách where khối lớp = 1 except select t1.tên , t1.họ from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t2.tên = "OTHA" and t2.họ = "MOYER"
select distinct t1.họ from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t1.khối lớp = "1" except select distinct họ from danh sách where tên = "OTHA" and họ = "MOYER"
select họ from danh sách where khối lớp = 3 except select t1.họ from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t2.tên = "COVIN" and t2.họ = "JEROME"
select distinct t1.họ from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t1.khối lớp = 3 except select distinct họ from danh sách where tên = "COVIN" and họ = "JEROME"
select khối lớp , count ( distinct phòng học ) , count ( * ) from danh sách group by khối lớp
select khối lớp , count ( distinct phòng học ) , count ( * ) from danh sách group by khối lớp
select phòng học , count ( distinct khối lớp ) from danh sách group by phòng học
select phòng học , count ( distinct khối lớp ) from danh sách group by phòng học
select phòng học from danh sách group by phòng học order by count ( * ) desc limit 1
select phòng học from danh sách group by phòng học order by count ( * ) desc limit 1
select phòng học , count ( * ) from danh sách group by phòng học
select count ( * ) , phòng học from danh sách group by phòng học
select sum ( phòng học ) , sum ( khối lớp ) from danh sách where khối lớp = 0 group by phòng học
select phòng học , count ( * ) from danh sách where khối lớp = "0" group by phòng học
select phòng học , count ( * ) from danh sách where khối lớp = 4 group by phòng học
select phòng học , count ( * ) from danh sách where khối lớp = 4 group by phòng học
select t1.tên , t1.họ from giáo viên as t1 join danh sách as t2 on t1.phòng học = t2.phòng học group by t1.tên , t1.họ order by count ( * ) desc limit 1
select t1.tên , t1.họ from giáo viên as t1 join danh sách as t2 on t1.phòng học = t2.phòng học group by t1.tên , t1.họ order by count ( * ) desc limit 1
select count ( * ) , phòng học from danh sách group by phòng học
select phòng học , count ( * ) from danh sách group by phòng học
select t1.tên khoá học from khoá học as t1 join lượt đăng ký khoá học của sinh viên as t2 on t1.id khoá học = t2.id khoá học group by t1.tên khoá học order by count ( * ) desc limit 1
select t1.tên khoá học from khoá học as t1 join lượt đăng ký khoá học của sinh viên as t2 on t1.id khoá học = t2.id khoá học group by t1.tên khoá học order by count ( * ) desc limit 1
select id sinh viên from lượt đăng ký khoá học của sinh viên group by id sinh viên order by count ( * ) limit 1
select id sinh viên from lượt đăng ký khoá học của sinh viên group by id sinh viên order by count ( * ) limit 1
select t1.tên , t1.họ from cá nhân as t1 join ứng cử viên as t2 on t1.id cá nhân = t2.id ứng cử viên
select t1.tên , t1.họ from cá nhân as t1 join ứng cử viên as t2 on t1.id cá nhân = t2.id ứng cử viên
select id sinh viên from sinh viên where id sinh viên not in ( select id sinh viên from lần tham dự khoá học của sinh viên )
select id sinh viên from sinh viên except select id sinh viên from lần tham dự khoá học của sinh viên
select id sinh viên from lần tham dự khoá học của sinh viên
select id sinh viên from lần tham dự khoá học của sinh viên group by id sinh viên having count ( * ) >= 1
select t1.id sinh viên , t2.tên khoá học from lượt đăng ký khoá học của sinh viên as t1 join khoá học as t2 on t1.id khoá học = t2.id khoá học
select t1.chi tiết sinh viên from sinh viên as t1 join lượt đăng ký khoá học của sinh viên as t2 on t1.id sinh viên = t2.id sinh viên order by t2.ngày đăng kí desc limit 1
select t1.chi tiết sinh viên from sinh viên as t1 join lượt đăng ký khoá học của sinh viên as t2 on t1.id sinh viên = t2.id sinh viên order by t2.ngày đăng kí desc limit 1
select count ( * ) from khoá học as t1 join lần tham dự khoá học của sinh viên as t2 on t1.id khoá học = t2.id khoá học where t1.tên khoá học = "English"
select count ( * ) from khoá học as t1 join lần tham dự khoá học của sinh viên as t2 on t1.id khoá học = t2.id khoá học where t1.tên khoá học = "English"
select count ( * ) from lần tham dự khoá học của sinh viên as t1 join khoá học as t2 on t1.id khoá học = t2.id khoá học where t1.id sinh viên = 171
select count ( * ) from lần tham dự khoá học của sinh viên as t1 join khoá học as t2 on t1.id khoá học = t2.id khoá học where t1.id sinh viên = 171
select t1.id ứng cử viên from ứng cử viên as t1 join cá nhân as t2 on t1.id ứng cử viên = t2.id cá nhân where t2.địa chỉ email = "stanley.monahan@example.org"
select t2.id ứng cử viên from cá nhân as t1 join ứng cử viên as t2 on t1.id cá nhân = t2.id ứng cử viên where t1.địa chỉ email = "stanley.monahan@example.org"
select id ứng cử viên from đánh giá ứng cử viên order by ngày đánh giá desc limit 1
select id ứng cử viên from đánh giá ứng cử viên order by ngày đánh giá desc limit 1
select t1.chi tiết sinh viên from sinh viên as t1 join lượt đăng ký khoá học của sinh viên as t2 on t1.id sinh viên = t2.id sinh viên group by t1.id sinh viên order by count ( * ) desc limit 1
select t1.chi tiết sinh viên from sinh viên as t1 join lượt đăng ký khoá học của sinh viên as t2 on t1.id sinh viên = t2.id sinh viên group by t1.id sinh viên order by count ( * ) desc limit 1
select t1.id sinh viên , count ( * ) from sinh viên as t1 join lượt đăng ký khoá học của sinh viên as t2 on t1.id sinh viên = t2.id sinh viên group by t1.id sinh viên
select count ( * ) , id sinh viên from lượt đăng ký khoá học của sinh viên group by id sinh viên
select t1.tên khoá học , count ( * ) from khoá học as t1 join lượt đăng ký khoá học của sinh viên as t2 on t1.id khoá học = t2.id khoá học group by t1.tên khoá học
select t1.id khoá học , count ( * ) , t2.tên khoá học from lượt đăng ký khoá học của sinh viên as t1 join khoá học as t2 on t1.id khoá học = t2.id khoá học group by t1.id khoá học
select id ứng cử viên from đánh giá ứng cử viên where mã kết quả đánh giá = "Pass"
select id ứng cử viên from đánh giá ứng cử viên where mã kết quả đánh giá = "Pass"
select t1.số di động from cá nhân as t1 join ứng cử viên as t2 on t1.id cá nhân = t2.id ứng cử viên join đánh giá ứng cử viên as t3 on t2.id ứng cử viên = t3.id ứng cử viên where t3.mã kết quả đánh giá = "Fail"
select t2.số di động from ứng cử viên as t1 join đánh giá ứng cử viên as t2 on t1.id ứng cử viên = t2.id ứng cử viên where t2.mã kết quả đánh giá = "Rejected"
select id sinh viên from lượt đăng ký khoá học của sinh viên where id khoá học = 301
select id sinh viên from lượt đăng ký khoá học của sinh viên where id khoá học = 301
select id sinh viên from lần tham dự khoá học của sinh viên where id khoá học = 301 order by ngày tham dự desc limit 1
select id sinh viên from lần tham dự khoá học của sinh viên where id khoá học = 301 order by ngày tham dự desc limit 1
select distinct t1.thành phố from cá nhân as t1 join địa chỉ cá nhân as t2 on t1.id cá nhân = t2.id cá nhân join địa chỉ as t3 on t2.id địa chỉ = t3.id địa chỉ
select distinct t1.thành phố from địa chỉ as t1 join cá nhân as t2 on t1.id địa chỉ = t2.id địa chỉ
select distinct t1.thành phố from địa chỉ as t1 join địa chỉ cá nhân as t2 on t1.id địa chỉ = t2.id địa chỉ
select distinct t1.thành phố from địa chỉ as t1 join địa chỉ cá nhân as t2 on t1.id địa chỉ = t2.id địa chỉ
select tên khoá học from khoá học order by tên khoá học
select tên khoá học from khoá học order by tên khoá học
select tên from cá nhân order by tên
select tên from cá nhân order by tên
select id sinh viên from lượt đăng ký khoá học của sinh viên union select id sinh viên from lần tham dự khoá học của sinh viên
select id sinh viên from lượt đăng ký khoá học của sinh viên union select id sinh viên from lần tham dự khoá học của sinh viên
select id khoá học from lượt đăng ký khoá học của sinh viên where id sinh viên = 121 union select id khoá học from lần tham dự khoá học của sinh viên where id sinh viên = 121
select id khoá học from lượt đăng ký khoá học của sinh viên where id sinh viên = 121 union select id khoá học from lần tham dự khoá học của sinh viên where id sinh viên = 121
select * from lượt đăng ký khoá học của sinh viên where id sinh viên not in ( select id sinh viên from lần tham dự khoá học của sinh viên )
select chi tiết sinh viên from sinh viên where id sinh viên in ( select id sinh viên from lượt đăng ký khoá học của sinh viên except select id sinh viên from lần tham dự khoá học của sinh viên )
select t1.id sinh viên from sinh viên as t1 join lượt đăng ký khoá học của sinh viên as t2 on t1.id sinh viên = t2.id sinh viên join khoá học as t3 on t2.id khoá học = t3.id khoá học where t3.tên khoá học = "statistics" order by t2.ngày đăng kí
select t1.id sinh viên from sinh viên as t1 join lượt đăng ký khoá học của sinh viên as t2 on t1.id sinh viên = t2.id sinh viên join khoá học as t3 on t2.id khoá học = t3.id khoá học where t3.tên khoá học = "statistics" order by t2.ngày đăng kí
select t1.id sinh viên from sinh viên as t1 join lần tham dự khoá học của sinh viên as t2 on t1.id sinh viên = t2.id sinh viên join khoá học as t3 on t2.id khoá học = t3.id khoá học where t3.tên khoá học = "statistics" order by t2.ngày tham dự
select t1.id sinh viên from sinh viên as t1 join lần tham dự khoá học của sinh viên as t2 on t1.id sinh viên = t2.id sinh viên join khoá học as t3 on t2.id khoá học = t3.id khoá học where t3.tên khoá học = "statistics" order by t2.ngày tham dự
select count ( * ) from lượt nộp bài
select count ( * ) from lượt nộp bài
select tác giả from lượt nộp bài order by số điểm asc
select tác giả from lượt nộp bài order by số điểm asc
select tác giả , trường đại học from lượt nộp bài
select tác giả , trường đại học from lượt nộp bài
select tác giả from lượt nộp bài where trường đại học = "Florida" or trường đại học = "Temple"
select tác giả from lượt nộp bài where trường đại học = "Florida" or trường đại học = "Temple"
select avg ( số điểm ) from lượt nộp bài
select avg ( số điểm ) from lượt nộp bài
select tác giả from lượt nộp bài order by số điểm desc limit 1
select tác giả from lượt nộp bài order by số điểm desc limit 1
select trường đại học , count ( * ) from lượt nộp bài group by trường đại học
select trường đại học , count ( * ) from lượt nộp bài group by trường đại học
select trường đại học from lượt nộp bài group by trường đại học order by count ( * ) desc limit 1
select trường đại học from lượt nộp bài group by trường đại học order by count ( * ) desc limit 1
select trường đại học from lượt nộp bài where số điểm > 90 intersect select trường đại học from lượt nộp bài where số điểm < 80
select trường đại học from lượt nộp bài where số điểm > 90 intersect select trường đại học from lượt nộp bài where số điểm < 80
select t2.tác giả , t1.kết quả from chấp thuận as t1 join lượt nộp bài as t2 on t1.id lượt nộp bài = t2.id lượt nộp bài
select t2.tác giả , t1.kết quả from chấp thuận as t1 join lượt nộp bài as t2 on t1.id lượt nộp bài = t2.id lượt nộp bài
select t1.kết quả from chấp thuận as t1 join lượt nộp bài as t2 on t1.id lượt nộp bài = t2.id lượt nộp bài order by t2.số điểm desc limit 1
select t1.kết quả from chấp thuận as t1 join lượt nộp bài as t2 on t1.id lượt nộp bài = t2.id lượt nộp bài order by t2.số điểm desc limit 1
select t2.tác giả , count ( distinct t1.id hội thảo ) from chấp thuận as t1 join lượt nộp bài as t2 on t1.id lượt nộp bài = t2.id lượt nộp bài group by t2.tác giả
select t2.tác giả , count ( distinct t1.id hội thảo ) from chấp thuận as t1 join lượt nộp bài as t2 on t1.id lượt nộp bài = t2.id lượt nộp bài group by t2.tác giả
select t1.tác giả from lượt nộp bài as t1 join chấp thuận as t2 on t1.id lượt nộp bài = t2.id lượt nộp bài group by t1.tác giả having count ( * ) > 1
select t2.tác giả from chấp thuận as t1 join lượt nộp bài as t2 on t1.id lượt nộp bài = t2.id lượt nộp bài group by t2.tác giả having count ( distinct t1.id hội thảo ) > 1
select ngày , địa điểm from hội thảo order by địa điểm
select ngày , địa điểm from hội thảo order by địa điểm
select tác giả from lượt nộp bài where id lượt nộp bài not in ( select id lượt nộp bài from chấp thuận )
select tác giả from lượt nộp bài where id lượt nộp bài not in ( select id lượt nộp bài from chấp thuận )
select tên from doanh nghiệp where đánh giá xếp hạng > 4.5
select tên from doanh nghiệp where đánh giá xếp hạng = 3.5
select id người tiêu dùng from người tiêu dùng where tên = "Michelle"
select tiểu bang from doanh nghiệp where tên = "Whataburger"
select t1.thành phố from doanh nghiệp as t1 join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t1.tên = "MGM Steakhouse Provider"
select thành phố from doanh nghiệp where đánh giá xếp hạng < 1.5
select thành phố from doanh nghiệp where tên = "Taj Mahal"
select văn bản from đánh giá where đánh giá xếp hạng < 1
select t1.tên from loại hình as t2 join doanh nghiệp as t1 on t2.id doanh nghiệp = t1.id doanh nghiệp where t1.đánh giá xếp hạng > 3.5 and t2.tên loại hình = "restaurant"
select t1.thành phố from doanh nghiệp as t1 join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t1.tên = "Taj Mahal" and t2.tên loại hình = "restaurant"
select t1.văn bản from người tiêu dùng as t2 join đánh giá as t1 on t2.id người tiêu dùng = t1.id người tiêu dùng where t2.tên = "Niloofar"
select distinct t1.tên from doanh nghiệp as t1 join đánh giá as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp join người tiêu dùng as t3 on t2.id người tiêu dùng = t3.id người tiêu dùng where t3.tên = "Niloofar"
select distinct t1.tên from doanh nghiệp as t1 join đánh giá as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp join người tiêu dùng as t3 on t2.id người tiêu dùng = t3.id người tiêu dùng where t3.tên = "Niloofar" and t2.đánh giá xếp hạng = 5
select t3.văn bản from người tiêu dùng as t2 join đánh giá as t1 on t2.id người tiêu dùng = t1.id người tiêu dùng join doanh nghiệp as t3 on t3.id doanh nghiệp = t1.id doanh nghiệp where t2.tên = "Michelle" and t3.tên = "Italian restaurant"
select count ( distinct t1.văn bản ) from đánh giá as t1 join doanh nghiệp as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp join loại hình as t3 on t2.id doanh nghiệp = t3.id doanh nghiệp join người tiêu dùng as t4 on t1.id người tiêu dùng = t4.id người tiêu dùng where t2.tiểu bang = "Texas" and t3.tên loại hình = "restaurant" and t2.tên = "Cafe Zinho"
select t1.tên from loại hình as t2 join doanh nghiệp as t1 on t2.id doanh nghiệp = t1.id doanh nghiệp where t1.đánh giá xếp hạng = 5 and t2.tên loại hình = "Italian"
select t1.tên khu phố lân cận from loại hình as t2 join doanh nghiệp as t1 on t2.id doanh nghiệp = t1.id doanh nghiệp join khu vực lân cận as t3 on t3.id doanh nghiệp = t1.id doanh nghiệp join người tiêu dùng as t4 on t4.id người tiêu dùng = t2.id người tiêu dùng where t1.thành phố = "Madison" and t2.tên loại hình = "Italian" and t4.tên = "restaurant"
select t1.tên khu phố lân cận from khu vực lân cận as t1 join doanh nghiệp as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp join loại hình as t3 on t2.id doanh nghiệp = t3.id doanh nghiệp join đánh giá as t4 on t2.id doanh nghiệp = t4.id doanh nghiệp where t3.tên loại hình = "Italian" and t4.đánh giá xếp hạng < 2.5 and t2.thành phố = "Madison"
select t1.tên from loại hình as t2 join doanh nghiệp as t1 on t2.id doanh nghiệp = t1.id doanh nghiệp join loại hình as t3 on t3.id doanh nghiệp = t1.id doanh nghiệp where t1.tiểu bang = "Pennsylvania" and t2.tên loại hình = "restaurant" and t3.tên loại hình = "restaurant"
select t1.tên from loại hình as t2 join doanh nghiệp as t1 on t2.id doanh nghiệp = t1.id doanh nghiệp where t1.tiểu bang = "Pennsylvania" and t2.tên loại hình = "restaurant"
select t3.văn bản from loại hình as t2 join doanh nghiệp as t1 on t2.id doanh nghiệp = t1.id doanh nghiệp join đánh giá as t3 on t3.id doanh nghiệp = t1.id doanh nghiệp where t1.số lượng đánh giá > 100 and t2.tên loại hình = "Pet Groomers"
select t1.tên from loại hình as t2 join doanh nghiệp as t1 on t2.id doanh nghiệp = t1.id doanh nghiệp join loại hình as t3 on t3.id doanh nghiệp = t1.id doanh nghiệp where t1.thành phố = "Los Angeles" and t2.tên loại hình = "brewery" and t3.tên loại hình = "beer"
select t1.tên from loại hình as t2 join doanh nghiệp as t1 on t2.id doanh nghiệp = t1.id doanh nghiệp join loại hình as t3 on t3.id doanh nghiệp = t1.id doanh nghiệp where t1.thành phố = "Los Angeles" and t3.tên loại hình = "Brewery"
select t1.tên from loại hình as t2 join doanh nghiệp as t1 on t2.id doanh nghiệp = t1.id doanh nghiệp join loại hình as t3 on t3.id doanh nghiệp = t1.id doanh nghiệp join khu vực lân cận as t4 on t4.id doanh nghiệp = t1.id doanh nghiệp where t1.thành phố = "Los Angeles" and t2.tên loại hình = "Brewery" and t3.tên loại hình = "Brewpub" and t4.tên khu phố lân cận = "downtown"
select t2.tên from đánh giá as t1 join người tiêu dùng as t2 on t1.id người tiêu dùng = t2.id người tiêu dùng join doanh nghiệp as t3 on t1.id doanh nghiệp = t3.id doanh nghiệp where t3.tên = "Mesa Grill"
select địa chỉ đầy đủ from doanh nghiệp where thành phố = "Los Angeles" and tên = "Walmart"
select distinct t1.tên from loại hình as t2 join doanh nghiệp as t1 on t2.id doanh nghiệp = t1.id doanh nghiệp join người tiêu dùng as t3 on t3.id người tiêu dùng = t2.id người tiêu dùng where t1.thành phố = "Dallas" and t3.tên = "Patrick" and t2.tên loại hình = "restaurant"
select t1.tên from doanh nghiệp as t1 join đánh giá as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp join người tiêu dùng as t3 on t2.id người tiêu dùng = t3.id người tiêu dùng where t3.tên = "Patrick" and t1.thành phố = "Dallas" and t2.đánh giá xếp hạng > 3
select t1.tên from loại hình as t2 join doanh nghiệp as t1 on t2.id doanh nghiệp = t1.id doanh nghiệp join đánh giá as t3 on t3.id doanh nghiệp = t1.id doanh nghiệp join người tiêu dùng as t4 on t4.id người tiêu dùng = t3.id người tiêu dùng where t4.tên = "Patrick" and t2.tên loại hình = "bar"
select distinct t1.tên from loại hình as t2 join doanh nghiệp as t1 on t2.id doanh nghiệp = t1.id doanh nghiệp join đánh giá as t3 on t3.id doanh nghiệp = t1.id doanh nghiệp join người tiêu dùng as t4 on t4.id người tiêu dùng = t3.id người tiêu dùng where t4.tên = "Patrick" and t3.đánh giá xếp hạng >= 3 and t2.tên loại hình = "bar"
select t1.tên from người tiêu dùng as t1 join khoản tiền boa as t2 on t1.id người tiêu dùng = t2.id người tiêu dùng join doanh nghiệp as t3 on t2.id doanh nghiệp = t3.id doanh nghiệp where t3.tên = "Barrio Cafe" and t2.năm = 2015
select tên from doanh nghiệp where đánh giá xếp hạng < 2 and tiểu bang = "Texas"
select t1.tên from loại hình as t2 join doanh nghiệp as t1 on t2.id doanh nghiệp = t1.id doanh nghiệp join loại hình as t3 on t3.id doanh nghiệp = t1.id doanh nghiệp join loại hình as t4 on t4.id doanh nghiệp = t1.id doanh nghiệp where t1.thành phố = "Los Angeles" and t2.tên loại hình = "seafood" and t3.tên loại hình = "restaurant" and t4.tên loại hình = "seafood"
select t1.tên from loại hình as t2 join doanh nghiệp as t1 on t2.id doanh nghiệp = t1.id doanh nghiệp join loại hình as t3 on t3.id doanh nghiệp = t1.id doanh nghiệp join loại hình as t4 on t4.id doanh nghiệp = t1.id doanh nghiệp where t2.tên loại hình = "seafood" and t3.tên loại hình = "restaurant" and t4.tên loại hình = "los angeles" and t1.thành phố = "los angeles"
select t1.tên from loại hình as t2 join doanh nghiệp as t1 on t2.id doanh nghiệp = t1.id doanh nghiệp join loại hình as t3 on t3.id doanh nghiệp = t1.id doanh nghiệp join người tiêu dùng as t4 on t4.id người tiêu dùng = t2.id người tiêu dùng where t1.thành phố = "Los Angeles" and t3.tên loại hình = "Seafood" and t4.tên = "Yelp"
select t2.văn bản from đánh giá as t2 join người tiêu dùng as t1 on t2.id người tiêu dùng = t1.id người tiêu dùng where t1.tên = "Patrick" and t2.đánh giá xếp hạng > 4
select tên from doanh nghiệp where thành phố = "Los Angeles" and tên = "Apple Store"
select t1.tên from loại hình as t2 join doanh nghiệp as t1 on t2.id doanh nghiệp = t1.id doanh nghiệp join loại hình as t3 on t3.id doanh nghiệp = t1.id doanh nghiệp where t1.thành phố = "Dallas" and t1.đánh giá xếp hạng > 4.5 and t2.tên loại hình = "restaurant" and t3.tên loại hình = "restaurant"
select t1.tên khu phố lân cận from khu vực lân cận as t1 join doanh nghiệp as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t2.tên = "Flat Top Grill"
select t2.văn bản from khoản tiền boa as t2 join doanh nghiệp as t1 on t2.id doanh nghiệp = t1.id doanh nghiệp where t1.tên = "Vintner Grill" and t2.số lượt thích > 9
select t2.văn bản from đánh giá as t2 join doanh nghiệp as t1 on t2.id doanh nghiệp = t1.id doanh nghiệp where t1.tên = "Kabob Garden" and t2.năm = 2014
select t1.tên from người tiêu dùng as t1 join khoản tiền boa as t2 on t1.id người tiêu dùng = t2.id người tiêu dùng join doanh nghiệp as t3 on t2.id doanh nghiệp = t3.id doanh nghiệp where t3.thành phố = "Dallas"
select t1.thành phố from doanh nghiệp as t1 join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t1.tên = "MGM Steakhouse" and t2.tên loại hình = "restaurant" and t1.tiểu bang = "Texas"
select t2.tên from khoản tiền boa as t1 join người tiêu dùng as t2 on t1.id người tiêu dùng = t2.id người tiêu dùng join doanh nghiệp as t3 on t1.id doanh nghiệp = t3.id doanh nghiệp join loại hình as t4 on t3.id doanh nghiệp = t4.id doanh nghiệp where t4.tên loại hình = "Pet groomers"
select t1.văn bản from khoản tiền boa as t1 join doanh nghiệp as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp join loại hình as t3 on t2.id doanh nghiệp = t3.id doanh nghiệp join người tiêu dùng as t4 on t1.id người tiêu dùng = t4.id người tiêu dùng where t2.tên = "Cafe Zinho" and t3.tên loại hình = "restaurant" and t4.tên = "Texas"
select t3.tên from loại hình as t2 join doanh nghiệp as t1 on t2.id doanh nghiệp = t1.id doanh nghiệp join đánh giá as t3 on t3.id doanh nghiệp = t1.id doanh nghiệp where t2.tên loại hình = "restaurant"
select t3.văn bản from doanh nghiệp as t1 join khoản tiền boa as t3 on t1.id doanh nghiệp = t3.id doanh nghiệp join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t1.tên = "Cafe Zinho" and t2.tên loại hình = "restaurant" and t3.năm = 2010
select t1.tên from giảng viên as t1 join giảng dạ
select t2.văn bản from khoản tiền boa as t1 join đánh giá as t2 on t1.id đánh giá = t2.id đánh giá where t1.năm = 2012
select t1.văn bản from đánh giá as t1 join doanh nghiệp as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t2.đánh giá xếp hạng = 2.5
select count ( distinct t1.tên ) from loại hình as t2 join doanh nghiệp as t1 on t2.id doanh nghiệp = t1.id doanh nghiệp where t1.thành phố = "Madison" and t2.tên loại hình = "escape games"
select count ( distinct t1.tên ) from loại hình as t2 join doanh nghiệp as t1 on t2.id doanh nghiệp = t1.id doanh nghiệp where t1.thành phố = "Madison" and t2.tên loại hình = "escape games"
select count ( distinct t1.tên ) from loại hình as t2 join doanh nghiệp as t1 on t2.id doanh nghiệp = t1.id doanh nghiệp where t1.thành phố = "Madison" and t2.tên loại hình = "escape games"
select count ( distinct t1.tên ) from loại hình as t2 join doanh nghiệp as t1 on t2.id doanh nghiệp = t1.id doanh nghiệp where t1.thành phố = "Madison" and t2.tên loại hình = "escape games"
select count ( distinct t1.tên ) from loại hình as t2 join doanh nghiệp as t1 on t2.id doanh nghiệp = t1.id doanh nghiệp where t1.thành phố = "Madison" and t2.tên loại hình = "escape games"
select count ( * ) from doanh nghiệp as t1 join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t1.đánh giá xếp hạng > 3.5 and t2.tên loại hình = "restaurant"
select sum ( t2.số lượng ) from loại hình as t1 join doanh nghiệp as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp join lượt đăng ký as t3 on t2.id doanh nghiệp = t3.id doanh nghiệp where t1.tên loại hình = "Marrok" and t2.thành phố = "Los Angeles"
select sum ( t2.số lượng ) from loại hình as t1 join doanh nghiệp as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp join lượt đăng ký as t3 on t2.id doanh nghiệp = t3.id doanh nghiệp where t1.tên loại hình = "Marrok" and t2.thành phố = "Los Angeles" and t3.ngày = "Friday"
select t2.tháng , count ( * ) from loại hình as t1 join doanh nghiệp as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp join lượt đăng ký as t3 on t2.id doanh nghiệp = t3.id doanh nghiệp where t1.tên loại hình = "Moroccan" and t2.thành phố = "Los Angeles" group by t2.tháng
select t1.tháng , sum ( t2.số lượng ) from người tiêu dùng as t3 join lượt đăng ký as t2 on t3.id người tiêu dùng = t2.id người tiêu dùng join doanh nghiệp as t1 on t1.id doanh nghiệp = t2.id doanh nghiệp join loại hình as t4 on t1.id doanh nghiệp = t4.id doanh nghiệp where t4.tên loại hình = "Italian Delis" and t2.ngày = "Sunday" group by t1.tiểu bang
select count ( distinct t1.văn bản ) from người tiêu dùng as t2 join đánh giá as t1 on t2.id người tiêu dùng = t1.id người tiêu dùng where t1.năm = 2015 and t2.tên = "Niloofar"
select avg ( t1.đánh giá xếp hạng ) from người tiêu dùng as t2 join đánh giá as t1 on t2.id người tiêu dùng = t1.id người tiêu dùng where t2.tên = "Michelle"
select t2.số lượng from doanh nghiệp as t1 join lượt đăng ký as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t1.tên = "Cafe Zinho" and t2.ngày = "Friday"
select count ( distinct t3.tên ) from doanh nghiệp as t1 join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp join đánh giá as t3 on t1.id doanh nghiệp = t3.id doanh nghiệp where t1.thành phố = "Pittsburgh" and t2.tên loại hình = "restaurant" and t1.tên = "Sushi Too"
select count ( * ) from doanh nghiệp as t1 join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t1.thành phố = "Pittsburgh" and t2.tên loại hình = "restaurant" and t1.đánh giá xếp hạng > 4.5
select count ( distinct văn bản ) from khoản tiền boa where năm = 2015
select sum ( t2.số lượt thích ) from người tiêu dùng as t1 join khoản tiền boa as t2 on t1.id người tiêu dùng = t2.id người tiêu dùng where t1.tên = "Niloofar"
select sum ( t2.số lượt thích ) from doanh nghiệp as t1 join khoản tiền boa as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t1.tên = "Cafe Zinho"
select sum ( t2.số lượt thích ) from khoản tiền boa as t2 join doanh nghiệp as t1 on t2.id doanh nghiệp = t1.id doanh nghiệp join người tiêu dùng as t3 on t2.id người tiêu dùng = t3.id người tiêu dùng where t1.tên = "Cafe Zinho" and t3.tên = "Niloofar"
select count ( distinct t1.văn bản ) from người tiêu dùng as t2 join khoản tiền boa as t1 on t2.id người tiêu dùng = t1.id người tiêu dùng where t1.năm = 2010 and t2.tên = "Michelle"
select count ( distinct t1.văn bản ) from đánh giá as t1 join người tiêu dùng as t2 on t1.id người tiêu dùng = t2.id người tiêu dùng join khoản tiền boa as t3 on t3.id người tiêu dùng = t2.id người tiêu dùng where t2.tên = "Michelle" and t3.năm = 2010
select count ( distinct t1.văn bản ) from người tiêu dùng as t2 join khoản tiền boa as t1 on t2.id người tiêu dùng = t1.id người tiêu dùng where t1.tháng = "April" and t2.tên = "Michelle"
select count ( distinct t1.tên ) from loại hình as t2 join doanh nghiệp as t1 on t2.id doanh nghiệp = t1.id doanh nghiệp where t1.tiểu bang = "Texas" and t2.tên loại hình = "restaurant"
select count ( distinct t1.tên ) from loại hình as t2 join doanh nghiệp as t1 on t2.id doanh nghiệp = t1.id doanh nghiệp join loại hình as t3 on t3.id doanh nghiệp = t1.id doanh nghiệp where t1.thành phố = "Dallas" and t1.đánh giá xếp hạng > 3.5 and t2.tên loại hình = "bar" and t3.tên loại hình = "restaurant"
select count ( distinct t1.tên ) from loại hình as t2 join doanh nghiệp as t1 on t2.id doanh nghiệp = t1.id doanh nghiệp where t1.thành phố = "Dallas" and t1.đánh giá xếp hạng > 3.5 and t2.tên loại hình = "bar"
select count ( distinct t4.tên ) from doanh nghiệp as t1 join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp join đánh giá as t3 on t1.id doanh nghiệp = t3.id doanh nghiệp join người tiêu dùng as t4 on t3.id người tiêu dùng = t4.id người tiêu dùng where t1.thành phố = "Dallas" and t1.tiểu bang = "Texas" and t2.tên loại hình = "Texas de Brazil Restaurant" and t3.văn bản = "great"
select count ( distinct t4.tên ) from loại hình as t2 join doanh nghiệp as t1 on t2.id doanh nghiệp = t1.id doanh nghiệp join đánh giá as t4 on t4.id doanh nghiệp = t1.id doanh nghiệp join người tiêu dùng as t3 on t3.id người tiêu dùng = t4.id người tiêu dùng where t1.tên = "Bistro Di Napoli" and t4.năm = 2015
select count ( distinct t1.tên ) from loại hình as t2 join doanh nghiệp as t1 on t2.id doanh nghiệp = t1.id doanh nghiệp join khu vực lân cận as t3 on t3.id doanh nghiệp = t1.id doanh nghiệp join thành phố as t4 on t4.id thành phố = t1.id thành phố where t4.thành phố = "Dallas" and t3.tên khu phố lân cận = "Hazelwood" and t2.tên loại hình = "restaurant"
select count ( distinct t1.tên ) from doanh nghiệp as t1 join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp join người tiêu dùng as t3 on t2.id người tiêu dùng = t3.id người tiêu dùng where t1.thành phố = "Dallas" and t1.tiểu bang = "Texas" and t3.tên = "Starbucks"
select số lượng đánh giá from doanh nghiệp where tên = "Acacia Cafe"
select t1.số lượng , t2.tháng from lượt đăng ký as t1 join doanh nghiệp as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t2.tên = "Barrio Cafe" and t1.số lượng > 10
select count ( distinct t3.tên ) from doanh nghiệp as t1 join lượt đăng ký as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp join người tiêu dùng as t3 on t3.id người tiê
select count ( distinct t1.văn bản ) from người tiêu dùng as t2 join đánh giá as t1 on t2.id người tiêu dùng = t1.id người tiêu dùng where t2.tên = "Adrienne"
select count ( distinct t1.văn bản ) from người tiêu dùng as t2 join đánh giá as t1 on t2.id người tiêu dùng = t1.id người tiêu dùng where t1.tháng = "March" and t1.năm = 2014 and t2.tên = "Michelle"
select count ( distinct t1.tên ) from người tiêu dùng as t2 join đánh giá as t1 on t2.id người tiêu dùng = t1.id người tiêu dùng where t1.năm = 2010 and t2.tên = "Michelle"
select count ( distinct t1.tên ) from doanh nghiệp as t1 join đánh giá as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp join người tiêu dùng as t3 on t2.id người tiêu dùng = t3.id người tiêu dùng where t3.tên = "Christine" and t1.thành phố = "San Diego" and t2.năm = 2010
select count ( distinct t1.tên ) from loại hình as t2 join doanh nghiệp as t1 on t2.id doanh nghiệp = t1.id doanh nghiệp where t1.thành phố = "Los Angeles" and t2.tên loại hình = "Target"
select count ( distinct t4.tên ) from loại hình as t2 join doanh nghiệp as t1 on t2.id doanh nghiệp = t1.id doanh nghiệp join đánh giá as t3 on t3.id doanh nghiệp = t1.id doanh nghiệp join người tiêu dùng as t4 on t4.id người tiêu dùng = t3.id người tiêu dùng where t1.thành phố = "Dallas" and t2.tên loại hình = "Irish Pub"
select avg ( đánh giá xếp hạng ) from đánh giá where năm = 2014
select count ( distinct t3.tên ) from doanh nghiệp as t1 join đánh giá as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp join người tiêu dùng as t3 on t3.id người tiêu dùng = t2.id người tiêu dùng where t1.tên = "Vintner Grill" and t2.năm = 2010
select count ( distinct t1.đánh giá xếp hạng ) from đánh giá as t1 join doanh nghiệp as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp join khu vực lân cận as t3 on t2.id doanh nghiệp = t3.id doanh nghiệp where t3.tên khu phố lân cận = "South Summerlin"
select count ( distinct tên ) from người tiêu dùng where tên = "Michelle"
select count ( distinct t1.tên ) from loại hình as t2 join doanh nghiệp as t1 on t2.id doanh nghiệp = t1.id doanh nghiệp where t2.tên loại hình = "restaurant"
select count ( distinct t1.thành phố ) from doanh nghiệp as t1 join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t1.tên = "Panda Express" and t2.tên loại hình = "restaurant"
select count ( distinct t1.văn bản ) from người tiêu dùng as t2 join khoản tiền boa as t1 on t2.id người tiêu dùng = t1.id người tiêu dùng where t2.tên = "Michelle"
select sum ( t2.số lượng ) from khu vực lân cận as t1 join lượt đăng ký as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t1.tên khu phố lân cận = "Brighton Heights"
select count ( distinct văn bản ) from đánh giá where tháng = "March"
select count ( distinct văn bản ) from khoản tiền boa
select count ( distinct t3.tên khu phố lân cận ) from doanh nghiệp as t1 join khu vực lân cận as t3 on t1.id doanh nghiệp = t3.id doanh nghiệp join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t1.thành phố = "Madison" and t2.tên loại hình = "5"
select t1.tên from loại hình as t2 join doanh nghiệp as t1 on t2.id doanh nghiệp = t1.id doanh nghiệp join loại hình as t3 on t3.id doanh nghiệp = t1.id doanh nghiệp join loại hình as t4 on t4.id doanh nghiệp = t1.id doanh nghiệp where t2.tên loại hình = "Mexican" and t3.tên loại hình = "restaurant" and t4.tên loại hình = "chinese" and t1.tiểu bang = "Texas"
select t1.tên from doanh nghiệp as t1 join lượt đăng ký as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp group by t2.id doanh nghiệp order by sum ( t2.số lượng ) desc limit 1
select t1.tên khu phố lân cận from khu vực lân cận as t1 join doanh nghiệp as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t2.thành phố = "Madison" group by t1.tên khu phố lân cận order by count ( * ) desc limit 1
select t1.tên from loại hình as t2 join doanh nghiệp as t1 on t2.id doanh nghiệp = t1.id doanh nghiệp join loại hình as t3 on t3.id doanh nghiệp = t1.id doanh nghiệp join khu vực lân cận as t4 on t4.id doanh nghiệp = t1.id doanh nghiệp where t1.thành phố = "Dallas" and t1.đánh giá xếp hạng > 3.5 and t2.tên loại hình = "Mexican" and t3.tên loại hình = "restaurant" and t4.tên khu phố lân cận = "dallas"
select t1.tên from loại hình as t2 join doanh nghiệp as t1 on t2.id doanh nghiệp = t1.id doanh nghiệp join loại hình as t3 on t3.id doanh nghiệp = t1.id doanh nghiệp join người tiêu dùng as t4 on t4.id người tiêu dùng = t3.id người tiêu dùng where t1.thành phố = "Dallas" and t2.tên loại hình = "Mexican" and t1.đánh giá xếp hạng >= 3.5 and t3.tên loại hình = "restaurant" and t4.tên = "all"
select t1.tên from loại hình as t2 join doanh nghiệp as t1 on t2.id doanh nghiệp = t1.id doanh nghiệp join loại hình as t3 on t3.id doanh nghiệp = t1.id doanh nghiệp where t1.thành phố = "Dallas" and t1.tiểu bang = "Texas" and t2.tên loại hình = "car service" and t3.tên loại hình = "restaurant"
select t1.tên from loại hình as t2 join doanh nghiệp as t1 on t2.id doanh nghiệp = t1.id doanh nghiệp join khu vực lân cận as t3 on t3.id doanh nghiệp = t1.id doanh nghiệp where t2.tên loại hình = "Italian" and t3.tên khu phố lân cận = "Meadowood" and t1.thành phố = "Madison"
select t1.tên from loại hình as t2 join doanh nghiệp as t1 on t2.id doanh nghiệp = t1.id doanh nghiệp where t1.thành phố = "Los Angeles" and t1.đánh giá xếp hạng > 3 and t1.số lượng đánh giá >= 30 and t2.tên loại hình = "bar" group by t1.tên
select count ( distinct t1.tên ) from loại hình as t2 join doanh nghiệp as t1 on t2.id doanh nghiệp = t1.id doanh nghiệp where t1.thành phố = "Edinburgh" and t2.tên loại hình = "African"
select t1.tên from người tiêu dùng as t1 join đánh giá as t2 on t1.id người tiêu dùng = t2.id người tiêu dùng group by t1.tên having avg ( t2.đánh giá xếp hạng ) < 3
select t1.tên from doanh nghiệp as t1 join đánh giá as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t2.tháng = "April" group by t2.id doanh nghiệp order by count ( * ) desc limit 1
select t1.tên from loại hình as t2 join doanh nghiệp as t1 on t2.id doanh nghiệp = t1.id doanh nghiệp group by t2.id doanh nghiệp order by count ( * ) desc limit 1