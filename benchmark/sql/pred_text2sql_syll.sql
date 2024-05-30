select id tài sản from tài sản group by id tài sản having count ( * ) <= 2
select id hợp đồng bảo trì , count ( * ) from tài sản group by id hợp đồng bảo trì
select id công ty cung cấp , count ( * ) from tài sản group by id công ty cung cấp
select t1.tên công ty , t1.id công ty from công ty bên thứ ba as t1 join kỹ sư bảo trì as t2 on t1.id công ty = t2.id công ty group by t1.id công ty having count ( * ) >= 2 union select t1.tên công ty , t1.id công ty from công ty bên thứ ba as t1 join hợp đồng bảo trì as t2 on t1.id công ty = t2.id công ty group by t1.id công ty having count ( * ) >= 2
select t1.tên nhân viên , t1.id nhân viên from nhân viên as t1 join nhật ký lỗi as t2 on t1.id nhân viên = t2.được ghi lại bởi nhân viên có id where not id kỹ sư ghé thăm in ( select id kỹ sư ghé thăm from chuyến thăm của kỹ sư )
select t1.id kỹ sư , t1.tên , t1.họ from kỹ sư bảo trì as t1 join chuyến thăm của kỹ sư as t2 on t1.id kỹ sư = t2.id kỹ sư group by t1.id kỹ sư order by count ( * ) desc limit 1
select t1.tên bộ phận , t1.id bộ phận from bộ phận as t1 join lỗi bộ phận as t2 on t1.id bộ phận = t2.id bộ phận group by t1.id bộ phận having count ( * ) > 2
select tên , họ , chi tiết khác , mô tả về kỹ năng from kỹ sư bảo trì
select t1.mô tả về lỗi , t2.mô tả về kỹ năng from lỗi bộ phận as t1 join kỹ năng cần để sửa chữa as t2 on t1.id bộ phận bị lỗi = t2.id bộ phận bị lỗi
select t2.tên bộ phận , count ( * ) from tài sản as t1 join bộ phận của tài sản as t2 on t1.id bộ phận = t2.id bộ phận group by t2.tên bộ phận
select mô tả về lỗi , tình trạng lỗi from nhật ký lỗi
select id mục nhập của nhật ký lỗi , count ( * ) from nhật ký lỗi group by id mục nhập của nhật ký lỗi order by count ( * ) desc limit 1
select distinct họ from nhân viên where id nhân viên not in ( select id nhân viên from kỹ sư bảo trì )
select distinct tình trạng lỗi from nhật ký lỗi
select tên , họ from nhân viên except select t1.tên , t1.họ from nhân viên as t1 join chuyến thăm của kỹ sư as t2 on t1.id nhân viên = t2.id nhân viên liên lạc
select id tài sản , chi tiết tài sản , thương hiệu tài sản , mẫu mã tài sản from tài sản
select ngày mua tài sản from tài sản order by ngày mua tài sản limit 1
select t1.id bộ phận bị lỗi , t1.tên viết tắt của lỗi from lỗi bộ phận as t1 join kỹ năng cần để sửa chữa as t2 on t1.id bộ phận bị lỗi = t2.id bộ phận bị lỗi group by t1.id bộ phận bị lỗi order by count ( * ) desc limit 1
select t1.tên bộ phận from bộ phận as t1 join lỗi bộ phận as t2 on t1.id bộ phận = t2.id bộ phận group by t1.id bộ phận order by count ( * ) asc limit 1
select id kỹ sư , tên , họ from kỹ sư bảo trì group by id kỹ sư order by count ( * ) limit 1
select t1.tên , t1.họ from nhân viên as t1 join nhân viên liên lạc as t2 on t1.id nhân viên = t2.id nhân viên
select id mục nhập của nhật ký lỗi , mô tả về lỗi , thời gian mục nhập của nhật ký lỗi from nhật ký lỗi group by id mục nhập của nhật ký lỗi order by count ( * ) desc limit 1
select t1.id kỹ năng , t1.mô tả về kỹ năng from kỹ năng as t1 join kỹ năng cần để sửa chữa as t2 on t1.id kỹ năng = t2.id kỹ năng group by t1.id kỹ năng order by count ( * ) desc limit 1
select distinct mẫu mã tài sản from tài sản
select thương hiệu tài sản , mẫu mã tài sản , chi tiết tài sản from tài sản order by ngày thanh lý tài sản asc
select id bộ phận , số tiền phải trả from bộ phận where số tiền phải trả = ( select min ( số tiền phải trả ) from bộ phận )
select tên công ty from hợp đồng bảo trì order by ngày bắt đầu hợp đồng limit 1
select tên công ty from hợp đồng bảo trì where ngày kết thúc hợp đồng = ( select max ( ngày kết thúc hợp đồng ) from hợp đồng bảo trì )
select giới tính from nhân viên group by giới tính order by count ( * ) desc limit 1
select t1.tên nhân viên , count ( * ) from nhân viên as t1 join nhân viên liên lạc as t2 on t1.id nhân viên = t2.id nhân viên group by t1.tên nhân viên
select mẫu mã tài sản from tài sản except select mẫu mã tài sản from nhật ký lỗi
select count ( * ) from sách
select tác giả from sách order by tác giả
select tiêu đề from sách order by số lượng phát hành asc
select tiêu đề from sách where tác giả <> "Elaine Lee"
select tiêu đề , số lượng phát hành from sách
select ngày xuất bản from ấn phẩm order by giá bán desc
select distinct nhà xuất bản from ấn phẩm where giá bán > 5000000
select nhà xuất bản from ấn phẩm order by giá bán desc limit 1
select ngày xuất bản from ấn phẩm order by giá bán limit 3
select tiêu đề , ngày xuất bản from ấn phẩm
select tác giả from sách where id sách in ( select id sách from ấn phẩm where giá bán > 4000000 )
select tiêu đề from ấn phẩm order by giá bán desc
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
select t1.tên người phụ thuộc from người phụ thuộc as t1 join nhân viên as t2 on t1.ssn của nhân viên = t2.ssn where t2.mã số bộ phận = 10
select count ( * ) from người phụ thuộc where giới tính = "F"
select tên bộ phận from địa điểm của bộ phận where địa điểm bộ phận = "Houston"
select tên , họ from nhân viên where lương > 30000
select giới tính , count ( * ) from nhân viên where lương < 50000 group by giới tính
select tên , họ , địa chỉ from nhân viên order by ngày sinh
select count ( * ) from giáo viên
select count ( * ) from giáo viên
select tên from giáo viên order by tuổi
select tên from giáo viên order by tuổi
select tuổi , quê quán from giáo viên
select tên , tuổi , quê quán from giáo viên
select tên from giáo viên where quê quán <> "Khu đô thị Little Lever"
select tên from giáo viên where quê quán <> "Khu đô thị Little Lever"
select tên from giáo viên where tuổi = 32 or tuổi = 33
select tên from giáo viên where tuổi = 32 or tuổi = 33
select quê quán from giáo viên order by tuổi limit 1
select tên from giáo viên where tuổi = ( select min ( tuổi ) from giáo viên )
select quê quán , count ( * ) from giáo viên group by quê quán
select quê quán , count ( * ) from giáo viên group by quê quán
select quê quán from giáo viên group by quê quán order by count ( * ) desc limit 1
select quê quán from giáo viên group by quê quán order by count ( * ) desc limit 1
select quê quán from giáo viên group by quê quán having count ( * ) >= 2
select quê quán from giáo viên group by quê quán having count ( * ) >= 2
select t1.tên , t2.khoá học from giáo viên as t1 join sắp xếp khoá học as t2 on t1.id giáo viên = t2.id giáo viên
select t1.tên , t2.khoá học from giáo viên as t1 join sắp xếp khoá học as t2 on t1.id giáo viên = t2.id giáo viên
select t1.tên , t2.khoá học from giáo viên as t1 join sắp xếp khoá học as t2 on t1.id giáo viên = t2.id giáo viên order by t1.tên
select t1.tên , t2.khoá học from giáo viên as t1 join sắp xếp khoá học as t2 on t1.id giáo viên = t2.id giáo viên order by t1.tên
select t1.tên from giáo viên as t1 join sắp xếp khoá học as t2 on t1.id giáo viên = t2.id giáo viên join khoá học as t3 on t2.id khoá học = t3.id khoá học where t3.khoá học = "Toán"
select t1.tên from giáo viên as t1 join sắp xếp khoá học as t2 on t1.id giáo viên = t2.id giáo viên join khoá học as t3 on t2.id khoá học = t3.id khoá học where t3.course = "Toán"
select t1.tên , count ( * ) from giáo viên as t1 join sắp xếp khoá học as t2 on t1.id giáo viên = t2.id giáo viên group by t1.id giáo viên
select t1.tên , count ( * ) from giáo viên as t1 join sắp xếp khoá học as t2 on t1.id giáo viên = t2.id giáo viên group by t1.id giáo viên
select t1.tên from giáo viên as t1 join sắp xếp khoá học as t2 on t1.id giáo viên = t2.id giáo viên group by t1.id giáo viên having count ( * ) >= 2
select t1.tên from giáo viên as t1 join sắp xếp khoá học as t2 on t1.id giáo viên = t2.id giáo viên group by t1.id giáo viên having count ( * ) >= 2
select tên from giáo viên where id giáo viên not in ( select id giáo viên from sắp xếp khoá học )
select tên from giáo viên where id giáo viên not in ( select id giáo viên from sắp xếp khoá học )
select count ( * ) from thành viên
select tên from thành viên order by tên
select tên , quốc gia from thành viên
select tên from thành viên where quốc gia = "USA" or quốc gia = "Canada"
select quốc gia , count ( * ) from thành viên group by quốc gia
select quốc gia from thành viên group by quốc gia order by count ( * ) desc limit 1
select quốc gia from thành viên group by quốc gia having count ( * ) > 2
select tên lãnh đạo , địa điểm trường đại học from trường đại học
select t1.tên , t2.tên from thành viên as t1 join đại học as t2 on t1.id đại học = t2.id đại học
select t1.tên , t2.địa điểm trường đại học from thành viên as t1 join đại học as t2 on t1.id đại học = t2.id đại học order by t1.tên
select t1.tên lãnh đạo from đại học as t1 join thành viên as t2 on t1.id đại học = t2.id đại học where t2.quốc gia = "Canada"
select t1.tên , t2.chủ đề trang trí from thành viên as t1 join vòng as t2 on t1.id thành viên = t2.id thành viên
select tên from thành viên where id thành viên in ( select id thành viên from vòng where xếp hạng từng vòng > 3 )
select tên from thành viên order by xếp hạng từng vòng
select tên from thành viên where id thành viên not in ( select id thành viên from vòng )
select count ( * ) from cuộc bầu cử
select số lượng phiếu bầu from cuộc bầu cử order by số lượng phiếu bầu desc
select ngày , tỷ lệ phiếu bầu from cuộc bầu cử
select min ( tỉ lệ phiếu bầu ) , max ( tỉ lệ phiếu bầu ) from cuộc bầu cử
select tên , đảng from đại diện
select tên from đại diện where đảng <> "Đảng Cộng hòa"
select tuổi thọ from đại diện where tiểu bang = "New York" or tiểu bang = "Indiana"
select t1.tên , t2.ngày from đại diện as t1 join cuộc bầu cử as t2 on t1.id đại diện = t2.id đại diện
select t1.tên from đại diện as t1 join cuộc bầu cử as t2 on t1.id đại diện = t2.id đại diện where t2.số lượng phiếu bầu > 10000
select tên from đại diện order by số lượng phiếu bầu desc
select đảng from đại diện where id đại diện = ( select id đại diện from cuộc bầu cử where số lượng phiếu bầu = ( select min ( số lượng phiếu bầu ) from cuộc bầu cử ) )
select tuổi thọ from đại diện order by tỷ lệ phiếu bầu desc
select avg ( số lượng phiếu bầu ) from cuộc bầu cử as t1 join đại diện as t2 on t1.id đại diện = t2.id đại diện where t2.đảng = "Đảng Cộng hòa"
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
select ngôn ngữ bản địa chính thức from quốc gia where tên quốc gia like "%english%"
select ngôn ngữ bản địa chính thức from quốc gia where tên quốc gia like "%english%"
select distinct vị trí from trận đấu trong mùa giải
select distinct vị trí from trận đấu trong mùa giải
select cầu thủ from trận đấu trong mùa giải where trường đại học = "UCLA"
select cầu thủ from cầu thủ where trường đại học = "UCLA"
select distinct vị trí from trận đấu trong mùa giải where trường đại học = "UCLA" or trường đại học = "Duke"
select vị trí from trận đấu trong mùa giải where trường đại học = "UCLA" or trường đại học = "Duke"
select mã số tuyển chọn tân binh , mùa tuyển chọn from trận đấu trong mùa giải where vị trí = "Hậu vệ"
select mã số tuyển chọn tân binh , mùa tuyển chọn from trận đấu trong mùa giải where vị trí = "Hậu vệ"
select count ( distinct đội ) from trận đấu trong mùa giải
select count ( distinct đội ) from trận đấu trong mùa giải
select cầu thủ , số năm đã chơi from cầu thủ
select cầu thủ , số năm đã chơi from cầu thủ
select tên from đội
select tên from đội
select t1.mùa giải , t1.cầu thủ , t2.tên quốc gia from trận đấu trong mùa giải as t1 join quốc gia as t2 on t1.quốc gia = t2.id quốc gia
select t1.cầu thủ , t1.mùa giải , t2.tên quốc gia from trận đấu trong mùa giải as t1 join quốc gia as t2 on t1.quốc gia = t2.id quốc gia
select cầu thủ from cầu thủ where quốc gia = ( select id quốc gia from quốc gia where tên quốc gia = "Indonesia" )
select cầu thủ from cầu thủ where quốc gia = ( select id quốc gia from quốc gia where tên quốc gia = "Indonesia" )
select distinct vị trí from trận đấu trong mùa giải where quốc gia = ( select id quốc gia from quốc gia where thủ đô = "Dublin" )
select distinct vị trí from trận đấu trong mùa giải where quốc gia = ( select id quốc gia from quốc gia where thủ đô = "Dublin" )
select t1.ngôn ngữ bản địa chính thức from quốc gia as t1 join cầu thủ as t2 on t1.id quốc gia = t2.quốc gia where t2.đại học = "Maryland" or t2.đại học = "Duke"
select ngôn ngữ bản địa chính thức from quốc gia where id quốc gia in ( select quốc gia from trận đấu trong mùa giải where đội in ( select id đội from đội where tên = "Maryland" ) or đội in ( select id đội from đội where tên = "Duke" ) )
select count ( distinct ngôn ngữ bản địa chính thức ) from quốc gia as t1 join trận đấu trong mùa giải as t2 on t1.id quốc gia = t2.quốc gia where t2.vị trí = "Hậu vệ"
select count ( * ) from quốc gia as t1 join trận đấu trong mùa giải as t2 on t1.id quốc gia = t2.quốc gia where t2.vị trí = "Hậu vệ"
select mùa giải , cầu thủ , t1.tên from đội as t1 join trận đấu trong mùa giải as t2 on t1.id đội = t2.đội
select t1.cầu thủ , t1.mùa giải , t2.tên from trận đấu trong mùa giải as t1 join đội as t2 on t1.đội = t2.id đội group by t1.cầu thủ , t1.mùa giải
select vị trí from trận đấu trong mùa giải where đội = ( select id đội from đội where tên = "Ryley Goldner" )
select vị trí from trận đấu trong mùa giải where đội = ( select id đội from đội where tên = "Ryley Goldner" )
select count ( distinct trường đại học ) from đội as t1 join trận đấu trong mùa giải as t2 on t1.id đội = t2.đội where t1.tên = "Columbus Crew"
select count ( distinct trường đại học ) from đội as t1 join trận đấu trong mùa giải as t2 on t1.id đội = t2.đội where t2.cầu thủ = "Columbus Crew"
select cầu thủ , số năm đã chơi from cầu thủ where đội = ( select id đội from đội where tên = "Columbus Crew" )
select số năm đã chơi from cầu thủ where đội = ( select id đội from đội where tên = "Columbus Crew" )
select vị trí , count ( * ) from trận đấu trong mùa giải group by vị trí
select count ( * ) , vị trí from trận đấu trong mùa giải group by vị trí
select tên quốc gia , count ( * ) from quốc gia as t1 join cầu thủ as t2 on t1.id quốc gia = t2.quốc gia group by t1.id quốc gia
select count ( * ) , t1.tên quốc gia from quốc gia as t1 join trận đấu trong mùa giải as t2 on t1.id quốc gia = t2.quốc gia group by t1.tên quốc gia
select cầu thủ from trận đấu trong mùa giải order by trường đại học asc
select cầu thủ from trận đấu trong mùa giải order by trường đại học asc
select vị trí from trận đấu trong mùa giải group by vị trí order by count ( * ) desc limit 1
select vị trí from trận đấu trong mùa giải group by vị trí order by count ( * ) desc limit 1
select trường đại học from trận đấu trong mùa giải group by trường đại học order by count ( * ) desc limit 3
select trường đại học from cầu thủ group by trường đại học order by count ( * ) desc limit 3
select trường đại học from trận đấu trong mùa giải group by trường đại học having count ( * ) >= 2
select trường đại học from cầu thủ group by trường đại học having count ( * ) >= 2
select trường đại học from cầu thủ group by trường đại học having count ( * ) >= 2 order by trường đại học desc
select trường đại học from trận đấu trong mùa giải group by trường đại học having count ( * ) >= 2 order by trường đại học desc
select tên from đội except select t1.tên from đội as t1 join trận đấu trong mùa giải as t2 on t1.id đội = t2.đội
select tên from đội except select t1.tên from đội as t1 join trận đấu trong mùa giải as t2 on t1.id đội = t2.đội
select t1.tên quốc gia from quốc gia as t1 join trận đấu trong mùa giải as t2 on t1.id quốc gia = t2.quốc gia where t2.vị trí = "Forward" intersect select t1.tên quốc gia from quốc gia as t1 join trận đấu trong mùa giải as t2 on t1.id quốc gia = t2.quốc gia where t2.vị trí = "Hậu vệ"
select t1.tên quốc gia from quốc gia as t1 join trận đấu trong mùa giải as t2 on t1.id quốc gia = t2.quốc gia where t2.vị trí = "tiền đạo" intersect select t1.tên quốc gia from quốc gia as t1 join trận đấu trong mùa giải as t2 on t1.id quốc gia = t2.quốc gia where t2.vị trí = "hậu vệ"
select trường đại học from trận đấu trong mùa giải where vị trí = "tiền vệ" intersect select trường đại học from trận đấu trong mùa giải where vị trí = "hậu vệ"
select trường đại học from trận đấu trong mùa giải where vị trí = "tiền vệ" intersect select trường đại học from trận đấu trong mùa giải where vị trí = "hậu vệ"
select count ( * ) from tội phạm
select ngày from tội phạm order by số người bị giết desc
select số người bị thương from tội phạm order by số người bị thương
select avg ( số người bị thương ) from tội phạm
select địa điểm from tội phạm where số người bị giết = ( select max ( số người bị giết ) from tội phạm ) and địa điểm = " "
select tên from cá nhân order by chiều cao
select t1.tên from cá nhân as t1 join tội phạm as t2 on t1.id cá nhân = t2.id cá nhân
select tên from cá nhân except select t1.tên from cá nhân as t1 join tội phạm as t2 on t1.id cá nhân = t2.id cá nhân where t2.quốc gia = "China"
select t1.tên from cá nhân as t1 join tội phạm as t2 on t1.id cá nhân = t2.id cá nhân where t1.cân nặng = ( select max ( cân nặng ) from cá nhân )
select sum ( số người bị giết ) from tội phạm as t1 join cá nhân as t2 on t1.id cá nhân = t2.id cá nhân where t2.chiều cao > 1,84
select t1.tên from cá nhân as t1 join tội phạm as t2 on t1.id cá nhân = t2.id cá nhân where t2.quốc gia = "China" or t2.quốc gia = "Japan"
select t2.chiều cao from tội phạm as t1 join cá nhân as t2 on t1.id cá nhân = t2.id cá nhân order by t1.số người bị thương desc
select quốc gia , count ( * ) from tội phạm group by quốc gia
select quốc gia from tội phạm group by quốc gia order by count ( * ) desc limit 1
select quốc gia from tội phạm group by quốc gia having count ( * ) >= 2
select t1.tên from cá nhân as t1 join tội phạm as t2 on t1.id cá nhân = t2.id cá nhân order by t2.năm desc
select tên from cá nhân where id cá nhân not in ( select id cá nhân from tội phạm )
select quốc gia from tội phạm where số người bị thương > 50 intersect select quốc gia from tội phạm where số người bị thương < 20
select count ( * ) , địa điểm from tội phạm group by địa điểm
select t2.ngày from cá nhân as t1 join tội phạm as t2 on t1.id cá nhân = t2.id cá nhân order by t1.chiều cao desc limit 1
select năm from tội phạm order by ngày desc limit 1
select chính quyền địa phương , dịch vụ from nhà ga
select số hiệu tàu , tên from tàu hoả order by thời gian
select t2.thời gian , t2.số hiệu tàu from nhà ga as t1 join lộ trình as t2 on t1.id = t2.id tàu where t1.tên mạng lưới = "Chennai" order by t2.thời gian
select count ( * ) from tàu hoả where tên like "%Express%"
select số hiệu tàu , thời gian from tàu hoả where điểm khởi hành = "Chennai" and đích = "Guruvayur"
select số lượng tàu , điểm khởi hành from tàu hoả group by điểm khởi hành
select t1.tên from tàu hoả as t1 join lộ trình as t2 on t1.id = t2.id tàu group by t2.id tàu order by count ( * ) desc limit 1
select count ( * ) , t1.tên mạng lưới , t1.dịch vụ from nhà ga as t1 join lộ trình as t2 on t1.id = t2.id nhà ga group by t1.tên mạng lưới
select avg ( nhiệt độ cao ) , ngày trong tuần from thời tiết hàng tuần group by ngày trong tuần
select min ( nhiệt độ thấp ) , avg ( lượng mưa ) from thời tiết hàng tuần where id nhà ga in ( select id from lộ trình where id tàu in ( select id from tàu hoả where đích = "Amersham" ) )
select t1.tên , t1.thời gian from tàu hoả as t1 join lộ trình as t2 on t1.id = t2.id tàu where t2.id nhà ga in ( select id from nhà ga where chính quyền địa phương = "Chiltern" )
select count ( distinct dịch vụ ) from nhà ga
select id , chính quyền địa phương from nhà ga as t1 join thời tiết hàng tuần as t2 on t1.id = t2.id nhà ga group by t1.id order by avg ( t2.nhiệt độ cao ) desc limit 1
select id , chính quyền địa phương from nhà ga as t1 join thời tiết hàng tuần as t2 on t1.id = t2.id nhà ga where t2.lượng mưa > 50
select min ( nhiệt độ thấp ) , max ( tốc độ gió mph ) from thời tiết hàng tuần
select điểm khởi hành from tàu hoả group by điểm khởi hành having count ( * ) > 1
select count ( * ) from nhà thờ where ngày mở cửa < 1850
select tên , ngày mở cửa , được tổ chức bởi from nhà thờ
select tên from nhà thờ order by ngày mở cửa desc
select ngày mở cửa from nhà thờ group by ngày mở cửa having count ( * ) >= 2
select tên , được tổ chức bởi from nhà thờ where ngày mở cửa >= 1830 and ngày mở cửa <= 1840
select ngày mở cửa , count ( * ) from nhà thờ group by ngày mở cửa
select tên , ngày mở cửa from nhà thờ order by ngày mở cửa desc limit 3
select count ( * ) from cá nhân where tuổi > 30 and là nam hay nữ = "nữ"
select quốc gia from cá nhân where tuổi > 30 union select quốc gia from cá nhân where tuổi < 25
select min ( tuổi ) , max ( tuổi ) , avg ( tuổi ) from cá nhân
select tên , quốc gia from cá nhân where tuổi < ( select avg ( tuổi ) from cá nhân )
select t1.tên , t2.tên from cá nhân as t1 join cá nhân as t2 on t1.id cá nhân = t2.id cá nhân join lễ cưới as t3 on t3.id nam = t1.id cá nhân and t3.id nữ = t2.id cá nhân where t3.năm > 2014
select tên , tuổi from cá nhân where là nam hay nữ = 'nam' and id cá nhân not in ( select id nam from lễ cưới )
select tên from nhà thờ where id nhà thờ not in ( select id nhà thờ from lễ cưới where năm = 2015 )
select t1.tên from nhà thờ as t1 join lễ cưới as t2 on t1.id nhà thờ = t2.id nhà thờ group by t2.id nhà thờ having count ( * ) >= 2
select t2.tên from lễ cưới as t1 join cá nhân as t2 on t1.id nữ = t2.id cá nhân where t2.quốc gia = "Canada" and t1.năm = 2016
select count ( * ) from lễ cưới where năm = 2016
select t1.tên from nhà thờ as t1 join lễ cưới as t2 on t1.id nhà thờ = t2.id nhà thờ join cá nhân as t3 on t2.id nam = t3.id cá nhân where t3.tuổi > 30
select quốc gia , count ( * ) from cá nhân group by quốc gia
select count ( * ) from nhà thờ as t1 join lễ cưới as t2 on t1.id nhà thờ = t2.id nhà thờ where t2.năm = 2016
select count ( * ) from giảng viên
select count ( * ) from giảng viên
select ngạch from giảng viên
select ngạch from giảng viên
select toà nhà from giảng viên where toà nhà like "%Office%"
select toà nhà from giảng viên where toà nhà like "%office%"
select tên , họ , ngạch from giảng viên
select tên , ngạch from giảng viên
select tên , số điện thoại from giảng viên where giới tính = "F"
select tên , họ , số điện thoại from giảng viên where giới tính = "F"
select id giảng viên from giảng viên where giới tính = "M"
select id giảng viên from giảng viên where giới tính = "M"
select count ( * ) from giảng viên where giới tính = "F" and ngạch = "Giáo sư"
select count ( * ) from giảng viên where giới tính = "F" and ngạch = "Giáo sư"
select số điện thoại , số phòng , toà nhà from giảng viên where tên = "Prince" and họ = "Jerry"
select số phòng , toà nhà from giảng viên where tên = "Prince" and họ = "Jerry"
select count ( * ) from giảng viên where toà nhà = "NEB"
select count ( * ) from giảng viên where toà nhà = "NEB"
select tên , họ from giảng viên
select tên , họ from giảng viên
select toà nhà , count ( * ) from giảng viên group by toà nhà
select toà nhà , count ( * ) from giảng viên group by toà nhà
select toà nhà from giảng viên group by toà nhà order by count ( * ) desc limit 1
select toà nhà from giảng viên group by toà nhà order by count ( * ) desc limit 1
select toà nhà from giảng viên group by toà nhà having count ( * ) >= 10
select toà nhà from giảng viên group by toà nhà having count ( * ) >= 10
select ngạch, count ( * ) from giảng viên group by ngạch
select ngạch, count ( * ) from giảng viên group by ngạch
select ngạch, count ( * ) from giảng viên where giới tính = "M" group by ngạch union select ngạch, count ( * ) from giảng viên where giới tính = "F" group by ngạch
select ngạch, count ( * ) from giảng viên where giới tính = "M" group by ngạch union select ngạch, count ( * ) from giảng viên where giới tính = "F" group by ngạch
select ngạch from giảng viên group by ngạch order by count ( * ) asc limit 1
select ngạch from giảng viên group by ngạch order by count ( * ) limit 1
select giới tính , count ( * ) from giảng viên where ngạch = "AsstProf" group by giới tính
select count ( * ) from giảng viên where giới tính = "M" and ngạch = "AsstProf"
select t1.tên , t1.họ from giảng viên as t1 join sinh viên as t2 on t1.id giảng viên = t2.cố vấn where t2.họ = "Smith" and t2.tên = "Linda"
select tên , họ from sinh viên where id sinh viên = ( select cố vấn from sinh viên where tên = "Linda" and họ = "Smith" )
select id sinh viên from sinh viên where cố vấn in ( select id giảng viên from giảng viên where ngạch = "Prof" )
select id sinh viên from sinh viên where cố vấn in ( select id giảng viên from giảng viên where ngạch = "Giáo sư" )
select tên , họ from sinh viên where cố vấn = ( select id giảng viên from giảng viên where tên = "Micheal" and họ = "Goodrich" )
select t1.tên , t1.họ from sinh viên as t1 join sinh viên as t2 on t1.id sinh viên = t2.cố vấn where t2.cố vấn = 1 and t2.tên = "Michael" and t2.họ = "Goodrich"
select count ( * ) , t1.id giảng viên from giảng viên as t1 join sinh viên as t2 on t1.id giảng viên = t2.cố vấn group by t1.id giảng viên
select cố vấn , count ( * ) from sinh viên group by cố vấn
select ngạch, count ( * ) from giảng viên group by ngạch
select count ( * ) , ngạch from giảng viên group by ngạch
select t1.họ , t1.tên from giảng viên as t1 join sinh viên as t2 on t1.id giảng viên = t2.cố vấn group by t1.id giảng viên order by count ( * ) desc limit 1
select t1.họ , t1.tên from giảng viên as t1 join sinh viên as t2 on t1.id giảng viên = t2.cố vấn group by t1.id giảng viên order by count ( * ) desc limit 1
select cố vấn from sinh viên group by cố vấn having count ( * ) >= 2
select cố vấn from sinh viên group by cố vấn having count ( * ) > 2
select id giảng viên from giảng viên except select cố vấn from sinh viên
select id giảng viên from giảng viên except select cố vấn from sinh viên
select tên hoạt động from hoạt động
select tên hoạt động from hoạt động
select count ( * ) from hoạt động
select count ( * ) from hoạt động
select count ( * ) from giảng viên tham gia vào
select count ( * ) from giảng viên tham gia vào
select id giảng viên from giảng viên except select id giảng viên from giảng viên tham gia vào
select id giảng viên from giảng viên except select id giảng viên from giảng viên tham gia vào
select cố vấn from sinh viên where cố vấn in ( select id giảng viên from giảng viên tham gia vào )
select id giảng viên from giảng viên where id giảng viên not in ( select cố vấn from sinh viên )
select count ( * ) from giảng viên tham gia vào as t1 join giảng viên as t2 on t1.id giảng viên = t2.id giảng viên join hoạt động as t3 on t1.id hoạt động = t3.id hoạt động where t2.họ = "Giuliano" and t2.tên = "Mark"
select count ( * ) from giảng viên tham gia vào as t1 join giảng viên as t2 on t1.id giảng viên = t2.id giảng viên where t2.họ = "Mark" and t2.tên = "Giuliano"
select t1.tên hoạt động from hoạt động as t1 join giảng viên tham gia vào as t2 on t1.id hoạt động = t2.id hoạt động join giảng viên as t3 on t2.id giảng viên = t3.id giảng viên where t3.họ = "Mark" and t3.tên = "Giuliano"
select t1.tên hoạt động from hoạt động as t1 join giảng viên tham gia vào as t2 on t1.id hoạt động = t2.id hoạt động join giảng viên as t3 on t2.id giảng viên = t3.id giảng viên where t3.họ = "Giuliano" and t3.tên = "Mark"
select t1.tên , t1.họ , count ( * ) from giảng viên as t1 join giảng viên tham gia vào as t2 on t1.id giảng viên = t2.id giảng viên group by t1.id giảng viên
select count ( * ) , t2.tên from giảng viên tham gia vào as t1 join giảng viên as t2 on t1.id giảng viên = t2.id giảng viên group by t2.tên
select tên hoạt động , count ( * ) from hoạt động as t1 join giảng viên tham gia vào as t2 on t1.id hoạt động = t2.id hoạt động group by t1.id hoạt động
select t1.tên hoạt động , count ( * ) from hoạt động as t1 join giảng viên tham gia vào as t2 on t1.id hoạt động = t2.id hoạt động group by t1.id hoạt động
select t1.tên , t1.họ from giảng viên as t1 join giảng viên tham gia vào as t2 on t1.id giảng viên = t2.id giảng viên group by t1.id giảng viên order by count ( * ) desc limit 1
select t1.họ , t1.tên from giảng viên as t1 join giảng viên tham gia vào as t2 on t1.id giảng viên = t2.id giảng viên group by t1.id giảng viên order by count ( * ) desc limit 1
select t1.tên hoạt động from hoạt động as t1 join giảng viên tham gia vào as t2 on t1.id hoạt động = t2.id hoạt động group by t1.id hoạt động order by count ( * ) desc limit 1
select t1.tên hoạt động from hoạt động as t1 join giảng viên tham gia vào as t2 on t1.id hoạt động = t2.id hoạt động group by t1.id hoạt động order by count ( * ) desc limit 1
select id sinh viên from sinh viên except select id sinh viên from tham gia vào
select id sinh viên from sinh viên except select id sinh viên from tham gia vào
select id sinh viên from sinh viên where id sinh viên in ( select id sinh viên from tham gia vào ) and tuổi < 20
select id sinh viên from sinh viên where tuổi < 20 and id sinh viên in ( select id sinh viên from tham gia vào )
select t1.tên , t1.họ from sinh viên as t1 join tham gia vào as t2 on t1.id sinh viên = t2.id sinh viên group by t1.id sinh viên order by count ( * ) desc limit 1
select t1.tên , t1.họ from sinh viên as t1 join tham gia vào as t2 on t1.id sinh viên = t2.id sinh viên group by t1.id sinh viên order by count ( * ) desc limit 1
select t1.tên hoạt động from hoạt động as t1 join tham gia vào as t2 on t1.id hoạt động = t2.id hoạt động group by t1.id hoạt động order by count ( * ) desc limit 1
select t1.tên hoạt động from hoạt động as t1 join tham gia vào as t2 on t1.id hoạt động = t2.id hoạt động group by t1.id hoạt động order by count ( * ) desc limit 1
select t1.tên from giảng viên as t1 join giảng viên tham gia vào as t2 on t1.id giảng viên = t2.id giảng viên join hoạt động as t3 on t2.id hoạt động = t3.id hoạt động where t3.tên hoạt động = "Swimming" or t3.tên hoạt động = "Kayaking"
select t1.tên from giảng viên as t1 join giảng viên tham gia vào as t2 on t1.id giảng viên = t2.id giảng viên join hoạt động as t3 on t2.id hoạt động = t3.id hoạt động where t3.tên hoạt động = "Swimming" or t3.tên hoạt động = "Kayaking"
select tên from giảng viên where id giảng viên not in ( select id giảng viên from giảng viên tham gia vào where id hoạt động in ( select id hoạt động from hoạt động where tên hoạt động = "Bơi xuồng" or tên hoạt động = "Kayaking" ) )
select tên from giảng viên where id giảng viên not in ( select id giảng viên from giảng viên tham gia vào where id hoạt động in ( select id hoạt động from hoạt động where tên hoạt động = "Bơi xuồng" or tên hoạt động = "Kayaking" ) )
select t1.tên from giảng viên as t1 join giảng viên tham gia vào as t2 on t1.id giảng viên = t2.id giảng viên join hoạt động as t3 on t2.id hoạt động = t3.id hoạt động where t3.tên hoạt động = "Swimming" intersect select t1.tên from giảng viên as t1 join giảng viên tham gia vào as t2 on t1.id giảng viên = t2.id giảng viên join hoạt động as t3 on t2.id hoạt động = t3.id hoạt động where t3.tên hoạt động = " Kayaking "
select t1.tên from giảng viên as t1 join giảng viên tham gia vào as t2 on t1.id giảng viên = t2.id giảng viên join hoạt động as t3 on t2.id hoạt động = t3.id hoạt động where t3.tên hoạt động = "Bơi xuồng" intersect select t1.tên from giảng viên as t1 join giảng viên tham gia vào as t2 on t1.id giảng viên = t2.id giảng viên join hoạt động as t3 on t2.id hoạt động = t3.id hoạt động where t3.tên hoạt động = "Kayaking"
select t1.id sinh viên from tham gia vào as t1 join hoạt động as t2 on t1.id hoạt động = t2.id hoạt động where t2.tên hoạt động = "Bơi xuồng" intersect select t1.id sinh viên from tham gia vào as t1 join hoạt động as t2 on t1.id hoạt động = t2.id hoạt động where t2.tên hoạt động = "Kayaking"
select t1.id sinh viên from tham gia vào as t1 join hoạt động as t2 on t1.id hoạt động = t2.id hoạt động where t2.tên hoạt động = "Bơi xuồng" intersect select t1.id sinh viên from tham gia vào as t1 join hoạt động as t2 on t1.id hoạt động = t2.id hoạt động where t2.tên hoạt động = "Kayaking"
select count ( * ) from người luyện thể hình
select tổng from người luyện thể hình order by tổng desc
select cử giật , cử đẩy from người luyện thể hình order by cử giật
select avg ( cử giật ) from người luyện thể hình
select cử đẩy from người luyện thể hình order by tổng desc limit 1
select ngày sinh from cá nhân order by chiều cao
select t1.tên from cá nhân as t1 join người luyện thể hình as t2 on t1.id cá nhân = t2.id cá nhân
select t1.tên from cá nhân as t1 join người luyện thể hình as t2 on t1.id cá nhân = t2.id cá nhân where t2.tổng > 300
select t1.tên from cá nhân as t1 join người luyện thể hình as t2 on t1.id cá nhân = t2.id cá nhân where t2.tổng = ( select max ( tổng ) from người luyện thể hình )
select t1.ngày sinh , t1.nơi sinh from cá nhân as t1 join người luyện thể hình as t2 on t1.id cá nhân = t2.id cá nhân where t2.tổng = ( select max ( tổng ) from người luyện thể hình )
select chiều cao from cá nhân as t1 join người luyện thể hình as t2 on t1.id cá nhân = t2.id cá nhân where t2.tổng < 315
select avg ( tổng ) from người luyện thể hình where chiều cao > 200
select tên from cá nhân order by tổng desc
select nơi sinh , count ( * ) from cá nhân group by nơi sinh
select nơi sinh from cá nhân group by nơi sinh order by count ( * ) desc limit 1
select nơi sinh from cá nhân group by nơi sinh having count ( * ) >= 2
select chiều cao , cân nặng from cá nhân order by chiều cao desc
select * from người luyện thể hình
select tên , nơi sinh from cá nhân where id cá nhân not in ( select id cá nhân from người luyện thể hình )
select count ( distinct nơi sinh ) from cá nhân
select count ( * ) from cá nhân where id cá nhân not in ( select id cá nhân from người luyện thể hình )
select t2.cân nặng from người luyện thể hình as t1 join cá nhân as t2 on t1.id cá nhân = t2.id cá nhân where t1.cử giật > 140 or t2.chiều cao > 200
select tổng from người luyện thể hình where ngày sinh = 1
select min ( cử giật ) from người luyện thể hình
select count ( * ) from ứng cử viên
select count ( * ) from ứng cử viên
select nguồn thăm dò ý kiến from ứng cử viên group by nguồn thăm dò ý kiến order by count ( * ) desc limit 1
select nguồn thăm dò ý kiến from ứng cử viên group by nguồn thăm dò ý kiến order by count ( * ) desc limit 1
select tỷ lệ ủng hộ from ứng cử viên order by tỷ lệ ủng hộ desc limit 3
select tỷ lệ ủng hộ from ứng cử viên order by tỷ lệ ủng hộ desc limit 3
select id ứng cử viên from ứng cử viên order by tỷ lệ phản đối asc limit 1
select id ứng cử viên from ứng cử viên order by tỷ lệ phản đối asc limit 1
select tỷ lệ ủng hộ , tỷ lệ xem xét , tỷ lệ phản đối from ứng cử viên order by tỷ lệ không chắc chắn desc
select tỷ lệ ủng hộ , tỷ lệ xem xét , tỷ lệ phản đối from ứng cử viên order by tỷ lệ không chắc chắn desc
select nguồn thăm dò ý kiến from ứng cử viên where tỷ lệ phản đối = ( select max ( tỷ lệ phản đối ) from ứng cử viên )
select nguồn thăm dò ý kiến from ứng cử viên where tỷ lệ phản đối = ( select max ( tỷ lệ phản đối ) from ứng cử viên )
select tên from cá nhân order by ngày sinh
select tên from cá nhân order by ngày sinh
select avg ( chiều cao ) , avg ( cân nặng ) from cá nhân where giới tính = "M"
select avg ( chiều cao ) , avg ( cân nặng ) from cá nhân where giới tính = "Nam"
select tên from cá nhân where chiều cao > 200 or chiều cao < 190
select tên from cá nhân where chiều cao > 200 or chiều cao < 190
select avg ( trọng lượng ) , min ( trọng lượng ) , giới tính from cá nhân group by giới tính
select avg ( trọng lượng ) , min ( trọng lượng ) from cá nhân group by giới tính
select t1.tên , t1.giới tính from cá nhân as t1 join ứng cử viên as t2 on t1.id cá nhân = t2.id cá nhân order by t2.tỷ lệ ủng hộ desc limit 1
select t1.tên , t1.giới tính from cá nhân as t1 join ứng cử viên as t2 on t1.id cá nhân = t2.id cá nhân order by t2.tỷ lệ ủng hộ desc limit 1
select t1.tên , min ( t2.tỷ lệ phản đối ) from cá nhân as t1 join ứng cử viên as t2 on t1.id cá nhân = t2.id cá nhân group by t1.giới tính
select t1.tên , t1.giới tính from cá nhân as t1 join ứng cử viên as t2 on t1.id cá nhân = t2.id cá nhân where t2.tỷ lệ phản đối = ( select min ( tỷ lệ phản đối ) from ứng cử viên )
select giới tính from cá nhân group by giới tính order by avg ( tỷ lệ không chắc chắn ) desc limit 1
select giới tính from cá nhân where id cá nhân in ( select id cá nhân from ứng cử viên group by id cá nhân order by avg ( tỷ lệ không chắc chắn ) desc limit 1 )
select tên from cá nhân where id cá nhân not in ( select id cá nhân from ứng cử viên )
select tên from cá nhân except select t1.tên from cá nhân as t1 join ứng cử viên as t2 on t1.id cá nhân = t2.id cá nhân
select t1.tên from cá nhân as t1 join ứng cử viên as t2 on t1.id cá nhân = t2.id cá nhân where t2.tỷ lệ ủng hộ < t2.tỷ lệ phản đối
select tên from ứng cử viên where tỷ lệ ủng hộ < tỷ lệ phản đối
select count ( * ) , giới tính from cá nhân where cân nặng > 85 group by giới tính
select count ( * ) , giới tính from cá nhân where cân nặng > 85 group by giới tính
select max ( tỷ lệ ủng hộ ) , min ( tỷ lệ xem xét ) , min ( tỷ lệ phản đối ) from ứng cử viên
select max ( tỷ lệ ủng hộ ) , min ( tỷ lệ xem xét ) , min ( tỷ lệ phản đối ) from ứng cử viên
select tên from cá nhân where giới tính = "F" order by tên
select tên from cá nhân where giới tính = "F" order by tên
select tên from cá nhân where chiều cao < ( select avg ( chiều cao ) from cá nhân )
select tên from cá nhân where chiều cao < ( select avg ( chiều cao ) from cá nhân )
select * from cá nhân
select * from cá nhân
select id thành phố chủ nhà from thành phố chủ nhà where năm = ( select max ( năm ) from thành phố chủ nhà )
select id trận đấu from thành phố chủ nhà where năm = ( select max ( năm ) from thành phố chủ nhà )
select id trận đấu from trận đấu where giải đấu = "Vòng loại FIFA World Cup 1994"
select id trận đấu from trận đấu where giải đấu = "Vòng loại FIFA World Cup 1994"
select thành phố chủ nhà from thành phố chủ nhà where năm > 2010
select thành phố chủ nhà from thành phố chủ nhà where năm > 2010
select thành phố chủ nhà from thành phố chủ nhà group by thành phố chủ nhà order by count ( * ) desc limit 1
select thành phố chủ nhà from thành phố chủ nhà group by thành phố chủ nhà order by count ( * ) desc limit 1
select địa điểm from trận đấu where giải đấu = "Vòng loại FIFA World Cup 1994" and địa điểm = "Nam Kinh ( Giang Tô ) "
select địa điểm from trận đấu where giải đấu = "Vòng loại FIFA World Cup 1994" and địa điểm = "Nam Kinh ( Giang Tô ) "
select tháng một from nhiệt độ where thành phố = "Thượng Hải"
select tháng một from nhiệt độ where thành phố chủ nhà = "Thượng Hải"
select năm from thành phố chủ nhà where thành phố chủ nhà = "Thái Châu(Chiết Giang)"
select năm from thành phố chủ nhà where thành phố chủ nhà = "Thái Châu(Chiết Giang)"
select thành phố from thành phố order by dân số khu vực desc limit 3
select thành phố from thành phố order by dân số khu vực desc limit 3
select thành phố , gdp from thành phố order by gdp asc limit 1
select thành phố , gdp from thành phố order by gdp asc limit 1
select thành phố from nhiệt độ where tháng hai = ( select max ( tháng hai ) from nhiệt độ )
select thành phố from nhiệt độ where tháng hai = ( select max ( tháng hai ) from nhiệt độ )
select t3.thành phố from nhiệt độ as t3 join thành phố as t2 on t3.id thành phố = t2.id thành phố where t3.tháng ba < t3.tháng 7 or t3.tháng 10 > t3.tháng 10
select t3.thành phố from nhiệt độ as t3 join thành phố as t2 on t3.id thành phố = t2.id thành phố where t3.tháng 3 < t3.tháng 7 or t3.tháng 10 > t3.tháng 7
select t3.thành phố from nhiệt độ as t1 join thành phố as t2 on t1.id thành phố = t2.id thành phố join thành phố chủ nhà as t3 on t3.id trận đấu = t1.id trận đấu where t1.tháng ba < t1.tháng bảy
select t3.thành phố from nhiệt độ as t1 join thành phố as t2 on t1.id thành phố = t2.id thành phố join thành phố chủ nhà as t3 on t3.id trận đấu = t1.id trận đấu where t1.tháng ba < t1.tháng bảy
select t3.thành phố from nhiệt độ as t3 join thành phố as t2 on t3.id thành phố = t2.id thành phố where t3.tháng 3 < t3.tháng 12 except select t4.thành phố from thành phố chủ nhà as t4 join thành phố as t3 on t4.id thành phố = t3.id thành phố
select t3.thành phố from nhiệt độ as t1 join thành phố as t2 on t1.id thành phố = t2.id thành phố join thành phố chủ nhà as t3 on t3.id trận đấu = t1.id trận đấu where t1.tháng mười hai < t1.tháng một and t3.thành phố chủ nhà is null
select t1.thành phố from thành phố as t1 join nhiệt độ as t2 on t1.id thành phố = t2.id thành phố where t2.tháng hai > t2.tháng sáu union select t1.thành phố from thành phố as t1 join thành phố chủ nhà as t2 on t1.id thành phố = t2.id trận đấu join nhiệt độ as t3 on t2.id thành phố = t3.id thành phố where t3.tháng hai > t3.tháng sáu
select t1.thành phố from thành phố as t1 join nhiệt độ as t2 on t1.id thành phố = t2.id thành phố where t2.tháng hai > t2.tháng sáu union select t1.thành phố from thành phố as t1 join thành phố chủ nhà as t2 on t1.id thành phố = t2.id trận đấu join nhiệt độ as t3 on t2.id thành phố = t3.id thành phố where t3.tháng hai > t3.tháng sáu
select thành phố from thành phố where dân số khu vực > 10000000
select thành phố from thành phố where dân số khu vực > 10000000
select thành phố from thành phố where dân số khu vực > 8000000 or dân số khu vực < 5000000
select thành phố from thành phố where dân số khu vực > 8000000 or dân số khu vực < 5000000
select giải đấu , count ( * ) from trận đấu group by giải đấu
select giải đấu , count ( * ) from trận đấu group by giải đấu
select địa điểm from trận đấu order by ngày desc
select địa điểm from trận đấu order by ngày desc
select gdp from thành phố order by dân số khu vực desc limit 1
select gdp from thành phố order by dân số khu vực desc limit 1
select gdp , dân số khu vực from thành phố as t1 join thành phố chủ nhà as t2 on t1.id thành phố = t2.id thành phố group by t2.id thành phố having count ( * ) > 1
select gdp , dân số khu vực from thành phố where id thành phố in ( select thành phố chủ nhà from thành phố chủ nhà group by thành phố chủ nhà having count ( * ) > 1 )
select count ( * ) from giáo sư where mã khoa = "Kế toán"
select count ( * ) from giáo sư where mã khoa = "Kế toán"
select count ( * ) from lớp học as t1 join đăng ký khoá học as t2 on t1.mã lớp học = t2.mã lớp học join khoá học as t3 on t1.mã khoá học = t3.mã khoá học join giáo sư as t4 on t2.mã số giáo sư = t4.mã số nhân viên where t3.mã khoá học = "ACCT-211"
select count ( * ) from lớp học as t1 join khoá học as t2 on t1.mã khoá học = t2.mã khoá học join giáo sư as t3 on t1.mã số nhân viên của giáo sư = t3.mã số nhân viên where t2.mã khoá học = "ACCT-211"
select t1.tên của nhân viên , t1.họ của nhân viên from nhân viên as t1 join giáo sư as t2 on t1.mã số nhân viên = t2.mã số nhân viên where t2.mã khoa = "EECS"
select t1.tên của nhân viên , t1.họ của nhân viên from nhân viên as t1 join giáo sư as t2 on t1.mã số nhân viên = t2.mã số nhân viên where t2.mã khoa = "EECS"
select t1.tên của nhân viên , t1.ngày sinh của nhân viên from nhân viên as t1 join lớp học as t2 on t1.mã số nhân viên = t2.mã số nhân viên where t2.mã khoá học = 'ACCT-211'
select t1.tên của nhân viên , t1.ngày sinh của nhân viên from nhân viên as t1 join giáo sư as t2 on t1.mã số nhân viên = t2.mã số nhân viên join lớp học as t3 on t3.mã khoá học = t2.mã khoá học where t3.mã khoá học = "ACCT-211"
select count ( * ) from lớp học as t1 join giáo sư as t2 on t1.mã số nhân viên của giáo sư = t2.mã số nhân viên where t2.họ của nhân viên = "Graztevski"
select count ( * ) from lớp học as t1 join giáo sư as t2 on t1.mã số nhân viên của giáo sư = t2.mã số nhân viên where t2.họ của nhân viên = "Graztevski"
select mã trường from khoa where tên khoa = "Kế toán"
select mã trường from khoa where tên khoa = "Kế toán"
select mô tả về khoá học , số lượng tín chỉ của khoá học from khoá học where mã khoá học = "CIS-220"
select mô tả về khoá học , số lượng tín chỉ của khoá học from khoá học where mã khoá học = "CIS-220"
select địa chỉ khoa from khoa where tên khoa = "Lịch sử"
select địa chỉ khoa from khoa where tên khoa = "Lịch sử"
select count ( distinct địa chỉ khoa ) from khoa where mã trường = "BUS"
select count ( distinct địa chỉ khoa ) from khoa where mã trường = "BUS"
select count ( * ) , mã trường from khoa group by mã trường
select count ( * ) , mã trường from khoa group by mã trường
select mô tả về khoá học , số lượng tín chỉ của khoá học from khoá học where mã khoá học = "QM-261"
select số lượng tín chỉ của khoá học from khoá học where mã khoá học = "QM-261"
select count ( * ) , mã trường from khoa group by mã trường
select count ( * ) , mã trường from khoa group by mã trường
select count ( * ) , mã trường from khoa group by mã trường having count ( * ) < 5
select count ( * ) , mã trường from khoa group by mã trường having count ( * ) < 5
select count ( * ) , mã khoá học from lớp học group by mã khoá học
select count ( * ) , mã khoá học from lớp học group by mã khoá học
select sum ( số lượng tín chỉ của khoá học ) , mã khoa from khoá học group by mã khoa
select sum ( số lượng tín chỉ của khoá học ) , mã khoa from khoá học group by mã khoa
select phòng học from lớp học group by phòng học having count ( * ) >= 2
select phòng học , count ( * ) from lớp học group by phòng học having count ( * ) >= 2
select count ( * ) , mã khoa from lớp học group by mã khoa
select count ( * ) , mã khoa from lớp học group by mã khoa
select count ( * ) , mã trường from lớp học group by mã trường
select count ( * ) , mã trường from lớp học group by mã trường
select count ( * ) , mã trường from khoa group by mã trường
select count ( * ) , mã trường from khoa group by mã trường
select mã công việc của nhân viên , count ( * ) from nhân viên group by mã công việc của nhân viên order by count ( * ) desc limit 1
select mã công việc của nhân viên from nhân viên group by mã công việc của nhân viên order by count ( * ) desc limit 1
select mã trường from khoa group by mã trường order by count ( * ) asc limit 1
select mã trường from khoa group by mã trường order by count ( * ) asc limit 1
select count ( * ) , mã khoa from giáo sư where bằng cấp cao nhất = "Tiến sĩ" group by mã khoa
select count ( * ) , mã khoa from giáo sư where bằng cấp cao nhất = "Tiến sĩ" group by mã khoa
select count ( * ) , mã khoa from sinh viên group by mã khoa
select count ( * ) , mã khoa from sinh viên group by mã khoa
select sum ( giờ học của sinh viên ) , mã khoa from sinh viên group by mã khoa
select sum ( giờ học của sinh viên ) , mã khoa from sinh viên group by mã khoa
select avg ( gpa của sinh viên ) , max ( gpa của sinh viên ) , min ( gpa của sinh viên ) , mã khoa from sinh viên group by mã khoa
select mã khoa , max ( gpa của sinh viên ) , min ( gpa của sinh viên ) , avg ( gpa của sinh viên ) from sinh viên group by mã khoa
select tên khoa , avg ( gpa của sinh viên ) from sinh viên group by mã khoa order by avg ( gpa của sinh viên ) desc limit 1
select mã khoa , avg ( gpa của sinh viên ) from sinh viên group by mã khoa order by avg ( gpa của sinh viên ) desc limit 1
select count ( * ) from khoa
select count ( distinct mã trường ) from khoa
select count ( distinct mã lớp học ) from lớp học
select count ( distinct mã lớp học ) from lớp học
select count ( * ) from khoá học
select count ( distinct mã khoá học ) from khoá học
select count ( * ) from khoa
select count ( distinct mã khoa ) from khoa
select count ( * ) from khoá học where mã khoa = "EECS"
select count ( * ) from khoá học where mã khoa = 'EECS'
select count ( * ) from lớp học where mã khoá học = "ACCT-211"
select count ( distinct lớp học phần ) from lớp học where mã khoá học = 'ACCT-211'
select sum ( số lượng tín chỉ của khoá học ) , mã khoa from khoá học group by mã khoa
select sum ( số lượng tín chỉ của khoá học ) , mã khoa from khoá học group by mã khoa
select tên khoa from khoá học group by mã khoa order by sum ( số lượng tín chỉ của khoá học ) desc limit 1
select mã khoa from khoá học group by mã khoa order by sum ( số lượng tín chỉ của khoá học ) desc limit 1
select count ( * ) from khoá học as t1 join đăng ký khoá học as t2 on t1.mã khoá học = t2.mã khoá học where t1.mã khoá học = "ACCT-211"
select count ( * ) from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên where t2.mã khoá học = 'ACCT-211'
select t1.tên của sinh viên from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên where t2.mã khoá học = 'ACCT-211'
select t1.tên của sinh viên from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên join khoá học as t3 on t2.mã khoá học = t3.mã khoá học where t3.mô tả về khoá học = "ACCT-211"
select t1.tên của sinh viên from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên where t2.mã lớp = "ACCT-211" and t2.điểm số = "C"
select t1.tên của sinh viên from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên where t2.điểm số = 'C' and t2.mã khoá học = 'ACCT-211'
select count ( * ) from nhân viên
select count ( * ) from nhân viên
select count ( * ) from giáo sư where bằng cấp cao nhất = "Tiến sĩ"
select count ( * ) from giáo sư where bằng cấp cao nhất = "Tiến sĩ"
select count ( * ) from khoa as t1 join giáo sư as t2 on t1.mã số nhân viên = t2.mã số nhân viên join đăng ký khoá học as t3 on t2.mã số nhân viên = t3.mã số nhân viên join lớp học as t4 on t3.mã lớp = t4.mã lớp học where t1.tên khoa = "Kế toán"
select count ( * ) from khoa as t1 join giáo sư as t2 on t1.mã số nhân viên = t2.mã số nhân viên join lớp học as t3 on t3.mã khoa = t1.mã khoa join đăng ký khoá học as t4 on t4.mã lớp = t3.mã lớp học where t1.tên khoa = "Kế toán"
select tên khoa from khoa where số lượng nhân viên = ( select max ( số lượng nhân viên ) from khoa )
select mã khoa from sinh viên group by mã khoa order by count ( * ) desc limit 1
select tên khoa from khoa order by tên khoa
select tên khoa from khoa order by tên khoa
select mã khoá học from lớp học where phòng học = "KLR 209"
select mã khoá học from lớp học where phòng học = "KLR 209"
select tên của nhân viên from nhân viên where mã công việc của nhân viên = 'Giáo sư' order by ngày sinh của nhân viên
select tên của nhân viên from nhân viên where mã công việc của nhân viên = 'Giáo sư' order by ngày sinh của nhân viên
select tên giáo sư , văn phòng giáo sư from giáo sư order by tên giáo sư asc
select văn phòng giáo sư , tên khoa from giáo sư order by tên khoa
select tên của nhân viên , họ của nhân viên from nhân viên order by ngày sinh của nhân viên desc limit 1
select tên của nhân viên , họ của nhân viên from nhân viên order by ngày sinh của nhân viên limit 1
select tên của sinh viên , họ của sinh viên , avg ( gpa của sinh viên ) from sinh viên where gpa của sinh viên > 3 group by tên của sinh viên , họ của sinh viên order by avg ( gpa của sinh viên ) limit 1
select tên của sinh viên , họ của sinh viên , avg ( gpa của sinh viên ) from sinh viên where gpa của sinh viên > 3 group by tên của sinh viên , họ của sinh viên order by avg ( gpa của sinh viên ) limit 1
select tên của sinh viên from sinh viên where mã số sinh viên in ( select mã số sinh viên from đăng ký khoá học where điểm số = 'C' )
select t1.tên của sinh viên from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên where t2.điểm số = "C"
select tên khoa from khoa where số lượng nhân viên = ( select min ( số lượng nhân viên ) from khoa )
select tên khoa from khoa where số lượng nhân viên = ( select min ( số lượng nhân viên ) from khoa )
select mã khoa from giáo sư where bằng cấp cao nhất = 'Tiến sĩ' group by mã khoa order by count ( * ) desc limit 1
select tên khoa from giáo sư where bằng cấp cao nhất = 'Tiến sĩ' group by tên khoa order by count ( * ) desc limit 1
select tên của nhân viên from nhân viên where mã số nhân viên not in ( select mã số nhân viên from giáo sư )
select tên của nhân viên from nhân viên where mã số nhân viên not in ( select mã số nhân viên from giáo sư )
select tên của nhân viên from nhân viên where mã khoa = "Lịch sử" and mã số nhân viên not in ( select mã số nhân viên from giáo sư )
select tên của nhân viên from nhân viên where mã khoa = "Lịch sử" and mã số nhân viên not in ( select mã số nhân viên from giáo sư )
select t1.họ của nhân viên , t1.văn phòng giáo sư from nhân viên as t1 join giáo sư as t2 on t1.mã số nhân viên = t2.mã số nhân viên where t2.mã khoa = "Lịch sử"
select họ của nhân viên from nhân viên join giáo sư on mã số nhân viên = mã số nhân viên where mã khoa = "Lịch sử"
select văn phòng giáo sư from giáo sư where họ của nhân viên = "Heffington"
select mã khoa , văn phòng giáo sư from giáo sư where họ của nhân viên = "Heffington"
select họ của nhân viên , ngày bắt đầu công việc của nhân viên from nhân viên where mã văn phòng giáo sư = "DRE 102"
select t1.họ của nhân viên , t1.ngày bắt đầu công việc của nhân viên from nhân viên as t1 join giáo sư as t2 on t1.mã số nhân viên = t2.mã số nhân viên where t2.văn phòng giáo sư = "DRE 102"
select mã khoá học from đăng ký khoá học as t1 join sinh viên as t2 on t1.mã số sinh viên = t2.mã số sinh viên where t2.họ của sinh viên = "Smithson"
select mã lớp from đăng ký khoá học where mã số sinh viên in ( select mã số sinh viên from sinh viên where họ của sinh viên = "Smithson" )
select sum ( t2.số lượng tín chỉ của khoá học ) from khoá học as t2 join đăng ký khoá học as t1 on t1.mã khoá học = t2.mã khoá học join sinh viên as t3 on t1.mã số sinh viên = t3.mã số sinh viên where t3.họ của sinh viên = "Smithson"
select t1.mô tả về khoá học from khoá học as t1 join đăng ký khoá học as t2 on t1.mã khoá học = t2.mã khoá học join sinh viên as t3 on t2.mã số sinh viên = t3.mã số sinh viên where t3.họ của sinh viên = "Smithson"
select count ( * ) from giáo sư where bằng cấp cao nhất = "Tiến sĩ" or bằng cấp cao nhất = "Thạc sĩ"
select count ( * ) from giáo sư where bằng cấp cao nhất = "Tiến sĩ" or bằng cấp cao nhất = "Thạc sĩ"
select count ( * ) from giáo sư where mã khoa = "Kế toán" or mã khoa = "Sinh học"
select count ( * ) from giáo sư where mã khoa = "Kế toán" or mã khoa = "Sinh học"
select t1.tên của nhân viên from nhân viên as t1 join lớp học as t2 on t1.mã số nhân viên = t2.mã số nhân viên where t2.mã khoá học = "CIS-220" intersect select t1.tên của nhân viên from nhân viên as t1 join lớp học as t2 on t1.mã số nhân viên = t2.mã số nhân viên where t2.mã khoá học = "QM-261"
select t1.tên của nhân viên from nhân viên as t1 join lớp học as t2 on t1.mã số nhân viên = t2.mã số nhân viên where t2.mã khoá học = "CIS-220" and t2.mã lớp học = "QM-261"
select t1.tên của sinh viên from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên join lớp học as t3 on t2.mã lớp = t3.mã lớp học join khoá học as t4 on t3.mã khoá học = t4.mã khoá học where t4.mã khoa = "Kế toán" intersect select t1.tên của sinh viên from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên join lớp học as t3 on t2.mã lớp = t3.mã lớp học join khoá học as t4 on t3.mã khoá học = t4.mã khoá học where t4.mã khoa = "Hệ thống thông tin máy tính"
select t1.tên của sinh viên from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên join khoá học as t3 on t2.mã số khoá học = t3.mã khoá học where t3.mã khoa = "Computer Science" intersect select t1.tên của sinh viên from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên join khoá học as t3 on t2.mã số khoá học = t3.mã khoá học where t3.mã khoa = "Computer Engineering"
select avg ( gpa của sinh viên ) from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên where t2.mã khoá học = 'ACCT-211'
select avg ( gpa của sinh viên ) from sinh viên where mã khoa = "ACCT" and mã khoá học = "ACCT-211"
select tên của sinh viên , gpa của sinh viên , số điện thoại của sinh viên from sinh viên order by gpa của sinh viên desc limit 5
select tên của sinh viên , gpa của sinh viên , số điện thoại của sinh viên from sinh viên order by gpa của sinh viên desc limit 5
select t1.tên khoa from khoa as t1 join sinh viên as t2 on t1.mã khoa = t2.mã khoa where t2.gpa của sinh viên = ( select min ( gpa của sinh viên ) from sinh viên )
select mã khoa from sinh viên where gpa của sinh viên = ( select min ( gpa của sinh viên ) from sinh viên )
select tên của sinh viên , gpa của sinh viên from sinh viên where gpa của sinh viên < ( select avg ( gpa của sinh viên ) from sinh viên )
select tên của sinh viên , avg ( gpa của sinh viên ) from sinh viên where avg ( gpa của sinh viên ) < ( select avg ( gpa của sinh viên ) from sinh viên ) group by tên của sinh viên
select t1.tên khoa , t1.địa chỉ khoa from khoa as t1 join sinh viên as t2 on t1.mã khoa = t2.mã khoa group by t1.mã khoa order by count ( * ) desc limit 1
select tên khoa , địa chỉ khoa from khoa where số lượng nhân viên = ( select max ( số lượng nhân viên ) from khoa )
select t1.tên khoa , t1.địa chỉ khoa , count ( * ) from khoa as t1 join sinh viên as t2 on t1.mã khoa = t2.mã khoa group by t1.mã khoa order by count ( * ) desc limit 3
select t1.tên khoa , t1.địa chỉ khoa , count ( * ) from khoa as t1 join sinh viên as t2 on t1.mã khoa = t2.mã khoa group by t1.mã khoa order by count ( * ) desc limit 3
select t1.tên giáo sư , t1.văn phòng giáo sư from giáo sư as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa where t2.tên khoa = "History" and t1.bằng cấp cao nhất = "Tiến sĩ"
select t1.tên của giáo sư , t1.văn phòng giáo sư from giáo sư as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa where t2.tên khoa = "History" and t1.bằng cấp cao nhất = "Ph.D."
select t1.tên của nhân viên , t2.mã khoá học from nhân viên as t1 join đăng ký khoá học as t2 on t1.mã số nhân viên = t2.mã số nhân viên
select t1.tên của nhân viên , t2.mã khoá học from nhân viên as t1 join đăng ký khoá học as t2 on t1.mã số nhân viên = t2.mã số nhân viên
select t1.tên của nhân viên , t2.mô tả về khoá học from nhân viên as t1 join đăng ký khoá học as t2 on t1.mã số nhân viên = t2.mã số nhân viên
select t1.tên của nhân viên , t2.mô tả về khoá học from nhân viên as t1 join đăng ký khoá học as t2 on t1.mã số nhân viên = t2.mã số nhân viên
select t1.tên của nhân viên , t1.văn phòng giáo sư from nhân viên as t1 join giáo sư as t2 on t1.mã số nhân viên = t2.mã số nhân viên join khoá học as t3 on t2.mã khoa = t3.mã khoá học
select t1.tên của nhân viên , t1.văn phòng giáo sư from giáo sư as t1 join khoá học as t2 on t1.mã khoa = t2.mã khoa join đăng ký khoá học as t3 on t2.mã khoá học = t3.mã lớp
select t1.tên của nhân viên , t1.văn phòng giáo sư from giáo sư as t1 join khoá học as t2 on t1.mã khoa = t2.mã khoa join đăng ký khoá học as t3 on t3.mã số nhân viên = t1.mã số nhân viên join lớp học as t4 on t4.mã lớp học = t3.mã lớp where t2.mô tả về khoá học = 'EECS'
select t1.tên của giáo sư , t1.văn phòng giáo sư , t2.mô tả về khoá học from giáo sư as t1 join khoá học as t2 on t1.mã khoa = t2.mã khoa
select t2.mô tả về khoá học , t1.tên của sinh viên from đăng ký khoá học as t1 join khoá học as t2 on t1.mã khoá học = t2.mã khoá học
select t1.tên của sinh viên , t1.họ của sinh viên from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên join khoá học as t3 on t2.mã khoá học = t3.mã khoá học
select t1.tên của sinh viên from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên where t2.điểm số = 'A' or t2.điểm số = 'C'
select t1.tên của sinh viên from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên where t2.điểm số = 'A' or t2.điểm số = 'C'
select t1.tên của giáo sư , t2.phòng học from giáo sư as t1 join lớp học as t2 on t1.mã số nhân viên = t2.mã số nhân viên where t1.mã khoa = "Kế toán"
select phòng học from lớp học where mã khoá học in ( select mã khoá học from khoá học where mã khoa = 'Kế toán' )
select t1.tên của giáo sư from giáo sư as t1 join khoá học as t2 on t1.mã khoa = t2.mã khoa where t2.mô tả về khoá học like '%Hệ thống thông tin máy tính%'
select t1.tên của nhân viên , t1.bằng cấp cao nhất from nhân viên as t1 join giáo sư as t2 on t1.mã số nhân viên = t2.mã số nhân viên where t2.mã khoa = "EECS"
select họ của sinh viên from sinh viên where mã số sinh viên in ( select mã số sinh viên from đăng ký khoá học where mã lớp = 10018 and điểm số = 'A' )
select t1.họ của sinh viên from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên where t2.điểm số = 'A' and t2.mã lớp = 10018
select tên giáo sư , văn phòng giáo sư from giáo sư where mã khoa = ' History ' and bằng cấp cao nhất <> ' Ph.D. '
select tên của giáo sư , văn phòng giáo sư from giáo sư where mã khoa = ' History ' and bằng cấp cao nhất <> ' Ph.D. '
select t1.tên của nhân viên from nhân viên as t1 join lớp học as t2 on t1.mã số nhân viên = t2.mã số nhân viên group by t2.mã số nhân viên having count ( * ) > 1
select t1.tên của giáo sư from giáo sư as t1 join lớp học as t2 on t1.mã số nhân viên = t2.mã số nhân viên group by t1.mã số nhân viên having count ( * ) > 1
select tên của sinh viên from sinh viên group by tên của sinh viên having count ( * ) = 1
select t1.tên của sinh viên from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên group by t1.mã số sinh viên having count ( * ) = 1
select t1.tên khoa from khoa as t1 join khoá học as t2 on t1.mã khoa = t2.mã khoa where t2.mô tả về khoá học like '%Statistics%'
select tên khoa from khoa where mô tả về khoá học like '%Statistics%'
select t1.tên của sinh viên from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên where t1.chữ cái đầu của tên sinh viên = 'S' and t2.mã khoá học = 'ACCT-211'
select t1.tên của sinh viên from sinh viên as t1 join đăng ký khoá học as t2 on t1.mã số sinh viên = t2.mã số sinh viên where t1.chữ cái đầu của tên sinh viên = 'S' and t2.mã khoá học = 'ACCT-211'
select mã trạng thái tài liệu from trạng thái của tài liệu
select mô tả về trạng thái tài liệu from trạng thái của tài liệu where mã trạng thái tài liệu = "đang được xử lý"
select mã loại tài liệu from loại tài liệu
select mô tả về loại tài liệu from loại tài liệu where mã loại tài liệu = "Giấy"
select tên đại lý vận chuyển from đại lý vận chuyển tài liệu
select mã đại lý vận chuyển from đại lý vận chuyển tài liệu where tên đại lý vận chuyển = "UPS"
select mã vai trò from vai trò
select mô tả về vai trò from vai trò where mã vai trò = "ED"
select count ( * ) from nhân viên
select mô tả về vai trò from nhân viên where tên nhân viên = "Koby"
select id tài liệu , ngày lập biên lai from tài liệu
select mô tả về vai trò , id vai trò , count ( * ) from nhân viên group by id vai trò
select mô tả về vai trò , count ( * ) from nhân viên group by mã vai trò having count ( * ) > 1
select mô tả về trạng thái tài liệu from trạng thái của tài liệu where mã trạng thái tài liệu in ( select mã trạng thái tài liệu from tài liệu where id tài liệu = 1 )
select count ( * ) from tài liệu where mã trạng thái tài liệu = "Đã hoàn thành"
select mã loại tài liệu from tài liệu where id tài liệu = 2
select id tài liệu from tài liệu where mã trạng thái tài liệu = "Đã hoàn thành" and mã loại tài liệu = "Giấy"
select t2.tên đại lý vận chuyển from tài liệu as t1 join đại lý vận chuyển tài liệu as t2 on t1.mã đại lý vận chuyển = t2.mã đại lý vận chuyển where t1.id tài liệu = 2
select count ( * ) from tài liệu where mã đại lý vận chuyển = "USPS"
select t2.tên đại lý vận chuyển , count ( * ) from tài liệu as t1 join đại lý vận chuyển tài liệu as t2 on t1.mã đại lý vận chuyển = t2.mã đại lý vận chuyển group by t1.mã đại lý vận chuyển order by count ( * ) desc limit 1
select ngày lập biên lai from tài liệu where id tài liệu = 3
select chi tiết địa chỉ from địa chỉ where id địa chỉ in ( select gửi đến địa chỉ có id from tài liệu được gửi where id tài liệu = 4 )
select ngày gửi from tài liệu được gửi where id tài liệu = 7
select id tài liệu from tài liệu where mã trạng thái tài liệu = "Đã hoàn thành" and mã loại tài liệu = "Giấy" except select id tài liệu from tài liệu where mã trạng thái tài liệu = "Đã hoàn thành" and mã loại tài liệu = "Giấy" and mã đại lý vận chuyển = "USPS"
select id tài liệu from tài liệu where mã trạng thái tài liệu = "Đã hoàn thành" and mã loại tài liệu = "Giấy" and mã đại lý vận chuyển = "USPS"
select chi tiết dự thảo from bản dự thảo của tài liệu where id tài liệu = 7
select count ( * ) from bản dự thảo của tài liệu where id tài liệu = 2
select id tài liệu , số lượng bản sao from bản sao order by số lượng bản sao desc limit 1
select id tài liệu , số lượng bản sao from bản sao where số lượng bản sao > 1
select t2.tên nhân viên from lịch sử lưu hành as t1 join nhân viên as t2 on t1.id nhân viên = t2.id nhân viên where t1.id tài liệu = 1
select tên nhân viên from nhân viên except select t1.tên nhân viên from nhân viên as t1 join lịch sử lưu hành as t2 on t1.id nhân viên = t2.id nhân viên
select t1.tên nhân viên , count ( * ) from nhân viên as t1 join lịch sử lưu hành as t2 on t1.id nhân viên = t2.id nhân viên group by t2.id nhân viên
select id tài liệu , count ( * ) from lịch sử lưu hành group by id tài liệu
select count ( * ) from lượt đặt hàng
select count ( * ) from lượt đặt hàng
select ngày đặt hàng from lượt đặt hàng
select ngày đặt hàng from lượt đặt hàng
select ngày đặt hàng , ngày giao hàng theo kế hoạch from lượt đặt hàng
select ngày giao hàng theo kế hoạch , ngày giao hàng thực tế from lượt đặt hàng
select count ( * ) from khách hàng
select count ( * ) from khách hàng
select số điện thoại khách hàng , địa chỉ email khách hàng from khách hàng where tên khách hàng = "Harold"
select địa chỉ email khách hàng , số điện thoại khách hàng from khách hàng where tên khách hàng = "Harold"
select tên cửa hàng from cửa hàng
select tên cửa hàng from cửa hàng
select min ( số lượng đặt hàng ) , avg ( số lượng đặt hàng ) , max ( số lượng đặt hàng ) from mặt hàng trong hoá đơn
select min ( số lượng đặt hàng ) , avg ( số lượng đặt hàng ) , max ( số lượng đặt hàng ) from mặt hàng trong hoá đơn
select mã phương thức thanh toán from hoá đơn group by mã phương thức thanh toán
select mã phương thức thanh toán from hoá đơn group by mã phương thức thanh toán
select mô tả về khu vực tiếp thị from khu vực tiếp thị where mã khu vực tiếp thị = "Trung Quốc"
select mô tả về khu vực tiếp thị from khu vực tiếp thị where mã khu vực tiếp thị = "Trung Quốc"
select tên sản phẩm from các sản phẩm where giá sản phẩm > ( select avg ( giá sản phẩm ) from các sản phẩm )
select tên sản phẩm from các sản phẩm where giá sản phẩm > ( select avg ( giá sản phẩm ) from các sản phẩm )
select tên sản phẩm from các sản phẩm where giá sản phẩm = ( select max ( giá sản phẩm ) from các sản phẩm )
select tên sản phẩm from sản phẩm where giá sản phẩm = ( select max ( giá sản phẩm ) from sản phẩm )
select tên sản phẩm from sản phẩm order by giá sản phẩm asc
select tên sản phẩm from các sản phẩm order by giá sản phẩm asc
select số điện thoại khách hàng from khách hàng join người biểu diễn on khách hàng.id khách hàng = người biểu diễn.id khách hàng where tên khách hàng = "Ashley"
select số điện thoại khách hàng from khách hàng where tên khách hàng = "Ashley"
select mã phương thức thanh toán , count ( * ) from hoá đơn group by mã phương thức thanh toán
select mã phương thức thanh toán , count ( * ) from hoá đơn group by mã phương thức thanh toán
select mã phương thức thanh toán from hoá đơn group by mã phương thức thanh toán order by count ( * ) desc limit 1
select mã phương thức thanh toán from hoá đơn group by mã phương thức thanh toán order by count ( * ) desc limit 1
select t2.thành phố thị trấn from địa chỉ as t1 join cửa hàng as t2 on t1.id địa chỉ = t2.id địa chỉ where t2.tên cửa hàng = "FJM Filming"
select t2.thành phố thị trấn from địa chỉ as t1 join cửa hàng as t2 on t1.id địa chỉ = t2.id địa chỉ where t2.tên cửa hàng = "FJA Filming"
select quận hạt from địa chỉ where mã khu vực tiếp thị = "CA"
select t1.thành phố thị trấn from địa chỉ as t1 join cửa hàng as t2 on t1.id địa chỉ = t2.id địa chỉ where t2.mã khu vực tiếp thị = "CA"
select mã khu vực tiếp thị from cửa hàng where tên cửa hàng = "Rob Dining"
select mã khu vực tiếp thị from cửa hàng where tên cửa hàng = "Rob Dinning"
select mô tả về loại dịch vụ from loại dịch vụ where id sản phẩm in ( select id sản phẩm from sản phẩm where giá sản phẩm > 100 )
select mô tả về loại dịch vụ from loại dịch vụ where giá sản phẩm > 100
select mô tả về loại dịch vụ , mã loại dịch vụ , count ( * ) from loại dịch vụ group by mô tả về loại dịch vụ , mã loại dịch vụ
select mô tả về loại dịch vụ , mã loại dịch vụ , count ( * ) from loại dịch vụ group by mô tả về loại dịch vụ , mã loại dịch vụ
select mô tả về loại dịch vụ , mã loại dịch vụ from loại dịch vụ group by mô tả về loại dịch vụ order by count ( * ) desc limit 1
select mô tả về loại dịch vụ , mã loại dịch vụ from loại dịch vụ group by mô tả về loại dịch vụ order by count ( * ) desc limit 1
select số điện thoại cửa hàng , địa chỉ email cửa hàng from cửa hàng where id cửa hàng in ( select id cửa hàng from dịch vụ where id sản phẩm in ( select id sản phẩm from dịch vụ đặt hàng ) )
select t1.địa chỉ email cửa hàng , t1.số điện thoại cửa hàng from cửa hàng as t1 join dịch vụ as t2 on t1.id cửa hàng = t2.id cửa hàng
select số điện thoại cửa hàng , địa chỉ email cửa hàng from cửa hàng where id cửa hàng in ( select id cửa hàng from dịch vụ where tên sản phẩm = "Film" )
select t1.id nhóm hội thảo kịch from dịch vụ as t2 join sản phẩm as t3 on t2.id sản phẩm = t3.id sản phẩm where t3.tên sản phẩm = "Film"
select tên sản phẩm , avg ( giá sản phẩm ) from các sản phẩm group by tên sản phẩm
select tên sản phẩm , avg ( giá sản phẩm ) from các sản phẩm group by tên sản phẩm
select tên sản phẩm from các sản phẩm where giá sản phẩm < 1000000
select tên sản phẩm from các sản phẩm where giá sản phẩm < 1000000
select sum ( số lượng đặt hàng ) from mặt hàng được đặt as t1 join sản phẩm as t2 on t1.id sản phẩm = t2.id sản phẩm where t2.tên sản phẩm = "Pictures"
select sum ( số lượng đặt hàng ) from mặt hàng được đặt as t1 join sản phẩm as t2 on t1.id sản phẩm = t2.id sản phẩm where t2.tên sản phẩm = "Pictures"
select * from mặt hàng được đặt where id mặt hàng được đặt in ( select id mặt hàng được đặt from mặt hàng where id sản phẩm in ( select id sản phẩm from sản phẩm where giá sản phẩm > 2000 ) )
select * from các sản phẩm where giá sản phẩm > 2000
select ngày giao hàng thực tế from mặt hàng được đặt where số lượng đặt hàng = 1
select ngày giao hàng thực tế from mặt hàng được đặt where số lượng đặt hàng = 1
select ngày đặt hàng from lượt đặt hàng where id đơn hàng in ( select id đơn hàng from mặt hàng được đặt where id mặt hàng được đặt in ( select id mặt hàng được đặt from hoá đơn where giá sản phẩm > 1000 ) )
select ngày đặt hàng from lượt đặt hàng where id đơn hàng in ( select id đơn hàng from mặt hàng được đặt where id mặt hàng được đặt in ( select id mặt hàng được đặt from hoá đơn where giá sản phẩm > 1000 ) )
select count ( distinct mã tiền tệ ) from nhóm hội thảo kịch
select count ( distinct mã tiền tệ ) from khu vực tiếp thị
select t1.tên cửa hàng from cửa hàng as t1 join địa chỉ as t2 on t1.id địa chỉ = t2.id địa chỉ where t2.thành phố thị trấn = "Feliciaberg"
select t1.tên cửa hàng from cửa hàng as t1 join địa chỉ as t2 on t1.id địa chỉ = t2.id địa chỉ where t2.thành phố thị trấn = "Feliciaberg"
select địa chỉ email cửa hàng from cửa hàng where mã khu vực tiếp thị = "AK"
select địa chỉ email cửa hàng from cửa hàng where mã khu vực tiếp thị = "AK"
select thành phố thị trấn , count ( * ) from địa chỉ group by thành phố thị trấn
select t2.thành phố thị trấn , count ( * ) from địa chỉ as t1 join nhóm hội thảo kịch as t2 on t1.id địa chỉ = t2.id địa chỉ group by t2.thành phố thị trấn
select mã khu vực tiếp thị from khu vực tiếp thị group by mã khu vực tiếp thị order by count ( * ) desc limit 1
select mã khu vực tiếp thị from khu vực tiếp thị group by mã khu vực tiếp thị order by count ( * ) desc limit 1
select thành phố thị trấn from địa chỉ except select thành phố thị trấn from địa chỉ join người biểu diễn trong các lượt đặt hàng on người biểu diễn trong các lượt đặt hàng.id đơn hàng = lượt đặt hàng.id đơn hàng
select thành phố thị trấn from địa chỉ except select thành phố thị trấn from địa chỉ join người biểu diễn on địa chỉ id = người biểu diễn id địa chỉ
select mã trạng thái from lượt đặt hàng group by mã trạng thái order by count ( * ) desc limit 1
select mã trạng thái from lượt đặt hàng group by mã trạng thái order by count ( * ) desc limit 1
select t1.tên cửa hàng from cửa hàng as t1 join lượt đặt hàng as t2 on t1.id cửa hàng = t2.id cửa hàng where t2.mã trạng thái = "stop"
select t1.tên cửa hàng from cửa hàng as t1 join lượt đặt hàng as t2 on t1.id cửa hàng = t2.id cửa hàng where t2.mã trạng thái = "stop"
select tên khách hàng from khách hàng except select t1.tên khách hàng from khách hàng as t1 join lượt đặt hàng as t2 on t1.id khách hàng = t2.id khách hàng
select tên khách hàng from khách hàng except select t1.tên khách hàng from khách hàng as t1 join lượt đặt hàng as t2 on t1.id khách hàng = t2.id khách hàng
select avg ( số lượng đặt hàng ) from hoá đơn where mã phương thức thanh toán = ' Mastercard '
select avg ( số lượng đặt hàng ) from hoá đơn where mã phương thức thanh toán = "Mastercard"
select id sản phẩm from mặt hàng được đặt group by id sản phẩm order by count ( * ) desc limit 1
select id sản phẩm from mặt hàng được đặt group by id sản phẩm order by count ( * ) desc limit 1
select mô tả về loại dịch vụ from loại dịch vụ where mô tả về loại dịch vụ not in ( select mô tả về loại dịch vụ from loại dịch vụ where tên sản phẩm = "Photos" )
select mô tả về loại dịch vụ from loại dịch vụ where mã loại dịch vụ in ( select mã loại dịch vụ from dịch vụ where mô tả về sản phẩm = "Pictures" union select mã loại dịch vụ from dịch vụ where mô tả về sản phẩm = "Phim" )
select count ( * ) from tài khoản
select count ( * ) from tài khoản
select count ( distinct id khách hàng ) from tài khoản
select count ( * ) from tài khoản as t1 join khách hàng as t2 on t1.id khách hàng = t2.id khách hàng
select id tài khoản , ngày mở tài khoản , tên tài khoản , chi tiết khác về tài khoản from tài khoản
select id tài khoản , ngày mở tài khoản , tên tài khoản , chi tiết khác về tài khoản from tài khoản
select id tài khoản , tên tài khoản , ngày mở tài khoản from tài khoản as t1 join khách hàng as t2 on t1.id khách hàng = t2.id khách hàng where t2.tên khách hàng = "Meaghan Afghanistan"
select id tài khoản , tên tài khoản , ngày mở tài khoản from tài khoản as t1 join khách hàng as t2 on t1.id khách hàng = t2.id khách hàng where t2.tên khách hàng = "Meaghan Afghanistan"
select t1.tên tài khoản , t1.chi tiết khác về tài khoản from tài khoản as t1 join khách hàng as t2 on t1.id khách hàng = t2.id khách hàng where t2.tên khách hàng = "Meaghan" and t2.họ của khách hàng = "Afghanistan"
select t1.tên tài khoản , t1.chi tiết khác về tài khoản from tài khoản as t1 join khách hàng as t2 on t1.id khách hàng = t2.id khách hàng where t2.tên khách hàng = "Meaghan Afghanistan Keeling"
select t1.tên khách hàng , t1.họ của khách hàng from khách hàng as t1 join tài khoản as t2 on t1.id khách hàng = t2.id khách hàng where t2.tên tài khoản = "900"
select t1.tên khách hàng , t1.tên đăng nhập from khách hàng as t1 join tài khoản as t2 on t1.id khách hàng = t2.id khách hàng where t2.tên tài khoản = "900"
select count ( * ) from khách hàng where id khách hàng not in ( select id khách hàng from tài khoản )
select count ( * ) from khách hàng where not id khách hàng in ( select id khách hàng from tài khoản )
select tên khách hàng , họ của khách hàng , số điện thoại from khách hàng except select t1.tên khách hàng , t1.họ của khách hàng , t1.số điện thoại from khách hàng as t1 join tài khoản as t2 on t1.id khách hàng = t2.id khách hàng
select tên khách hàng , họ của khách hàng , số điện thoại from khách hàng except select t1.tên khách hàng , t1.họ của khách hàng , t1.số điện thoại from khách hàng as t1 join tài khoản as t2 on t1.id khách hàng = t2.id khách hàng
select id khách hàng from khách hàng except select id khách hàng from tài khoản
select tên khách hàng from khách hàng except select t1.tên khách hàng from khách hàng as t1 join tài khoản as t2 on t1.id khách hàng = t2.id khách hàng
select count ( * ) , id khách hàng from tài khoản group by id khách hàng
select id khách hàng , count ( * ) from tài khoản group by id khách hàng
select t1.tên khách hàng , t1.họ của khách hàng , t1.id khách hàng from khách hàng as t1 join tài khoản as t2 on t1.id khách hàng = t2.id khách hàng group by t1.id khách hàng order by count ( * ) desc limit 1
select t1.id khách hàng , t1.tên khách hàng from khách hàng as t1 join tài khoản as t2 on t1.id khách hàng = t2.id khách hàng group by t1.id khách hàng order by count ( * ) desc limit 1
select id khách hàng , tên khách hàng , số lượng tài khoản from tài khoản as t1 join khách hàng as t2 on t1.id khách hàng = t2.id khách hàng
select t1.tên khách hàng , t1.id khách hàng , count ( * ) from khách hàng as t1 join tài khoản as t2 on t1.id khách hàng = t2.id khách hàng group by t1.id khách hàng
select t1.tên khách hàng , t1.id khách hàng from khách hàng as t1 join tài khoản as t2 on t1.id khách hàng = t2.id khách hàng group by t1.id khách hàng having count ( * ) >= 2
select t1.tên khách hàng , t1.id khách hàng from khách hàng as t1 join tài khoản as t2 on t1.id khách hàng = t2.id khách hàng group by t1.id khách hàng having count ( * ) >= 2
select count ( * ) from khách hàng
select count ( * ) from khách hàng
select giới tính , count ( * ) from khách hàng group by giới tính
select giới tính , count ( * ) from khách hàng group by giới tính
select count ( * ) from giao dịch tài chính
select count ( * ) from giao dịch tài chính
select count ( * ) , id tài khoản from giao dịch tài chính group by id tài khoản
select id tài khoản , count ( * ) from giao dịch tài chính group by id tài khoản
select count ( * ) from giao dịch tài chính where id tài khoản = ( select id tài khoản from tài khoản where tên tài khoản = "337" )
select count ( * ) from giao dịch tài chính where id tài khoản = ( select id tài khoản from tài khoản where tên tài khoản = "337" )
select avg ( số tiền giao dịch ) , min ( số tiền giao dịch ) , max ( số tiền giao dịch ) , sum ( số tiền giao dịch ) from giao dịch tài chính
select avg ( số tiền giao dịch ) , min ( số tiền giao dịch ) , max ( số tiền giao dịch ) , sum ( số tiền giao dịch ) from giao dịch tài chính
select id giao dịch from giao dịch tài chính where số tiền giao dịch > ( select avg ( số tiền giao dịch ) from giao dịch tài chính )
select id giao dịch from giao dịch tài chính where số tiền giao dịch > ( select avg ( số tiền giao dịch ) from giao dịch tài chính )
select loại giao dịch , sum ( số tiền giao dịch ) from giao dịch tài chính group by loại giao dịch
select loại giao dịch , sum ( số tiền giao dịch ) from giao dịch tài chính group by loại giao dịch
select tên tài khoản , id tài khoản , count ( * ) from giao dịch tài chính group by tên tài khoản , id tài khoản
select t1.tên tài khoản , t1.id tài khoản , count ( * ) from tài khoản as t1 join giao dịch tài chính as t2 on t1.id tài khoản = t2.id tài khoản group by t1.id tài khoản
select id tài khoản from giao dịch tài chính group by id tài khoản order by count ( * ) desc limit 1
select max ( id tài khoản ) from giao dịch tài chính group by id tài khoản order by count ( * ) desc limit 1
select t1.tên tài khoản , t1.id tài khoản from tài khoản as t1 join giao dịch tài chính as t2 on t1.id tài khoản = t2.id tài khoản group by t1.id tài khoản having count ( * ) >= 4
select t1.tên tài khoản , t1.id tài khoản from tài khoản as t1 join giao dịch tài chính as t2 on t1.id tài khoản = t2.id tài khoản group by t1.id tài khoản having count ( * ) >= 4
select distinct kích thước sản phẩm from sản phẩm
select distinct kích thước sản phẩm from sản phẩm
select distinct màu sản phẩm from sản phẩm
select distinct màu sản phẩm from sản phẩm
select số hoá đơn , count ( * ) from hoá đơn group by số hoá đơn
select count ( * ) , số hoá đơn from giao dịch tài chính group by số hoá đơn
select số hoá đơn , ngày lập hoá đơn from hoá đơn group by số hoá đơn order by count ( * ) desc limit 1
select số hoá đơn , ngày lập hoá đơn from hoá đơn order by số tiền giao dịch desc limit 1
select count ( * ) from hoá đơn
select count ( * ) from hoá đơn
select ngày lập hoá đơn , id đơn hàng , chi tiết đặt hàng from đơn hàng
select ngày lập hoá đơn , id đơn hàng , chi tiết đặt hàng from đơn hàng
select id đơn hàng , count ( * ) from hoá đơn group by id đơn hàng
select count ( * ) , id đơn hàng from đơn hàng group by id đơn hàng
select id đơn hàng , chi tiết đặt hàng from đơn hàng where id đơn hàng in ( select id đơn hàng from hoá đơn group by id đơn hàng having count ( * ) > 2 )
select id đơn hàng from hoá đơn group by id đơn hàng having count ( * ) >= 2
select id khách hàng , họ của khách hàng , số điện thoại from khách hàng where id khách hàng in ( select id khách hàng from đơn hàng group by id khách hàng order by count ( * ) desc limit 1 )
select t1.họ của khách hàng , t1.id khách hàng , t1.số điện thoại from khách hàng as t1 join đơn đặt hàng as t2 on t1.id khách hàng = t2.id khách hàng group by t1.id khách hàng order by count ( * ) desc limit 1
select tên sản phẩm from sản phẩm where id sản phẩm not in ( select id sản phẩm from mặt hàng được đặt )
select tên sản phẩm from sản phẩm where id sản phẩm not in ( select id sản phẩm from mặt hàng được đặt )
select t1.tên sản phẩm , sum ( t2.số lượng sản phẩm ) from sản phẩm as t1 join mặt hàng được đặt as t2 on t1.id sản phẩm = t2.id sản phẩm group by t1.tên sản phẩm
select t1.tên sản phẩm , sum ( t2.số lượng sản phẩm ) from sản phẩm as t1 join mặt hàng được đặt as t2 on t1.id sản phẩm = t2.id sản phẩm group by t2.id sản phẩm
select id đơn hàng , count ( * ) from mặt hàng được đặt group by id đơn hàng
select count ( * ) , id đơn hàng from mặt hàng được đặt group by id đơn hàng
select id sản phẩm , count ( * ) from mặt hàng được đặt as t1 join đơn hàng as t2 on t1.id đơn hàng = t2.id đơn hàng join sản phẩm as t3 on t1.id sản phẩm = t3.id sản phẩm group by t3.id sản phẩm
select count ( distinct id đơn hàng ) , id sản phẩm from mặt hàng được đặt group by id sản phẩm
select t1.tên sản phẩm , count ( * ) from sản phẩm as t1 join mặt hàng được đặt as t2 on t1.id sản phẩm = t2.id sản phẩm group by t1.tên sản phẩm
select t1.tên sản phẩm , count ( * ) from sản phẩm as t1 join mặt hàng được đặt as t2 on t1.id sản phẩm = t2.id sản phẩm group by t1.tên sản phẩm
select id đơn hàng , count ( * ) from mặt hàng được đặt group by id đơn hàng
select count ( * ) , id đơn hàng from mặt hàng được đặt group by id đơn hàng
select id đơn hàng , sum ( số lượng sản phẩm ) from mặt hàng được đặt group by id đơn hàng
select id đơn hàng , sum ( số lượng sản phẩm ) from mặt hàng được đặt group by id đơn hàng
select count ( * ) from sản phẩm where id sản phẩm not in ( select id sản phẩm from mặt hàng được đặt )
select count ( * ) from sản phẩm where id sản phẩm not in ( select id sản phẩm from mặt hàng được đặt )
select count ( * ) from địa chỉ where quốc gia = "USA"
select distinct thành phố from địa chỉ
select tiểu bang , count ( * ) from địa chỉ group by tiểu bang
select tên khách hàng , điện thoại khách hàng from khách hàng except select t1.tên khách hàng , t1.điện thoại khách hàng from khách hàng as t1 join lịch sử địa chỉ khách hàng as t2 on t1.id khách hàng = t2.id khách hàng
select t1.tên khách hàng from khách hàng as t1 join lượt đặt hàng của khách hàng as t2 on t1.id khách hàng = t2.id khách hàng group by t1.id khách hàng order by count ( * ) desc limit 1
select mã loại sản phẩm from sản phẩm group by mã loại sản phẩm having count ( * ) >= 2
select t1.tên khách hàng from khách hàng as t1 join lượt đặt hàng của khách hàng as t2 on t1.id khách hàng = t2.id khách hàng where t2.mã trạng thái đơn hàng = "Đã hoàn thành" intersect select t1.tên khách hàng from khách hàng as t1 join lượt đặt hàng của khách hàng as t2 on t1.id khách hàng = t2.id khách hàng where t2.mã trạng thái đơn hàng = "Đã hoàn thành một phần"
select tên khách hàng , số điện thoại khách hàng , mã phương thức thanh toán from khách hàng order by mã số khách hàng desc
select t1.tên sản phẩm , sum ( t2.số lượng đặt hàng ) from sản phẩm as t1 join mặt hàng được đặt as t2 on t1.id sản phẩm = t2.id sản phẩm group by t1.tên sản phẩm
select max ( giá sản phẩm ) , min ( giá sản phẩm ) , avg ( giá sản phẩm ) from sản phẩm
select count ( * ) from sản phẩm where giá sản phẩm > ( select avg ( giá sản phẩm ) from sản phẩm )
select t1.tên khách hàng , t2.thành phố , t1.từ ngày , t1.đến ngày from lịch sử địa chỉ khách hàng as t1 join địa chỉ as t2 on t1.id địa chỉ = t2.id địa chỉ
select t1.tên khách hàng from khách hàng as t1 join lượt đặt hàng của khách hàng as t2 on t1.id khách hàng = t2.id khách hàng where t1.mã phương thức thanh toán = "Credit Card" group by t1.id khách hàng having count ( * ) > 2
select t1.tên khách hàng , t1.điện thoại khách hàng from khách hàng as t1 join lượt đặt hàng của khách hàng as t2 on t1.id khách hàng = t2.id khách hàng group by t1.id khách hàng order by count ( * ) desc limit 1
select mã loại sản phẩm , tên sản phẩm from sản phẩm where giá sản phẩm > 1000 or giá sản phẩm < 500
select count ( * ) from bộ trưởng where tuổi > 56
select tên , sinh ra ở tiểu bang , tuổi from bộ trưởng order by tuổi
select năm thành lập , tên , ngân sách tính theo tỷ from các bộ
select max ( ngân sách tính theo tỷ ) , min ( ngân sách tính theo tỷ ) from các bộ
select avg ( số lượng nhân viên ) from các bộ where xếp hạng between 10 and 15
select tên from bộ trưởng where sinh ra ở tiểu bang <> 'California'
select distinct năm thành lập from các bộ as t1 join sự quản lý as t2 on t1.id các bộ = t2.id các bộ join bộ trưởng as t3 on t2.id người đứng đầu = t3.id người đứng đầu where t3.sinh ra ở tiểu bang = "Alabama"
select sinh ra ở tiểu bang from bộ trưởng group by sinh ra ở tiểu bang having count ( * ) >= 3
select năm thành lập from các bộ group by năm thành lập order by count ( * ) desc limit 1
select t1.tên , t1.số lượng nhân viên from các bộ as t1 join sự quản lý as t2 on t1.id các bộ = t2.id các bộ where t2.vai trò tạm thời = "Tạm thời"
select count ( distinct vai trò tạm thời ) from sự quản lý
select count ( * ) from các bộ where id người đứng đầu is null
select distinct tuổi from bộ trưởng where vai trò tạm thời = 1
select sinh ra ở tiểu bang from bộ trưởng where tên = "Bộ tài chính" intersect select sinh ra ở tiểu bang from bộ trưởng where tên = "Bộ an ninh nội địa"
select id các bộ , tên , count ( * ) from bộ trưởng group by id các bộ having count ( * ) > 1
select id người đứng đầu , tên from bộ trưởng where tên like '%Ha%'
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
select t3.thành phố from nhân viên as t1 join địa chỉ nhân viên as t2 on t1.id địa chỉ nhân viên = t2.id địa chỉ nhân viên join địa chỉ as t3 on t2.id địa chỉ nhân viên = t3.id địa chỉ where t1.tên = "Janessa" and t1.họ = "Sawayn"
select thành phố from địa chỉ where số địa chỉ dòng 1 của tòa nhà = "12345 Elm Street" and tên = "Janessa" and họ = "Sawayn"
select t1.quốc gia , t1.tiểu bang from địa chỉ as t1 join nhân viên as t2 on t1.id địa chỉ nhân viên = t2.id địa chỉ nhân viên where t2.tên = "Janessa" and t2.họ = "Sawayn"
select t1.quốc gia , t1.tiểu bang from địa chỉ as t1 join khách hàng as t2 on t1.id địa chỉ khách hàng = t2.id địa chỉ khách hàng where t2.tên = "Janessa" and t2.họ = "Sawayn"
select sum ( giờ học ) from bài giảng where id khách hàng in ( select id khách hàng from khách hàng where tên = "Rylan" and họ = "Goodwin" )
select sum ( giờ học ) from bài giảng where id khách hàng = ( select id khách hàng from khách hàng where tên = "Rylan" and họ = "Goodwin" )
select t2.mã bưu điện from địa chỉ as t1 join nhân viên as t2 on t1.id địa chỉ nhân viên = t2.id địa chỉ nhân viên where t2.tên = "Janessa" and t2.họ = "Sawayn"
select t2.mã bưu điện from địa chỉ as t1 join nhân viên as t2 on t1.id địa chỉ nhân viên = t2.id địa chỉ nhân viên where t2.tên = "Janessa" and t2.họ = "Sawayn"
select count ( * ) from nhân viên as t1 join địa chỉ as t2 on t1.id địa chỉ nhân viên = t2.id địa chỉ where t2.tiểu bang = "Georgia"
select count ( * ) from nhân viên where id địa chỉ nhân viên in ( select id địa chỉ nhân viên from địa chỉ nhân viên where tiểu bang = "Georgia" )
select t1.tên , t1.họ from nhân viên as t1 join địa chỉ as t2 on t1.id địa chỉ nhân viên = t2.id địa chỉ where t2.thành phố = "Damianfort"
select tên , họ from nhân viên where id địa chỉ nhân viên in ( select id địa chỉ nhân viên from địa chỉ where thành phố = "Damianfort" )
select thành phố , count ( * ) from địa chỉ group by thành phố order by count ( * ) desc limit 1
select thành phố from địa chỉ group by thành phố order by count ( * ) desc limit 1
select tiểu bang from địa chỉ where số lượng nhân viên sống ở địa chỉ between 2 and 4
select tiểu bang from địa chỉ where số lượng nhân viên sống ở đó between 2 and 4
select tên , họ from khách hàng
select tên , họ from khách hàng
select địa chỉ email , ngày sinh from khách hàng where tên = "Carole"
select địa chỉ email , ngày sinh from khách hàng where tên = "Carole"
select số điện thoại , địa chỉ email from khách hàng where số tiền còn thiếu > 2000
select số điện thoại , địa chỉ email from khách hàng where số tiền còn thiếu > 2000
select mã trạng thái khách hàng , số điện thoại di động , địa chỉ email from khách hàng where tên = "Marina" or họ = "Kohler"
select mã trạng thái khách hàng , số điện thoại di động , địa chỉ email from khách hàng where họ = "Kohler" or tên = "Marina"
select ngày sinh from khách hàng where mã trạng thái khách hàng = "Khách hàng tốt"
select ngày sinh from khách hàng where mã trạng thái khách hàng = " Khách hàng tốt "
select ngày trở thành khách hàng from khách hàng where tên = "Carole" and họ = "Bernhard"
select ngày trở thành khách hàng from khách hàng where tên = "Carole" and họ = "Bernhard"
select count ( * ) from khách hàng
select count ( * ) from khách hàng
select mã trạng thái khách hàng , count ( * ) from khách hàng group by mã trạng thái khách hàng
select mã trạng thái khách hàng , count ( * ) from khách hàng group by mã trạng thái khách hàng
select mã trạng thái khách hàng from khách hàng group by mã trạng thái khách hàng order by count ( * ) limit 1
select mã trạng thái khách hàng from khách hàng group by mã trạng thái khách hàng order by count ( * ) asc limit 1
select count ( * ) from bài giảng as t1 join khách hàng as t2 on t1.id khách hàng = t2.id khách hàng where t2.tên = "Rylan" and t2.họ = "Goodwin"
select count ( * ) from bài giảng as t1 join nhân viên as t2 on t1.id nhân viên = t2.id nhân viên where t2.tên = "Rylan" and t2.họ = "Goodwin"
select max ( số tiền còn thiếu ) , min ( số tiền còn thiếu ) , avg ( số tiền còn thiếu ) from khách hàng
select max ( số tiền còn thiếu ) , min ( số tiền còn thiếu ) , avg ( số tiền còn thiếu ) from khách hàng
select tên , họ from khách hàng where số tiền còn thiếu between 1000 and 3000
select tên , họ from khách hàng where số tiền còn thiếu between 1000 and 3000
select tên , họ from khách hàng where id địa chỉ khách hàng in ( select id địa chỉ khách hàng from địa chỉ where thành phố = "Lockmanfurt" )
select tên , họ from khách hàng where id địa chỉ khách hàng in ( select id địa chỉ khách hàng from địa chỉ where thành phố = "Lockmanfurt" )
select quốc gia from địa chỉ khách hàng where tên = "Carole" and họ = "Bernhard"
select quốc gia from địa chỉ khách hàng where id địa chỉ khách hàng in ( select id địa chỉ khách hàng from khách hàng where tên = "Carole" and họ = "Bernhard" )
select mã bưu điện from địa chỉ khách hàng where tên = "Carole" and họ = "Bernhard"
select mã bưu điện from địa chỉ khách hàng where id địa chỉ khách hàng in ( select id địa chỉ khách hàng from khách hàng where tên = "Carole" and họ = "Bernhard" )
select t1.thành phố from địa chỉ khách hàng as t1 join địa chỉ as t2 on t1.id địa chỉ khách hàng = t2.id địa chỉ group by t1.thành phố order by count ( * ) desc limit 1
select thành phố from địa chỉ khách hàng group by thành phố order by count ( * ) desc limit 1
select sum ( số tiền thanh toán ) from khoản thanh toán của khách hàng as t1 join khách hàng as t2 on t1.id khách hàng = t2.id khách hàng where t2.tên = "Carole" and t2.họ = "Bernhard"
select sum ( số tiền thanh toán ) from khoản thanh toán của khách hàng where id khách hàng = ( select id khách hàng from khách hàng where tên = "Carole" and họ = "Bernhard" )
select count ( * ) from khách hàng where id khách hàng not in ( select id khách hàng from khoản thanh toán của khách hàng )
select count ( * ) from khách hàng where id khách hàng not in ( select id khách hàng from khoản thanh toán của khách hàng )
select t1.tên , t1.họ from khách hàng as t1 join khoản thanh toán của khách hàng as t2 on t1.id khách hàng = t2.id khách hàng group by t1.id khách hàng having count ( * ) > 2
select t1.tên , t1.họ from khách hàng as t1 join khoản thanh toán của khách hàng as t2 on t1.id khách hàng = t2.id khách hàng group by t1.id khách hàng having count ( * ) > 2
select mã phương thức thanh toán , count ( * ) from khoản thanh toán của khách hàng group by mã phương thức thanh toán
select mã phương thức thanh toán , count ( * ) from khoản thanh toán của khách hàng group by mã phương thức thanh toán
select count ( * ) from bài giảng where mã trạng thái bài giảng = "Đã huỷ"
select count ( * ) from bài giảng where mã trạng thái bài giảng = "Đã huỷ"
select id bài giảng from bài giảng as t1 join nhân viên as t2 on t1.id nhân viên = t2.id nhân viên where t2.tên = "Janessa" and t2.họ = "Sawayn" and t2.biệt danh like "%s%"
select t1.id bài giảng from bài giảng as t1 join nhân viên as t2 on t1.id nhân viên = t2.id nhân viên where t2.tên = "Janessa" and t2.biệt danh like "%s%"
select count ( * ) from bài giảng as t1 join nhân viên as t2 on t1.id nhân viên = t2.id nhân viên where t2.tên like "a%"
select count ( * ) from bài giảng as t1 join nhân viên as t2 on t1.id nhân viên = t2.id nhân viên where t2.tên like "a%"
select sum ( giờ học ) from bài giảng where id nhân viên in ( select id nhân viên from nhân viên where first name = "Janessa" and last name = "Sawayn" )
select sum ( giờ học ) from bài giảng where id nhân viên = ( select id nhân viên from nhân viên where tên = "Janessa" and họ = "Sawayn" )
select avg ( giá ) from bài giảng where id nhân viên in ( select id nhân viên from nhân viên where first name = "Janessa" and last name = "Sawayn" )
select avg ( giá ) from bài giảng where id nhân viên = ( select id nhân viên from nhân viên where tên = "Janessa" and họ = "Sawayn" )
select count ( * ) from bài giảng as t1 join khách hàng as t2 on t1.id khách hàng = t2.id khách hàng where t2.tên = "Ray"
select count ( * ) from bài giảng as t1 join khách hàng as t2 on t1.id khách hàng = t2.id khách hàng where t2.tên = "Ray"
select họ from khách hàng union select họ from nhân viên
select họ from khách hàng intersect select họ from nhân viên
select tên from nhân viên where id nhân viên not in ( select id nhân viên from bài giảng )
select tên from nhân viên where id nhân viên not in ( select id nhân viên from bài giảng )
select id , chi tiết về xe from bài giảng group by id order by count ( * ) desc limit 1
select count ( * ) from nhân viên
select count ( * ) from nhân viên
select tên from nhân viên order by tuổi
select tên from nhân viên order by tuổi
select thành phố , count ( * ) from nhân viên group by thành phố
select count ( * ) , thành phố from nhân viên group by thành phố
select thành phố from nhân viên where tuổi < 30 group by thành phố having count ( * ) > 1
select thành phố from nhân viên where tuổi < 30 group by thành phố having count ( * ) > 1
select count ( * ) , địa điểm from cửa hàng group by địa điểm
select count ( * ) , địa điểm from cửa hàng group by địa điểm
select tên người quản lý , quận from cửa hàng where số lượng sản phẩm = ( select max ( số lượng sản phẩm ) from cửa hàng )
select tên người quản lý , quận from cửa hàng where số lượng sản phẩm = ( select max ( số lượng sản phẩm ) from cửa hàng )
select max ( số lượng sản phẩm ) , min ( số lượng sản phẩm ) from cửa hàng
select max ( số lượng sản phẩm ) , min ( số lượng sản phẩm ) from cửa hàng
select tên , địa điểm , quận from cửa hàng order by số lượng sản phẩm desc
select tên , địa điểm , quận from cửa hàng order by số lượng sản phẩm desc
select tên from cửa hàng where số lượng sản phẩm > ( select avg ( số lượng sản phẩm ) from cửa hàng )
select tên from cửa hàng where số lượng sản phẩm > ( select avg ( số lượng sản phẩm ) from cửa hàng )
select t1.tên from nhân viên as t1 join đánh giá as t2 on t1.id nhân viên = t2.id nhân viên group by t2.id nhân viên order by count ( * ) desc limit 1
select t1.tên from nhân viên as t1 join đánh giá as t2 on t1.id nhân viên = t2.id nhân viên group by t2.id nhân viên order by count ( * ) desc limit 1
select tên from nhân viên where id nhân viên in ( select id nhân viên from đánh giá order by tiền thưởng desc limit 1 )
select tên from nhân viên where id nhân viên in ( select id nhân viên from đánh giá order by tiền thưởng desc limit 1 )
select tên from nhân viên where id nhân viên not in ( select id nhân viên from đánh giá )
select tên from nhân viên where id nhân viên not in ( select id nhân viên from đánh giá )
select t1.tên from cửa hàng as t1 join tuyển dụng as t2 on t1.id cửa hàng = t2.id cửa hàng group by t2.id cửa hàng order by count ( * ) desc limit 1
select tên from cửa hàng where số lượng sản phẩm = ( select max ( số lượng sản phẩm ) from cửa hàng )
select tên from cửa hàng where id cửa hàng not in ( select id cửa hàng from tuyển dụng )
select tên from cửa hàng where id cửa hàng not in ( select id cửa hàng from tuyển dụng )
select t1.tên , count ( * ) from cửa hàng as t1 join tuyển dụng as t2 on t1.id cửa hàng = t2.id cửa hàng group by t1.tên
select tên , số lượng sản phẩm from cửa hàng
select sum ( tiền thưởng ) from đánh giá
select sum ( tiền thưởng ) from đánh giá
select * from tuyển dụng
select * from tuyển dụng
select quận from cửa hàng where số lượng sản phẩm < 3000 intersect select quận from cửa hàng where số lượng sản phẩm > 10000
select quận from cửa hàng where số lượng sản phẩm < 3000 intersect select quận from cửa hàng where số lượng sản phẩm > 10000
select count ( distinct địa điểm ) from cửa hàng
select count ( distinct địa điểm ) from cửa hàng
select quốc gia from hãng hàng không where tên hãng hàng không = "JetBlue Airways"
select quốc gia from hãng hàng không where tên hãng hàng không = "JetBlue Airways"
select tên viết tắt from hãng hàng không where tên hãng hàng không = "JetBlue Airways"
select tên viết tắt from hãng hàng không where tên hãng hàng không = "JetBlue Airways"
select tên hãng hàng không , tên viết tắt from hãng hàng không where quốc gia = "USA"
select tên hãng hàng không , tên viết tắt from hãng hàng không where quốc gia = "USA"
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
select count ( * ) from hãng hàng không where quốc gia = "USA"
select count ( * ) from hãng hàng không where quốc gia = "USA"
select thành phố , quốc gia from sân bay where tên sân bay = "Alton"
select thành phố , quốc gia from sân bay where tên sân bay = "Alton"
select tên sân bay from sân bay where mã sân bay = "AKO"
select tên sân bay from sân bay where mã sân bay = "AKO"
select tên sân bay from sân bay where thành phố = "Aberdeen"
select tên sân bay from sân bay where thành phố = "Aberdeen"
select count ( * ) from chuyến bay where sân bay khởi hành = "APG"
select count ( * ) from chuyến bay where sân bay khởi hành = ( select mã sân bay from sân bay where tên sân bay = "APG" )
select count ( * ) from chuyến bay where sân bay đích = "ATO"
select count ( * ) from chuyến bay where sân bay đích = ( select mã sân bay from sân bay where mã sân bay = "ATO" )
select count ( * ) from sân bay as t1 join chuyến bay as t2 on t1.mã sân bay = t2.sân bay khởi hành where t1.thành phố = "Aberdeen"
select count ( * ) from sân bay as t1 join chuyến bay as t2 on t1.mã sân bay = t2.sân bay khởi hành where t1.thành phố = "Aberdeen"
select count ( * ) from sân bay as t1 join chuyến bay as t2 on t1.mã sân bay = t2.sân bay đích where t1.thành phố = "Aberdeen"
select count ( * ) from sân bay as t1 join chuyến bay as t2 on t1.mã sân bay = t2.sân bay đích where t1.tên sân bay = "Aberdeen"
select count ( * ) from sân bay as sân bay 1 join sân bay as sân bay 2 on sân bay 1.mã sân bay = chuyến bay.sân bay khởi hành join sân bay as sân bay 3 on sân bay 3.mã sân bay = chuyến bay.sân bay đích where sân bay 1.thành phố = "Aberdeen" and sân bay 3.thành phố = "Ashley"
select count ( * ) from sân bay as sân bay 0 , sân bay as sân bay 1 , chuyến bay where sân bay 0 . thành phố = ' Aberdeen ' and sân bay 1 . thành phố = ' Ashley ' and chuyến bay . sân bay khởi hành = sân bay 0 . mã sân bay and chuyến bay . sân bay đích = sân bay 1 . mã sân bay
select count ( * ) from chuyến bay where hãng hàng không = ( select id hãng hàng không from hãng hàng không where tên hãng hàng không = "JetBlue Airways" )
select count ( * ) from chuyến bay where hãng hàng không = ( select id hãng hàng không from hãng hàng không where tên hãng hàng không = "JetBlue Airways" )
select count ( * ) from chuyến bay where hãng hàng không = ( select id hãng hàng không from hãng hàng không where tên hãng hàng không = "United Airlines" ) and sân bay đích = ( select mã sân bay from sân bay where tên sân bay = "ASY" )
select count ( * ) from chuyến bay where sân bay đích = ( select mã sân bay from sân bay where tên sân bay = "ASY" ) and hãng hàng không = ( select id hãng hàng không from hãng hàng không where tên hãng hàng không = "United Airlines" )
select count ( * ) from chuyến bay where sân bay khởi hành = ( select id sân bay from sân bay where tên sân bay = "AHD" ) and hãng hàng không = ( select id hãng hàng không from hãng hàng không where tên hãng hàng không = "United Airlines" )
select count ( * ) from chuyến bay where sân bay khởi hành = ( select id sân bay from sân bay where tên sân bay = "AHD" ) and hãng hàng không = ( select id hãng hàng không from hãng hàng không where tên hãng hàng không = "United Airlines" )
select count ( * ) from chuyến bay where hãng hàng không = ( select id hãng hàng không from hãng hàng không where tên hãng hàng không = "United Airlines" ) and sân bay đích = ( select mã sân bay from sân bay where thành phố = "Aberdeen" )
select count ( * ) from chuyến bay where sân bay đích = ( select id sân bay from sân bay where tên sân bay = "Aberdeen" ) and hãng hàng không = ( select id hãng hàng không from hãng hàng không where tên hãng hàng không = "United Airlines" )
select thành phố from sân bay group by thành phố order by count ( * ) desc limit 1
select sân bay đích from chuyến bay group by sân bay đích order by count ( * ) desc limit 1
select thành phố from sân bay group by thành phố order by count ( * ) desc limit 1
select thành phố from sân bay group by thành phố order by count ( * ) desc limit 1
select sân bay khởi hành from chuyến bay group by sân bay khởi hành order by count ( * ) desc limit 1
select mã sân bay from chuyến bay group by mã sân bay order by count ( * ) desc limit 1
select mã sân bay from sân bay group by mã sân bay order by count ( * ) limit 1
select mã sân bay from sân bay group by mã sân bay order by count ( * ) limit 1
select hãng hàng không from chuyến bay group by hãng hàng không order by count ( * ) desc limit 1
select hãng hàng không from chuyến bay group by hãng hàng không order by count ( * ) desc limit 1
select tên viết tắt , quốc gia from hãng hàng không where số lượng chuyến bay = ( select min ( số lượng chuyến bay ) from hãng hàng không )
select tên quốc gia viết tắt , min ( count ( * ) ) from chuyến bay as t1 join hãng hàng không as t2 on t1.hãng hàng không = t2.id hãng hàng không group by tên quốc gia viết tắt
select distinct hãng hàng không from chuyến bay where sân bay khởi hành = "AHD"
select distinct hãng hàng không from chuyến bay where sân bay khởi hành = "AHD"
select distinct hãng hàng không from chuyến bay where sân bay khởi hành = "AHD"
select distinct t1.tên hãng hàng không from hãng hàng không as t1 join chuyến bay as t2 on t1.id hãng hàng không = t2.hãng hàng không where t2.sân bay đích = "AHD"
select distinct hãng hàng không from chuyến bay where sân bay khởi hành = "APG" and sân bay khởi hành = "CVO"
select distinct hãng hàng không from chuyến bay where sân bay khởi hành = "APG" and sân bay khởi hành = "CVO"
select tên hãng hàng không from hãng hàng không where id hãng hàng không in ( select hãng hàng không from chuyến bay where sân bay khởi hành = 'CVO' except select hãng hàng không from chuyến bay where sân bay khởi hành = 'APG' )
select distinct hãng hàng không from chuyến bay where sân bay khởi hành = "CVO" except select distinct hãng hàng không from chuyến bay where sân bay khởi hành = "APG"
select hãng hàng không from chuyến bay group by hãng hàng không having count ( * ) >= 10
select hãng hàng không from chuyến bay group by hãng hàng không having count ( * ) >= 10
select tên hãng hàng không from hãng hàng không where số lượng chuyến bay < 200
select tên hãng hàng không from hãng hàng không where số lượng chuyến bay < 200
select số hiệu chuyến bay from chuyến bay where hãng hàng không = ( select id hãng hàng không from hãng hàng không where tên hãng hàng không = "United Airlines" )
select số hiệu chuyến bay from chuyến bay where hãng hàng không = ( select id hãng hàng không from hãng hàng không where tên hãng hàng không = "United Airlines" )
select số hiệu chuyến bay from chuyến bay where sân bay khởi hành = "APG"
select số hiệu chuyến bay from chuyến bay where sân bay khởi hành = ( select id sân bay from sân bay where tên sân bay = "APG" )
select số hiệu chuyến bay from chuyến bay where sân bay đích = ( select id sân bay from sân bay where tên sân bay = "APG" )
select số hiệu chuyến bay from chuyến bay where sân bay khởi hành = ( select id sân bay from sân bay where tên sân bay = "APG" )
select số hiệu chuyến bay from chuyến bay where sân bay khởi hành = ( select id sân bay from sân bay where thành phố = "Aberdeen" )
select số hiệu chuyến bay from chuyến bay where sân bay khởi hành = ( select id sân bay from sân bay where thành phố = "Aberdeen" )
select số hiệu chuyến bay from chuyến bay where sân bay đích in ( select mã sân bay from sân bay where thành phố = "Aberdeen" )
select số hiệu chuyến bay from chuyến bay where sân bay đích = ( select id sân bay from sân bay where thành phố = "Aberdeen" )
select count ( * ) from chuyến bay where sân bay khởi hành in ( select id sân bay from sân bay where thành phố = "Aberdeen" ) or sân bay khởi hành in ( select id sân bay from sân bay where thành phố = "Abilene" )
select count ( * ) from chuyến bay where sân bay khởi hành = ( select id sân bay from sân bay where thành phố = "Aberdeen" ) or sân bay khởi hành = ( select id sân bay from sân bay where thành phố = "Abilene" )
select tên sân bay from sân bay except select t1.tên sân bay from sân bay as t1 join chuyến bay as t2 on t1.mã sân bay = t2.sân bay khởi hành
select tên sân bay from sân bay except select sân bay khởi hành from chuyến bay union select sân bay đích from chuyến bay
select count ( * ) from trận đấu where mùa giải > 2007
select ngày from trận đấu order by đội chủ nhà desc
select mùa giải , đội chủ nhà , đội khách from trận đấu
select avg ( trận đấu sân nhà ) , max ( trận đấu sân nhà ) , min ( trận đấu sân nhà ) from sân vận động
select avg ( số lượng khán giả trung bình ) from sân vận động where phần trăm sức chứa > 100
select cầu thủ , số lượng trận đấu , nguồn thông tin from chấn thương except select cầu thủ , số lượng trận đấu , nguồn thông tin from chấn thương where chấn thương = "Đầu gối"
select t1.mùa giải from trận đấu as t1 join chấn thương as t2 on t1.id = t2.id trận đấu where t2.cầu thủ = "Walter Samuel"
select t1.id , t1.tỉ số , t1.ngày from trận đấu as t1 join chấn thương as t2 on t1.id = t2.id trận đấu group by t1.id having count ( * ) >= 2
select t1.id , t1.tên from sân vận động as t1 join chấn thương as t2 on t1.id = t2.id trận đấu group by t2.id trận đấu order by count ( * ) desc limit 1
select t1.id , t1.tên from sân vận động as t1 join chấn thương as t2 on t1.id = t2.id sân vận động group by t1.id order by count ( * ) desc limit 1
select t2.mùa giải , t1.tên from sân vận động as t1 join chấn thương as t2 on t1.id = t2.id trận đấu where t2.chấn thương = "chân" or t2.chấn thương = "đầu gối"
select count ( distinct nguồn thông tin ) from chấn thương
select count ( * ) from trận đấu where id not in ( select id trận đấu from chấn thương )
select count ( distinct chấn thương ) from chấn thương where mùa giải > 2010
select t2.tên from chấn thương as t1 join sân vận động as t2 on t1.id sân vận động = t2.id where t1.cầu thủ = "Walter Samuel" intersect select t2.tên from chấn thương as t1 join sân vận động as t2 on t1.id sân vận động = t2.id where t1.cầu thủ = "Thiago Motta"
select tên , số lượng người tham dự trung bình , tổng số người tham dự from sân vận động where id not in ( select id sân vận động from chấn thương )
select tên from sân vận động where tên like '% Bank '
select count ( * ) , id from trận đấu group by id sân vận động
select t2.cầu thủ , t1.ngày from chấn thương as t1 join trận đấu as t2 on t1.id trận đấu = t2.id order by t2.mùa giải desc
select năm phát hành from bộ phim where tiêu đề = "Trò chơi bắt chước"
select năm phát hành from bộ phim where tiêu đề = "The Game of Chess"
select năm sinh from diễn viên where tên = "Benedict Cumberbatch"
select năm sinh from diễn viên where tên = "Benedict Cumberbatch"
select quốc tịch from diễn viên where tên = "Christoph Waltz" and giới tính = "female"
select quốc tịch from diễn viên where tên = "Christoph Waltz"
select tiêu đề from bộ phim where năm phát hành = 2015
select tên from diễn viên where nơi sinh = "Tehran"
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
select ngân sách from bộ phim where tiêu đề = "Find Nemo"
select tiêu đề from bộ phim where năm phát hành > 2006 and id sê-ri phim in ( select id sê-ri phim from đạo diễn bởi where id đạo diễn in ( select id đạo diễn from đạo diễn where tên = "Steven Spielberg" ) )
select t2.tên from đạo diễn bởi as t1 join đạo diễn as t2 on t1.id đạo diễn = t2.id đạo diễn join bộ phim as t3 on t1.id sê-ri phim = t3.id bộ phim where t3.tiêu đề = "James Bond"
select distinct t2.tên from đạo diễn bởi as t1 join đạo diễn as t2 on t1.id đạo diễn = t2.id đạo diễn join bộ phim as t3 on t1.id sê-ri phim = t3.id bộ phim where t3.tiêu đề = "James Bond"
select distinct t2.tên from đạo diễn bởi as t1 join đạo diễn as t2 on t1.id đạo diễn = t2.id đạo diễn join bộ phim as t3 on t1.id sê-ri phim = t3.id bộ phim where t3.tiêu đề = "James Bond"
select t1.tên from diễn viên as t1 join phân vai as t2 on t1.id diễn viên = t2.id diễn viên join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim where t3.tiêu đề = "The Imitation Game" and t2.vai trò = "Alan Turing"
select diễn viên . tên from diễn viên join phân vai on diễn viên . id diễn viên = phân vai . id diễn viên join bộ phim on phân vai . id sê-ri phim = bộ phim . id where bộ phim . tiêu đề = "The Imitation Game" and diễn viên . tên = "Alan Turing"
select t1.tên from diễn viên as t1 join phân vai as t2 on t1.id diễn viên = t2.id diễn viên join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim where t3.tiêu đề = "The Imitation Game" and t2.vai trò = "Alan Turing"
select t1.tên from diễn viên as t1 join phân vai as t2 on t1.id diễn viên = t2.id diễn viên join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim where t3.tiêu đề = "The Imitation Game" and t2.vai trò = "Alan Turing"
select t2.tên from diễn viên as t2 join phân vai as t1 on t1.id diễn viên = t2.id diễn viên join bộ phim as t3 on t1.id sê-ri phim = t3.id bộ phim where t3.tiêu đề = "The Imitation Game" and t2.tên = "Alan Turing"
select t2.thể loại from bộ phim as t1 join phân loại as t2 on t1.id bộ phim = t2.id sê-ri phim where t1.tiêu đề = "Jura Park"
select t2.tên from đạo diễn bởi as t1 join đạo diễn as t2 on t1.id đạo diễn = t2.id đạo diễn join bộ phim as t3 on t1.id sê-ri phim = t3.id bộ phim where t3.tiêu đề = "Joy" and t3.năm phát hành = 2015
select t2.tiêu đề from được viết bởi as t1 join bộ phim as t2 on t1.id sê-ri phim = t2.id where t1.id nhà viết kịch bản = ( select id from nhà viết kịch bản where tên = "Matt Damon" )
select t2.tiêu đề from được viết bởi as t1 join bộ phim as t2 on t1.id sê-ri phim = t2.id where t1.id nhà viết kịch bản = ( select id from nhà viết kịch bản where tên = "Woody Allen" )
select t2.tiêu đề from phân vai as t1 join bộ phim as t2 on t1.id sê-ri phim = t2.id sê-ri phim join diễn viên as t3 on t1.id diễn viên = t3.id diễn viên where t3.tên = "Robin Wright"
select t2.tiêu đề from phân vai as t1 join bộ phim as t2 on t1.id sê-ri phim = t2.id sê-ri phim join diễn viên as t3 on t1.id diễn viên = t3.id diễn viên where t3.tên = "Robin Wright"
select t2.tiêu đề from diễn viên as t1 join phân vai as t2 on t1.id diễn viên = t2.id diễn viên where t1.tên = "Robin Wright"
select ngân sách from bộ phim where tiêu đề = "Juno" and năm phát hành = 2007
select tiêu đề from bộ phim where năm phát hành = 2010
select tiêu đề from bộ phim where năm phát hành = 2010
select tên from diễn viên where nơi sinh = "Austin" and năm sinh > 1980
select tên from diễn viên where nơi sinh = "Austin" and năm sinh > 1980
select tên from diễn viên where nơi sinh = "Austin" and năm sinh > 1980
select t2.tiêu đề from đạo diễn bởi as t1 join bộ phim as t2 on t1.id sê-ri phim = t2.id bộ phim join đạo diễn as t3 on t1.id đạo diễn = t3.id đạo diễn where t3.nơi sinh = "Los Angeles"
select tên from diễn viên where nơi sinh = "Thành phố New York" and năm sinh = 1984
select tiêu đề from bộ phim where tiêu đề like "Human Weapon"
select tiêu đề from bộ phim where tiêu đề like "%Atom Bomb%"
select t2.tiêu đề from đạo diễn bởi as t1 join bộ phim as t2 on t1.id sê-ri phim = t2.id bộ phim join đạo diễn as t3 on t1.id đạo diễn = t3.id đạo diễn where t3.tên = "Alfred Hitchcock"
select t2.tiêu đề from đạo diễn bởi as t1 join bộ phim as t2 on t1.id sê-ri phim = t2.id where t1.id đạo diễn = ( select id đạo diễn from đạo diễn bởi as t1 join diễn viên as t2 on t1.id diễn viên = t2.id where t2.tên = "Taraneh Alidoosti" )
select t2.tiêu đề from đạo diễn bởi as t1 join bộ phim as t2 on t1.id sê-ri phim = t2.id where t1.id đạo diễn = ( select id đạo diễn from đạo diễn bởi as t1 join diễn viên as t2 on t1.id diễn viên = t2.id where t2.tên = "Taraneh Alidoosti" )
select t2.tiêu đề from đạo diễn bởi as t1 join bộ phim as t2 on t1.id sê-ri phim = t2.id where t1.id đạo diễn = ( select id đạo diễn from đạo diễn bởi as t1 join diễn viên as t2 on t1.id diễn viên = t2.id where t2.tên = "Taraneh Alidoosti" )
select t2.tiêu đề from đạo diễn bởi as t1 join bộ phim as t2 on t1.id sê-ri phim = t2.id where t1.id đạo diễn = ( select id đạo diễn from đạo diễn bởi as t1 join diễn viên as t2 on t1.id diễn viên = t2.id where t2.tên = "Taraneh Alidoosti" )
select t2.tiêu đề from đạo diễn bởi as t1 join bộ phim as t2 on t1.id sê-ri phim = t2.id where t1.id đạo diễn = ( select id đạo diễn from đạo diễn bởi as t1 join đạo diễn as t2 on t1.id đạo diễn = t2.id where t2.tên = "Shonda Rhimes" )
select t2.tên from phân vai as t1 join diễn viên as t2 on t1.id diễn viên = t2.id diễn viên join bộ phim as t3 on t1.id sê-ri phim = t3.id bộ phim where t3.tiêu đề = "Scandal" and t1.vai trò = "Olivia Pope"
select t1.tên from nhà viết kịch bản as t1 join được viết bởi as t2 on t1.id nhà viết kịch bản = t2.id nhà viết kịch bản join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim where t3.tiêu đề = "Truman Show"
select t2.tên from được viết bởi as t1 join nhà viết kịch bản as t2 on t1.id nhà viết kịch bản = t2.id nhà viết kịch bản join bộ phim as t3 on t1.id sê-ri phim = t3.id bộ phim where t3.tiêu đề = "Truman Show"
select t2.tiêu đề from phân vai as t1 join bộ phim as t2 on t1.id sê-ri phim = t2.id where t1.id diễn viên = ( select id diễn viên from diễn viên where tên = "Scott Foley" )
select t2.tiêu đề from phân vai as t1 join bộ phim as t2 on t1.id sê-ri phim = t2.id where t1.id diễn viên = ( select id diễn viên from diễn viên where tên = "Scott Foley" )
select distinct t2.id đạo diễn from diễn viên as t1 join phân vai as t2 on t1.id diễn viên = t2.id diễn viên join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim where t1.tên = "Kate Winslet"
select distinct t2.id đạo diễn from diễn viên as t1 join phân vai as t2 on t1.id diễn viên = t2.id diễn viên join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim where t1.tên = "Kate Winslet"
select t2.tên from đạo diễn bởi as t1 join đạo diễn as t2 on t1.id đạo diễn = t2.id đạo diễn join bộ phim as t3 on t1.id sê-ri phim = t3.id bộ phim where t3.tiêu đề = "Politics Game" and t3.năm phát hành = 2013
select tên from diễn viên where giới tính = "nữ" and nơi sinh = "Austin"
select tên from diễn viên where quốc tịch = "Ý" and năm sinh > 1980
select tên from diễn viên where giới tính = "nữ" and nơi sinh = "New York" and năm sinh > 1980
select t1.tên from diễn viên as t1 join phân vai as t2 on t1.id diễn viên = t2.id diễn viên join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim where t3.tiêu đề = "Ryan's Hero" and t1.giới tính = "female"
select tên from đạo diễn where quốc tịch = "Afghanistan"
select t1.tên from diễn viên as t1 join phân vai as t2 on t1.id diễn viên = t2.id diễn viên join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim where t3.tiêu đề = "Nữ binh sĩ"
select t1.tên from diễn viên as t1 join bản quyền as t2 on t1.id diễn viên = t2.id diễn viên join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim where t3.tiêu đề = "James Bond" and t1.quốc tịch = "Canada"
select t2.tiêu đề from diễn viên as t1 join phân vai as t2 on t1.id diễn viên = t2.id diễn viên join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim where t1.tên = "Rowan Atkinson" and t2.vai trò = "Ngài Bean"
select nơi sinh from đạo diễn where id đạo diễn in ( select id đạo diễn from đạo diễn bởi where id sê-ri phim in ( select id sê-ri phim from bộ phim where tiêu đề = "Quá khứ" ) )
select diễn viên . tên from diễn viên join phân vai on diễn viên . id diễn viên = phân vai . id diễn viên where vai diễn = "Ngài Bean"
select t2.thể loại from đạo diễn bởi as t1 join bộ phim as t2 on t1.id sê-ri phim = t2.id join đạo diễn as t3 on t1.id đạo diễn = t3.id đạo diễn where t3.tên = "Asghar Farhadi"
select t2.tiêu đề from diễn viên as t1 join phân vai as t2 on t1.id diễn viên = t2.id diễn viên where t1.tên = "Daffy Duck"
select vai diễn from phân vai where id sê-ri phim in ( select id sê-ri phim from bộ phim where tiêu đề = "The Long Arm" ) and vai diễn = 1
select distinct t2.id đạo diễn from phim truyền hình nhiều tập as t1 join đạo diễn bởi as t2 on t1.id sê-ri phim = t2.id sê-ri phim join đạo diễn as t3 on t2.id đạo diễn = t3.id đạo diễn join thể loại as t4 on t4.id thể loại = t1.id thể loại where t4.thể loại = "Sci-Fi"
select count ( * ) from diễn viên as t1 join phân vai as t2 on t1.id diễn viên = t2.id diễn viên join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim where t1.tên = "Jennifer Aniston" and t3.năm phát hành > 2010
select count ( * ) from diễn viên as t1 join phân vai as t2 on t1.id diễn viên = t2.id diễn viên join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim where t3.tiêu đề = "Ryan's Hero"
select count ( * ) from diễn viên as t1 join phân vai as t2 on t1.id diễn viên = t2.id diễn viên join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim where t3.tiêu đề = "Ryan's Hero"
select count ( * ) from đạo diễn bởi where id đạo diễn = ( select id đạo diễn from đạo diễn where tên = "Steven Spielberg" )
select count ( * ) from bộ phim where năm phát hành = 2013
select count ( * ) from bộ phim where năm phát hành = 2013
select năm phát hành , count ( * ) from bộ phim as t1 join đạo diễn bởi as t2 on t1.id sê-ri phim = t2.id sê-ri phim join đạo diễn as t3 on t2.id đạo diễn = t3.id đạo diễn where t3.tên = "Woody Allen" group by năm phát hành
select count ( * ) from bộ phim as t1 join đạo diễn bởi as t2 on t1.id sê-ri phim = t2.id sê-ri phim join đạo diễn as t3 on t2.id đạo diễn = t3.id đạo diễn where t3.tên = "Shahab Hosseini"
select count ( * ) from đạo diễn bởi as t1 join đạo diễn as t2 on t1.id đạo diễn = t2.id đạo diễn join bộ phim as t3 on t1.id sê-ri phim = t3.id bộ phim join đạo diễn as t4 on t4.id đạo diễn = t2.id đạo diễn where t4.tên = "Shahab Hosseini"
select count ( * ) from diễn viên as t1 join phân vai as t2 on t1.id diễn viên = t2.id diễn viên join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim where t1.tên = "Shahab Hosseini"
select count ( * ) from diễn viên as t1 join phân vai as t2 on t1.id diễn viên = t2.id diễn viên join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim where t1.tên = "Shahab Hosseini"
select count ( * ) from diễn viên where nơi sinh = "Los Angeles" and năm sinh > 2000
select count ( * ) from diễn viên as t1 join phân vai as t2 on t1.id diễn viên = t2.id diễn viên join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim where t1.tên = "Humphrey Bogart" and t3.năm phát hành < 1942
select năm phát hành , count ( * ) from diễn viên as t1 join phân vai as t2 on t1.id diễn viên = t2.id diễn viên join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim where t1.tên = "Brad Pitt" group by năm phát hành
select count ( * ) from bộ phim where năm phát hành = 2015 and tiêu đề = "Chiến tranh Iraq"
select count ( * ) from bộ phim where tiêu đề = "Ba Tư" and năm phát hành > 1990
select count ( * ) from đạo diễn bởi as t1 join đạo diễn as t2 on t1.id đạo diễn = t2.id đạo diễn join bộ phim as t3 on t1.id sê-ri phim = t3.id bộ phim where t2.tên = "Quentin Tarantino" and t3.năm phát hành > 2010
select count ( * ) from đạo diễn bởi as t1 join đạo diễn as t2 on t1.id đạo diễn = t2.id đạo diễn join bộ phim as t3 on t1.id sê-ri phim = t3.id bộ phim where t2.tên = "Quentin Tarantino" and t3.năm phát hành < 2010
select count ( * ) from bộ phim as t1 join đạo diễn bởi as t2 on t1.id sê-ri phim = t2.id sê-ri phim join đạo diễn as t3 on t2.id đạo diễn = t3.id đạo diễn where t1.năm phát hành < 2002 and t1.năm phát hành > 2010 and t3.tên = "Quentin Tarantino"
select count ( * ) from diễn viên where giới tính = "nữ" and nơi sinh = "New York" and năm sinh > 1980
select count ( * ) from diễn viên as t1 join đạo diễn bởi as t2 on t1.id diễn viên = t2.id join đạo diễn as t3 on t2.id đạo diễn = t3.id đạo diễn where t3.tên = "Jim Jarmusch" and t1.quốc tịch = "Iran"
select count ( * ) from diễn viên where nơi sinh = "China" and id diễn viên in ( select id diễn viên from phân vai where id sê-ri phim in ( select id bộ phim from bộ phim where tiêu đề = "Giờ cao điểm 3" ) )
select t2.tiêu đề from diễn viên as t1 join phân vai as t2 on t1.id diễn viên = t2.id diễn viên where t1.tên = "Woody Strode" and t2.tiêu đề = "Jason Robards"
select t2.tiêu đề from diễn viên as t1 join phân vai as t2 on t1.id diễn viên = t2.id diễn viên where t1.tên = "Woody Strode" and t2.id diễn viên = ( select id diễn viên from diễn viên where tên = "Jason Robards" )
select t2.tiêu đề from được viết bởi as t1 join bộ phim as t2 on t1.id sê-ri phim = t2.id where t1.id nhà viết kịch bản = 111 or t1.id nhà viết kịch bản = 112
select t2.tiêu đề from diễn viên as t1 join phân vai as t2 on t1.id diễn viên = t2.id diễn viên join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim where t1.tên = "Woody Strode" intersect select t2.tiêu đề from diễn viên as t1 join phân vai as t2 on t1.id diễn viên = t2.id diễn viên join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim where t1.tên = "Jason Robards"
select t2.tên from được viết bởi as t1 join diễn viên as t2 on t1.id diễn viên = t2.id diễn viên join bản quyền as t3 on t1.id sê-ri phim = t3.id where t3.id quyền tác giả = ( select id from diễn viên where tên = "Tom Hanks" )
select t2.tiêu đề from đạo diễn bởi as t1 join bộ phim as t2 on t1.id sê-ri phim = t2.id sê-ri phim join đạo diễn bởi as t3 on t3.id sê-ri phim = t2.id sê-ri phim where t1.id sê-ri phim = ( select id sê-ri phim from bộ phim where tiêu đề = "Road Warrior" )
select t1.tiêu đề from bộ phim as t1 join phân loại as t2 on t1.id sê-ri phim = t2.id sê-ri phim join thể loại as t3 on t2.id thể loại = t3.id thể loại group by t1.tiêu đề order by count ( * ) desc limit 1
select t1.tiêu đề from bộ phim as t1 join phân vai as t2 on t1.id sê-ri phim = t2.id sê-ri phim join diễn viên as t3 on t2.id diễn viên = t3.id diễn viên where t3.quốc tịch = "Trung Quốc" group by t1.tiêu đề order by count ( * ) desc limit 1
select t2.tên from đạo diễn bởi as t1 join đạo diễn as t2 on t1.id đạo diễn = t2.id đạo diễn join bộ phim as t3 on t1.id sê-ri phim = t3.id bộ phim join đạo diễn bởi as t4 on t4.id sê-ri phim = t3.id bộ phim join đạo diễn as t5 on t4.id đạo diễn = t5.id đạo diễn where t5.tên = "Quentin Tarantino" order by t3.năm phát hành desc limit 1
select tiêu đề , ngân sách from bộ phim where id sê-ri phim in ( select id sê-ri phim from đạo diễn bởi where id đạo diễn in ( select id đạo diễn from đạo diễn where tên = "Quentin Tarantino" ) ) order by năm phát hành desc limit 1
select tiêu đề from bộ phim where năm phát hành = ( select max ( năm phát hành ) from bộ phim where đạo diễn by id đạo diễn = ( select id đạo diễn from đạo diễn by id đạo diễn in ( select id đạo diễn from đạo diễn where tên = "Jim Jarmusch" ) ) )
select t1.tên from nhà sản xuất as t1 join đạo diễn bởi as t2 on t1.id nhà sản xuất = t2.id nhà sản xuất group by t1.id nhà sản xuất order by count ( * ) desc limit 1
select t2.tiêu đề from diễn viên as t1 join phân vai as t2 on t1.id diễn viên = t2.id diễn viên join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim where t1.tên = "Gabriele Ferzetti" order by t3.năm phát hành desc limit 1
select chi tiết khách hàng from khách hàng order by chi tiết khách hàng
select chi tiết khách hàng from khách hàng order by chi tiết khách hàng
select mã loại chính sách from chính sách where id khách hàng in ( select id khách hàng from khách hàng where chi tiết khách hàng = "Dayana Robel" )
select mã loại chính sách from chính sách where id khách hàng in ( select id khách hàng from khách hàng where chi tiết khách hàng = "Dayana Robel" )
select mã loại chính sách from chính sách group by mã loại chính sách order by count ( * ) desc limit 1
select mã loại chính sách from chính sách group by mã loại chính sách order by count ( * ) desc limit 1
select mã loại chính sách from chính sách group by mã loại chính sách having count ( * ) > 2
select mã loại chính sách from chính sách group by mã loại chính sách having count ( * ) > 2
select sum ( số tiền được trả ) , avg ( số tiền được trả ) from xử lý yêu cầu
select sum ( số tiền được trả ) , avg ( số tiền được trả ) from xử lý yêu cầu
select sum ( số tiền được yêu cầu ) from tài liệu của yêu cầu where ngày tạo ra = ( select max ( ngày tạo ra ) from tài liệu của yêu cầu )
select sum ( số tiền được yêu cầu ) from tài liệu của yêu cầu where id tài liệu của yêu cầu in ( select id tài liệu của yêu cầu from tài liệu của yêu cầu order by ngày tạo ra desc limit 1 )
select t1.chi tiết khách hàng from khách hàng as t1 join chính sách as t2 on t1.id khách hàng = t2.id khách hàng join tiêu đề của yêu cầu as t3 on t2.id chính sách = t3.id chính sách where t3.số tiền được trả = ( select max ( số tiền được trả ) from tiêu đề của yêu cầu )
select chi tiết khách hàng from khách hàng where id khách hàng in ( select id khách hàng from tiêu đề của yêu cầu where số tiền được trả = ( select max ( số tiền được trả ) from tiêu đề của yêu cầu ) )
select t1.chi tiết khách hàng from khách hàng as t1 join chính sách as t2 on t1.id khách hàng = t2.id khách hàng join tiêu đề của yêu cầu as t3 on t2.id chính sách = t3.id chính sách join xử lý yêu cầu as t4 on t3.id yêu cầu = t4.id yêu cầu where t4.mã kết quả của yêu cầu = 'Đã trả tiền' order by t4.số tiền được trả asc limit 1
select chi tiết khách hàng from khách hàng where id khách hàng in ( select id khách hàng from tiêu đề của yêu cầu where số tiền được trả = ( select min ( số tiền được trả ) from tiêu đề của yêu cầu ) )
select chi tiết khách hàng from khách hàng except select t2.chi tiết khách hàng from chính sách as t1 join khách hàng as t2 on t1.id khách hàng = t2.id khách hàng
select chi tiết khách hàng from khách hàng except select t1.chi tiết khách hàng from khách hàng as t1 join chính sách as t2 on t1.id khách hàng = t2.id khách hàng
select count ( * ) from giai đoạn xử lý yêu cầu
select count ( distinct id giai đoạn xử lý yêu cầu ) from xử lý yêu cầu
select t2.mã tình trạng yêu cầu from xử lý yêu cầu as t1 join giai đoạn xử lý yêu cầu as t2 on t1.id giai đoạn xử lý yêu cầu = t2.id giai đoạn xử lý yêu cầu where t1.id yêu cầu in ( select id yêu cầu from xử lý yêu cầu group by id yêu cầu order by count ( * ) desc limit 1 )
select t2.tên tình trạng yêu cầu from xử lý yêu cầu as t1 join giai đoạn xử lý yêu cầu as t2 on t1.id giai đoạn xử lý yêu cầu = t2.id giai đoạn xử lý yêu cầu group by t2.id giai đoạn xử lý yêu cầu order by count ( * ) desc limit 1
select chi tiết khách hàng from khách hàng where chi tiết khách hàng like "%Diana%"
select chi tiết khách hàng from khách hàng where chi tiết khách hàng like '%Diana%'
select chi tiết khách hàng from khách hàng where id khách hàng in ( select id khách hàng from chính sách where mã loại chính sách = "Uỷ quyền" )
select chi tiết khách hàng from khách hàng where id khách hàng in ( select id khách hàng from chính sách where mã loại chính sách = "Uỷ quyền" )
select chi tiết khách hàng from khách hàng where id khách hàng in ( select id khách hàng from chính sách where mã loại chính sách = "Uỷ quyền" ) union select chi tiết khách hàng from khách hàng where id khách hàng in ( select id khách hàng from chính sách where mã loại chính sách = "Thống nhất" )
select chi tiết khách hàng from khách hàng where id khách hàng in ( select id khách hàng from chính sách where mã loại chính sách = "Uỷ quyền" or mã loại chính sách = "Thống nhất" )
select chi tiết khách hàng from khách hàng union select chi tiết nhân viên from nhân viên
select chi tiết khách hàng from khách hàng union select chi tiết nhân viên from nhân viên
select mã loại chính sách , count ( * ) from chính sách group by mã loại chính sách
select mã loại chính sách , count ( * ) from chính sách group by mã loại chính sách
select t1.chi tiết khách hàng from khách hàng as t1 join chính sách as t2 on t1.id khách hàng = t2.id khách hàng group by t1.id khách hàng order by count ( * ) desc limit 1
select chi tiết khách hàng from khách hàng where id khách hàng in ( select id khách hàng from chính sách group by id khách hàng order by count ( * ) desc limit 1 )
select mô tả về tình trạng yêu cầu from tiêu đề của yêu cầu where mã tình trạng yêu cầu = ' Mở '
select mô tả về tình trạng yêu cầu from giai đoạn xử lý yêu cầu where tên tình trạng yêu cầu = "Mở"
select count ( * ) from xử lý yêu cầu
select count ( * ) , mã kết quả của yêu cầu from xử lý yêu cầu group by mã kết quả của yêu cầu
select chi tiết khách hàng from khách hàng order by ngày bắt đầu desc limit 1
select chi tiết khách hàng from khách hàng where id khách hàng in ( select id khách hàng from chính sách order by ngày bắt đầu desc limit 1 )
select chi tiết sự kiện from sự kiện as t1 join dịch vụ as t2 on t1.id dịch vụ = t2.id dịch vụ where t2.mã loại dịch vụ = "Wedding"
select t1.id sự kiện , t1.chi tiết sự kiện from sự kiện as t1 join người tham gia sự kiện as t2 on t1.id sự kiện = t2.id sự kiện group by t1.id sự kiện having count ( * ) > 1
select t1.id người tham gia , t1.mã loại người tham gia , count ( * ) from người tham gia as t1 join người tham gia sự kiện as t2 on t1.id người tham gia = t2.id người tham gia group by t1.id người tham gia
select id người tham gia , mã loại người tham gia , chi tiết người tham gia from người tham gia
select count ( * ) from người tham gia as t1 join người tham gia sự kiện as t2 on t1.id người tham gia = t2.id người tham gia where t1.mã loại người tham gia = "Người tổ chức"
select mã loại dịch vụ from dịch vụ order by mã loại dịch vụ
select id dịch vụ , chi tiết sự kiện from sự kiện
select count ( * ) from sự kiện as t1 join người tham gia sự kiện as t2 on t1.id sự kiện = t2.id sự kiện where t2.id người tham gia in ( select id người tham gia from người tham gia where chi tiết người tham gia like "%Dr%" )
select mã loại người tham gia from người tham gia group by mã loại người tham gia order by count ( * ) desc limit 1
select id dịch vụ , mã loại dịch vụ from dịch vụ group by mã loại dịch vụ order by count ( * ) limit 1
select id sự kiện from người tham gia sự kiện group by id sự kiện order by count ( * ) desc limit 1
select id sự kiện from sự kiện except select id sự kiện from sự kiện join người tham gia sự kiện on sự kiện.id sự kiện = người tham gia sự kiện.id sự kiện join người tham gia on người tham gia sự kiện.id người tham gia = người tham gia.id người tham gia where người tham gia.chi tiết người tham gian = "Kenyatta Kuhn"
select mã loại dịch vụ from dịch vụ where id dịch vụ in ( select id dịch vụ from sự kiện where chi tiết sự kiện = "Thành công" ) intersect select id dịch vụ from sự kiện where chi tiết sự kiện = "Thất bại"
select count ( * ) from sự kiện where id sự kiện not in ( select id sự kiện from người tham gia sự kiện )
select count ( * ) from người tham gia sự kiện group by id người tham gia having count ( * ) > 1
select count ( * ) from kỹ thuật viên
select count ( * ) from kỹ thuật viên
select tên from kỹ thuật viên order by tuổi
select tên from kỹ thuật viên order by tuổi
select đội , năm bắt đầu from kỹ thuật viên
select đội , năm bắt đầu from kỹ thuật viên
select tên from kỹ thuật viên where đội <> "NYY"
select tên from kỹ thuật viên where đội <> "NYY"
select tên from kỹ thuật viên where tuổi = 36 or tuổi = 37
select tên from kỹ thuật viên where tuổi = 36 or tuổi = 37
select năm bắt đầu from kỹ thuật viên order by tuổi desc limit 1
select năm bắt đầu from kỹ thuật viên order by năm bắt đầu desc limit 1
select đội, count ( * ) from kỹ thuật viên group by đội
select đội, count ( * ) from kỹ thuật viên group by đội
select đội from kỹ thuật viên group by đội order by count ( * ) desc limit 1
select đội from kỹ thuật viên group by đội order by count ( * ) desc limit 1
select đội from kỹ thuật viên group by đội having count ( * ) >= 2
select đội from kỹ thuật viên group by đội having count ( * ) >= 2
select t1.tên , t2.loạt máy from kỹ thuật viên as t1 join phân công sửa chữa as t2 on t1.id kỹ thuật viên = t2.id kỹ thuật viên join máy móc as t3 on t2.id máy = t3.id máy
select t1.tên , t2.loạt máy from kỹ thuật viên as t1 join phân công sửa chữa as t2 on t1.id kỹ thuật viên = t2.id kỹ thuật viên
select t1.tên from kỹ thuật viên as t1 join phân công sửa chữa as t2 on t1.id kỹ thuật viên = t2.id kỹ thuật viên join máy móc as t3 on t2.id máy = t3.id máy where t3.xếp hạng chất lượng = ( select min ( xếp hạng chất lượng ) from máy móc )
select t1.tên from kỹ thuật viên as t1 join phân công sửa chữa as t2 on t1.id kỹ thuật viên = t2.id kỹ thuật viên join máy móc as t3 on t2.id máy = t3.id máy order by t3.xếp hạng chất lượng desc
select t2.tên from phân công sửa chữa as t1 join kỹ thuật viên as t2 on t1.id kỹ thuật viên = t2.id kỹ thuật viên join máy móc as t3 on t1.id máy = t3.id máy where t3.điểm giá trị > 70
select t1.tên from kỹ thuật viên as t1 join phân công sửa chữa as t2 on t1.id kỹ thuật viên = t2.id kỹ thuật viên join máy móc as t3 on t2.id máy = t3.id máy where t3.điểm giá trị > 70
select t1.tên , count ( * ) from kỹ thuật viên as t1 join phân công sửa chữa as t2 on t1.id kỹ thuật viên = t2.id kỹ thuật viên group by t1.tên
select t1.tên , count ( * ) from kỹ thuật viên as t1 join phân công sửa chữa as t2 on t1.id kỹ thuật viên = t2.id kỹ thuật viên group by t1.tên
select tên from kỹ thuật viên where id kỹ thuật viên not in ( select id kỹ thuật viên from phân công sửa chữa )
select tên from kỹ thuật viên where id kỹ thuật viên not in ( select id kỹ thuật viên from phân công sửa chữa )
select năm bắt đầu from kỹ thuật viên where đội = "CLE" intersect select năm bắt đầu from kỹ thuật viên where đội = "CWS"
select năm bắt đầu from kỹ thuật viên where đội = "CLE" intersect select năm bắt đầu from kỹ thuật viên where đội = "CWS"
select count ( * ) from ống kính máy ảnh where độ dài tiêu cự theo mm > 15
select nhãn hiệu , tên from ống kính máy ảnh order by khẩu độ tối đa desc
select id , màu sắc , tên from ảnh
select max ( chiều cao ) , avg ( chiều cao ) from núi
select avg ( độ nổi ) from núi where quốc gia = "Morocco"
select tên , chiều cao , độ nổi from núi where dãy núi <> 'Aberdare'
select t1.id , t1.tên from ảnh as t1 join núi as t2 on t1.id núi = t2.id where t2.chiều cao > 4000
select t1.tên , t1.id from núi as t1 join ảnh as t2 on t1.id = t2.id núi group by t1.id having count ( * ) >= 2
select t1.tên from ống kính máy ảnh as t1 join ảnh as t2 on t1.id = t2.id ống kính máy ảnh join núi as t3 on t2.id núi = t3.id where t3.chiều cao = ( select max ( chiều cao ) from núi )
select t1.tên from ảnh as t1 join ống kính máy ảnh as t2 on t1.id ống kính máy ảnh = t2.id where t2.nhãn hiệu = "Sigma" or t2.nhãn hiệu = "Olympus"
select count ( distinct nhãn hiệu ) from ống kính máy ảnh
select count ( * ) from ống kính máy ảnh where id not in ( select id ống kính máy ảnh from ảnh )
select count ( distinct t1.nhãn hiệu ) from ống kính máy ảnh as t1 join ảnh as t2 on t1.id = t2.id ống kính máy ảnh join núi as t3 on t2.id núi = t3.id where t3.quốc gia = "Ethiopia"
select t2.nhãn hiệu from núi as t1 join ống kính máy ảnh as t2 on t1.id ống kính máy ảnh = t2.id join ảnh as t3 on t3.id ống kính máy ảnh = t2.id join núi as t4 on t3.id núi = t4.id where t4.dãy núi = "Toubkal Atlas" and t4.dãy núi = "Lasta Massif"
select tên , độ nổi from núi except select t1.tên , t1.độ nổi from núi as t1 join ống kính máy ảnh as t2 on t1.id ống kính máy ảnh = t2.id where t2.brand = "Sigma"
select tên from ống kính máy ảnh where tên like '%Digital%'
select t1.tên , count ( * ) from ống kính máy ảnh as t1 join ảnh as t2 on t1.id = t2.id ống kính máy ảnh group by t2.id ống kính máy ảnh order by count ( * ) desc
select count ( * ) from ban nhạc
select count ( * ) from ban nhạc
select distinct hãng thu âm from album
select distinct hãng thu âm from album
select tiêu đề from album where năm = 2012
select tiêu đề from album where năm = 2012
select vị trí trên sân khấu from buổi biểu diễn where nghệ sĩ trong ban nhạc = ( select id from ban nhạc where tên = "Solveig" )
select vị trí trên sân khấu from buổi biểu diễn where nghệ sĩ trong ban nhạc = ( select id from ban nhạc where tên = "Solveig" )
select count ( * ) from bài hát
select count ( * ) from bài hát
select t3.id bài hát from ban nhạc as t1 join buổi biểu diễn as t2 on t1.id = t2.nghệ sĩ trong ban nhạc join bài hát as t3 on t2.id bài hát = t3.id bài hát where t1.họ = "Heilo"
select t1.tiêu đề from bài hát as t1 join buổi biểu diễn as t2 on t1.id bài hát = t2.id bài hát join ban nhạc as t3 on t2.nghệ sĩ trong ban nhạc = t3.id where t3.họ = "Hello"
select count ( * ) from buổi biểu diễn as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where t2.tiêu đề = "Flash"
select count ( * ) from buổi biểu diễn as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where t2.tiêu đề = "Flash"
select t3.tiêu đề from ban nhạc as t1 join buổi biểu diễn as t2 on t1.id = t2.nghệ sĩ trong ban nhạc join bài hát as t3 on t2.id bài hát = t3.id bài hát where t1.tên = "Marianne"
select t1.tiêu đề from bài hát as t1 join ban nhạc as t2 on t1.id bài hát = t2.id nghệ sĩ trong ban nhạc where t2.tên = "Marianne"
select t1.tên , t1.họ from ban nhạc as t1 join buổi biểu diễn as t2 on t1.id = t2.nghệ sĩ trong ban nhạc where t2.id bài hát in ( select id bài hát from bài hát where tiêu đề = "Badlands" )
select t2.tên , t2.họ from buổi biểu diễn as t1 join nghệ sĩ trong ban nhạc as t2 on t1.nghệ sĩ trong ban nhạc = t2.id where t1.id bài hát = ( select id bài hát from bài hát where tiêu đề = "Badlands" )
select t1.tên , t1.họ from ban nhạc as t1 join buổi biểu diễn as t2 on t1.id = t2.nghệ sĩ trong ban nhạc where t2.vị trí trên sân khấu = "hậu trường" join bài hát as t3 on t2.id bài hát = t3.id bài hát where t3.tiêu đề = "Badlands"
select t1.tên , t1.họ from ban nhạc as t1 join buổi biểu diễn as t2 on t1.id = t2.nghệ sĩ trong ban nhạc where t2.vị trí trên sân khấu = "hậu trường" and t2.id bài hát in ( select t3.id bài hát from bài hát as t3 join danh sách bài hát as t4 on t3.id bài hát = t4.id bài hát where t4.id album in ( select t5.id album from album as t5 where t5.tiêu đề = "Badlands" ) )
select count ( * ) , hãng thu âm from album group by hãng thu âm
select count ( distinct hãng thu âm ) from album
select hãng thu âm from album group by hãng thu âm order by count ( * ) desc limit 1
select hãng thu âm from album group by hãng thu âm order by count ( * ) desc limit 1
select t1.họ from ban nhạc as t1 join bài hát as t2 on t1.id = t2.id nghệ sĩ trong ban nhạc group by t1.họ order by count ( * ) desc limit 1
select t1.tên from ban nhạc as t1 join bài hát as t2 on t1.id = t2.id nghệ sĩ trong ban nhạc group by t1.id order by count ( * ) desc limit 1
select t2.họ from buổi biểu diễn as t1 join nghệ sĩ trong ban nhạc as t2 on t1.nghệ sĩ trong ban nhạc = t2.id where t1.vị trí trên sân khấu = "hậu trường" group by t2.họ order by count ( * ) desc limit 1
select t2.họ from buổi biểu diễn as t1 join nghệ sĩ trong ban nhạc as t2 on t1.nghệ sĩ trong ban nhạc = t2.id where t1.vị trí trên sân khấu = "hậu trường" group by t2.họ order by count ( * ) desc limit 1
select tiêu đề from bài hát where tiêu đề like "%the%"
select tiêu đề from bài hát where tiêu đề like "%the%"
select nhạc cụ from nhạc cụ group by nhạc cụ
select nhạc cụ from nhạc cụ group by nhạc cụ
select nhạc cụ from nhạc cụ as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát join ban nhạc as t3 on t1.id nghệ sĩ trong ban nhạc = t3.id where t3.họ = "Heilo" and t2.tiêu đề = "Le Pop"
select nhạc cụ from nhạc cụ as t1 join buổi biểu diễn as t2 on t1.id bài hát = t2.id bài hát join nghệ sĩ trong ban nhạc as t3 on t2.nghệ sĩ trong ban nhạc = t3.id where t3.họ = "Heilo" and t1.id bài hát = ( select id bài hát from bài hát where tiêu đề = "Le Pop" )
select nhạc cụ from nhạc cụ group by nhạc cụ order by count ( * ) desc limit 1
select nhạc cụ from nhạc cụ group by nhạc cụ order by count ( * ) desc limit 1
select count ( * ) from nhạc cụ where nhạc cụ = "trống"
select count ( * ) from nhạc cụ where nhạc cụ = "trống"
select nhạc cụ from nhạc cụ as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where t2.tiêu đề = "Le Pop"
select nhạc cụ from nhạc cụ as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where t2.tiêu đề = "Le Pop"
select count ( * ) from nhạc cụ as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where t2.tiêu đề = "Le Pop"
select count ( distinct nhạc cụ ) from nhạc cụ as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where t2.tiêu đề = "Le Pop"
select count ( distinct nhạc cụ ) from nhạc cụ as t1 join nghệ sĩ trong ban nhạc as t2 on t1.id nghệ sĩ trong ban nhạc = t2.id where t2.họ = "Heilo"
select count ( distinct nhạc cụ ) from nhạc cụ as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát join ban nhạc as t3 on t1.id nghệ sĩ trong ban nhạc = t3.id where t3.họ = "Hello"
select nhạc cụ from nhạc cụ as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát join ban nhạc as t3 on t1.id nghệ sĩ trong ban nhạc = t3.id where t3.họ = "Heilo"
select nhạc cụ from nhạc cụ as t1 join ban nhạc as t2 on t1.id nghệ sĩ trong ban nhạc = t2.id where t2.họ = "Hello"
select t1.tiêu đề from bài hát as t1 join giọng hát as t2 on t1.id bài hát = t2.id bài hát group by t2.id bài hát order by count ( * ) desc limit 1
select t1.id bài hát from giọng hát as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát group by t1.id bài hát order by count ( * ) desc limit 1
select loại from giọng hát group by loại order by count ( * ) desc limit 1
select loại from giọng hát group by loại order by count ( * ) desc limit 1
select loại from giọng hát as t1 join ban nhạc as t2 on t1.nghệ sĩ trong ban nhạc = t2.id where t2.họ = "Hello"
select loại from giọng hát where nghệ sĩ trong ban nhạc = ( select id from ban nhạc where tên = "Hello" )
select loại from giọng hát where id bài hát in ( select id bài hát from bài hát where tiêu đề = "Le Pop" )
select loại from giọng hát where id bài hát in ( select id bài hát from buổi biểu diễn where nghệ sĩ trong ban nhạc in ( select id from ban nhạc where tên = "Le Pop" ) )
select count ( * ) from giọng hát where id bài hát in ( select id bài hát from bài hát where tiêu đề = "Demon Kitty Rag" )
select count ( * ) from giọng hát where id bài hát in ( select id bài hát from bài hát where tiêu đề = "Demon Kitty Rag" )
select count ( * ) from giọng hát where loại = "chính"
select count ( * ) from giọng hát where loại = "chính"
select t3.loại from bài hát as t1 join giọng hát as t2 on t1.id bài hát = t2.id bài hát join ban nhạc as t3 on t2.nghệ sĩ trong ban nhạc = t3.id where t1.tiêu đề = "Bar in Amsterdam"
select t3.loại from bài hát as t1 join giọng hát as t2 on t1.id bài hát = t2.id bài hát join ban nhạc as t3 on t2.nghệ sĩ trong ban nhạc = t3.id where t1.tiêu đề = "Bar in Amsterdam"
select * from bài hát except select * from bài hát join giọng hát on bài hát.id bài hát = giọng hát.id bài hát where loại = "chính"
select tiêu đề from bài hát except select t3.tiêu đề from bài hát as t1 join giọng hát as t2 on t1.id bài hát = t2.id bài hát join ban nhạc as t3 on t2.nghệ sĩ trong ban nhạc = t3.id where t2.loại = "chính"
select distinct loại from giọng hát
select distinct loại from giọng hát
select * from album where năm = 2010
select * from album where năm = 2010
select t1.tên from ban nhạc as t1 join buổi biểu diễn as t2 on t1.id = t2.nghệ sĩ trong ban nhạc where t2.id bài hát in ( select id bài hát from bài hát where tiêu đề = "Le Pop" )
select t1.tên , t1.họ from ban nhạc as t1 join buổi biểu diễn as t2 on t1.id = t2.nghệ sĩ trong ban nhạc where t2.id bài hát in ( select id bài hát from bài hát where tiêu đề = "Le Pop" )
select t1.họ from ban nhạc as t1 join bài hát as t2 on t1.id = t2.id nghệ sĩ trong ban nhạc group by t1.họ order by count ( * ) desc limit 1
select t1.tên , t1.họ from ban nhạc as t1 join bài hát as t2 on t1.id = t2.id nghệ sĩ trong ban nhạc group by t1.id order by count ( * ) desc limit 1
select nhạc cụ from nhạc cụ as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát join ban nhạc as t3 on t1.id nghệ sĩ trong ban nhạc = t3.id where t3.họ = "Heilo" and t2.tiêu đề = "Badlands"
select nhạc cụ from nhạc cụ as t1 join buổi biểu diễn as t2 on t1.id bài hát = t2.id bài hát join nghệ sĩ trong ban nhạc as t3 on t2.nghệ sĩ trong ban nhạc = t3.id where t3.họ = "Hello" and t1.id bài hát = ( select id bài hát from bài hát where tiêu đề = "Badlands" )
select count ( * ) from nhạc cụ as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where t2.tiêu đề = "Badlands"
select count ( distinct nhạc cụ ) from nhạc cụ as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where t2.tiêu đề = "Badlands"
select loại from giọng hát where id bài hát in ( select id bài hát from bài hát where tiêu đề = "Badlands" )
select loại from giọng hát where id bài hát = ( select id bài hát from bài hát where tiêu đề = "Badlands" )
select count ( * ) from giọng hát where id bài hát in ( select id bài hát from bài hát where tiêu đề = "Le Pop" )
select count ( * ) from giọng hát where id bài hát in ( select id bài hát from bài hát where tiêu đề = "Le Pop" )
select count ( * ) from giọng hát where loại = "share"
select count ( distinct id bài hát ) from giọng hát group by loại having count ( * ) > 1
select * from bài hát except select * from bài hát join giọng hát on bài hát.id bài hát = giọng hát.id bài hát where loại = "phụ"
select tiêu đề from bài hát except select t3.tiêu đề from bài hát as t1 join giọng hát as t2 on t1.id bài hát = t2.id bài hát join ban nhạc as t3 on t2.nghệ sĩ trong ban nhạc = t3.id where t2.loại = "bass"
select loại from giọng hát where nghệ sĩ trong ban nhạc = ( select id from ban nhạc where tên = "Solveig" ) group by loại order by count ( * ) desc limit 1
select t3.loại from ban nhạc as t1 join giọng hát as t2 on t1.id = t2.nghệ sĩ trong ban nhạc join bài hát as t3 on t2.id bài hát = t3.id bài hát where t1.tên = "Solveig" group by t3.loại order by count ( * ) desc limit 1
select t3.loại from bài hát as t1 join giọng hát as t2 on t1.id bài hát = t2.id bài hát join ban nhạc as t3 on t2.nghệ sĩ trong ban nhạc = t3.id where t1.tiêu đề = "Der Kapitan" and t3.họ = "Hello"
select t3.loại from bài hát as t1 join giọng hát as t2 on t1.id bài hát = t2.id bài hát join ban nhạc as t3 on t2.nghệ sĩ trong ban nhạc = t3.id where t1.tiêu đề = "Der Kapitan" and t3.họ = "Hello"
select t1.tên , t1.họ from ban nhạc as t1 join buổi biểu diễn as t2 on t1.id = t2.nghệ sĩ trong ban nhạc group by t1.id order by count ( * ) desc limit 1
select t1.tên , t1.họ from ban nhạc as t1 join buổi biểu diễn as t2 on t1.id = t2.nghệ sĩ trong ban nhạc group by t1.id order by count ( * ) desc limit 1
select t1.loại from giọng hát as t1 join ban nhạc as t2 on t1.nghệ sĩ trong ban nhạc = t2.id where t2.tên = "Marianne" group by t1.loại order by count ( * ) desc limit 1
select t3.loại from buổi biểu diễn as t1 join nghệ sĩ trong ban nhạc as t2 on t1.nghệ sĩ trong ban nhạc = t2.id join giọng hát as t3 on t1.id bài hát = t3.id bài hát where t2.tên = "Marianne" group by t3.loại order by count ( * ) desc limit 1
select t1.tên , t1.họ from ban nhạc as t1 join buổi biểu diễn as t2 on t1.id = t2.nghệ sĩ trong ban nhạc where t2.vị trí trên sân khấu = "hậu trường" and t2.id bài hát in ( select t3.id bài hát from bài hát as t3 join danh sách bài hát as t4 on t3.id bài hát = t4.id bài hát where t4.id album in ( select t5.id album from album as t5 where t5.tiêu đề = "Der Kapitan" ) )
select t2.tên , t2.họ from buổi biểu diễn as t1 join nghệ sĩ trong ban nhạc as t2 on t1.nghệ sĩ trong ban nhạc = t2.id where t1.vị trí trên sân khấu = "hậu trường" and t1.id bài hát in ( select id bài hát from bài hát where tiêu đề = "Der Kapitan" )
select tiêu đề from bài hát except select t3.tiêu đề from bài hát as t1 join giọng hát as t2 on t1.id bài hát = t2.id bài hát join ban nhạc as t3 on t2.nghệ sĩ trong ban nhạc = t3.id where t2.loại = "phụ"
select tiêu đề from bài hát except select tiêu đề from bài hát join giọng hát on bài hát.id bài hát = giọng hát.id bài hát where loại = "phụ"
select t1.tiêu đề from bài hát as t1 join danh sách bài hát as t2 on t1.id bài hát = t2.id bài hát join album as t3 on t2.id album = t3.id album where t3.tiêu đề = "A Love Affair Before You Go : Living in Hamburg"
select t1.tiêu đề from bài hát as t1 join danh sách bài hát as t2 on t1.id bài hát = t2.id bài hát join album as t3 on t2.id album = t3.id album where t3.tiêu đề = "A Love Affair Before You Go : Living in Hamburg"
select t1.tiêu đề from album as t1 join danh sách bài hát as t2 on t1.id album = t2.id album where t1.hãng thu âm = "Nhóm âm nhạc toàn cầu"
select t2.tiêu đề from album as t1 join bài hát as t2 on t1.id album = t2.id bài hát where t1.hãng thu âm = "Nhóm âm nhạc toàn cầu"
select count ( * ) from album as t1 join danh sách bài hát as t2 on t1.id album = t2.id album where t1.loại = "studio"
select count ( * ) from album as t1 join danh sách bài hát as t2 on t1.id album = t2.id album where t1.loại = "studio"
select khách hàng tốt hay xấu from khách hàng where id phiếu giảm giá in ( select id phiếu giảm giá from phiếu giảm giá where số tiền giảm giá = 500 )
select id khách hàng , tên , count ( * ) from khách hàng as t1 join lượt đặt mua as t2 on t1.id khách hàng = t2.id khách hàng group by t1.id khách hàng
select id khách hàng , sum ( số tiền phải trả ) from thanh toán group by id khách hàng order by sum ( số tiền phải trả ) desc limit 1
select id đặt mua , số tiền hoàn trả from thanh toán group by id đặt mua order by count ( * ) desc limit 1
select id sản phẩm from sản phẩm được đặt group by id sản phẩm having count ( * ) = 3
select t1.mô tả sản phẩm from sản phẩm được đặt as t1 join sản phẩm cho thuê as t2 on t1.id sản phẩm = t2.id sản phẩm where t1.số tiền đã đặt = 102,76
select t1.ngày bắt đầu đặt mua , t1.ngày kết thúc đặt mua from lượt đặt mua as t1 join sản phẩm được đặt as t2 on t1.id đặt mua = t2.id đặt mua join sản phẩm cho thuê as t3 on t2.id sản phẩm = t3.id sản phẩm where t3.tên sản phẩm = "Bộ sưu tập sách"
select tên sản phẩm from sản phẩm có sẵn
select count ( distinct mã loại sản phẩm ) from sản phẩm cho thuê
select tên , họ , giới tính from khách hàng where khách hàng tốt hay xấu = 'tốt'
select avg ( số tiền nợ ) from thanh toán
select max ( số lượng đặt mua ) , min ( số lượng đặt mua ) , avg ( số lượng đặt mua ) from sản phẩm được đặt
select distinct mã loại thanh toán from thanh toán
select chi phí thuê hàng ngày from sản phẩm cho thuê where tên sản phẩm like "%Book%"
select count ( * ) from sản phẩm được đặt as t1 join sản phẩm cho thuê as t2 on t1.id sản phẩm = t2.id sản phẩm where t1.số tiền đã đặt > 200 and t1.đã trả lại hay không = 'Không'
select số tiền giảm giá from phiếu giảm giá where id phiếu giảm giá in ( select id phiếu giảm giá from khách hàng where khách hàng tốt hay xấu = 'good' ) union select số tiền giảm giá from phiếu giảm giá where id phiếu giảm giá in ( select id phiếu giảm giá from khách hàng where khách hàng tốt hay xấu = 'bad' )
select ngày thanh toán from thanh toán where số tiền đã trả > 300 or mã loại thanh toán = ' Giao dịch '
select tên sản phẩm , mô tả sản phẩm from sản phẩm cho thuê where mã loại sản phẩm = "Dao kéo" and chi phí thuê hàng ngày < 20
select tên nhà hàng from nhà hàng
select địa chỉ from nhà hàng where tên nhà hàng = "Tàu điện ngầm"
select đánh giá xếp hạng from nhà hàng where tên nhà hàng = "Tàu điện ngầm"
select tên loại nhà hàng from loại nhà hàng
select mô tả về loại nhà hàng from loại nhà hàng where tên loại nhà hàng = "Sandwich"
select tên nhà hàng , đánh giá xếp hạng from nhà hàng order by đánh giá xếp hạng desc limit 1
select tuổi from sinh viên where tên = "Linda" and họ = "Smith"
select giới tính from sinh viên where tên = "Linda" and họ = "Smith"
select tên , họ from sinh viên where chuyên ngành = 600
select mã thành phố from sinh viên where tên = "Linda" and họ = "Smith"
select count ( * ) from sinh viên where cố vấn = 1121
select t1.tên , count ( * ) from sinh viên as t1 join sinh viên as t2 on t1.cố vấn = t2.id sinh viên group by t1.cố vấn order by count ( * ) desc limit 1
select chuyên ngành , count ( * ) from sinh viên group by chuyên ngành order by count ( * ) asc limit 1
select chuyên ngành , count ( * ) from sinh viên where tuổi between 2 and 30 group by chuyên ngành
select tên , họ from sinh viên where tuổi > 18 and chuyên ngành = 600
select tên , họ from sinh viên where tuổi > 18 and chuyên ngành <> 600 and giới tính = "F"
select count ( * ) from nhà hàng as t1 join loại nhà hàng as t2 on t1.id loại nhà hàng = t2.id loại nhà hàng where t2.tên loại nhà hàng = "Sandwich"
select sum ( t2.thời gian dành ra ) from sinh viên as t1 join lượt ghé thăm nhà hàng as t2 on t1.id sinh viên = t2.id sinh viên where t1.tên = "Linda" and t1.họ = "Smith"
select count ( * ) from nhà hàng as t1 join lượt ghé thăm nhà hàng as t2 on t1.id nhà hàng = t2.id nhà hàng join sinh viên as t3 on t2.id sinh viên = t3.id sinh viên where t3.tên = "Linda" and t3.họ = "Smith" and t1.tên nhà hàng = "Subway"
select time from lượt ghé thăm nhà hàng where id sinh viên = ( select id sinh viên from sinh viên where tên = "Linda" and họ = "Smith" ) and id nhà hàng = ( select id nhà hàng from nhà hàng where tên nhà hàng = "Subway" )
select t1.tên nhà hàng , sum ( t2.thời gian dành ra ) from lượt ghé thăm nhà hàng as t2 join nhà hàng as t1 on t2.id nhà hàng = t1.id nhà hàng group by t2.id nhà hàng order by sum ( t2.thời gian dành ra ) asc limit 1
select t1.tên , t1.họ from sinh viên as t1 join lượt ghé thăm nhà hàng as t2 on t1.id sinh viên = t2.id sinh viên group by t1.id sinh viên order by count ( * ) desc limit 1
select count ( distinct họ ) from diễn viên where giới tính = 'M' union select count ( distinct họ ) from diễn viên where giới tính = 'F'
select count ( distinct họ ) from diễn viên
select t1.tên from diễn viên as t1 join diễn viên điện ảnh as t2 on t1.id diễn viên = t2.id diễn viên group by t1.tên order by count ( * ) desc limit 1
select t1.tên from diễn viên as t1 join diễn viên điện ảnh as t2 on t1.id diễn viên = t2.id diễn viên group by t1.tên order by count ( * ) desc limit 1
select t1.tên , t1.họ from diễn viên as t1 join diễn viên điện ảnh as t2 on t1.id diễn viên = t2.id diễn viên group by t1.tên , t1.họ order by count ( * ) desc limit 1
select t1.tên , t1.họ from diễn viên as t1 join diễn viên điện ảnh as t2 on t1.id diễn viên = t2.id diễn viên group by t1.tên , t1.họ order by count ( * ) desc limit 1
select quận from địa chỉ group by quận having count ( * ) >= 2
select quận from địa chỉ group by quận having count ( * ) >= 2
select số điện thoại , mã bưu điện from địa chỉ where id địa chỉ = 1031
select số điện thoại , mã bưu điện from địa chỉ where địa chỉ = "1031 Daugavpils Parkway"
select t1.thành phố , count ( * ) , t1.id thành phố from địa chỉ as t1 join thành phố as t2 on t1.id thành phố = t2.id thành phố group by t1.id thành phố order by count ( * ) desc limit 1
select t2.thành phố , count ( * ) from địa chỉ as t1 join thành phố as t2 on t1.id thành phố = t2.id thành phố group by t1.id thành phố order by count ( * ) desc limit 1
select count ( * ) from địa chỉ where quận = "California"
select count ( * ) from địa chỉ where quận = "California"
select t2.tiêu đề , t1.id phim from lượt thuê as t1 join hàng tồn kho as t2 on t1.id hàng tồn kho = t2.id hàng tồn kho where t1.ngày trả lại is null and t2.id phim in ( select id phim from hàng tồn kho group by id phim having count ( * ) < 3 ) and t2.giá cho thuê = 0,99
select t2.tiêu đề , t1.id phim from hàng tồn kho as t1 join phim as t2 on t1.id phim = t2.id phim where t2.giá cho thuê = 0,99 and t1.id hàng tồn kho < 3
select count ( * ) from thành phố where id thành phố in ( select id thành phố from quốc gia where quốc gia = "Australia" )
select count ( * ) from thành phố where id thành phố in ( select id thành phố from quốc gia where quốc gia = "Australia" )
select quốc gia from thành phố group by quốc gia having count ( * ) >= 3
select quốc gia from thành phố group by quốc gia having count ( * ) >= 3
select ngày thanh toán from khoản thanh toán where số tiền > 10 and id nhân viên = ( select id nhân viên from nhân viên where tên = "Elsa" )
select ngày thanh toán from khoản thanh toán where số tiền > 10 and id nhân viên = ( select id nhân viên from nhân viên where tên = "Elsa" )
select count ( * ) from khách hàng where có hoạt động không = 1
select count ( * ) from khách hàng where có hoạt động không = 1
select giá cho thuê from phim order by giá cho thuê desc limit 1
select tiêu đề , giá cho thuê from phim order by giá cho thuê desc limit 1
select t1.tiêu đề , t1.id phim , t1.mô tả from phim as t1 join diễn viên điện ảnh as t2 on t1.id phim = t2.id phim group by t1.id phim order by count ( * ) desc limit 1
select t1.tiêu đề , t1.id phim , t1.mô tả from phim as t1 join diễn viên điện ảnh as t2 on t1.id phim = t2.id phim group by t1.id phim order by count ( * ) desc limit 1
select t1.tên , t1.họ from diễn viên as t1 join diễn viên điện ảnh as t2 on t1.id diễn viên = t2.id diễn viên group by t1.id diễn viên order by count ( * ) desc limit 1
select t1.tên , t1.id diễn viên from diễn viên as t1 join diễn viên điện ảnh as t2 on t1.id diễn viên = t2.id diễn viên group by t1.id diễn viên order by count ( * ) desc limit 1
select t1.tên , t1.họ from diễn viên as t1 join diễn viên điện ảnh as t2 on t1.id diễn viên = t2.id diễn viên group by t1.id diễn viên having count ( * ) > 30
select t1.tên , t1.họ from diễn viên as t1 join diễn viên điện ảnh as t2 on t1.id diễn viên = t2.id diễn viên group by t1.id diễn viên having count ( * ) > 30
select t1.id cửa hàng from hàng tồn kho as t1 join khoản thanh toán as t2 on t1.id lượt thuê = t2.id lượt thuê group by t1.id cửa hàng order by count ( * ) desc limit 1
select id cửa hàng from hàng tồn kho group by id cửa hàng order by count ( * ) desc limit 1
select sum ( số tiền ) from khoản thanh toán
select sum ( số tiền ) from khoản thanh toán
select t1.tên , t1.họ , t1.id khách hàng from khách hàng as t1 join khoản thanh toán as t2 on t1.id khách hàng = t2.id khách hàng order by t2.số tiền limit 1
select t1.tên , t1.id khách hàng from khách hàng as t1 join khoản thanh toán as t2 on t1.id khách hàng = t2.id khách hàng order by t2.số tiền asc limit 1
select t2.tên from danh mục phim as t1 join danh mục as t2 on t1.id danh mục = t2.id danh mục join phim as t3 on t1.id phim = t3.id phim where t3.tiêu đề = "HUNGER ROOF"
select t2.id danh mục from phim as t1 join danh mục phim as t2 on t1.id phim = t2.id phim where t1.tiêu đề = "HUNGER ROOF"
select t1.tên , t1.id danh mục , count ( * ) from danh mục phim as t1 join danh mục as t2 on t1.id danh mục = t2.id danh mục group by t1.id danh mục
select t1.tên , count ( * ) from danh mục as t1 join danh mục phim as t2 on t2.id danh mục = t1.id danh mục group by t2.id danh mục
select t2.tiêu đề , t1.id phim from hàng tồn kho as t1 join phim as t2 on t1.id phim = t2.id phim group by t1.id phim order by count ( * ) desc limit 1
select t2.tiêu đề , t1.id phim from hàng tồn kho as t1 join phim as t2 on t1.id phim = t2.id phim group by t1.id phim order by count ( * ) desc limit 1
select t2.tiêu đề , t1.id hàng tồn kho from lượt thuê as t1 join phim as t2 on t1.id hàng tồn kho = t2.id phim group by t1.id hàng tồn kho order by count ( * ) desc limit 1
select t2.tiêu đề , t1.id hàng tồn kho from lượt thuê as t1 join hàng tồn kho as t2 on t1.id hàng tồn kho = t2.id hàng tồn kho group by t1.id hàng tồn kho order by count ( * ) desc limit 1
select count ( * ) from ngôn ngữ where id ngôn ngữ in ( select id ngôn ngữ from phim )
select count ( distinct id ngôn ngữ ) from danh mục phim
select tiêu đề from phim where đánh giá xếp hạng = "R"
select tiêu đề from phim where đánh giá xếp hạng = "R"
select thành phố from địa chỉ where id thành phố in ( select id thành phố from cửa hàng where id cửa hàng = 1 )
select địa chỉ from địa chỉ where id thành phố in ( select id thành phố from cửa hàng where id cửa hàng = 1 )
select t1.tên , t1.id nhân viên from nhân viên as t1 join khoản thanh toán as t2 on t1.id nhân viên = t2.id nhân viên group by t1.id nhân viên order by count ( * ) limit 1
select t1.tên , t1.id nhân viên from nhân viên as t1 join khoản thanh toán as t2 on t1.id nhân viên = t2.id nhân viên group by t1.id nhân viên order by count ( * ) limit 1
select t1.tên from ngôn ngữ as t1 join phim as t2 on t1.id ngôn ngữ = t2.id ngôn ngữ where t2.tiêu đề = "AIRPORT POLLOCK"
select t1.tên from ngôn ngữ as t1 join phim as t2 on t1.id ngôn ngữ = t2.id ngôn ngữ where t2.tiêu đề = "AIRPORT POLLOCK"
select count ( * ) from cửa hàng
select count ( * ) from cửa hàng
select count ( * ) from danh mục phim
select count ( * ) from danh mục phim
select tiêu đề from phim where tính năng đặc biệt like '% Deleted Scene%'
select tiêu đề from phim where tính năng đặc biệt like '%deleted scene%'
select count ( * ) from hàng tồn kho where id cửa hàng = 1
select count ( * ) from hàng tồn kho where id cửa hàng = 1
select ngày thanh toán from khoản thanh toán order by ngày thanh toán limit 1
select min ( ngày thanh toán ) from khoản thanh toán
select email from khách hàng where tên = "Linda"
select địa chỉ , email from khách hàng where tên = "Linda"
select tiêu đề from phim where thời lượng phim > 100 and đánh giá xếp hạng = "PG" and giá thay thế < 200
select tiêu đề from phim where thời lượng phim > 100 and đánh giá xếp hạng = 'PG' and giá thay thế < 200
select t1.tên , t1.họ from khách hàng as t1 join lượt thuê as t2 on t1.id khách hàng = t2.id khách hàng order by t2.ngày cho thuê limit 1
select t1.tên , t1.họ from khách hàng as t1 join lượt thuê as t2 on t1.id khách hàng = t2.id khách hàng order by t2.ngày cho thuê limit 1
select t2.tên , t2.họ from lượt thuê as t1 join nhân viên as t2 on t1.id nhân viên = t2.id nhân viên join khách hàng as t3 on t1.id khách hàng = t3.id khách hàng where t3.tên = "April" and t3.họ = "Burns"
select t2.tên , t2.họ from lượt thuê as t1 join nhân viên as t2 on t1.id nhân viên = t2.id nhân viên join khách hàng as t3 on t1.id khách hàng = t3.id khách hàng where t3.tên = "April" and t3.họ = "Burns"
select id cửa hàng from khách hàng group by id cửa hàng order by count ( * ) desc limit 1
select id cửa hàng from khách hàng group by id cửa hàng order by count ( * ) desc limit 1
select max ( số tiền ) from khoản thanh toán
select max ( số tiền ) from khoản thanh toán
select t1.id cửa hàng from cửa hàng as t1 join địa chỉ as t2 on t1.id địa chỉ = t2.id địa chỉ join nhân viên as t3 on t1.id nhân viên quản lý = t3.id nhân viên where t3.tên = "Elsa"
select địa chỉ from địa chỉ where id địa chỉ in ( select id địa chỉ from nhân viên where tên = "Elsa" )
select tên from khách hàng where not id khách hàng in ( select id khách hàng from lượt thuê where ngày cho thuê > '2005-08-23 02:06:01' )
select tên from khách hàng where not id khách hàng in ( select id khách hàng from lượt thuê where ngày cho thuê < '2005-08-23 02:06:01' )
select count ( * ) from tài xế
select tên , thành phố quê hương , tuổi from tài xế
select đảng , count ( * ) from tài xế group by đảng
select tên from tài xế order by tuổi desc
select distinct thành phố quê hương from tài xế
select thành phố quê hương from tài xế group by thành phố quê hương order by count ( * ) desc limit 1
select đảng from tài xế where thành phố quê hương = "Hartford" and tuổi > 40
select thành phố quê hương from tài xế where tuổi > 40 group by thành phố quê hương having count ( * ) >= 2
select thành phố quê hương from tài xế where tuổi < 40
select tên from tài xế except select t1.tên from tài xế as t1 join xe buýt của trường học as t2 on t1.id tài xế = t2.id tài xế
select loại hình from trường học group by loại hình having count ( * ) = 2
select t2.tên , t1.tên from xe buýt của trường học as t1 join tài xế as t2 on t1.id tài xế = t2.id tài xế
select avg ( số năm làm việc ) , max ( số năm làm việc ) , min ( số năm làm việc ) from xe buýt của trường học
select trường học from trường học except select trường học from xe buýt của trường học
select loại hình , count ( * ) from trường học group by loại hình
select count ( * ) from tài xế where thành phố quê hương = "Hartford" or tuổi < 40
select tên from tài xế where thành phố quê hương = "Hartford" and tuổi < 40
select t1.tên from tài xế as t1 join xe buýt của trường học as t2 on t1.id tài xế = t2.id tài xế order by t2.số năm làm việc desc limit 1
select count ( * ) from trường học
select count ( * ) from trường học
select địa điểm from trường học order by số lượng nhập học asc
select địa điểm from trường học order by số lượng nhập học
select địa điểm from trường học order by năm thành lập desc
select địa điểm from trường học order by năm thành lập desc
select số lượng nhập học from trường học where tôn giáo <> "Công giáo"
select số lượng nhập học from trường học where tôn giáo <> "Công giáo"
select avg ( số lượng nhập học ) from trường học
select avg ( số lượng nhập học ) from trường học
select đội from cầu thủ order by đội asc
select đội from cầu thủ order by đội asc
select count ( distinct vị trí ) from cầu thủ
select count ( distinct vị trí ) from cầu thủ
select đội from cầu thủ where tuổi = ( select max ( tuổi ) from cầu thủ )
select đội from cầu thủ where tuổi = ( select max ( tuổi ) from cầu thủ )
select đội from cầu thủ where tuổi = ( select max ( tuổi ) from cầu thủ ) limit 5
select đội from cầu thủ where tuổi = ( select max ( tuổi ) from cầu thủ ) limit 5
select t2.đội , t1.id trường from chi tiết trường học as t2 join cầu thủ as t1 on t1.id trường = t2.id trường
select t2.đội , t1.trường học from chi tiết trường học as t2 join cầu thủ as t1 on t1.id trường = t2.id trường
select địa điểm from trường học group by địa điểm having count ( * ) > 1
select địa điểm from trường học where số lượng nhập học > 1
select tôn giáo from trường học where id trường = ( select id trường from cầu thủ group by id trường order by count ( * ) desc limit 1 )
select tôn giáo from trường học where id trường = ( select id trường from cầu thủ group by id trường order by count ( * ) desc limit 1 )
select địa điểm , biệt danh from chi tiết trường học
select biệt danh , địa điểm from trường học where địa điểm = "Boston"
select tôn giáo , count ( * ) from trường học group by tôn giáo
select tôn giáo , count ( * ) from trường học group by tôn giáo
select tôn giáo , count ( * ) from trường học group by tôn giáo order by count ( * ) desc
select tôn giáo , count ( * ) from trường học group by tôn giáo order by count ( * ) desc
select màu của trường from trường học where số lượng nhập học = ( select max ( số lượng nhập học ) from trường học )
select màu của trường from chi tiết trường học where số lượng nhập học = ( select max ( số lượng nhập học ) from chi tiết trường học )
select địa điểm from trường học where id trường not in ( select id trường from cầu thủ )
select địa điểm from trường học where id trường not in ( select id trường from cầu thủ )
select tôn giáo from trường học where năm thành lập < 1890 union select tôn giáo from trường học where năm thành lập > 1900
select tôn giáo from trường học where năm thành lập < 1890 intersect select tôn giáo from trường học where năm thành lập > 1900
select biệt danh from chi tiết trường học where phân hạng <> 1
select biệt danh from chi tiết trường học where phân hạng <> 1
select tôn giáo from trường học group by tôn giáo having count ( * ) > 1
select tôn giáo from trường học group by tôn giáo having count ( * ) > 1
select tên from quốc gia union select tên from giải đấu
select count ( * ) from giải đấu where id quốc gia = ( select id from quốc gia where tên = "Anh" )
select avg ( cân nặng ) from cầu thủ
select max ( cân nặng ) , min ( cân nặng ) from cầu thủ
select tên cầu thủ from cầu thủ where đánh giá tổng thể > ( select avg ( đánh giá tổng thể ) from cầu thủ )
select t1.tên cầu thủ from cầu thủ as t1 join đặc điểm của cầu thủ as t2 on t1.id = t2.id cầu thủ api order by t2.rê bóng desc limit 1
select tên cầu thủ from cầu thủ where tạt bóng > 90 and chân thuận = "phải"
select t1.tên cầu thủ from cầu thủ as t1 join đặc điểm của cầu thủ as t2 on t1.id cầu thủ api = t2.id cầu thủ api where t2.chân thuận = "trái" and t2.đánh giá tổng thể >= 85 and t2.đánh giá tổng thể <= 90
select avg ( t1.đánh giá tổng thể ) from đặc điểm của cầu thủ as t1 join đặc điểm của cầu thủ as t2 on t1.id cầu thủ api = t2.id cầu thủ api where t1.chân thuận = "phải" and t2.chân thuận = "trái"
select count ( * ) from cầu thủ as t1 join đặc điểm của cầu thủ as t2 on t1.id = t2.id cầu thủ api where t2.chân thuận = "trái" and t2.đánh giá tổng thể > 80
select id from cầu thủ where chiều cao >= 180 and đánh giá tổng thể > 85
select id from cầu thủ where chiều cao between 180 and 190 and chân thuận = "trái"
select t1.tên cầu thủ from cầu thủ as t1 join đặc điểm của cầu thủ as t2 on t1.id cầu thủ api = t2.id cầu thủ api order by t2.đánh giá tổng thể desc limit 3
select tên cầu thủ , ngày sinh from cầu thủ order by tiềm năng desc limit 5
select tên quận from quận order by diện tích của các thành phố desc
select tên quận from quận order by diện tích của các thành phố desc
select kích thước trang tối đa from sản phẩm group by kích thước trang tối đa having count ( * ) > 3
select kích thước trang tối đa from sản phẩm group by kích thước trang tối đa having count ( * ) > 3
select tên quận , dân số thành phố from quận where dân số thành phố between 200000 and 20000000
select tên quận , dân số thành phố from quận where dân số thành phố between 200000 and 2000000
select tên quận from quận where diện tích của các thành phố > 10 or dân số thành phố > 100000
select tên quận from quận where diện tích của các thành phố > 10 or dân số thành phố > 100000
select tên quận from quận order by dân số thành phố desc limit 1
select tên quận from quận order by dân số thành phố desc limit 1
select tên quận from quận order by diện tích của các thành phố limit 1
select tên quận from quận order by diện tích của các thành phố asc limit 1
select sum ( dân số thành phố ) from quận where id quận in ( select id quận from quận order by diện tích của các thành phố desc limit 3 )
select sum ( dân số thành phố ) from quận where id quận in ( select id quận from quận của cửa hàng group by id quận order by sum ( diện tích của các thành phố ) desc limit 3 )
select loại , count ( * ) from cửa hàng group by loại
select loại , count ( * ) from cửa hàng group by loại
select t1.tên cửa hàng from cửa hàng as t1 join quận của cửa hàng as t2 on t1.id cửa hàng = t2.id cửa hàng join quận as t3 on t2.id quận = t3.id quận where t3.tên quận = "Khanewal"
select t1.tên cửa hàng from cửa hàng as t1 join quận của cửa hàng as t2 on t1.id cửa hàng = t2.id cửa hàng join quận as t3 on t2.id quận = t3.id quận where t3.tên quận = "Khanewal"
select t1.tên cửa hàng from cửa hàng as t1 join quận của cửa hàng as t2 on t1.id cửa hàng = t2.id cửa hàng join quận as t3 on t2.id quận = t3.id quận where t3.dân số thành phố = ( select max ( dân số thành phố ) from quận )
select t1.tên quận from quận as t1 join quận của cửa hàng as t2 on t1.id quận = t2.id quận where t1.dân số thành phố = ( select max ( dân số thành phố ) from quận )
select thành phố của các trụ sở quận from cửa hàng where tên cửa hàng = "Blackville"
select tên thành phố của các trụ sở quận from quận của cửa hàng where id cửa hàng = ( select id cửa hàng from cửa hàng where tên cửa hàng = "Blackville" )
select count ( * ) , t2.thành phố của các trụ sở from cửa hàng as t1 join quận của cửa hàng as t2 on t1.id cửa hàng = t2.id cửa hàng group by t2.thành phố của các trụ sở
select count ( * ) , t1.thành phố của các trụ sở from cửa hàng as t1 join quận của cửa hàng as t2 on t1.id cửa hàng = t2.id cửa hàng group by t1.thành phố của các trụ sở
select tên thành phố của các trụ sở from quận group by tên thành phố của các trụ sở order by count ( * ) desc limit 1
select tên thành phố của các trụ sở from quận group by tên thành phố của các trụ sở order by count ( * ) desc limit 1
select avg ( số trang màu trên từng phút ) from sản phẩm
select avg ( số trang màu trên từng phút ) from sản phẩm
select t2.sản phẩm from cửa hàng as t1 join sản phẩm của cửa hàng as t2 on t1.id cửa hàng = t2.id cửa hàng where t1.tên cửa hàng = "Miramichi"
select t1.sản phẩm from sản phẩm as t1 join sản phẩm của cửa hàng as t2 on t1.id sản phẩm = t2.id sản phẩm join cửa hàng as t3 on t2.id cửa hàng = t3.id cửa hàng where t3.tên cửa hàng = "Miramichi"
select sản phẩm from sản phẩm where kích thước trang tối đa = "A4" and số trang màu trên từng phút < 5
select sản phẩm from sản phẩm where kích thước trang tối đa = "A4" and số trang màu trên từng phút < 5
select sản phẩm from sản phẩm where kích thước trang tối đa = "A4" or số trang màu trên từng phút < 5
select sản phẩm from sản phẩm where kích thước trang tối đa = "A4" or số trang màu trên từng phút < 5
select sản phẩm from sản phẩm where sản phẩm like "%Printer%"
select sản phẩm from sản phẩm where sản phẩm like "%Scanner%"
select kích thước trang tối đa from sản phẩm group by kích thước trang tối đa order by count ( * ) desc limit 1
select kích thước trang tối đa from sản phẩm group by kích thước trang tối đa order by count ( * ) desc limit 1
select sản phẩm from sản phẩm except select sản phẩm from sản phẩm where sản phẩm in ( select sản phẩm from sản phẩm group by sản phẩm having count ( * ) = ( select count ( * ) from sản phẩm group by sản phẩm having count ( * ) = ( select count ( * ) from sản phẩm group by sản phẩm having count ( * ) = ( select count ( * ) from sản phẩm group by sản phẩm ) ) ) )
select sản phẩm from sản phẩm except select sản phẩm from sản phẩm where sản phẩm in ( select sản phẩm from sản phẩm group by sản phẩm having count ( * ) = ( select count ( * ) from sản phẩm group by sản phẩm having count ( * ) = ( select count ( * ) from sản phẩm group by sản phẩm ) ) )
select sum ( dân số thành phố ) from quận where diện tích của các thành phố > ( select avg ( diện tích của các thành phố ) from quận )
select sum ( dân số thành phố ) from quận where diện tích của các thành phố > ( select avg ( diện tích của các thành phố ) from quận )
select tên quận from quận where tên quận in ( select t1.tên quận from quận as t1 join quận của cửa hàng as t2 on t1.id quận = t2.id quận where t2.loại = "trung tâm mua sắm" ) intersect select tên quận from quận where tên quận in ( select t1.tên quận from quận as t1 join quận của cửa hàng as t2 on t1.id quận = t2.id quận where t2.loại = "cửa hàng bình dân" )
select tên quận from quận where id quận in ( select id quận from cửa hàng where loại = "trung tâm mua sắm" intersect select id quận from cửa hàng where loại = "cửa hàng bình dân" )
select count ( * ) from khu vực
select count ( * ) from khu vực
select mã khu vực , tên khu vực from khu vực
select mã khu vực , tên khu vực from khu vực
select tên khu vực from khu vực order by tên khu vực
select tên khu vực from khu vực order by tên khu vực
select tên khu vực from khu vực where tên khu vực <> "Denmark"
select tên khu vực from khu vực where tên khu vực <> "Denmark"
select count ( * ) from bão where số lượng người chết > 0
select count ( * ) from bão where số lượng người chết > 0
select tên , ngày hoạt động , số lượng người chết from bão where số lượng người chết >= 1
select tên , ngày hoạt động , số người chết from bão where số người chết >= 1
select avg ( thiệt hại theo triệu usd ) , max ( thiệt hại theo triệu usd ) from bão where tốc độ tối đa > 1000
select avg ( thiệt hại theo triệu usd ) , max ( thiệt hại theo triệu usd ) from bão where tốc độ tối đa > 1000
select số lượng người chết , thiệt hại theo triệu usd from bão where tốc độ tối đa > ( select avg ( tốc độ tối đa ) from bão )
select sum ( số lượng người chết ) , sum ( thiệt hại theo triệu usd ) from bão where tốc độ tối đa > ( select avg ( tốc độ tối đa ) from bão )
select tên , thiệt hại theo triệu usd from bão order by tốc độ tối đa desc
select tên , thiệt hại theo triệu usd from bão order by tốc độ tối đa desc
select count ( * ) from khu vực bị ảnh hưởng
select count ( distinct t1.id khu vực ) from khu vực bị ảnh hưởng as t1 join khu vực as t2 on t1.id khu vực = t2.id khu vực join bão as t3 on t1.id bão = t3.id cơn bão
select tên khu vực from khu vực where id khu vực not in ( select id khu vực from khu vực bị ảnh hưởng )
select tên khu vực from khu vực where id khu vực not in ( select id khu vực from khu vực bị ảnh hưởng )
select t1.tên khu vực , count ( * ) from khu vực as t1 join khu vực bị ảnh hưởng as t2 on t1.id khu vực = t2.id khu vực group by t1.id khu vực
select count ( * ) , t1.tên khu vực from khu vực as t1 join khu vực bị ảnh hưởng as t2 on t1.id khu vực = t2.id khu vực group by t1.tên khu vực
select t1.tên , count ( * ) from bão as t1 join khu vực bị ảnh hưởng as t2 on t2.id bão = t1.id cơn bão group by t1.id cơn bão
select count ( * ) , t1.id bão from khu vực bị ảnh hưởng as t1 join bão as t2 on t1.id bão = t2.id bão group by t1.id bão
select t1.tên , t1.tốc độ tối đa from bão as t1 join khu vực bị ảnh hưởng as t2 on t2.id bão = t1.id cơn bão group by t2.id bão order by count ( * ) desc limit 1
select t1.tên , t1.tốc độ tối đa from bão as t1 join khu vực bị ảnh hưởng as t2 on t2.id bão = t1.id cơn bão group by t2.id bão order by count ( * ) desc limit 1
select tên from bão except select t1.tên from bão as t1 join khu vực bị ảnh hưởng as t2 on t1.id cơn bão = t2.id cơn bão
select tên from bão except select t1.tên from bão as t1 join khu vực bị ảnh hưởng as t2 on t1.id cơn bão = t2.id cơn bão join khu vực as t3 on t2.id khu vực = t3.id khu vực
select t1.tên from bão as t1 join khu vực bị ảnh hưởng as t2 on t1.id cơn bão = t2.id cơn bão join khu vực as t3 on t2.id khu vực = t3.id khu vực where t2.số thành phố bị ảnh hưởng >= 10 group by t1.id cơn bão having count ( * ) >= 2
select t1.tên from bão as t1 join khu vực bị ảnh hưởng as t2 on t1.id cơn bão = t2.id cơn bão where t2.số thành phố bị ảnh hưởng >= 10
select tên from bão except select t1.tên from bão as t1 join khu vực bị ảnh hưởng as t2 on t1.id cơn bão = t2.id cơn bão group by t1.id cơn bão having count ( * ) > 2
select tên from bão except select t1.tên from bão as t1 join khu vực bị ảnh hưởng as t2 on t1.id cơn bão = t2.id cơn bão group by t1.id cơn bão having count ( * ) > 2
select t1.tên khu vực from khu vực as t1 join khu vực bị ảnh hưởng as t2 on t1.id khu vực = t2.id khu vực join bão as t3 on t2.id bão = t3.id cơn bão where t3.số lượng người chết >= 10
select t1.tên khu vực from khu vực as t1 join khu vực bị ảnh hưởng as t2 on t1.id khu vực = t2.id khu vực join bão as t3 on t2.id bão = t3.id cơn bão where t3.số lượng người chết >= 10
select t1.tên from bão as t1 join khu vực bị ảnh hưởng as t2 on t1.id cơn bão = t2.id cơn bão join khu vực as t3 on t2.id khu vực = t3.id khu vực where t3.tên khu vực = "Denmark"
select t1.tên from bão as t1 join khu vực bị ảnh hưởng as t2 on t1.id cơn bão = t2.id cơn bão join khu vực as t3 on t2.id khu vực = t3.id khu vực where t3.tên khu vực = "Denmark"
select t1.tên khu vực from khu vực as t1 join khu vực bị ảnh hưởng as t2 on t1.id khu vực = t2.id khu vực group by t1.id khu vực having count ( * ) >= 2
select t1.tên khu vực from khu vực as t1 join khu vực bị ảnh hưởng as t2 on t1.id khu vực = t2.id khu vực group by t1.id khu vực having count ( * ) >= 2
select t1.tên khu vực from khu vực as t1 join khu vực bị ảnh hưởng as t2 on t1.id khu vực = t2.id khu vực join bão as t3 on t2.id bão = t3.id cơn bão where t3.số lượng người chết > ( select max ( số lượng người chết ) from bão )
select t1.tên khu vực from khu vực as t1 join khu vực bị ảnh hưởng as t2 on t1.id khu vực = t2.id khu vực where t2.số lượng người chết = ( select max ( số lượng người chết ) from khu vực bị ảnh hưởng )
select t1.tên from bão as t1 join khu vực bị ảnh hưởng as t2 on t1.id cơn bão = t2.id cơn bão join khu vực as t3 on t2.id khu vực = t3.id khu vực where t3.tên khu vực = "Afghanistan" intersect select t1.tên from bão as t1 join khu vực bị ảnh hưởng as t2 on t1.id cơn bão = t2.id cơn bão join khu vực as t3 on t2.id khu vực = t3.id khu vực where t3.tên khu vực = "Albania"
select t1.tên from bão as t1 join khu vực bị ảnh hưởng as t2 on t1.id cơn bão = t2.id cơn bão join khu vực as t3 on t2.id khu vực = t3.id khu vực where t3.tên khu vực = "Afghanistan" intersect select t1.tên from bão as t1 join khu vực bị ảnh hưởng as t2 on t1.id cơn bão = t2.id cơn bão join khu vực as t3 on t2.id khu vực = t3.id khu vực where t3.tên khu vực = "Albania"
select count ( * ) from danh sách
select count ( * ) from danh sách
select họ from danh sách where phòng học = 111
select họ from danh sách where phòng học = 111
select tên from danh sách where phòng học = 108
select tên from danh sách where phòng học = 108
select tên from danh sách where phòng học = 107
select distinct tên from danh sách where phòng học = 107
select khối lớp , phòng học from danh sách
select phòng học , khối lớp from danh sách
select khối lớp from danh sách where phòng học = 103
select khối lớp from danh sách where phòng học = 103
select khối lớp from danh sách where phòng học = 105
select khối lớp from danh sách where phòng học = 105
select phòng học from danh sách where khối lớp = 4
select phòng học from danh sách where khối lớp = 4 and tên = "4"
select phòng học from danh sách where khối lớp = 5
select phòng học from danh sách where khối lớp = 5
select họ from giáo viên where khối lớp = 5
select họ from giáo viên where khối lớp = 5
select tên from giáo viên where phòng học in ( select phòng học from danh sách where khối lớp = 1 )
select tên from giáo viên where phòng học in ( select phòng học from danh sách where khối lớp = 1 )
select t1.tên from giáo viên as t1 join danh sách as t2 on t1.phòng học = t2.phòng học where t2.phòng học = 110
select tên from giáo viên where phòng học = 110
select họ from giáo viên where phòng học = 109
select họ from giáo viên where phòng học = 109
select tên , họ from giáo viên
select tên , họ from giáo viên
select tên , họ from danh sách
select tên , họ from danh sách
select t1.tên , t1.họ from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t2.tên = "OTHA" and t2.họ = "MOYER"
select t1.tên , t1.họ from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t2.tên = "OTHA" and t2.họ = "MOYER"
select t1.tên from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t2.tên = "MARROTTE" and t2.họ = "KIRK"
select t1.tên , t1.họ from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t2.tên = "MARROTTE" and t2.họ = "KIRK"
select t1.tên , t1.họ from giáo viên as t1 join danh sách as t2 on t1.phòng học = t2.phòng học where t2.tên = "EVELINA" and t2.họ = "BROMLEY"
select t2.họ , t2.tên from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t1.tên = "EVELINA" and t1.họ = "BROMLEY"
select t1.họ from giáo viên as t1 join danh sách as t2 on t1.phòng học = t2.phòng học where t2.tên = "GELL TAMI"
select t2.họ from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t1.tên = "GELL" and t1.họ = "TAMI"
select count ( * ) from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t2.tên = "LORIA" and t2.họ = "ONDERSMA"
select count ( * ) from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t2.tên = "LORIA" and t2.họ = "ONDERSMA"
select count ( * ) from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t2.họ = "KAWA" and t2.tên = "GORDON"
select count ( * ) from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t2.tên = "KAWA" and t2.họ = "GORDON"
select count ( * ) from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t2.tên = "LEIA" and t2.họ = "TARRING"
select count ( * ) from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t2.tên = "TARRING" and t2.họ = "LEIA"
select count ( * ) from giáo viên as t1 join danh sách as t2 on t1.phòng học = t2.phòng học where t2.tên = "CHRISSY NABOZNY"
select count ( * ) from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t1.tên = "CHRISSY NABOZNY"
select count ( * ) from giáo viên as t1 join danh sách as t2 on t1.phòng học = t2.phòng học where t2.tên = "Madlock" and t2.họ = "Ray"
select count ( * ) from giáo viên as t1 join danh sách as t2 on t1.phòng học = t2.phòng học where t2.tên = "MADLOCK" and t2.họ = "RAY"
select tên , họ from danh sách where khối lớp = 1 except select t1.tên , t1.họ from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t2.tên = "OTHA" and t2.họ = "MOYER"
select họ from danh sách where khối lớp = 1 and phòng học not in ( select phòng học from giáo viên where họ = "OTHA" and tên = "MOYER" )
select họ from danh sách where khối lớp = 3 except select họ from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t1.khối lớp = 3 and t2.tên = "COVIN" and t2.họ = "JEROME"
select họ from danh sách where khối lớp = 3 except select họ from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t2.tên = "COVIN" and t2.họ = "JEROME"
select khối lớp , count ( * ) from danh sách group by khối lớp
select khối lớp , count ( * ) , count ( distinct phòng học ) from danh sách group by khối lớp
select phòng học , count ( * ) from danh sách group by phòng học
select phòng học , count ( distinct khối lớp ) from danh sách group by phòng học
select phòng học from danh sách group by phòng học order by count ( * ) desc limit 1
select phòng học from danh sách group by phòng học order by count ( * ) desc limit 1
select phòng học , count ( * ) from danh sách group by phòng học
select phòng học , count ( * ) from danh sách group by phòng học
select sum ( t1.tên ) , t1.phòng học from danh sách as t1 join giáo viên as t2 on t1.phòng học = t2.phòng học where t1.khối lớp = 0 group by t1.phòng học
select phòng học , count ( * ) from danh sách where khối lớp = 0 group by phòng học
select phòng học , count ( * ) from danh sách where khối lớp = 4 group by phòng học
select phòng học , count ( * ) from danh sách where khối lớp = 4 group by phòng học
select t1.tên , t1.họ from giáo viên as t1 join danh sách as t2 on t1.phòng học = t2.phòng học group by t1.tên , t1.họ order by count ( * ) desc limit 1
select t1.tên , t1.họ from giáo viên as t1 join danh sách as t2 on t1.phòng học = t2.phòng học group by t1.tên , t1.họ order by count ( * ) desc limit 1
select count ( * ) , phòng học from danh sách group by phòng học
select phòng học , count ( * ) from danh sách group by phòng học
select t1.tên khoá học from khoá học as t1 join lượt đăng ký khoá học của sinh viên as t2 on t1.id khoá học = t2.id khoá học group by t1.id khoá học order by count ( * ) desc limit 1
select t1.tên khoá học from khoá học as t1 join lượt đăng ký khoá học của sinh viên as t2 on t1.id khoá học = t2.id khoá học group by t1.id khoá học order by count ( * ) desc limit 1
select id sinh viên from lượt đăng ký khoá học của sinh viên group by id sinh viên order by count ( * ) limit 1
select id sinh viên from lượt đăng ký khoá học của sinh viên group by id sinh viên order by count ( * ) asc limit 1
select tên , họ from cá nhân where id cá nhân in ( select id cá nhân from ứng cử viên )
select tên , họ from cá nhân where id cá nhân in ( select id cá nhân from ứng cử viên )
select id sinh viên from sinh viên except select id sinh viên from lần tham dự khoá học của sinh viên
select id sinh viên from sinh viên except select id sinh viên from lần tham dự khoá học của sinh viên
select id sinh viên from lần tham dự khoá học của sinh viên
select id sinh viên from lần tham dự khoá học của sinh viên group by id sinh viên having count ( * ) >= 1
select t1.id sinh viên , t2.tên khoá học from lượt đăng ký khoá học của sinh viên as t1 join khoá học as t2 on t1.id khoá học = t2.id khoá học
select t1.chi tiết sinh viên from sinh viên as t1 join lượt đăng ký khoá học của sinh viên as t2 on t1.id sinh viên = t2.id sinh viên order by t2.ngày đăng kí desc limit 1
select t1.chi tiết sinh viên from sinh viên as t1 join lượt đăng ký khoá học của sinh viên as t2 on t1.id sinh viên = t2.id sinh viên order by t2.ngày đăng kí desc limit 1
select count ( * ) from lần tham dự khoá học của sinh viên where id khoá học = ( select id khoá học from khoá học where tên khoá học = "English" )
select count ( * ) from khoá học as t1 join lần tham dự khoá học của sinh viên as t2 on t1.id khoá học = t2.id khoá học where t1.tên khoá học = "English"
select count ( * ) from lần tham dự khoá học của sinh viên where id sinh viên = 171
select count ( * ) from lần tham dự khoá học của sinh viên where id sinh viên = 171
select id ứng cử viên from ứng cử viên where địa chỉ email = "stanley.monahan@example.org"
select id ứng cử viên from ứng cử viên where địa chỉ email = "stanley.monahan@example.org"
select id ứng cử viên from đánh giá ứng cử viên order by ngày đánh giá desc limit 1
select id ứng cử viên from đánh giá ứng cử viên order by ngày đánh giá desc limit 1
select t1.chi tiết sinh viên from sinh viên as t1 join lượt đăng ký khoá học của sinh viên as t2 on t1.id sinh viên = t2.id sinh viên group by t1.id sinh viên order by count ( * ) desc limit 1
select t1.chi tiết sinh viên from sinh viên as t1 join lượt đăng ký khoá học của sinh viên as t2 on t1.id sinh viên = t2.id sinh viên group by t1.id sinh viên order by count ( * ) desc limit 1
select id sinh viên , count ( * ) from lượt đăng ký khoá học của sinh viên group by id sinh viên
select count ( * ) , id sinh viên from lượt đăng ký khoá học của sinh viên group by id sinh viên
select tên khoá học , count ( * ) from lượt đăng ký khoá học của sinh viên as t1 join khoá học as t2 on t1.id khoá học = t2.id khoá học group by t1.id khoá học
select count ( * ) , t1.id khoá học from lượt đăng ký khoá học của sinh viên as t1 join khoá học as t2 on t1.id khoá học = t2.id khoá học group by t1.id khoá học
select id ứng cử viên from đánh giá ứng cử viên where mã kết quả đánh giá = "Đạt"
select id ứng cử viên from đánh giá ứng cử viên where mã kết quả đánh giá = "Đạt"
select số di động from cá nhân where id cá nhân in ( select id cá nhân from đánh giá ứng cử viên where mã kết quả đánh giá = "Trượt" )
select số di động from cá nhân where id cá nhân in ( select id cá nhân from đánh giá ứng cử viên where mã kết quả đánh giá = "Trượt" )
select id sinh viên from lượt đăng ký khoá học của sinh viên where id khoá học = 301
select id sinh viên from lượt đăng ký khoá học của sinh viên where id khoá học = 301
select id sinh viên from lần tham dự khoá học của sinh viên where id khoá học = 301 order by ngày tham dự desc limit 1
select id sinh viên from lần tham dự khoá học của sinh viên where id khoá học = 301 order by ngày tham dự desc limit 1
select distinct thành phố from địa chỉ
select distinct thành phố from địa chỉ
select distinct t2.thành phố from địa chỉ cá nhân as t1 join địa chỉ as t2 on t1.id địa chỉ = t2.id địa chỉ join sinh viên as t3 on t1.id cá nhân = t3.id sinh viên group by t2.thành phố having count ( * ) > 1
select distinct t2.thành phố from địa chỉ cá nhân as t1 join địa chỉ as t2 on t1.id địa chỉ = t2.id địa chỉ where t1.id cá nhân in ( select id cá nhân from sinh viên ) group by t2.thành phố having count ( * ) > 1
select tên khoá học from khoá học order by tên khoá học
select tên khoá học from khoá học order by tên khoá học
select tên from cá nhân order by tên
select tên from cá nhân order by tên
select id sinh viên from lượt đăng ký khoá học của sinh viên union select id sinh viên from lần tham dự khoá học của sinh viên
select id sinh viên from lượt đăng ký khoá học của sinh viên union select id sinh viên from lần tham dự khoá học của sinh viên
select id khoá học from lượt đăng ký khoá học của sinh viên where id sinh viên = 121 union select id khoá học from lần tham dự khoá học của sinh viên where id sinh viên = 121
select id khoá học from lượt đăng ký khoá học của sinh viên where id sinh viên = 121 union select id khoá học from lần tham dự khoá học của sinh viên where id sinh viên = 121
select * from sinh viên where id sinh viên not in ( select id sinh viên from lần tham dự khoá học của sinh viên )
select chi tiết sinh viên from sinh viên except select t1.chi tiết sinh viên from sinh viên as t1 join lượt đăng ký khoá học của sinh viên as t2 on t1.id sinh viên = t2.id sinh viên
select id sinh viên from lượt đăng ký khoá học của sinh viên where id khoá học = ( select id khoá học from khoá học where tên khoá học = "Statistics" ) order by ngày đăng kí
select id sinh viên from lượt đăng ký khoá học của sinh viên where id khoá học = ( select id khoá học from khoá học where tên khoá học = "Statistics" ) order by ngày đăng kí
select id sinh viên from lần tham dự khoá học của sinh viên where id khoá học in ( select id khoá học from khoá học where tên khoá học = "Statistics" ) order by ngày tham dự
select id sinh viên from lần tham dự khoá học của sinh viên where id khoá học in ( select id khoá học from khoá học where tên khoá học like 'statistics%' ) order by ngày tham dự
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
select tác giả , kết quả from chấp thuận as t1 join lượt nộp bài as t2 on t1.id lượt nộp bài = t2.id lượt nộp bài
select t1.tác giả , t2.kết quả from lượt nộp bài as t1 join chấp thuận as t2 on t1.id lượt nộp bài = t2.id lượt nộp bài
select kết quả from chấp thuận where id lượt nộp bài = ( select id lượt nộp bài from lượt nộp bài order by số điểm desc limit 1 )
select t1.id lượt nộp bài from lượt nộp bài as t1 join chấp thuận as t2 on t1.id lượt nộp bài = t2.id lượt nộp bài where t2.kết quả = "chấp thuận" order by t1.số điểm desc limit 1
select tác giả , count ( * ) from lượt nộp bài group by tác giả
select tác giả , count ( * ) from lượt nộp bài group by tác giả
select tác giả from lượt nộp bài group by tác giả having count ( * ) > 1
select tác giả from lượt nộp bài group by tác giả having count ( * ) > 1
select ngày , địa điểm from hội thảo order by địa điểm
select ngày , địa điểm from hội thảo order by địa điểm
select tác giả from lượt nộp bài except select tác giả from lượt nộp bài
select tác giả from lượt nộp bài except select tác giả from lượt nộp bài where id lượt nộp bài in ( select id lượt nộp bài from chấp thuận )
select t1.tên from doanh nghiệp as t1 join đánh giá as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t2.đánh giá xếp hạng > 4,5
select t1.tên from doanh nghiệp as t1 join đánh giá as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t2.đánh giá xếp hạng = 3,5
select id người tiêu dùng from người tiêu dùng where tên = "Michelle"
select tiểu bang from doanh nghiệp where tên = "Whataburger"
select thành phố from doanh nghiệp where tên = "MGM Steakhouse"
select thành phố from doanh nghiệp where đánh giá xếp hạng < 1,5
select thành phố from doanh nghiệp where tên = "Taj Mahal"
select văn bản from đánh giá where đánh giá xếp hạng < 1
select tên from doanh nghiệp where đánh giá xếp hạng > 3,5
select thành phố from doanh nghiệp where tên = "Taj Mahal"
select văn bản from đánh giá where id người tiêu dùng = 1
select t1.tên from doanh nghiệp as t1 join đánh giá as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp join người tiêu dùng as t3 on t2.id người tiêu dùng = t3.id người tiêu dùng where t3.tên = "Niloofar"
select t1.tên from doanh nghiệp as t1 join đánh giá as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp join người tiêu dùng as t3 on t2.id người tiêu dùng = t3.id người tiêu dùng where t2.đánh giá xếp hạng = 5
select văn bản from đánh giá where id người tiêu dùng = ( select id người tiêu dùng from người tiêu dùng where tên = "Michelle" ) and id doanh nghiệp = ( select id doanh nghiệp from doanh nghiệp where tên = "Italian Restaurant" )
select count ( * ) from doanh nghiệp as t1 join đánh giá as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t1.tiểu bang = "Texas" and t1.tên = "Cafe Zinho"
select t1.id doanh nghiệp from doanh nghiệp as t1 join đánh giá as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t2.đánh giá xếp hạng = 5
select tên khu phố lân cận from khu vực lân cận where id doanh nghiệp in ( select id doanh nghiệp from doanh nghiệp where thành phố = "Madison" ) and tên loại hình = "Italian Restaurant"
select t1.tên khu phố lân cận from khu vực lân cận as t1 join doanh nghiệp as t2 on t1.id doanh nghiệp = t2.id where t2.đánh giá xếp hạng < 2,5 and t2.thành phố = "Madison"
select t1.id doanh nghiệp from doanh nghiệp as t1 join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t2.tên loại hình = "nhà hàng" and t1.tiểu bang = "Pennsylvania"
select t1.id doanh nghiệp from doanh nghiệp as t1 join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t2.tên loại hình = "nhà hàng" and t1.tiểu bang = "Pennsylvania"
select t1.văn bản from đánh giá as t1 join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t2.tên loại hình = "Chuốt cho vật nuôi" and t1.id đánh giá in ( select t1.id đánh giá from đánh giá as t1 join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t2.tên loại hình = "Chuốt cho vật nuôi" group by t1.id đánh giá having count ( * ) > 100 )
select tên from doanh nghiệp where thành phố = "Los Angeles" and tên like "Brew Pub"
select tên from doanh nghiệp where thành phố = "Los Angeles" and tên like "Brew Pub"
select tên from doanh nghiệp where thành phố = "Los Angeles" and tên like "Brew Pub"
select t1.id người tiêu dùng from đánh giá as t1 join doanh nghiệp as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t2.tên = "Mesa Grill"
select t1.địa chỉ đầy đủ from doanh nghiệp as t1 join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t2.tên loại hình = "Walmart" and t1.thành phố = "Los Angeles"
select t1.id doanh nghiệp from doanh nghiệp as t1 join đánh giá as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp join người tiêu dùng as t3 on t2.id người tiêu dùng = t3.id người tiêu dùng where t3.tên = "Patrick" and t1.thành phố = "Dallas"
select t1.tên from doanh nghiệp as t1 join đánh giá as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp join người tiêu dùng as t3 on t2.id người tiêu dùng = t3.id người tiêu dùng where t3.tên = "Patrick" and t1.thành phố = "Dallas"
select t1.id doanh nghiệp from doanh nghiệp as t1 join đánh giá as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp join người tiêu dùng as t3 on t2.id người tiêu dùng = t3.id người tiêu dùng where t3.tên = "Patrick" and t1.tên = "Bar"
select t1.id doanh nghiệp from doanh nghiệp as t1 join đánh giá as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp join người tiêu dùng as t3 on t2.id người tiêu dùng = t3.id người tiêu dùng where t2.đánh giá xếp hạng >= 3 and t3.tên = "Patrick"
select t1.id người tiêu dùng from khoản tiền boa as t1 join doanh nghiệp as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t2.tên = "Barrio Café" and t1.năm = 2015
select tên from doanh nghiệp where tiểu bang = "Texas" and đánh giá xếp hạng < 2
select t1.id doanh nghiệp from doanh nghiệp as t1 join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t2.tên loại hình = "restaurant" and t1.city = "Los Angeles"
select t1.tên from doanh nghiệp as t1 join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t2.tên loại hình = "restaurant" and t1.city = "Los Angeles"
select t1.id doanh nghiệp from doanh nghiệp as t1 join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t2.tên loại hình = "nhà hàng" and t1.thành phố = "Los Angeles" and t1.tên = "Seafood"
select văn bản from đánh giá where đánh giá xếp hạng > 4 and id người tiêu dùng = ( select id người tiêu dùng from người tiêu dùng where tên = "Patrick" )
select tên from doanh nghiệp where tên = "Apple Store" and thành phố = "Los Angeles"
select t1.id doanh nghiệp from doanh nghiệp as t1 join đánh giá as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t2.đánh giá xếp hạng > 4,5 and t1.thành phố = "Dallas"
select t1.tên khu phố lân cận from khu vực lân cận as t1 join doanh nghiệp as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t2.tên = "Flat Top Grill"
select văn bản from khoản tiền boa where id doanh nghiệp in ( select id doanh nghiệp from doanh nghiệp where tên = "Vintner Grill" ) and số lượt thích > 9
select văn bản from đánh giá where năm = 2014 and tên = "Kabob Cung"
select t1.tên from người tiêu dùng as t1 join khoản tiền boa as t2 on t1.id người tiêu dùng = t2.id người tiêu dùng join doanh nghiệp as t3 on t2.id doanh nghiệp = t3.id doanh nghiệp where t3.thành phố = "Dallas"
select thành phố from doanh nghiệp where tên = "MGM Steakhouse" and tiểu bang = "Texas"
select t1.id người tiêu dùng from người tiêu dùng as t1 join khoản tiền boa as t2 on t1.id người tiêu dùng = t2.id người tiêu dùng join doanh nghiệp as t3 on t2.id doanh nghiệp = t3.id doanh nghiệp where t3.tên = "Hair Salon"
select văn bản from khoản tiền boa where id doanh nghiệp in ( select id doanh nghiệp from doanh nghiệp where tiểu bang = "TX" ) and id người tiêu dùng in ( select id người tiêu dùng from người tiêu dùng where tên = "Cafe Zinho" )
select t1.id người tiêu dùng from đánh giá as t1 join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t2.tên loại hình = "Restaurant"
select văn bản from khoản tiền boa where id doanh nghiệp in ( select id doanh nghiệp from doanh nghiệp where tên = "Cafe Zinho" and tiểu bang = "Pennsylvania" ) and năm = 2010
select t1.tên from người tiêu dùng as t1 join đánh giá as t2 on t1.id người tiêu dùng = t2.id người tiêu dùng where t2.năm = 2010
select văn bản from đánh giá where năm = 2012
select văn bản from đánh giá where đánh giá xếp hạng = 2,5
select count ( * ) from doanh nghiệp as t1 join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t1.thành phố = "Madison" and t2.tên loại hình = "Escape Room"
select count ( * ) from doanh nghiệp as t1 join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t1.thành phố = "Madison" and t2.tên loại hình = "Escape Game"
select count ( * ) from doanh nghiệp as t1 join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t1.thành phố = "Madison" and t2.tên loại hình = "Escape Game"
select count ( * ) from doanh nghiệp as t1 join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t2.tên loại hình = "Escape Game" and t1.city = "Madison"
select count ( * ) from doanh nghiệp as t1 join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t1.thành phố = "Madison" and t2.tên loại hình = "Escape Game"
select count ( * ) from doanh nghiệp as t1 join đánh giá as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t2.đánh giá xếp hạng > 3,5 and t1.tên = "restaurant"
select sum ( số lượng ) from doanh nghiệp as t1 join lượt đăng ký as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t1.tên = "Mexican" and t1.thành phố = "Los Angeles"
select sum ( t1.số lượng ) from lượt đăng ký as t1 join doanh nghiệp as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp join khu vực lân cận as t3 on t2.id doanh nghiệp = t3.id doanh nghiệp where t2.thành phố = "Los Angeles" and t3.tên khu phố lân cận = "Ma-rốc" and t1.ngày = "Thứ Sáu"
select ngày , sum ( số lượng ) from lượt đăng ký as t1 join doanh nghiệp as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t2.city = "Los Angeles" and t2.tên = "Middle Eastern" group by ngày
select sum ( số lượng ) , tiểu bang from doanh nghiệp as t1 join lượt đăng ký as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t1.tên = "Italian Delis" and t2.ngày = "Chủ nhật" group by tiểu bang
select count ( * ) from đánh giá as t1 join người tiêu dùng as t2 on t1.id người tiêu dùng = t2.id người tiêu dùng where t2.tên = "Niloofar" and t1.năm = 2015
select avg ( t2.đánh giá xếp hạng ) from người tiêu dùng as t1 join đánh giá as t2 on t1.id người tiêu dùng = t2.id người tiêu dùng where t1.tên = "Michelle"
select số lượng from lượt đăng ký where id doanh nghiệp = ( select id doanh nghiệp from doanh nghiệp where tên = "Cafe Zinho" ) and tháng = "Thứ Sáu"
select count ( * ) from doanh nghiệp as t1 join đánh giá as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp join người tiêu dùng as t3 on t2.id người tiêu dùng = t3.id người tiêu dùng where t1.tên = "Sushi Too" and t3.tên = "Pittsburgh"
select count ( * ) from doanh nghiệp where tên loại hình = "nhà hàng" and đánh giá xếp hạng > 4,5 and thành phố = "Pittsburgh"
select count ( * ) from đánh giá as t1 join khoản tiền boa as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t2.năm = 2015
select sum ( số lượt thích ) from khoản tiền boa where id người tiêu dùng = ( select id người tiêu dùng from người tiêu dùng where tên = "Niloofar" )
select sum ( số lượt thích ) from khoản tiền boa where id doanh nghiệp = ( select id doanh nghiệp from doanh nghiệp where tên = "Cafe Zinho" )
select sum ( số lượt thích ) from khoản tiền boa where id người tiêu dùng = ( select id người tiêu dùng from doanh nghiệp where tên = "Cafe Zinho" )
select count ( * ) from đánh giá as t1 join khoản tiền boa as t2 on t1.id đánh giá = t2.id đánh giá join người tiêu dùng as t3 on t2.id người tiêu dùng = t3.id người tiêu dùng where t3.tên = "Michelle" and t2.năm = 2010
select count ( * ) from đánh giá as t1 join khoản tiền boa as t2 on t1.id đánh giá = t2.id đánh giá where t2.năm = 2010 and t1.id người tiêu dùng = ( select id người tiêu dùng from người tiêu dùng where tên = "Michelle" )
select count ( * ) from đánh giá as t1 join khoản tiền boa as t2 on t1.id đánh giá = t2.id đánh giá join người tiêu dùng as t3 on t2.id người tiêu dùng = t3.id người tiêu dùng where t3.tên = "Michelle" and t2.tháng = "April"
select count ( * ) from doanh nghiệp where tiểu bang = "Texas" and tên = "nhà hàng"
select count ( * ) from doanh nghiệp as t1 join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t2.tên loại hình = "bar" and t1.thành phố = "Dallas" and t1.xếp hạng > 3,5
select count ( * ) from doanh nghiệp as t1 join đánh giá as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t1.thành phố = "Dallas" and t2.đánh giá xếp hạng > 3,5
select count ( * ) from doanh nghiệp as t1 join đánh giá as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t1.tên = "Texas de Brazil" and t1.thành phố = "Dallas"
select count ( * ) from đánh giá as t1 join doanh nghiệp as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t2.tên = "Bistro Di Napoli" and t1.năm = 2015
select count ( * ) from doanh nghiệp where thành phố = "Dallas" and tiểu bang = "Texas" and tên = "Hazelwood"
select count ( * ) from doanh nghiệp where tên = "starbucks" and tiểu bang = "texas" and thành phố = "dallas"
select số lượng đánh giá from doanh nghiệp where tên = "Acacia Cafe"
select avg ( số lượng ) , ngày from lượt đăng ký where id doanh nghiệp = ( select id doanh nghiệp from doanh nghiệp where tên = "Barrio Cafe" ) group by ngày
select count ( * ) from doanh nghiệp as t1 join khu vực lân cận as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t2.tên khu phố lân cận = "Stone Meadows" and t1.thành phố = "Madison"
select count ( * ) from đánh giá as t1 join người tiêu dùng as t2 on t1.id người tiêu dùng = t2.id người tiêu dùng where t2.tên = "Adrienne"
select count ( * ) from đánh giá where id người tiêu dùng = ( select id người tiêu dùng from người tiêu dùng where tên = "Michelle" ) and năm = 2014 and tháng = "Mar"
select count ( * ) from đánh giá as t1 join người tiêu dùng as t2 on t1.id người tiêu dùng = t2.id người tiêu dùng where t2.tên = "Michelle" and t1.năm = 2010
select count ( * ) from doanh nghiệp as t1 join đánh giá as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp join người tiêu dùng as t3 on t2.id người tiêu dùng = t3.id người tiêu dùng where t1.thành phố = "San Diego" and t3.tên = "Christine" and t2.năm = 2010
select count ( * ) from doanh nghiệp where tên = "Target" and thành phố = "Los Angeles"
select count ( * ) from đánh giá as t1 join doanh nghiệp as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp join người tiêu dùng as t3 on t1.id người tiêu dùng = t3.id người tiêu dùng where t2.tên = "Alen Restaurant" and t2.thành phố = "Dallas"
select avg ( đánh giá xếp hạng ) from đánh giá where năm = 2014
select count ( * ) from đánh giá as t1 join doanh nghiệp as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t2.tên = "Vintner Grill" and t1.năm = 2010
select count ( * ) from doanh nghiệp as t1 join khu vực lân cận as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t2.tên khu phố lân cận = "Miền Nam Summerlin"
select count ( * ) from người tiêu dùng where tên = "Michelle"
select count ( * ) from doanh nghiệp as t1 join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t2.tên loại hình = "nhà hàng"
select count ( * ) from doanh nghiệp where tên = "Panda Express"
select count ( * ) from khoản tiền boa as t1 join người tiêu dùng as t2 on t1.id người tiêu dùng = t2.id người tiêu dùng where t2.tên = "Michelle"
select sum ( t1.số lượng ) from lượt đăng ký as t1 join doanh nghiệp as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp join khu vực lân cận as t3 on t2.id doanh nghiệp = t3.id doanh nghiệp where t3.tên khu phố lân cận = "Brighton Heights"
select count ( * ) from đánh giá where tháng = "Mar"
select count ( * ) , tháng from khoản tiền boa group by tháng
select count ( * ) from doanh nghiệp as t1 join khu vực lân cận as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t1.đánh giá xếp hạng = 5 and t2.tên khu phố lân cận = "Madison"
select t1.tên from doanh nghiệp as t1 join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t2.tên loại hình = "restaurant" and t1.state = "Texas"
select id doanh nghiệp from lượt đăng ký group by id doanh nghiệp order by sum ( số lượng ) desc limit 1
select tên khu phố lân cận from khu vực lân cận where id doanh nghiệp in ( select id doanh nghiệp from doanh nghiệp where thành phố = "Madison" group by id doanh nghiệp order by count ( * ) desc limit 1 )
select t1.id doanh nghiệp from doanh nghiệp as t1 join đánh giá as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t2.đánh giá xếp hạng >= 3,5 and t1.thành phố = "Dallas"
select t1.id doanh nghiệp from doanh nghiệp as t1 join đánh giá as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t1.tên = "Mexican" and t2.đánh giá xếp hạng >= 3,5 and t1.thành phố = "Dallas"
select t1.id doanh nghiệp from doanh nghiệp as t1 join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp join khu vực lân cận as t3 on t1.id doanh nghiệp = t3.id doanh nghiệp where t2.tên loại hình = "dịch vụ đỗ xe" and t3.tên khu phố lân cận = "Dallas" and t1.tiểu bang = "Texas"
select t1.id doanh nghiệp from doanh nghiệp as t1 join khu vực lân cận as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t2.tên khu phố lân cận = "Meadowood" and t1.tên = "Italian Restaurant" and t1.city = "Madison"
select t1.id doanh nghiệp from doanh nghiệp as t1 join đánh giá as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t1.thành phố = "Los Angeles" and t2.đánh giá xếp hạng > 3 group by t1.id doanh nghiệp having count ( * ) >= 30
select count ( * ) from doanh nghiệp where tên = "Edinburgh" and tên loại hình = "Nhà hàng Ai Cập"
select t1.tên from người tiêu dùng as t1 join đánh giá as t2 on t1.id người tiêu dùng = t2.id người tiêu dùng where t2.đánh giá xếp hạng < 3
select t1.id doanh nghiệp from đánh giá as t1 join doanh nghiệp as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp where t1.tháng = "tháng 4" group by t1.id doanh nghiệp order by count ( * ) desc limit 1
select t1.id doanh nghiệp from doanh nghiệp as t1 join loại hình as t2 on t1.id doanh nghiệp = t2.id doanh nghiệp group by t1.id doanh nghiệp order by count ( * ) desc limit 1