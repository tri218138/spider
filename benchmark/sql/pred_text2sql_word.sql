select t1.id tài_sản , t1.chi_tiết tài_sản from tài_sản as t1 join bộ_phận của tài_sản as t2 on t1.id tài_sản = t2.id tài_sản join nhật_ký lỗi as t3 on t2.id tài_sản = t3.id tài_sản group by t1.id tài_sản having count ( * ) = 2 and count ( * ) < 2
select id hợp_đồng bảo_trì , count ( * ) from tài_sản as t1 join hợp_đồng bảo_trì as t2 on t1.id hợp_đồng bảo_trì = t2.id hợp_đồng bảo_trì group by id hợp_đồng bảo_trì
select count ( * ) , id công_ty from tài_sản group by id công_ty
select t1.tên công_ty , t1.id công_ty from công_ty bên thứ ba as t1 join kỹ_sư bảo_trì as t2 on t1.id công_ty = t2.id công_ty group by t1.tên công_ty having count ( * ) >= 2 union select t1.tên công_ty , t1.id công_ty from công_ty bên thứ ba as t1 join hợp_đồng bảo_trì as t2 on t1.id công_ty = t2.id công_ty group by t1.tên công_ty having count ( * ) >= 2
select tên nhân_viên , id nhân_viên from nhân_viên where id nhân_viên not in ( select t1.id nhân_viên from nhật_ký lỗi as t1 join chuyến thăm của kỹ_sư as t2 on t1.id mục nhập của nhật_ký lỗi = t2.id mục nhập của nhật_ký lỗi )
select t1.id kỹ_sư , t1.tên , t1.họ from kỹ_sư bảo_trì as t1 join chuyến thăm của kỹ_sư as t2 on t1.id kỹ_sư = t2.id kỹ_sư group by t1.id kỹ_sư order by count ( * ) desc limit 1
select t1.tên bộ_phận , t1.id bộ_phận from bộ_phận as t1 join lỗi bộ_phận as t2 on t1.id bộ_phận = t2.id bộ_phận group by t1.tên bộ_phận having count ( * ) > 2
select tên , họ , chi_tiết khác về nhân_viên , mô_tả về kỹ_năng from kỹ_sư
select t1.mô_tả về lỗi , t2.mô_tả về kỹ_năng from lỗi bộ_phận as t1 join kỹ_năng cần để sửa_chữa as t2 on t1.id bộ_phận bị lỗi = t2.id bộ_phận bị lỗi
select tên bộ_phận , count ( * ) from bộ_phận as t1 join bộ_phận của tài_sản as t2 on t1.id bộ_phận = t2.id bộ_phận group by t1.tên bộ_phận
select mô_tả về lỗi , tình_trạng lỗi from nhật_ký lỗi
select t1.id mục nhập của nhật_ký lỗi , count ( * ) from nhật_ký lỗi as t1 join chuyến thăm của kỹ_sư as t2 on t1.id mục nhập của nhật_ký lỗi = t2.id mục nhập của nhật_ký lỗi group by t1.id mục nhập của nhật_ký lỗi order by count ( * ) desc limit 1
select distinct họ from kỹ_sư
select distinct tình_trạng lỗi from nhật_ký lỗi
select tên , họ from kỹ_sư bảo_trì where id kỹ_sư not in ( select t1.id kỹ_sư from chuyến thăm của kỹ_sư as t1 join nhân_viên as t2 on t1.id nhân_viên liên_lạc = t2.id nhân_viên join kỹ_sư bảo_trì as t3 on t2.id kỹ_sư = t3.id kỹ_sư )
select id tài_sản , chi_tiết tài_sản , thương_hiệu tài_sản , mẫu_mã tài_sản from tài_sản
select ngày mua tài_sản from tài_sản order by ngày mua tài_sản limit 1
select t1.id bộ_phận bị lỗi , t1.tên bộ_phận from bộ_phận as t1 join lỗi bộ_phận as t2 on t1.id bộ_phận = t2.id bộ_phận bị lỗi join kỹ_năng cần để sửa_chữa as t3 on t2.id bộ_phận bị lỗi = t3.id bộ_phận bị lỗi group by t1.id bộ_phận bị lỗi order by count ( * ) desc limit 1
select tên bộ_phận from lỗi bộ_phận group by tên bộ_phận order by count ( * ) limit 1
select t1.id kỹ_sư , t1.tên , t1.họ from kỹ_sư bảo_trì as t1 join chuyến thăm của kỹ_sư as t2 on t1.id kỹ_sư = t2.id kỹ_sư group by t1.id kỹ_sư order by count ( * ) limit 1
select t1.tên nhân_viên , t2.tên , t2.họ from nhân_viên as t1 join kỹ_sư bảo_trì as t2 on t1.id nhân_viên = t2.id nhân_viên
select t1.id mục nhập của nhật_ký lỗi , t1.mô_tả về lỗi , t1.thời_gian mục nhập của nhật_ký lỗi from nhật_ký lỗi as t1 join lỗi bộ_phận as t2 on t1.id mục nhập của nhật_ký lỗi = t2.id mục nhập của nhật_ký lỗi order by t2.số_lượng lỗi desc limit 1
select t1.id kỹ_năng , t1.mô_tả về kỹ_năng from kỹ_năng as t1 join kỹ_năng cần để sửa_chữa as t2 on t1.id kỹ_năng = t2.id kỹ_năng group by t1.id kỹ_năng order by count ( * ) desc limit 1
select distinct mẫu_mã tài_sản from tài_sản
select thương_hiệu tài_sản , mẫu_mã tài_sản , chi_tiết tài_sản from tài_sản order by ngày thanh_lý tài_sản
select id bộ_phận , số tiền phải trả from bộ_phận order by số tiền phải trả limit 1
select tên công_ty from hợp_đồng bảo_trì order by ngày bắt_đầu hợp_đồng limit 1
select tên công_ty from hợp_đồng bảo_trì order by ngày kết_thúc hợp_đồng desc limit 1
select giới_tính from nhân_viên group by giới_tính order by count ( * ) desc limit 1
select tên nhân_viên , count ( * ) from nhân_viên as t1 join chuyến thăm của kỹ_sư as t2 on t1.id nhân_viên = t2.id nhân_viên liên_lạc group by tên nhân_viên
select mẫu_mã tài_sản from tài_sản where id tài_sản not in ( select t1.id tài_sản from nhật_ký lỗi as t1 join lỗi bộ_phận as t2 on t1.id mục nhập của nhật_ký lỗi = t2.id mục nhập của nhật_ký lỗi )
select count ( * ) from sách
select tác_giả from sách order by tác_giả
select tiêu_đề from sách order by số_lượng phát_hành
select tiêu_đề from sách where tác_giả not like "Elaine Lee"
select tiêu_đề , số_lượng phát_hành from sách
select ngày xuất_bản from ấn_phẩm order by giá bán desc
select distinct nhà_xuất_bản from ấn_phẩm where giá bán > 5000000
select nhà_xuất_bản from ấn_phẩm order by giá bán desc limit 1
select ngày xuất_bản from ấn_phẩm order by giá bán limit 3
select tiêu_đề , ngày xuất_bản from ấn_phẩm
select t1.tác_giả from sách as t1 join ấn_phẩm as t2 on t1.id sách = t2.id sách where t2.giá bán > 4000000
select t1.tiêu_đề from sách as t1 join ấn_phẩm as t2 on t1.id sách = t2.id sách order by t2.giá bán desc
select nhà_xuất_bản from ấn_phẩm group by nhà_xuất_bản having count ( * ) > 1
select nhà_xuất_bản , count ( * ) from ấn_phẩm group by nhà_xuất_bản
select ngày xuất_bản from ấn_phẩm group by ngày xuất_bản order by count ( * ) desc limit 1
select tác_giả from sách group by tác_giả having count ( * ) > 1
select tiêu_đề from sách where id sách not in ( select id sách from ấn_phẩm )
select nhà_xuất_bản from ấn_phẩm where giá bán > 10000000 intersect select nhà_xuất_bản from ấn_phẩm where giá bán < 5000000
select count ( distinct ngày xuất_bản ) from ấn_phẩm
select count ( distinct ngày xuất_bản ) from ấn_phẩm
select giá bán from ấn_phẩm where nhà_xuất_bản = "Person" or nhà_xuất_bản = "Wiley"
select tên bộ_phận from bộ_phận order by ngày bắt_đầu quản_lý
select tên người phụ_thuộc from người phụ_thuộc where mối quan_hệ = "married" intersect select tên người phụ_thuộc from người phụ_thuộc join làm_việc cho dự_án on người phụ_thuộc.ssn của nhân_viên = ssn của nhân_viên join dự_án on dự_án.mã_số dự_án = người phụ_thuộc.mã_số dự_án
select count ( * ) from người phụ_thuộc where giới_tính = "F"
select tên bộ_phận from địa_điểm của bộ_phận where địa_điểm bộ_phận = "Houston"
select tên , họ from nhân_viên where lương > 30000
select giới_tính , count ( * ) from nhân_viên where lương < 50000 group by giới_tính
select tên , họ , địa_chỉ from nhân_viên order by ngày_sinh
select count ( * ) from giáo_viên
select count ( * ) from giáo_viên
select tên , tuổi from giáo_viên order by tuổi
select tên from giáo_viên order by tuổi
select tuổi , quê_quán from giáo_viên
select tên , tuổi , quê_quán from giáo_viên
select tên from giáo_viên where quê_quán != "Khu đô_thị Little_Lever"
select tên from giáo_viên where quê_hương not in ( select quê_hương from giáo_viên where quê_hương = "Khu đô_thị Little_Lever" )
select tên from giáo_viên where tuổi = 32 or tuổi = 33
select tên from giáo_viên where tuổi = 32 or tuổi = 33
select quê_quán from giáo_viên order by tuổi limit 1
select quê_quán from giáo_viên order by tuổi limit 1
select quê_quán , count ( * ) from giáo_viên group by quê_quán
select quê_quán , count ( * ) from giáo_viên group by quê_quán
select quê_quán from giáo_viên group by quê_quán order by count ( * ) desc limit 1
select quê_quán from giáo_viên group by quê_quán order by count ( * ) desc limit 1
select quê_quán from giáo_viên group by quê_quán having count ( * ) >= 2
select quê_quán from giáo_viên group by quê_quán having count ( * ) >= 2
select t1.tên , t2.khoá học from giáo_viên as t1 join sắp_xếp khoá học as t2 on t1.id giáo_viên = t2.id giáo_viên
select t1.tên , t2.khoá học from giáo_viên as t1 join sắp_xếp khoá học as t2 on t1.id giáo_viên = t2.id giáo_viên
select t1.tên , t2.khoá học from giáo_viên as t1 join sắp_xếp khoá học as t2 on t1.id giáo_viên = t2.id giáo_viên order by t1.tên
select t1.tên , t2.khoá học from giáo_viên as t1 join sắp_xếp khoá học as t2 on t1.id giáo_viên = t2.id giáo_viên order by t1.tên
select t1.tên from giáo_viên as t1 join sắp_xếp khoá học as t2 on t1.id giáo_viên = t2.id giáo_viên join khoá học as t3 on t2.id khoá học = t3.id khoá học where t3.khoá học = "Math"
select tên from giáo_viên where id khoá học in ( select id khoá học from sắp_xếp khoá học where khoá học = "Math" )
select tên , count ( * ) from giáo_viên as t1 join sắp_xếp khoá học as t2 on t1.id giáo_viên = t2.id giáo_viên group by tên
select tên , count ( * ) from giáo_viên as t1 join sắp_xếp khoá học as t2 on t1.id giáo_viên = t2.id giáo_viên group by tên
select tên from giáo_viên group by tên having count ( * ) >= 2
select tên from giáo_viên group by tên having count ( * ) >= 2
select tên from giáo_viên where id giáo_viên not in ( select id giáo_viên from sắp_xếp khoá học )
select tên from giáo_viên where id giáo_viên not in ( select id giáo_viên from sắp_xếp khoá học )
select count ( * ) from thành_viên
select tên from thành_viên order by tên
select tên , quốc_gia from thành_viên
select tên from thành_viên where quốc_gia = "United_States" or quốc_gia = "Canada"
select quốc_gia , count ( * ) from thành_viên group by quốc_gia
select quốc_gia from thành_viên group by quốc_gia order by count ( * ) desc limit 1
select quốc_gia from thành_viên group by quốc_gia having count ( * ) > 2
select tên lãnh_đạo , địa_điểm trường đại_học from trường đại_học
select t1.tên , t2.tên from thành_viên as t1 join trường đại_học as t2 on t1.id đại_học = t2.id đại_học
select t1.tên , t2.địa_điểm trường đại_học from thành_viên as t1 join trường đại_học as t2 on t1.id đại_học = t2.id đại_học order by t1.tên
select t1.tên lãnh_đạo from trường đại_học as t1 join thành_viên as t2 on t1.id đại_học = t2.id đại_học join thành_viên as t3 on t2.id thành_viên = t3.id thành_viên where t3.quốc_gia = "Canada"
select t1.tên , t2.chủ_đề trang_trí from thành_viên as t1 join vòng as t2 on t1.id thành_viên = t2.id thành_viên
select tên from thành_viên where id thành_viên in ( select t1.id thành_viên from vòng as t1 join vòng as t2 on t1.id thành_viên = t2.id thành_viên where t1.xếp_hạng từng vòng > 3 and t2.xếp_hạng từng vòng < 3 )
select tên from thành_viên order by id thành_viên
select tên from thành_viên where id thành_viên not in ( select id thành_viên from vòng )
select count ( * ) from cuộc bầu_cử
select số_lượng phiếu bầu from cuộc bầu_cử order by số_lượng phiếu bầu desc
select ngày , tỷ_lệ phiếu bầu from cuộc bầu_cử
select min ( tỉ_lệ phiếu bầu ) , max ( tỉ_lệ phiếu bầu ) from cuộc bầu_cử
select tên , đảng from đại_diện
select tên from đại_diện where đảng != "Democratic"
select tuổi_thọ from đại_diện where tiểu_bang = "New_York" or tiểu_bang = "Indiana"
select t1.tên , t2.ngày from đại_diện as t1 join cuộc bầu_cử as t2 on t1.id đại_diện = t2.id đại_diện
select tên from đại_diện where số_lượng phiếu bầu > 10000
select tên from cuộc bầu_cử order by số_lượng phiếu bầu desc
select đảng from đại_diện where số_lượng phiếu bầu = ( select min ( số_lượng phiếu bầu ) from cuộc bầu_cử )
select tuổi_thọ from đại_diện order by tỷ_lệ phiếu bầu desc
select avg ( số_lượng phiếu bầu ) from đại_diện where đảng = "Democratic"
select đảng , count ( * ) from đại_diện group by đảng
select đảng from đại_diện group by đảng order by count ( * ) desc limit 1
select đảng from đại_diện group by đảng having count ( * ) >= 3
select distinct tiểu_bang from đại_diện group by tiểu_bang having count ( * ) >= 2
select tên from đại_diện where id đại_diện not in ( select id đại_diện from cuộc bầu_cử )
select đảng from đại_diện where tiểu_bang = "New_York" intersect select đảng from đại_diện where tiểu_bang = "Pennsylvania"
select count ( distinct đảng ) from đại_diện
select count ( * ) from quốc_gia
select count ( * ) from quốc_gia
select tên quốc_gia , thủ_đô from quốc_gia
select tên quốc_gia , thủ_đô from quốc_gia
select ngôn_ngữ bản_địa chính_thức from quốc_gia where tên quốc_gia like "% English %"
select ngôn_ngữ bản_địa chính_thức from quốc_gia where tên quốc_gia like "% English %"
select distinct vị_trí from trận đấu trong mùa giải
select distinct vị_trí from trận đấu trong mùa giải
select cầu_thủ from trận đấu trong mùa giải where trường đại_học = "UCLA"
select cầu_thủ from cầu_thủ where trường đại_học = "UCLA"
select distinct t2.vị_trí from trận đấu trong mùa giải as t1 join cầu_thủ as t2 on t1.cầu_thủ = t2.cầu_thủ join đội as t3 on t3.id đội = t1.đội join quốc_gia as t4 on t4.id quốc_gia = t3.quốc_gia where t4.tên quốc_gia = "UCLA" or_t4.tên quốc_gia = "Duke"
select t1.vị_trí , t1.cầu_thủ from cầu_thủ as t1 join trận đấu trong mùa giải as t2 on t1.id cầu_thủ = t2.cầu_thủ where t2.trường đại_học = "UCLA" or_t2.trường đại_học = "Duke"
select mã_số tuyển_chọn tân_binh , mùa tuyển_chọn from trận đấu trong mùa giải where vị_trí = "Hậu_vệ"
select mã_số tuyển_chọn tân_binh , mùa tuyển_chọn from trận đấu trong mùa giải where vị_trí = "Hậu_vệ"
select count ( distinct đội ) from trận đấu trong mùa giải
select count ( distinct đội ) from trận đấu trong mùa giải
select cầu_thủ , số năm đã chơi from cầu_thủ
select cầu_thủ , số năm đã chơi from cầu_thủ
select tên from đội
select tên from đội
select t1.mùa giải , t2.cầu_thủ , t3.tên quốc_gia from trận đấu trong mùa giải as t1 join cầu_thủ as t2 on t1.cầu_thủ = t2.cầu_thủ join quốc_gia as t3 on t1.quốc_gia = t3.id quốc_gia
select t1.cầu_thủ , t2.mùa giải , t3.tên quốc_gia from cầu_thủ as t1 join trận đấu trong mùa giải as t2 on t1.id cầu_thủ = t2.cầu_thủ join quốc_gia as t3 on t2.quốc_gia = t3.id quốc_gia
select t1.cầu_thủ from cầu_thủ as t1 join trận đấu trong mùa giải as t2 on t1.id cầu_thủ = t2.cầu_thủ where t2.quốc_gia = ( select id quốc_gia from quốc_gia where tên quốc_gia = "Indonesia" )
select t1.cầu_thủ from cầu_thủ as t1 join quốc_gia as t2 on t1.quốc_gia = t2.id quốc_gia where t2.tên quốc_gia = "Indonesia"
select distinct t1.vị_trí from trận đấu trong mùa giải as t1 join đội as t2 on t1.đội = t2.id đội join quốc_gia as t3 on t2.quốc_gia = t3.id quốc_gia where t3.thủ_đô = "Dublin"
select distinct t1.vị_trí from trận đấu trong mùa giải as t1 join đội as t2 on t1.đội = t2.id đội join quốc_gia as t3 on t2.quốc_gia = t3.id quốc_gia where t3.thủ_đô = "Dublin"
select t1.ngôn_ngữ bản_địa chính_thức from quốc_gia as t1 join trận đấu trong mùa giải as t2 on t1.id quốc_gia = t2.quốc_gia join cầu_thủ as t3 on t2.cầu_thủ = t3.cầu_thủ where t3.đại_học = "Maryland" or t3.đại_học = "Duke"
select t1.ngôn_ngữ bản_địa chính_thức from quốc_gia as t1 join trận đấu trong mùa giải as t2 on t1.id quốc_gia = t2.quốc_gia join cầu_thủ as t3 on t2.cầu_thủ = t3.cầu_thủ where t3.trường đại_học = "Maryland" or t3.trường đại_học = "Duke"
select count ( distinct t1.ngôn_ngữ bản_địa chính_thức ) from quốc_gia as t1 join trận đấu trong mùa giải as t2 on t1.id quốc_gia = t2.quốc_gia join cầu_thủ as t3 on t2.cầu_thủ = t3.id cầu_thủ where t3.vị_trí = "mid"
select count ( * ) from quốc_gia as t1 join trận đấu trong mùa giải as t2 on t1.id quốc_gia = t2.quốc_gia join cầu_thủ as t3 on t2.cầu_thủ = t3.cầu_thủ where t3.vị_trí = "Hậu_vệ"
select t1.mùa giải , t2.cầu_thủ , t3.tên đội from trận đấu trong mùa giải as t1 join cầu_thủ as t2 on t1.cầu_thủ = t2.cầu_thủ join đội as t3 on t1.đội = t3.id đội
select tên , mùa giải , tên đội from cầu_thủ as t1 join trận đấu trong mùa giải as t2 on t1.id cầu_thủ = t2.cầu_thủ
select vị_trí from trận đấu trong mùa giải where đội = ( select id đội from đội where tên = "Ryley_Goldner" )
select vị_trí from trận đấu trong mùa giải where đội = ( select id đội from đội where tên = "Ryley_Goldner" )
select count ( distinct trường đại_học ) from trận đấu trong mùa giải as t1 join đội as t2 on t1.đội = t2.id đội where t2.tên = "Columbus_Crew"
select count ( distinct t1.trường đại_học ) from trận đấu trong mùa giải as t1 join cầu_thủ as t2 on t1.cầu_thủ = t2.cầu_thủ join đội as t3 on t3.id đội = t1.đội where t3.tên = "Columbus_Crew"
select t1.cầu_thủ , t1.số năm đã chơi from cầu_thủ as t1 join đội as t2 on t1.đội = t2.id đội where t2.tên = "Columbus_Crew"
select t1.cầu_thủ , t1.số năm đã chơi from cầu_thủ as t1 join đội as t2 on t1.đội = t2.id đội where t2.tên = "Columbus_Crew"
select vị_trí , count ( * ) from trận đấu trong mùa giải group by vị_trí
select vị_trí , count ( * ) from trận đấu trong mùa giải group by vị_trí
select tên quốc_gia , count ( * ) from quốc_gia as t1 join trận đấu trong mùa giải as t2 on t1.id quốc_gia = t2.quốc_gia group by t1.id quốc_gia
select count ( * ) , t1.tên quốc_gia from quốc_gia as t1 join cầu_thủ as t2 on t1.id quốc_gia = t2.quốc_gia group by t1.tên quốc_gia
select cầu_thủ from trận đấu trong mùa giải order by trường đại_học
select t1.cầu_thủ from cầu_thủ as t1 join trận đấu trong mùa giải as t2 on t1.id cầu_thủ = t2.cầu_thủ order by t2.trường đại_học
select vị_trí from trận đấu trong mùa giải group by vị_trí order by count ( * ) desc limit 1
select vị_trí from trận đấu trong mùa giải group by vị_trí order by count ( * ) desc limit 1
select t1.trường đại_học from cầu_thủ as t1 join trận đấu trong mùa giải as t2 on t1.id cầu_thủ = t2.cầu_thủ group by t1.trường đại_học order by count ( * ) desc limit 3
select trường đại_học from trận đấu trong mùa giải group by trường đại_học order by count ( * ) desc limit 3
select trường đại_học from trận đấu trong mùa giải group by trường đại_học having count ( * ) >= 2
select t1.trường đại_học from cầu_thủ as t1 join trận đấu trong mùa giải as t2 on t1.id cầu_thủ = t2.cầu_thủ group by t1.trường đại_học having count ( * ) >= 2
select trường đại_học from cầu_thủ group by trường đại_học having count ( * ) >= 2 order by trường đại_học desc
select trường đại_học from cầu_thủ group by trường đại_học having count ( * ) >= 2 order by trường đại_học desc
select tên from đội where id đội not in ( select đội from trận đấu trong mùa giải )
select tên from đội where id đội not in ( select đội from trận đấu trong mùa giải )
select t1.tên quốc_gia from quốc_gia as t1 join trận đấu trong mùa giải as t2 on t1.id quốc_gia = t2.quốc_gia where t2.vị_trí = "Forward" intersect select t1.tên quốc_gia from quốc_gia as t1 join trận đấu trong mùa giải as t2 on t1.id quốc_gia = t2.quốc_gia where t2.vị_trí = "Back"
select t1.tên quốc_gia from quốc_gia as t1 join trận đấu trong mùa giải as t2 on t1.id quốc_gia = t2.quốc_gia where t2.vị_trí = "Forward" intersect select t1.tên quốc_gia from quốc_gia as t1 join trận đấu trong mùa giải as t2 on t1.id quốc_gia = t2.quốc_gia where t2.vị_trí = "Defender"
select t1.trường đại_học from cầu_thủ as t1 join trận đấu trong mùa giải as t2 on t1.id cầu_thủ = t2.cầu_thủ where t2.vị_trí = "mid" intersect select t1.trường đại_học from cầu_thủ as t1 join trận đấu trong mùa giải as t2 on t1.id cầu_thủ = t2.cầu_thủ where t2.vị_trí = "back"
select t1.trường đại_học from cầu_thủ as t1 join trận đấu trong mùa giải as t2 on t1.id cầu_thủ = t2.cầu_thủ where t2.vị_trí = "mid" intersect select t1.trường đại_học from cầu_thủ as t1 join trận đấu trong mùa giải as t2 on t1.id cầu_thủ = t2.cầu_thủ where t2.vị_trí = "back"
select count ( * ) from tội_phạm
select ngày from tội_phạm order by số người bị giết desc
select số người bị_thương from tội_phạm order by số người bị_thương
select avg ( số người bị_thương ) from tội_phạm
select địa_điểm from tội_phạm group by địa_điểm order by sum ( số người bị giết ) desc limit 1
select tên from cá_nhân order by chiều cao
select tên from cá_nhân as t1 join tội_phạm as t2 on t1.id cá_nhân = t2.id cá_nhân
select tên from cá_nhân except select t1.tên from cá_nhân as t1 join tội_phạm as t2 on t1.id cá_nhân = t2.id cá_nhân where t2.quốc_gia = "China"
select tên from cá_nhân order by cân nặng desc limit 1
select sum ( số người bị giết ) from tội_phạm as t1 join cá_nhân as t2 on t1.id cá_nhân = t2.id cá_nhân where t2.chiều cao > 1,84
select tên from cá_nhân as t1 join tội_phạm as t2 on t1.id cá_nhân = t2.id cá_nhân where t2.quốc_gia = "China" or t2.quốc_gia = "Japan"
select tên , chiều cao from cá_nhân as t1 join tội_phạm as t2 on t1.id cá_nhân = t2.id cá_nhân order by t2.số người bị_thương desc
select quốc_gia , count ( * ) from tội_phạm group by quốc_gia
select quốc_gia from tội_phạm group by quốc_gia order by count ( * ) desc limit 1
select quốc_gia from tội_phạm group by quốc_gia having count ( * ) >= 2
select tên from cá_nhân as t1 join tội_phạm as t2 on t1.id cá_nhân = t2.id cá_nhân order by năm desc
select tên from cá_nhân where id cá_nhân not in ( select id cá_nhân from tội_phạm )
select quốc_gia from tội_phạm where số người bị_thương > 50 intersect select quốc_gia from tội_phạm where số người bị_thương < 20
select count ( distinct địa_điểm ) from tội_phạm
select ngày from tội_phạm order by chiều cao desc limit 1
select năm from tội_phạm order by ngày desc limit 1
select chính_quyền địa_phương , dịch_vụ from nhà_ga
select số_hiệu tàu , tên from tàu_hoả order by thời_gian
select t1.thời_gian , t1.số_hiệu tàu from tàu_hoả as t1 join lộ_trình as t2 on t1.id = t2.id tàu where t1.điểm đến = "Chennai" order by t1.thời_gian
select count ( * ) from tàu_hoả where tên like "% Express %"
select số_hiệu tàu , thời_gian from tàu_hoả where điểm khởi_hành = "Chennai" and điểm đến = "Guruvayur"
select điểm khởi_hành , count ( * ) from tàu_hoả group by điểm khởi_hành
select t1.tên from tàu_hoả as t1 join lộ_trình as t2 on t1.id = t2.id tàu hoả join nhà_ga as t3 on t2.id nhà_ga = t3.id group by t1.tên order by count ( * ) desc limit 1
select count ( * ) , t1.tên mạng_lưới , t1.dịch_vụ from nhà_ga as t1 join lộ_trình as t2 on t1.id = t2.id nhà_ga group by t1.tên mạng_lưới
select avg ( nhiệt_độ cao ) , ngày trong tuần from thời_tiết hàng tuần group by ngày trong tuần
select t1.nhiệt_độ thấp , t1.lượng mưa from thời_tiết hàng tuần as t1 join nhà_ga as t2 on t1.id nhà_ga = t2.id where t2.tên mạng_lưới = "Amersham"
select t1.tên , t1.thời_gian from tàu_hoả as t1 join lộ_trình as t2 on t1.id = t2.id tàu join nhà_ga as t3 on t2.id nhà_ga = t3.id where t3.chính_quyền địa_phương = "Chiltern"
select count ( distinct dịch_vụ ) from nhà_ga
select t1.id , t1.chính_quyền địa_phương from nhà_ga as t1 join thời_tiết hàng tuần as t2 on t1.id = t2.id nhà_ga group by t1.id order by avg ( t2.nhiệt_độ cao ) desc limit 1
select t1.id , t1.chính_quyền địa_phương from nhà_ga as t1 join thời_tiết hàng tuần as t2 on t1.id = t2.id nhà_ga where t2.lượng mưa > 50
select min ( nhiệt_độ thấp ) , max ( tốc_độ gió mph ) from thời_tiết hàng tuần
select điểm khởi_hành from tàu_hoả group by điểm khởi_hành having count ( * ) > 1
select count ( * ) from nhà_thờ where ngày mở_cửa < 1850
select tên , ngày mở_cửa , được tổ_chức bởi from nhà_thờ
select tên from nhà_thờ order by ngày mở_cửa desc
select năm mở_cửa from nhà_thờ group by năm mở_cửa having count ( * ) >= 2
select tên , được tổ_chức bởi from nhà_thờ where ngày mở_cửa between 1830 and 1840
select năm mở_cửa , count ( * ) from nhà_thờ
select tên , ngày mở_cửa from nhà_thờ order by ngày mở_cửa desc limit 3
select count ( * ) from cá_nhân where là nam hay nữ = "nữ" and tuổi > 30
select quốc_gia from cá_nhân where tuổi > 30 intersect select quốc_gia from cá_nhân where tuổi < 25
select min ( tuổi ) , max ( tuổi ) , avg ( tuổi ) from cá_nhân
select tên , quốc_gia from cá_nhân where tuổi < ( select avg ( tuổi ) from cá_nhân )
select t1.tên , t2.tên from cá_nhân as t1 join cá_nhân as t2 on t1.id cá_nhân = t3.id nam join cá_nhân as t2 on t2.id cá_nhân = t3.id nữ join lễ cưới as t3 on t3.id nhà_thờ = t1.id nhà_thờ where t3.năm > 2014
select tên , tuổi from cá_nhân where là nam hay nữ = "nam" and id cá_nhân not in ( select id nam from lễ cưới )
select tên from nhà_thờ except select t1.tên from nhà_thờ as t1 join lễ cưới as t2 on t1.id nhà_thờ = t2.id nhà_thờ where t2.năm = 2015
select t1.tên from nhà_thờ as t1 join lễ cưới as t2 on t1.id nhà_thờ = t2.id nhà_thờ group by t1.tên having count ( * ) >= 2
select t1.tên from cá_nhân as t1 join lễ cưới as t2 on t1.id cá_nhân = t2.id nữ where t1.quốc_gia = "Canada" and t2.năm = 2016
select count ( * ) from lễ cưới where năm = 2016
select t1.tên from nhà_thờ as t1 join lễ cưới as t2 on t1.id nhà_thờ = t2.id nhà_thờ join cá_nhân as t3 on t2.id nam = t3.id cá_nhân where t3.tuổi > 30
select quốc_gia , count ( * ) from cá_nhân group by quốc_gia
select count ( * ) from lễ cưới where năm = 2016
select count ( * ) from giảng_viên
select count ( * ) from giảng_viên
select ngạch from giảng_viên
select ngạch from giảng_viên
select toà nhà from giảng_viên where toà nhà like "% office %"
select toà nhà from giảng_viên where toà nhà like "% office %"
select tên , họ , ngạch from giảng_viên
select tên , ngạch from giảng_viên
select tên , số điện_thoại from giảng_viên where giới_tính = "F"
select tên , họ , số điện_thoại from giảng_viên where giới_tính = "F"
select id giảng_viên from giảng_viên where giới_tính = "M"
select id giảng_viên from giảng_viên where giới_tính = "M"
select count ( * ) from giảng_viên where giới_tính = "F" and ngạch = "Giáo_sư"
select count ( * ) from giảng_viên where giới_tính = "F" and ngạch = "Giáo_sư"
select số điện_thoại , số phòng , toà nhà from giảng_viên where họ = "Prince" and tên = "Jerry"
select số phòng , toà nhà from giảng_viên where tên = "Prince Jerry"
select count ( * ) from giảng_viên where toà nhà = "NEB"
select count ( * ) from giảng_viên where toà nhà = "NEB"
select tên , họ from giảng_viên
select t1.tên , t1.họ from giảng_viên as t1 join giảng_viên tham_gia vào as t2 on t1.id giảng_viên = t2.id giảng_viên join hoạt_động as t3 on t2.id hoạt_động = t3.id hoạt_động where t3.tên hoạt_động = "Dạy"
select toà nhà , count ( * ) from giảng_viên group by toà nhà
select toà nhà , count ( * ) from giảng_viên group by toà nhà
select toà nhà from giảng_viên group by toà nhà order by count ( * ) desc limit 1
select toà nhà from giảng_viên group by toà nhà order by count ( * ) desc limit 1
select toà nhà from giảng_viên group by toà nhà having count ( * ) >= 10
select toà nhà from giảng_viên group by toà nhà having count ( * ) >= 10
select ngạch , count ( * ) from giảng_viên group by ngạch
select ngạch , count ( * ) from giảng_viên group by ngạch
select ngạch , count ( * ) from giảng_viên group by giới_tính , ngạch
select ngạch , count ( * ) from giảng_viên where giới_tính = "M" group by ngạch union select ngạch , count ( * ) from giảng_viên where giới_tính = "F" group by ngạch
select ngạch from giảng_viên group by ngạch order by count ( * ) limit 1
select ngạch from giảng_viên group by ngạch order by count ( * ) limit 1
select giới_tính , count ( * ) from giảng_viên where ngạch = "AsstProf" group by giới_tính
select count ( * ) , giới_tính from giảng_viên where ngạch = "AsstProf" group by giới_tính
select t1.tên , t1.họ from giảng_viên as t1 join sinh_viên as t2 on t1.id giảng_viên = t2.cố_vấn where t2.họ = "Smith" and t2.tên = "Linda"
select tên , họ from sinh_viên where id sinh_viên = ( select cố_vấn from sinh_viên where tên = "Linda" and họ = "Smith" )
select id sinh_viên from sinh_viên where cố_vấn in ( select id giảng_viên from giảng_viên where giới_tính = "Giáo_sư" )
select id sinh_viên from sinh_viên where cố_vấn in ( select id giảng_viên from giảng_viên where giới_tính = "Giáo_sư" )
select t1.tên , t1.họ from sinh_viên as t1 join giảng_viên as t2 on t1.cố_vấn = t2.id giảng_viên where t2.tên = "Micheal" and t2.họ = "Goodrich"
select t1.tên , t1.họ from sinh_viên as t1 join hoạt_động as t2 on t1.id sinh_viên = t2.id sinh_viên join giảng_viên as t3 on t2.id hoạt_động = t3.id hoạt_động where t3.họ = "Goodrich" and t3.tên = "Micheal"
select count ( * ) , t1.id giảng_viên from giảng_viên as t1 join sinh_viên as t2 on t1.id giảng_viên = t2.cố_vấn group by t1.id giảng_viên
select t1.id giảng_viên , count ( * ) from giảng_viên as t1 join tham_gia vào as t2 on t1.id giảng_viên = t2.id giảng_viên group by t1.id giảng_viên
select t1.ngạch , count ( * ) from giảng_viên as t1 join sinh_viên as t2 on t1.id giảng_viên = t2.cố_vấn group by t1.ngạch
select t1.ngạch , count ( * ) from giảng_viên as t1 join sinh_viên as t2 on t1.id giảng_viên = t2.cố_vấn group by t1.ngạch
select t1.họ , t1.tên from giảng_viên as t1 join sinh_viên as t2 on t1.id giảng_viên = t2.cố_vấn group by t1.họ , t1.tên order by count ( * ) desc limit 1
select t1.họ , t1.tên from giảng_viên as t1 join sinh_viên as t2 on t1.id giảng_viên = t2.cố_vấn group by t1.họ , t1.tên order by count ( * ) desc limit 1
select t1.id giảng_viên from giảng_viên as t1 join sinh_viên as t2 on t1.id giảng_viên = t2.cố_vấn group by t1.id giảng_viên having count ( * ) >= 2
select t1.id giảng_viên from giảng_viên as t1 join sinh_viên as t2 on t1.id giảng_viên = t2.cố_vấn group by t1.id giảng_viên having count ( * ) > = 2
select id giảng_viên from giảng_viên except select cố_vấn from sinh_viên
select id giảng_viên from giảng_viên except select cố_vấn from sinh_viên
select tên hoạt_động from hoạt_động
select tên hoạt_động from hoạt_động
select count ( * ) from hoạt_động
select count ( * ) from hoạt_động
select count ( * ) from giảng_viên tham_gia vào
select count ( * ) from giảng_viên tham_gia vào
select id giảng_viên from giảng_viên except select id giảng_viên from giảng_viên tham_gia vào
select id giảng_viên from giảng_viên except select t1.id giảng_viên from giảng_viên as t1 join giảng_viên tham_gia vào as t2 on t1.id giảng_viên = t2.id giảng_viên join hoạt_động as t3 on t2.id hoạt_động = t3.id hoạt_động
select t1.id giảng_viên from giảng_viên as t1 join giảng_viên tham_gia vào as t2 on t1.id giảng_viên = t2.id giảng_viên join tham_gia vào as t3 on t2.id hoạt_động = t3.id hoạt_động join sinh_viên as t4 on t3.id sinh_viên = t4.id sinh_viên
select id giảng_viên from giảng_viên tham_gia vào except select cố_vấn from sinh_viên
select count ( * ) from giảng_viên as t1 join giảng_viên tham_gia vào as t2 on t1.id giảng_viên = t2.id giảng_viên join hoạt_động as t3 on t2.id hoạt_động = t3.id hoạt_động where t1.họ = "Giuliano" and t1.tên = "Mark"
select count ( * ) from giảng_viên as t1 join giảng_viên tham_gia vào as t2 on t1.id giảng_viên = t2.id giảng_viên join hoạt_động as t3 on t2.id hoạt_động = t3.id hoạt_động where t1.tên = "Mark" and t1.họ = "Giuliano"
select t2.tên hoạt_động from giảng_viên as t1 join hoạt_động as t2 on t1.id giảng_viên = t2.id giảng_viên join giảng_viên tham_gia vào as t3 on t2.id hoạt_động = t3.id hoạt_động where t1.tên = "Mark" and t1.họ = "Giuliano"
select t1.tên hoạt_động from hoạt_động as t1 join tham_gia vào as t2 on t1.id hoạt_động = t2.id hoạt_động join giảng_viên as t3 on t2.id giảng_viên = t3.id giảng_viên where t3.họ = "Giuliano" and t3.tên = "Mark"
select t1.tên , t1.họ , count ( * ) from giảng_viên as t1 join giảng_viên tham_gia vào as t2 on t1.id giảng_viên = t2.id giảng_viên group by t1.tên , t1.họ
select t1.họ , count ( * ) from giảng_viên as t1 join giảng_viên tham_gia vào as t2 on t1.id giảng_viên = t2.id giảng_viên group by t1.họ
select tên hoạt_động , count ( * ) from hoạt_động as t1 join giảng_viên tham_gia vào as t2 on t1.id hoạt_động = t2.id hoạt_động group by tên hoạt_động
select tên hoạt_động , count ( * ) from hoạt_động as t1 join giảng_viên tham_gia vào as t2 on t1.id hoạt_động = t2.id hoạt_động group by tên hoạt_động
select t1.tên , t1.họ from giảng_viên as t1 join giảng_viên tham_gia vào as t2 on t1.id giảng_viên = t2.id giảng_viên group by t1.tên , t1.họ order by count ( * ) desc limit 1
select t1.họ , t1.tên from giảng_viên as t1 join giảng_viên tham_gia vào as t2 on t1.id giảng_viên = t2.id giảng_viên group by t1.họ , t1.tên order by count ( * ) desc limit 1
select t1.tên hoạt_động from hoạt_động as t1 join giảng_viên tham_gia vào as t2 on t1.id hoạt_động = t2.id hoạt_động group by t1.tên hoạt_động order by count ( * ) desc limit 1
select t1.tên hoạt_động from hoạt_động as t1 join giảng_viên tham_gia vào as t2 on t1.id hoạt_động = t2.id hoạt_động group by t1.tên hoạt_động order by count ( * ) desc limit 1
select id sinh_viên from sinh_viên except select id sinh_viên from tham_gia vào
select id sinh_viên from sinh_viên except select id sinh_viên from tham_gia vào
select id sinh_viên from sinh_viên where tuổi < 20 intersect select id sinh_viên from tham_gia vào
select t1.id sinh_viên from sinh_viên as t1 join tham_gia vào as t2 on t1.id sinh_viên = t2.id sinh_viên where t1.tuổi < 20 and t2.id hoạt_động in ( select t3.id hoạt_động from hoạt_động as t3 join tham_gia vào as t4 on t3.id hoạt_động = t4.id hoạt_động )
select t1.họ , t1.tên from sinh_viên as t1 join tham_gia vào as t2 on t1.id sinh_viên = t2.id sinh_viên group by t1.id sinh_viên order by count ( * ) desc limit 1
select t1.tên , t1.họ from sinh_viên as t1 join tham_gia vào as t2 on t1.id sinh_viên = t2.id sinh_viên group by t1.tên , t1.họ order by count ( * ) desc limit 1
select t1.tên hoạt_động from hoạt_động as t1 join tham_gia vào as t2 on t1.id hoạt_động = t2.id hoạt_động group by t1.tên hoạt_động order by count ( * ) desc limit 1
select t1.tên hoạt_động from hoạt_động as t1 join tham_gia vào as t2 on t1.id hoạt_động = t2.id hoạt_động group by t1.tên hoạt_động order by count ( * ) desc limit 1
select t1.tên from giảng_viên as t1 join giảng_viên tham_gia vào as t2 on t1.id giảng_viên = t2.id giảng_viên join hoạt_động as t3 on t2.id hoạt_động = t3.id hoạt_động where t3.tên hoạt_động = "Swim" or t3.tên hoạt_động = "Kayaking"
select t1.tên from giảng_viên as t1 join giảng_viên tham_gia vào as t2 on t1.id giảng_viên = t2.id giảng_viên join hoạt_động as t3 on t2.id hoạt_động = t3.id hoạt_động where t3.tên hoạt_động = "Swim" or t3.tên hoạt_động = "Kayaking"
select tên from giảng_viên where id giảng_viên not in ( select t1.id giảng_viên from giảng_viên tham_gia vào as t1 join hoạt_động as t2 on t1.id hoạt_động = t2.id hoạt_động where t2.tên hoạt_động = "Swim" union select t1.id giảng_viên from giảng_viên tham_gia vào as t1 join hoạt_động as t2 on t1.id hoạt_động = t2.id hoạt_động where t2.tên hoạt_động = "Kayaking" )
select tên from giảng_viên where id giảng_viên not in ( select t1.id giảng_viên from giảng_viên tham_gia vào as t1 join hoạt_động as t2 on t1.id hoạt_động = t2.id hoạt_động where t2.tên hoạt_động = "Swim" union select t1.id giảng_viên from giảng_viên tham_gia vào as t1 join hoạt_động as t2 on t1.id hoạt_động = t2.id hoạt_động where t2.tên hoạt_động = "Kayaking" )
select t1.tên from giảng_viên as t1 join giảng_viên tham_gia vào as t2 on t1.id giảng_viên = t2.id giảng_viên join hoạt_động as t3 on t2.id hoạt_động = t3.id hoạt_động where t3.tên hoạt_động = "Swimming" intersect select t1.tên from giảng_viên as t1 join giảng_viên tham_gia vào as t2 on t1.id giảng_viên = t2.id giảng_viên join hoạt_động as t3 on t2.id hoạt_động = t3.id hoạt_động where t3.tên hoạt_động = "Kayaking"
select t1.tên from giảng_viên as t1 join giảng_viên tham_gia vào as t2 on t1.id giảng_viên = t2.id giảng_viên join hoạt_động as t3 on t2.id hoạt_động = t3.id hoạt_động where t3.tên hoạt_động = "Swimming" intersect select t1.tên from giảng_viên as t1 join giảng_viên tham_gia vào as t2 on t1.id giảng_viên = t2.id giảng_viên join hoạt_động as t3 on t2.id hoạt_động = t3.id hoạt_động where t3.tên hoạt_động = "Kayaking"
select t1.id sinh_viên from tham_gia vào as t1 join hoạt_động as t2 on t1.id hoạt_động = t2.id hoạt_động where t2.tên hoạt_động = "Swim" intersect select t1.id sinh_viên from tham_gia vào as t1 join hoạt_động as t2 on t1.id hoạt_động = t2.id hoạt_động where t2.tên hoạt_động = "Kayaking"
select t1.id sinh_viên from tham_gia vào as t1 join hoạt_động as t2 on t1.id hoạt_động = t2.id hoạt_động where t2.tên hoạt_động = "Swim" intersect select t1.id sinh_viên from tham_gia vào as t1 join hoạt_động as t2 on t1.id hoạt_động = t2.id hoạt_động where t2.tên hoạt_động = "Kayaking"
select count ( * ) from người luyện thể_hình
select tổng from người luyện thể_hình order by tổng desc
select cử giật , cử đẩy from người luyện thể_hình order by cử giật
select avg ( cử giật ) from người luyện thể_hình
select max ( cử đẩy ) from người luyện thể_hình
select ngày_sinh from cá_nhân order by chiều cao
select tên from người luyện thể_hình
select tên from người luyện thể_hình where tổng > 300
select tên from cá_nhân where cân nặng = ( select max ( cân nặng ) from cá_nhân )
select t1.ngày_sinh , t1.nơi sinh from cá_nhân as t1 join người luyện thể_hình as t2 on t1.id cá_nhân = t2.id cá_nhân order by t2.tổng desc limit 1
select t1.chiều cao from cá_nhân as t1 join người luyện thể_hình as t2 on t1.id cá_nhân = t2.id cá_nhân where t2.tổng < 315
select avg ( tổng ) from người luyện thể_hình where chiều cao > 200
select tên from người luyện thể_hình order by tổng desc
select nơi sinh , count ( * ) from cá_nhân group by nơi sinh
select nơi sinh from cá_nhân group by nơi sinh order by count ( * ) desc limit 1
select nơi sinh from cá_nhân group by nơi sinh having count ( * ) >= 2
select chiều cao , cân nặng from cá_nhân order by chiều cao desc
select * from người luyện thể_hình
select tên , nơi sinh from cá_nhân except select t1.tên , t1.nơi sinh from cá_nhân as t1 join người luyện thể_hình as t2 on t1.id cá_nhân = t2.id cá_nhân
select count ( distinct nơi sinh ) from cá_nhân
select count ( * ) from cá_nhân where id cá_nhân not in ( select id cá_nhân from người luyện thể_hình )
select tên , cân nặng from cá_nhân as t1 join người luyện thể_hình as t2 on t1.id cá_nhân = t2.id cá_nhân where t2.cử giật > 140 or t1.chiều cao > 200
select tổng from người luyện thể_hình where ngày_sinh like "1"
select min ( cử giật ) from người luyện thể_hình
select count ( * ) from ứng_cử_viên
select count ( * ) from ứng_cử_viên
select nguồn thăm_dò ý_kiến from ứng_cử_viên group by nguồn thăm_dò ý_kiến order by count ( * ) desc limit 1
select nguồn thăm_dò ý_kiến from ứng_cử_viên group by nguồn thăm_dò ý_kiến order by count ( * ) desc limit 1
select tỷ_lệ ủng_hộ from ứng_cử_viên order by tỷ_lệ ủng_hộ desc limit 3
select tỷ_lệ ủng_hộ from ứng_cử_viên order by tỷ_lệ ủng_hộ desc limit 3
select id ứng_cử_viên from ứng_cử_viên order by tỷ_lệ phản_đối limit 1
select id ứng_cử_viên from ứng_cử_viên order by tỷ_lệ phản_đối asc limit 1
select tỷ_lệ ủng_hộ , tỷ_lệ xem_xét , tỷ_lệ phản_đối from ứng_cử_viên order by tỷ_lệ không chắc_chắn desc
select tỷ_lệ ủng_hộ , tỷ_lệ xem_xét , tỷ_lệ phản_đối from ứng_cử_viên order by tỷ_lệ không chắc_chắn desc
select nguồn thăm_dò ý_kiến from ứng_cử_viên order by tỷ_lệ phản_đối desc limit 1
select nguồn thăm_dò ý_kiến from ứng_cử_viên order by tỷ_lệ phản_đối desc limit 1
select tên from cá_nhân order by ngày_sinh
select tên , ngày_sinh from cá_nhân order by ngày_sinh
select avg ( chiều cao ) , avg ( cân nặng ) from cá_nhân where giới_tính = "M"
select avg ( chiều cao ) , avg ( cân nặng ) from cá_nhân where giới_tính = "Male"
select tên from cá_nhân where chiều cao > 200 or chiều cao < 190
select tên from cá_nhân where chiều cao > 200 or chiều cao < 190
select avg ( cân nặng ) , min ( cân nặng ) , giới_tính from cá_nhân group by giới_tính
select avg ( trọng_lượng ) , min ( trọng_lượng ) from cá_nhân group by giới_tính
select tên , giới_tính from ứng_cử_viên order by tỷ_lệ ủng_hộ desc limit 1
select tên , giới_tính from ứng_cử_viên order by tỷ_lệ ủng_hộ desc limit 1
select tên , giới_tính , min ( tỷ_lệ phản_đối ) from ứng_cử_viên group by giới_tính
select t1.tên , t1.giới_tính from cá_nhân as t1 join ứng_cử_viên as t2 on t1.id cá_nhân = t2.id cá_nhân order by t2.tỷ_lệ phản_đối asc limit 1
select giới_tính from cá_nhân group by giới_tính order by avg ( tỷ_lệ không chắc_chắn ) desc limit 1
select t1.giới_tính from cá_nhân as t1 join ứng_cử_viên as t2 on t1.id cá_nhân = t2.id cá_nhân group by t1.giới_tính order by avg ( t2.tỷ_lệ không chắc_chắn ) desc limit 1
select tên from cá_nhân where id cá_nhân not in ( select id cá_nhân from ứng_cử_viên )
select tên from cá_nhân where id cá_nhân not in ( select id cá_nhân from ứng_cử_viên )
select tên from ứng_cử_viên where tỷ_lệ ủng_hộ < tỷ_lệ phản_đối
select tên from ứng_cử_viên where tỷ_lệ ủng_hộ < ( select tỷ_lệ phản_đối from ứng_cử_viên )
select giới_tính , count ( * ) from cá_nhân where cân nặng > 85 group by giới_tính
select giới_tính , count ( * ) from cá_nhân where cân nặng > 85 group by giới_tính
select max ( tỷ_lệ ủng_hộ ) , min ( tỷ_lệ xem_xét ) , min ( tỷ_lệ phản_đối ) from ứng_cử_viên
select max ( tỷ_lệ ủng_hộ ) , min ( tỷ_lệ xem_xét ) , min ( tỷ_lệ phản_đối ) from ứng_cử_viên
select tên from cá_nhân where giới_tính = "F" order by tên
select tên from cá_nhân where giới_tính = "F" order by tên
select tên from cá_nhân where chiều cao < ( select avg ( chiều cao ) from cá_nhân )
select tên from cá_nhân where chiều cao < ( select avg ( chiều cao ) from cá_nhân )
select * from cá_nhân
select * from cá_nhân
select thành_phố chủ nhà from thành_phố chủ nhà order by năm desc limit 1
select id thành_phố from thành_phố chủ nhà order by năm desc limit 1
select id trận đấu from trận đấu where giải đấu = "Vòng_loại FIFA World_Cup 1994"
select id trận đấu from trận đấu where giải đấu = "Vòng_loại FIFA World_Cup 1994"
select t3.thành_phố chủ nhà from trận đấu as t1 join thành_phố chủ nhà as t2 on t1.id trận đấu = t2.id trận đấu join thành_phố as t3 on t3.id thành_phố = t2.thành_phố chủ nhà where t1.năm > 2010
select t3.thành_phố from thành_phố chủ nhà as t1 join trận đấu as t2 on t1.id trận đấu = t2.id trận đấu join thành_phố as t3 on t3.id thành_phố = t1.thành_phố where t2.năm > 2010
select t1.thành_phố from thành_phố as t1 join thành_phố chủ nhà as t2 on t1.id thành_phố = t2.thành_phố group by t2.thành_phố order by count ( * ) desc limit 1
select thành_phố from thành_phố chủ nhà group by thành_phố order by count ( * ) desc limit 1
select t1.địa_điểm from trận đấu as t1 join thành_phố chủ nhà as t2 on t1.id trận đấu = t2.id trận đấu join thành_phố as t3 on t3.id thành_phố = t2.thành_phố chủ nhà where t3.thành_phố = "Nam_Kinh(Giang_Tô)" and t1.giải đấu = "Vòng loại FIFA World_Cup 1994"
select địa_điểm from trận đấu where giải đấu = "Vòng_loại FIFA World_Cup 1994" and thành_phố chủ nhà = "Nam_Kinh ( Giang_Tô )"
select t1.tháng_một from nhiệt_độ as t1 join thành_phố as t2 on t1.id thành_phố = t2.id thành_phố where t2.thành_phố = "Hangzhou"
select t1.tháng một from nhiệt_độ as t1 join thành_phố as t2 on t1.id thành_phố = t2.id thành_phố where t2.thành_phố = "Hangzhou"
select năm from thành_phố chủ nhà where thành_phố chủ nhà = "Thái_Châu ( Chiết_Giang )"
select năm from thành_phố chủ nhà where thành_phố chủ nhà = "Thái_Châu(Chiết_Giang)"
select thành_phố from thành_phố order by dân_số khu_vực desc limit 3
select thành_phố from thành_phố order by dân_số khu_vực desc limit 3
select thành_phố , gdp from thành_phố order by gdp limit 1
select thành_phố , gdp from thành_phố order by gdp limit 1
select t1.thành_phố from thành_phố as t1 join nhiệt_độ as t2 on t1.id thành_phố = t2.id thành_phố where t2.tháng hai = ( select max ( tháng hai ) from nhiệt_độ )
select t1.thành_phố from thành_phố as t1 join nhiệt_độ as t2 on t1.id thành_phố = t2.id thành_phố where t2.tháng hai = ( select max ( tháng hai ) from nhiệt_độ )
select t1.thành_phố from thành_phố as t1 join nhiệt_độ as t2 on t1.id thành_phố = t2.id thành_phố where t2.tháng 3 < t2.tháng 7 or t2.tháng 3 > t2.tháng 10
select t1.thành_phố from thành_phố as t1 join nhiệt_độ as t2 on t1.id thành_phố = t2.id thành_phố where t2.tháng 3 < t2.tháng 7 or t2.tháng 3 > t2.tháng 10
select t3.thành_phố from nhiệt_độ as t1 join thành_phố as t2 on t1.id thành_phố = t2.id thành_phố join thành_phố chủ nhà as t3 on t3.thành_phố chủ nhà = t2.thành_phố where t1.tháng ba < t1.tháng sáu
select t1.thành_phố from thành_phố as t1 join nhiệt_độ as t2 on t1.id thành_phố = t2.id thành_phố where t2.tháng ba < t2.tháng sáu intersect select t1.thành_phố from thành_phố as t1 join thành_phố chủ nhà as t2 on t1.id thành_phố = t2.thành_phố chủ nhà
select t3.thành_phố from nhiệt_độ as t1 join thành_phố as t2 on t1.id thành_phố = t2.id thành_phố join thành_phố chủ nhà as t3 on t3.thành_phố chủ nhà = t2.thành_phố where t1.tháng 3 < t1.tháng 12 except select t3.thành_phố from nhiệt_độ as t1 join thành_phố as t2 on t1.id thành_phố = t2.id thành_phố join thành_phố chủ nhà as t3 on t3.thành_phố chủ nhà = t2.thành_phố
select t3.thành_phố from nhiệt_độ as t1 join nhiệt_độ as t2 on t1.id thành_phố = t2.id thành_phố join thành_phố as t3 on t3.id thành_phố = t1.id thành_phố where t1.tháng 3 < t2.tháng 12 and t3.thành_phố not in ( select t4.thành_phố from thành_phố chủ nhà as t4 join trận đấu as t5 on t4.id trận đấu = t5.id trận đấu where t5.năm = 2016 )
select t1.thành_phố from thành_phố as t1 join nhiệt_độ as t2 on t1.id thành_phố = t2.id thành_phố where t2.tháng hai > t2.tháng sáu union select t3.thành_phố from thành_phố as t3 join thành_phố chủ nhà as t4 on t3.id thành_phố = t4.thành_phố chủ nhà join nhiệt_độ as t5 on t3.id thành_phố = t5.id thành_phố where t5.tháng hai > t5.tháng sáu
select t1.thành_phố from thành_phố as t1 join nhiệt_độ as t2 on t1.id thành_phố = t2.id thành_phố where t2.tháng hai > t2.tháng sáu union select t3.thành_phố from thành_phố as t3 join thành_phố chủ nhà as t4 on t3.id thành_phố = t4.thành_phố chủ nhà join nhiệt_độ as t5 on t3.id thành_phố = t5.id thành_phố where t5.tháng hai > t5.tháng sáu
select thành_phố from thành_phố where dân_số khu_vực > 10000000
select thành_phố from thành_phố where dân_số khu_vực > 10000000
select thành_phố from thành_phố where dân_số khu_vực > 8000000 or dân_số khu_vực < 5000000
select thành_phố from thành_phố where dân_số khu_vực > 8000000 or dân_số khu_vực < 5000000
select giải đấu , count ( * ) from trận đấu group by giải đấu
select giải đấu , count ( * ) from trận đấu group by giải đấu
select địa_điểm from trận đấu order by ngày desc
select địa_điểm from trận đấu order by ngày desc
select gdp from thành_phố order by dân_số khu_vực desc limit 1
select gdp from thành_phố order by dân_số khu_vực desc limit 1
select t1.gdp , t1.dân_số khu_vực from thành_phố as t1 join thành_phố chủ nhà as t2 on t1.id thành_phố = t2.thành_phố chủ nhà group by t1.id thành_phố having count ( * ) > 1
select t1.gdp , t1.dân_số khu_vực from thành_phố as t1 join thành_phố chủ nhà as t2 on t1.id thành_phố = t2.thành_phố chủ nhà group by t2.thành_phố chủ nhà having count ( * ) > 1
select count ( * ) from giáo_sư where mã khoa = "ACCT"
select count ( * ) from giáo_sư as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa where t2.tên khoa = "Accounting"
SELECT COUNT ( * ) FROM lớp_học AS T1 JOIN khoá học AS T2 ON T1.mã khoá học = T2.mã khoá học JOIN giáo_sư AS T3 ON T3.mã số nhân_viên = T1.mã_số nhân_viên WHERE T2.mô_tả về khoá học = "ACCT-211"
select count ( * ) from lớp_học as t1 join khoá học as t2 on t1.mã khoá học = t2.mã khoá học where t2.mô_tả về khoá học = "ACCT-211"
select tên của nhân_viên , họ của nhân_viên from nhân_viên where mã khoa = "Biology"
select t1.tên của nhân_viên , t1.họ của nhân_viên from nhân_viên as t1 join giáo_sư as t2 on t1.mã số nhân_viên = t2.mã số nhân_viên join khoa as t3 on t2.mã khoa = t3.mã khoa where t3.tên khoa = "Biology"
select t1.tên của nhân_viên , t1.ngày_sinh của nhân_viên from nhân_viên as t1 join lớp_học as t2 on t1.mã số nhân_viên = t2.mã_số nhân_viên join khoá học as t3 on t2.mã khoá học = t3.mã khoá học where t3.mô_tả về khoá học = "ACCT-211"
select t1.tên của nhân_viên , t1.ngày_sinh của nhân_viên from nhân_viên as t1 join lớp_học as t2 on t1.mã số nhân_viên = t2.mã_số nhân_viên join khoá học as t3 on t2.mã khoá học = t3.mã khoá học where t3.mô_tả về khoá học = "ACCT-211"
select count ( * ) from lớp_học as t1 join giáo_sư as t2 on t1.mã lớp_học = t2.mã lớp_học join nhân_viên as t3 on t2.mã số nhân_viên = t3.mã số nhân_viên where t3.họ của nhân_viên = "Graztevski"
select count ( * ) from giáo_sư as t1 join lớp_học as t2 on t1.mã số nhân_viên = t2.mã_số nhân_viên join khoa as t3 on t3.mã khoa = t2.mã khoa join khoá học as t4 on t4.mã khoá học = t2.mã khoá học where t3.tên khoa = "EECS" and t1.họ của nhân_viên = "Graztevski"
select mã_trường from khoa where tên khoa = "Accounting"
select mã_trường from khoa where tên khoa = "Accounting"
select mô_tả về khoá học , số_lượng tín_chỉ của khoá học from khoá học where mã khoá học = "CIS-220"
select mô_tả về khoá học , số_lượng tín_chỉ của khoá học from khoá học where mã khoá học = "CIS-220"
select địa_chỉ khoa from khoa where tên khoa = "History"
SELECT địa_chỉ khoa FROM khoa WHERE tên khoa = "History"
SELECT COUNT ( DISTINCT địa_chỉ khoa ) FROM khoa WHERE mã_trường = "BUS"
select count ( distinct t1.địa_chỉ trường_học ) from trường t1 join khoa t2 on t1.mã_trường = t2.mã_trường where t2.tên khoa = "BUS"
SELECT COUNT ( DISTINCT địa_chỉ khoa ) FROM khoa
SELECT COUNT ( DISTINCT địa_chỉ khoa ) FROM khoa
select mô_tả về khoá học , số_lượng tín_chỉ của khoá học from khoá học where mã khoá học = "QM-261"
select mô_tả về khoá học , số_lượng tín_chỉ của khoá học from khoá học where mã khoá học = "QM-261"
select count ( * ) , mã_trường from khoa group by mã_trường
select count ( * ) , mã_trường from khoa group by mã_trường
select count ( * ) , mã_trường from khoa group by mã_trường having count ( * ) < 5
select count ( * ) , mã_trường from khoa group by mã_trường having count ( * ) < 5
select count ( * ) , mã khoá học from lớp_học group by mã khoá học
select count ( * ) , mã khoá học from lớp_học group by mã khoá học
select sum ( số_lượng tín_chỉ của khoá học ) , mã khoa from khoá học group by mã khoa
select sum ( số_lượng tín_chỉ của khoá học ) , mã khoa from khoá học group by mã khoa
select phòng học , count ( * ) from lớp_học group by phòng học having count ( * ) >= 2
select count ( * ) , phòng học from lớp_học group by phòng học having count ( * ) >= 2
select count ( * ) , mã khoa from lớp_học group by mã khoa
select count ( * ) , mã khoa from lớp_học group by mã khoa
SELECT COUNT ( * ) , mã_trường FROM khoa GROUP BY mã_trường
select count ( * ) , mã_trường from khoa group by mã_trường
select count ( * ) , mã_trường from khoa group by mã_trường
select count ( * ) , mã_trường from giáo_sư group by mã_trường
select mã công_việc của nhân_viên , count ( * ) from nhân_viên group by mã công_việc của nhân_viên order by count ( * ) desc limit 1
select mã công_việc của nhân_viên , count ( * ) from nhân_viên group by mã công_việc của nhân_viên order by count ( * ) desc limit 1
select mã_trường from khoa group by mã_trường order by count ( * ) limit 1
select mã_trường from khoa group by mã_trường order by count ( * ) limit 1
select count ( * ) , mã khoa from giáo_sư where bằng_cấp cao nhất = "Doctor" group by mã khoa
select count ( * ) , mã khoa from giáo_sư where bằng_cấp cao nhất = "Ph.D." group by mã khoa
select count ( * ) , mã khoa from sinh_viên group by mã khoa
SELECT COUNT ( * ) , mã khoa FROM sinh_viên GROUP BY mã khoa
select sum ( t1.giờ học của sinh_viên ) , t2.tên khoa from sinh_viên as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa group by t2.tên khoa
SELECT SUM ( t1.giờ học của sinh_viên ) , t2.tên khoa FROM sinh_viên AS t1 JOIN khoa AS t2 ON t1.mã khoa = t2.mã khoa GROUP BY t2.tên khoa
select avg ( t1.gpa của sinh_viên ) , max ( t1.gpa của sinh_viên ) , min ( t1.gpa của sinh_viên ) from sinh_viên as t1 join khoa as t2 on t1.dept code = t2.dept code group by t2.dept name
select avg ( t1.gpa của sinh_viên ) , t2.mã khoa from sinh_viên as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa where t1.gpa của sinh_viên = ( select max ( t1.gpa của sinh_viên ) from sinh_viên as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa ) union select avg ( t1.gpa của sinh_viên ) , t2.mã khoa from sinh_viên as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa where t1.gpa của sinh_viên = ( select min ( t1.gpa của sinh_viên ) from sinh_viên as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa )
select tên khoa , avg ( gpa của sinh_viên ) from sinh_viên group by mã khoa order by avg ( gpa của sinh_viên ) desc limit 1
select avg ( gpa của sinh_viên ) , mã khoa from sinh_viên group by mã khoa order by avg ( gpa của sinh_viên ) desc limit 1
SELECT COUNT ( * ) FROM trường_học
SELECT COUNT ( DISTINCT mã_trường ) FROM khoa
select count ( distinct lớp_học ) from lớp_học
select count ( * ) from lớp_học
SELECT COUNT ( * ) FROM khoá học
SELECT COUNT ( DISTINCT mô_tả về khoá học ) FROM khoá học
SELECT COUNT ( * ) FROM khoa
SELECT COUNT ( DISTINCT tên khoa ) FROM khoa
SELECT COUNT ( * ) FROM khoá học AS T1 JOIN khoa AS T2 ON T1.mã khoa = T2.mã khoa WHERE T2.tên khoa = "Hệ_thống thông_tin máy_tính"
select count ( * ) from khoa as t1 join khoá học as t2 on t1.mã khoa = t2.mã khoa where t1.tên khoa = "Hệ_thống thông_tin máy_tính"
select count ( * ) from lớp_học where mã khoá học = "ACCT-211"
select count ( distinct lớp_học phần ) from lớp_học where mã khoá học = "ACCT-211"
select sum ( số_lượng tín_chỉ của khoá học ) , mã khoa from khoá học group by mã khoa
SELECT SUM ( số_lượng tín_chỉ của khoá học ) , mã khoa FROM khoá học GROUP BY mã khoa
select tên khoa from khoa where số_lượng nhân_viên = ( select max ( số_lượng nhân_viên ) from khoa )
select tên khoa from khoa where số_lượng nhân_viên = ( select max ( số_lượng nhân_viên ) from khoa )
SELECT COUNT ( * ) FROM đăng_ký khoá học AS T1 JOIN khoá học AS T2 ON T1.mã khoá học = T2.mã khoá học WHERE T2.mô_tả về khoá học = "ACCT-211"
SELECT COUNT ( * ) FROM đăng_ký khoá học WHERE mã khoá học = "ACCT-211"
select t1.tên của sinh_viên from sinh_viên as t1 join đăng_ký khoá học as t2 on t1.mã_số sinh_viên = t2.mã_số sinh_viên join khoá học as t3 on t2.mã khoá học = t3.mã khoá học where t3.mô_tả về khoá học = "ACCT-211"
select tên của sinh_viên from sinh_viên where mã_số sinh_viên in ( select t1.mã_số sinh_viên from đăng_ký khoá học as t1 join khoá học as t2 on t1.mã khoá học = t2.mã khoá học where t2.mô_tả về khoá học = "ACCT-211" )
select t1.tên của sinh_viên from sinh_viên as t1 join đăng_ký khoá học as t2 on t1.mã_số sinh_viên = t2.mã_số sinh_viên where t2.điểm_số = "C" and t2.mã khoá học = "ACCT-211"
select t1.tên của sinh_viên from sinh_viên as t1 join đăng_ký khoá học as t2 on t1.mã_số sinh_viên = t2.mã_số sinh_viên join khoá học as t3 on t2.mã khoá học = t3.mã khoá học where t3.mô_tả về khoá học = "ACCT-211" and t2.điểm_số = "C"
SELECT COUNT ( * ) FROM nhân_viên
SELECT COUNT ( * ) FROM nhân_viên
SELECT COUNT ( * ) FROM giáo_sư WHERE bằng_cấp cao nhất = "Tiến_sĩ"
select count ( * ) from giáo_sư where bằng_cấp cao nhất = "Tiến_sĩ"
select count ( * ) from lớp_học as t1 join khoá học as t2 on t1.mã khoá học = t2.mã khoá học join nhân_viên as t3 on t3.mã số nhân_viên = t1.mã_số nhân_viên join khoa as t4 on t4.mã khoa = t3.mã khoa where t4.tên khoa = "Accounting"
select count ( * ) from lớp_học as t1 join khoá học as t2 on t1.mã khoá học = t2.mã khoá học join nhân_viên as t3 on t3.mã số nhân_viên = t1.mã_số nhân_viên join khoa as t4 on t4.mã khoa = t3.mã khoa where t4.tên khoa = "Accounting"
select tên khoa from khoa where số_lượng nhân_viên = ( select max ( số_lượng nhân_viên ) from khoa )
select tên khoa from khoa as t1 join sinh_viên as t2 on t1.mã khoa = t2.mã khoa group by tên khoa order by count ( * ) desc limit 1
select tên khoa from khoa order by tên khoa
select tên khoa from khoa order by tên khoa
select mã khoá học from lớp_học where phòng học = "KLR 209"
select mã khoá học from lớp_học where phòng học = "KLR 209"
select tên của nhân_viên from nhân_viên where mã công_việc = "Giáo_sư" order by ngày_sinh của nhân_viên
select tên của nhân_viên from nhân_viên where mã công_việc của nhân_viên = "Giáo_sư" order by ngày_sinh của nhân_viên
select tên của giáo_sư , văn_phòng giáo_sư from giáo_sư order by tên của giáo_sư
select tên khoa , văn_phòng giáo_sư from giáo_sư order by chữ_cái bắt_đầu tên nhân_viên
select tên của nhân_viên , họ của nhân_viên from nhân_viên order by ngày_sinh của nhân_viên desc limit 1
select tên của nhân_viên , họ của nhân_viên from nhân_viên order by ngày_sinh của nhân_viên limit 1
select tên của sinh_viên , họ của sinh_viên , gpa của sinh_viên from sinh_viên where gpa của sinh_viên > 3 order by gpa của sinh_viên limit 1
select tên của sinh_viên , họ của sinh_viên , gpa của sinh_viên from sinh_viên where gpa của sinh_viên > 3 order by ngày_sinh của sinh_viên limit 1
select tên của sinh_viên from sinh_viên where điểm của sinh_viên = "C"
select tên của sinh_viên from sinh_viên where điểm của sinh_viên = "C"
select tên khoa from khoa where số_lượng nhân_viên = ( select min ( số_lượng nhân_viên ) from khoa )
select tên khoa from khoa where số_lượng nhân_viên = ( select min ( số_lượng nhân_viên ) from khoa )
select tên khoa from khoa as t1 join giáo_sư as t2 on t1.mã khoa = t2.mã khoa group by tên khoa order by count ( * ) desc limit 1
select tên khoa from khoa where mã khoa in ( select t1.mã khoa from giáo_sư as t1 join nhân_viên as t2 on t1.mã số nhân_viên = t2.mã số nhân_viên where t2.bằng_cấp cao nhất = "Ph.D." group by t1.mã khoa order by count ( * ) desc limit 1 )
select tên của giáo_sư from giáo_sư where mã số nhân_viên not in ( select mã số nhân_viên from lớp_học )
select tên của giáo_sư from giáo_sư where mã số nhân_viên not in ( select mã số nhân_viên from đăng_ký khoá học )
select tên của nhân_viên from nhân_viên where mã khoa = "HISTORY" except select tên của nhân_viên from nhân_viên as t1 join lớp_học as t2 on t1.mã số nhân_viên = t2.mã_số nhân_viên
select tên của nhân_viên from nhân_viên where mã khoa = "HISTORY" except select tên của nhân_viên from nhân_viên where mã khoa = "HISTORY"
select t1.họ của nhân_viên , t2.văn_phòng giáo_sư from nhân_viên as t1 join giáo_sư as t2 on t1.mã số nhân_viên = t2.mã số nhân_viên join khoa as t3 on t2.mã khoa = t3.mã khoa where t3.tên khoa = "History"
select văn_phòng giáo_sư from giáo_sư where mã khoa = "HISTORY"
select t3.văn_phòng giáo_sư , t2.tên khoa from nhân_viên as t1 join giáo_sư as t2 on t1.mã số nhân_viên = t2.mã số nhân_viên join khoa as t3 on t2.mã khoa = t3.mã khoa where t1.họ của nhân_viên = "Heffington"
select t3.mã khoa , t3.văn_phòng giáo_sư from nhân_viên as t1 join giáo_sư as t2 on t1.mã số nhân_viên = t2.mã số nhân_viên join khoa as t3 on t2.mã khoa = t3.mã khoa where t1.họ của nhân_viên = "Heffington"
select tên của nhân_viên , ngày bắt_đầu công_việc của nhân_viên from nhân_viên where mã văn_phòng giáo_sư = "DRE 102"
select tên của nhân_viên , ngày bắt_đầu công_việc của nhân_viên from nhân_viên where văn_phòng giáo_sư = "DRE 102"
select t1.mã khoá học from khoá học as t1 join đăng_ký khoá học as t2 on t1.mã khoá học = t2.mã khoá học join sinh_viên as t3 on t2.mã_số sinh_viên = t3.mã_số sinh_viên where t3.họ của sinh_viên = "Smithson"
select t1.mã lớp from lớp_học as t1 join đăng_ký khoá học as t2 on t1.mã lớp = t2.mã lớp join sinh_viên as t3 on t2.mã_số sinh_viên = t3.mã_số sinh_viên where t3.họ của sinh_viên = "Smithson"
select t1.số_lượng tín_chỉ của khoá học , t2.mô_tả về khoá học from khoá học as t1 join khoá học as t2 on t1.mã khoá học = t2.mã khoá học join đăng_ký khoá học as t3 on t3.mã khoá học = t2.mã khoá học join sinh_viên as t4 on t4.mã_số sinh_viên = t3.mã_số sinh_viên where t4.họ của sinh_viên = "Smithson"
select t1.mô_tả về khoá học from khoá học as t1 join đăng_ký khoá học as t2 on t1.mã khoá học = t2.mã khoá học join sinh_viên as t3 on t2.mã_số sinh_viên = t3.mã_số sinh_viên where t3.họ của sinh_viên = "Smithson"
select count ( * ) from nhân_viên where bằng_cấp cao nhất = "Master" or bằng_cấp cao nhất = "Doctor"
select count ( * ) from giáo_sư where bằng_cấp cao nhất = "Master" or bằng_cấp cao nhất = "Doctor"
select count ( * ) from nhân_viên as t1 join giáo_sư as t2 on t1.mã số nhân_viên = t2.mã số nhân_viên join khoa as t3 on t2.mã khoa = t3.mã khoa where t3.tên khoa = "Accounting" or t3.tên khoa = "Biology"
select count ( * ) from giáo_sư where mã khoa = "ACCT" or mã khoa = "BIOL"
select t1.tên của nhân_viên from nhân_viên as t1 join lớp_học as t2 on t1.mã số nhân_viên = t2.mã_số nhân_viên join khoá học as t3 on t2.mã khoá học = t3.mã khoá học where t3.mô_tả về khoá học = "CIS-220" intersect select t1.tên của nhân_viên from nhân_viên as t1 join lớp_học as t2 on t1.mã số nhân_viên = t2.mã_số nhân_viên join khoá học as t3 on t2.mã khoá học = t3.mã khoá học where t3.mô_tả về khoá học = "QM-261"
select t1.tên của nhân_viên from nhân_viên as t1 join lớp_học as t2 on t1.mã số nhân_viên = t2.mã_số nhân_viên join khoá học as t3 on t2.mã khoá học = t3.mã khoá học where t3.mô_tả về khoá học = "CIS-220" intersect select t1.tên của nhân_viên from nhân_viên as t1 join lớp_học as t2 on t1.mã số nhân_viên = t2.mã_số nhân_viên join khoá học as t3 on t2.mã khoá học = t3.mã khoá học where t3.mô_tả về khoá học = "QM-261"
select tên của sinh_viên from sinh_viên where lớp của sinh_viên in ( select t1.mã lớp from lớp_học as t1 join khoá học as t2 on t1.mã khoá học = t2.mã khoá học where t2.mô_tả về khoá học = "Kế_toán" intersect select t1.mã lớp from lớp_học as t1 join khoá học as t2 on t1.mã khoá học = t2.mã khoá học where t2.mô_tả về khoá học = "Hệ_thống thông_tin máy_tính" )
select tên của sinh_viên from sinh_viên where mã khoa = "ACCT" intersect select tên của sinh_viên from sinh_viên where mã khoa = "CS"
select avg ( t1.gpa của sinh_viên ) from sinh_viên as t1 join đăng_ký khoá học as t2 on t1.mã_số sinh_viên = t2.mã_số sinh_viên join khoá học as t3 on t2.mã khoá học = t3.mã khoá học where t3.mô_tả về khoá học = "ACCT-211"
select avg ( t1.gpa của sinh_viên ) from sinh_viên as t1 join đăng_ký khoá học as t2 on t1.mã_số sinh_viên = t2.mã_số sinh_viên join khoá học as t3 on t2.mã khoá học = t3.mã khoá học where t3.mô_tả về khoá học = "ACCT-211"
select tên của sinh_viên , gpa của sinh_viên , số điện_thoại của sinh_viên from sinh_viên order by gpa của sinh_viên desc limit 5
select tên của sinh_viên , gpa của sinh_viên , số điện_thoại của sinh_viên from sinh_viên where gpa của sinh_viên in ( select max ( gpa của sinh_viên ) from sinh_viên )
select t1.tên khoa from khoa as t1 join sinh_viên as t2 on t1.mã khoa = t2.mã khoa where t2.gpa của sinh_viên = ( select min ( t2.gpa của sinh_viên ) from sinh_viên as t2 join khoa as t1 on t1.mã khoa = t2.mã khoa )
select t1.mã khoa from nhân_viên as t1 join đăng_ký khoá học as t2 on t1.mã_số nhân_viên = t2.mã_số sinh_viên join khoá học as t3 on t2.mã khoá học = t3.mã khoá học where t1.tên của nhân_viên = "Snh" order by t1.gpa của sinh_viên limit 1
select tên của sinh_viên , gpa của sinh_viên from sinh_viên where gpa của sinh_viên < ( select avg ( gpa của sinh_viên ) from sinh_viên )
select tên của sinh_viên , gpa của sinh_viên from sinh_viên where gpa của sinh_viên < ( select avg ( gpa của sinh_viên ) from sinh_viên )
select tên khoa , địa_chỉ khoa from khoa as t1 join sinh_viên as t2 on t1.mã khoa = t2.mã khoa group by tên khoa order by count ( * ) desc limit 1
select tên khoa , địa_chỉ khoa from khoa where số_lượng nhân_viên = ( select max ( số_lượng nhân_viên ) from khoa )
select tên khoa , địa_chỉ khoa , số_lượng sinh_viên from khoa as t1 join sinh_viên as t2 on t1.mã khoa = t2.mã khoa group by t1.mã khoa order by count ( * ) desc limit 3
select tên khoa , địa_chỉ khoa , số_lượng sinh_viên from khoa where số_lượng sinh_viên > 300
select tên của nhân_viên , địa_chỉ của nhân_viên from nhân_viên where mã khoa = "HISTORY" and bằng_cấp cao nhất = "Ph.D."
select tên của giáo_sư , văn_phòng giáo_sư from giáo_sư where mã khoa = "HISTORY" and bằng_cấp cao nhất = "Ph.D."
select t1.tên của nhân_viên , t2.mã khoá học from nhân_viên as t1 join đăng_ký khoá học as t2 on t1.mã số nhân_viên = t2.mã_số sinh_viên
select t1.tên của nhân_viên , t2.mã khoá học from nhân_viên as t1 join đăng_ký khoá học as t2 on t1.mã số nhân_viên = t2.mã số nhân_viên
select t1.tên của nhân_viên , t2.mô_tả về khoá học from nhân_viên as t1 join khoá học as t2 on t1.mã số nhân_viên = t2.mã số nhân_viên
select t1.tên của nhân_viên , t2.mô_tả về khoá học from nhân_viên as t1 join khoá học as t2 on t1.mã số nhân_viên = t2.mã số nhân_viên
select t1.tên của nhân_viên , t2.văn_phòng giáo_sư from nhân_viên as t1 join giáo_sư as t2 on t1.mã số nhân_viên = t2.mã số nhân_viên join lớp_học as t3 on t3.mã lớp = t2.mã lớp
select t1.tên của giảng_viên , t1.văn_phòng giảng_viên from giảng_viên as t1 join khoá học as t2 on t1.mã số nhân_viên = t2.mã_số nhân_viên
select t1.tên của nhân_viên , t2.văn_phòng giáo_sư , t3.mô_tả về khoá học , t4.tên khoa from nhân_viên as t1 join giáo_sư as t2 on t1.mã số nhân_viên = t2.mã số nhân_viên join khoá học as t3 on t3.mã khoá học = t2.mã khoá học join khoa as t4 on t4.mã khoa = t2.mã khoa
select t1.tên của nhân_viên , t2.văn_phòng giáo_sư , t3.mô_tả về khoá học from nhân_viên as t1 join giáo_sư as t2 on t1.mã số nhân_viên = t2.mã số nhân_viên join khoá học as t3 on t2.mã khoa = t3.mã khoa
select t1.tên của sinh_viên , t2.mô_tả về khoá học from sinh_viên as t1 join khoá học as t2 on t1.mã_số sinh_viên = t2.mã lớp
select t1.tên của sinh_viên , t1.họ của sinh_viên , t2.mô_tả về khoá học from sinh_viên as t1 join khoá học as t2 on t1.mã_số sinh_viên = t2.mã lớp
select tên của sinh_viên from sinh_viên where mã_số sinh_viên in ( select mã_số sinh_viên from đăng_ký khoá học where điểm_số = "A" or điểm_số = "C" )
select tên của sinh_viên from sinh_viên where mã_số sinh_viên in ( select t1.mã_số sinh_viên from đăng_ký khoá học as t1 join khoá học as t2 on t1.mã khoá học = t2.mã khoá học where t2.mô_tả về khoá học like " A " or t2.mô_tả về khoá học like " C " )
select t1.tên của giáo_sư , t2.phòng học from giáo_sư as t1 join lớp_học as t2 on t1.mã số nhân_viên = t2.mã_số nhân_viên join khoa as t3 on t3.mã khoa = t2.mã khoá học where t3.tên khoa = "Accounting"
select t1.tên của giáo_sư , t2.phòng học from giáo_sư as t1 join lớp_học as t2 on t1.mã số nhân_viên = t2.mã_số nhân_viên join khoa as t3 on t3.mã khoa = t2.mã khoá học where t3.tên khoa = "Accounting"
select t1.tên của giáo_sư , t2.bằng_cấp cao nhất from giáo_sư as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa where t2.tên khoa = "Hệ_thống thông_tin máy_tính"
select tên của giáo_sư , bằng_cấp cao nhất from giáo_sư where mã khoa = "EECS"
select t1.họ của sinh_viên from sinh_viên as t1 join đăng_ký khoá học as t2 on t1.mã_số sinh_viên = t2.mã_số sinh_viên join lớp_học as t3 on t2.mã lớp = t3.mã lớp where t3.mã lớp = 10018 and t2.điểm_số = "A"
select t1.họ của sinh_viên from sinh_viên as t1 join đăng_ký khoá học as t2 on t1.mã_số sinh_viên = t2.mã_số sinh_viên join lớp_học as t3 on t2.mã lớp = t3.mã lớp where t3.mã lớp = 10018 and t2.điểm_số = "A"
select tên của giáo_sư , văn_phòng giáo_sư from giáo_sư where mã khoa = "HISTORY" and bằng_cấp cao nhất < > "Ph.D."
select tên của giáo_sư , văn_phòng giáo_sư from giáo_sư where mã khoa = "HISTORY" and bằng_cấp cao nhất < > "Ph.D."
select t1.tên của giáo_sư from giáo_sư as t1 join lớp_học as t2 on t1.mã số nhân_viên = t2.mã số nhân_viên group by tên của giáo_sư having count ( * ) > 1
select t1.tên của giáo_sư from giáo_sư as t1 join lớp_học as t2 on t1.mã số nhân_viên = t2.mã số nhân_viên group by tên của giáo_sư having count ( * ) > 1
select tên của sinh_viên from sinh_viên group by tên của sinh_viên having count ( * ) = 1
select tên của sinh_viên from sinh_viên where số_lượng sinh_viên = 1
select tên khoa from khoa as t1 join khoá học as t2 on t1.mã khoa = t2.mã khoa where mô_tả về khoá học like "% Statistics %"
select tên khoa from khoa where mô_tả về khoá học like "% Statistics %"
select tên của sinh_viên from sinh_viên where chữ_cái đầu của tên sinh_viên like "S" and mã lớp = "ACCT-211"
select tên của sinh_viên from sinh_viên where chữ_cái đầu của tên sinh_viên like "S" and mã_số sinh_viên in ( select t1.mã_số sinh_viên from đăng_ký khoá học as t1 join khoá học as t2 on t1.mã khoá học = t2.mã khoá học where t2.mô_tả về khoá học = "ACCT-211" )
select mã trạng_thái tài_liệu from trạng_thái của tài_liệu
select mô_tả về trạng_thái tài_liệu from trạng_thái của tài_liệu where mã trạng_thái tài_liệu = "đang được xử_lý"
select mã loại tài_liệu from loại tài_liệu
select t1.mô_tả về loại tài_liệu from loại tài_liệu as t1 join tài_liệu as t2 on t1.mã loại tài_liệu = t2.mã loại tài_liệu where t1.mô_tả về loại tài_liệu = "Letter"
select tên đại_lý vận_chuyển from đại_lý vận_chuyển tài_liệu
select mã đại_lý vận_chuyển from đại_lý vận_chuyển tài_liệu where tên đại_lý vận_chuyển = "UPS"
select mã vai_trò from vai_trò
select mô_tả về vai_trò from vai_trò where mã vai_trò = "ED"
select count ( * ) from nhân_viên
select t1.mô_tả về vai_trò from vai_trò as t1 join nhân_viên as t2 on t1.mã vai_trò = t2.mã vai_trò where t2.tên nhân_viên = "Koby"
select id tài_liệu , ngày lập biên_lai from tài_liệu
select mô_tả về vai_trò , id vai_trò , count ( * ) from nhân_viên group by mô_tả về vai_trò
select mô_tả về vai_trò , count ( * ) from nhân_viên group by mô_tả về vai_trò having count ( * ) > 1
select mô_tả về trạng_thái tài_liệu from trạng_thái của tài_liệu where id tài_liệu = 1
select count ( * ) from tài_liệu where mã trạng_thái tài_liệu = "Đã được hoàn_thành"
select mã loại tài_liệu from tài_liệu where id tài_liệu = 2
select id tài_liệu from tài_liệu where mã trạng_thái tài_liệu = "Đã hoàn_thành" and mã loại tài_liệu = "Giấy"
select t1.tên đại_lý vận_chuyển from đại_lý vận_chuyển tài_liệu as t1 join tài_liệu as t2 on t1.mã đại_lý vận_chuyển = t2.mã đại_lý vận_chuyển where t2.id tài_liệu = 2
select count ( * ) from tài_liệu as t1 join địa_chỉ as t2 on t1.gửi đến địa_chỉ có id = t2.id địa_chỉ join đại_lý vận_chuyển tài_liệu as t3 on t1.mã đại_lý vận_chuyển = t3.mã đại_lý vận_chuyển where t3.tên đại_lý vận_chuyển = "USPS"
select t1.mã đại_lý vận_chuyển , count ( * ) from tài_liệu as t2 join đại_lý vận_chuyển tài_liệu as t1 on t2.mã đại_lý vận_chuyển = t1.mã đại_lý vận_chuyển group by t1.mã đại_lý vận_chuyển order by count ( * ) desc limit 1
select ngày lập biên_lai from tài_liệu where id tài_liệu = 3
select t1.chi_tiết địa_chỉ from địa_chỉ as t1 join tài_liệu được gửi as t2 on t1.id địa_chỉ = t2.gửi đến địa_chỉ có id where t2.id tài_liệu = 4
select t1.ngày gửi from tài_liệu được gửi as t1 join tài_liệu as t2 on t1.id tài_liệu = t2.id tài_liệu where t2.id tài_liệu = 7
select id tài_liệu from tài_liệu where mã trạng_thái tài_liệu = "Đã hoàn_thành" and mã loại tài_liệu = "Giấy" except select id tài_liệu from tài_liệu join đại_lý vận_chuyển tài_liệu on tài_liệu.mã đại_lý vận_chuyển = đại_lý vận_chuyển tài_liệu.mã đại_lý vận_chuyển where đại_lý vận_chuyển tài_liệu.tên đại_lý vận_chuyển = "USPS"
select t1.id tài_liệu from tài_liệu as t1 join địa_chỉ as t2 on t1.gửi đến địa_chỉ có id = t2.id địa_chỉ join đại_lý vận_chuyển tài_liệu as t3 on t1.mã đại_lý vận_chuyển = t3.mã đại_lý vận_chuyển where t2.chi_tiết địa_chỉ = "United_States Postal_Service" and t1.mã trạng_thái tài_liệu = "Đã hoàn_thành" and t1.mã loại tài_liệu = "Letter"
select t1.chi_tiết dự_thảo from bản dự_thảo của tài_liệu as t1 join tài_liệu as t2 on t1.id tài_liệu = t2.id tài_liệu where t2.id tài_liệu = 7
select count ( * ) from bản dự_thảo của tài_liệu where id tài_liệu = 2
select t1.id tài_liệu , t2.số_lượng bản_sao from tài_liệu as t1 join bản_sao as t2 on t1.id tài_liệu = t2.id tài_liệu group by t1.id tài_liệu order by count ( * ) desc limit 1
select t1.id tài_liệu , t1.số_lượng dự_thảo from bản dự_thảo của tài_liệu as t1 join tài_liệu as t2 on t1.id tài_liệu = t2.id tài_liệu group by t1.id tài_liệu having count ( * ) > 1
select t1.tên nhân_viên from nhân_viên as t1 join lịch_sử lưu_hành as t2 on t1.id nhân_viên = t2.id nhân_viên where t2.id tài_liệu = 1
select tên nhân_viên from nhân_viên where id nhân_viên not in ( select t1.id nhân_viên from lịch_sử lưu_hành as t1 join tài_liệu as t2 on t1.id tài_liệu = t2.id tài_liệu )
select t1.tên nhân_viên , count ( * ) from nhân_viên as t1 join lịch_sử lưu_hành as t2 on t1.id nhân_viên = t2.id nhân_viên group by t1.tên nhân_viên order by count ( * ) desc
select t1.id tài_liệu , count ( * ) from lịch_sử lưu_hành as t1 join nhân_viên as t2 on t1.id nhân_viên = t2.id nhân_viên group by t1.id tài_liệu
select count ( * ) from lượt đặt_hàng
select count ( * ) from lượt đặt_hàng
select ngày đặt_hàng from lượt đặt_hàng
select ngày đặt_hàng from lượt đặt_hàng
select ngày đặt_hàng , ngày giao hàng theo kế_hoạch , ngày giao hàng thực_tế from lượt đặt_hàng
select t1.ngày đặt_hàng , t1.ngày giao hàng theo kế_hoạch , t1.ngày giao hàng thực_tế from lượt đặt_hàng as t1 join khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng join cửa_hàng as t3 on t1.id cửa_hàng = t3.id cửa_hàng
select count ( * ) from khách_hàng
select count ( * ) from khách_hàng
select số điện_thoại khách_hàng , địa_chỉ email khách_hàng from khách_hàng where tên khách_hàng = "Harold"
select địa_chỉ email khách_hàng , số điện_thoại khách_hàng from khách_hàng where tên khách_hàng = "Harold"
select tên cửa_hàng from cửa_hàng
select tên cửa_hàng from cửa_hàng
select min ( số_lượng đặt_hàng ) , avg ( số_lượng đặt_hàng ) , max ( số_lượng đặt_hàng ) from mặt_hàng trong hoá_đơn
select min ( số_lượng đặt_hàng ) , avg ( số_lượng đặt_hàng ) , max ( số_lượng đặt_hàng ) from mặt_hàng trong hoá_đơn
select t1.mã phương_thức thanh_toán from hoá_đơn as t1 join mặt_hàng trong hoá_đơn as t2 on t1.id hoá_đơn = t2.id hoá_đơn join phương_thức thanh_toán as t3 on t2.mã phương_thức thanh_toán = t3.mã phương_thức thanh_toán
select distinct t1.mã phương_thức thanh_toán from hoá_đơn as t2 join phương_thức thanh_toán as t1 on t2.mã phương_thức thanh_toán = t1.mã phương_thức thanh_toán
select mô_tả về khu_vực tiếp_thị from khu_vực tiếp_thị where tên khu_vực tiếp_thị = "Trung_Quốc"
select mô_tả về khu_vực tiếp_thị from khu_vực tiếp_thị where tên khu_vực tiếp_thị = "Trung_Quốc"
select tên sản_phẩm from các sản_phẩm where giá sản_phẩm > ( select avg ( giá sản_phẩm ) from các sản_phẩm )
select tên sản_phẩm from các sản_phẩm where giá sản_phẩm > ( select avg ( giá sản_phẩm ) from các sản_phẩm )
select tên sản_phẩm from các sản_phẩm order by giá sản_phẩm desc limit 1
select tên sản_phẩm from các sản_phẩm order by giá sản_phẩm desc limit 1
select tên sản_phẩm from các sản_phẩm order by giá sản_phẩm
select tên sản_phẩm from các sản_phẩm order by giá sản_phẩm
select số điện_thoại khách_hàng from khách_hàng where tên khách_hàng = "Ashley"
select số điện_thoại khách_hàng from khách_hàng where tên khách_hàng = "Ashley"
select mã phương_thức thanh_toán , count ( * ) from lượt đặt_hàng as t1 join phương_thức thanh_toán as t2 on t1.mã trạng_thái = t2.mã phương_thức thanh_toán group by mã phương_thức thanh_toán
select mã phương_thức thanh_toán , count ( * ) from lượt đặt_hàng as t1 join phương_thức thanh_toán as t2 on t1.mã trạng_thái = t2.mã phương_thức thanh_toán group by mã phương_thức thanh_toán
select t1.mã phương_thức thanh_toán from lượt đặt_hàng as t1 join hoá_đơn as t2 on t1.id đơn hàng = t2.id đơn hàng group by t1.mã phương_thức thanh_toán order by count ( * ) desc limit 1
select t1.mã phương_thức thanh_toán from hoá_đơn as t1 join mặt_hàng trong hoá_đơn as t2 on t1.id hoá_đơn = t2.id hoá_đơn group by t1.mã phương_thức thanh_toán order by count ( * ) desc limit 1
select t2.thành_phố thị_trấn from cửa_hàng as t1 join địa_chỉ as t2 on t1.id địa_chỉ = t2.id địa_chỉ where t1.tên cửa_hàng = "FJM Filming"
select t1.thành_phố thị_trấn from địa_chỉ as t1 join cửa_hàng as t2 on t1.id địa_chỉ = t2.id địa_chỉ where t2.tên cửa_hàng = "FJA Filming"
select distinct t3.quận hạt from cửa_hàng as t1 join địa_chỉ as t2 on t1.id cửa_hàng = t2.id địa_chỉ join khu_vực tiếp_thị as t3 on t1.mã khu_vực tiếp_thị = t3.mã khu_vực tiếp_thị where t3.mã khu_vực tiếp_thị = "CA"
select tên cửa_hàng from cửa_hàng where mã khu_vực tiếp_thị = "CA"
select t1.mô_tả về khu_vực tiếp_thị from khu_vực tiếp_thị as t1 join cửa_hàng as t2 on t1.mã khu_vực tiếp_thị = t2.mã khu_vực tiếp_thị where t2.tên cửa_hàng = "Rob_Dinning"
select t1.mô_tả về khu_vực tiếp_thị from khu_vực tiếp_thị as t1 join cửa_hàng as t2 on t1.mã khu_vực tiếp_thị = t2.mã khu_vực tiếp_thị where t2.tên cửa_hàng = "Rob_Dinning"
select mô_tả về loại dịch_vụ from loại dịch_vụ where giá sản_phẩm > 100
select mô_tả về loại dịch_vụ from loại dịch_vụ where giá sản_phẩm > 100
select mô_tả về loại dịch_vụ , mã loại dịch_vụ , số_lượng sản_phẩm từ loại dịch_vụ
select mô_tả về loại dịch_vụ , mã loại dịch_vụ , số_lượng sản_phẩm from loại dịch_vụ
select mô_tả về loại dịch_vụ , mã loại dịch_vụ from loại dịch_vụ group by mô_tả về loại dịch_vụ order by count ( * ) desc limit 1
select t1.mô_tả về loại dịch_vụ , t1.mã loại dịch_vụ from loại dịch_vụ as t1 join dịch_vụ as t2 on t1.mã loại dịch_vụ = t2.mã loại dịch_vụ group by t1.mô_tả về loại dịch_vụ order by count ( * ) desc limit 1
select t1.số điện_thoại cửa_hàng , t1.địa_chỉ email cửa_hàng from cửa_hàng as t1 join dịch_vụ as t2 on t1.id cửa_hàng = t2.id cửa_hàng where t2.mô_tả về dịch_vụ = "Dịch_vụ được thực_hiện"
select t1.tên cửa_hàng , t1.số điện_thoại cửa_hàng from cửa_hàng as t1 join dịch_vụ as t2 on t1.id cửa_hàng = t2.id nhóm hội_thảo kịch
select t1.số điện_thoại cửa_hàng , t1.địa_chỉ email cửa_hàng from cửa_hàng as t1 join dịch_vụ as t2 on t1.id cửa_hàng = t2.id cửa_hàng join sản_phẩm as t3 on t2.id sản_phẩm = t3.id sản_phẩm where t3.tên sản_phẩm = "Film"
select t1.id nhóm hội_thảo kịch from nhóm hội_thảo kịch as t1 join dịch_vụ as t2 on t1.id nhóm hội_thảo kịch = t2.id nhóm hội_thảo kịch join các sản_phẩm as t3 on t2.id sản_phẩm = t3.id sản_phẩm where t3.tên sản_phẩm = "Film"
select tên sản_phẩm , avg ( giá sản_phẩm ) from các sản_phẩm group by tên sản_phẩm
select tên sản_phẩm , avg ( giá sản_phẩm ) from các sản_phẩm group by tên sản_phẩm
select tên sản_phẩm from các sản_phẩm group by tên sản_phẩm having avg ( giá sản_phẩm ) < 1000000
select tên sản_phẩm from các sản_phẩm group by tên sản_phẩm having avg ( giá sản_phẩm ) < 1000000
select sum ( t1.số_lượng đặt_hàng ) from mặt_hàng được đặt as t1 join sản_phẩm as t2 on t1.id sản_phẩm = t2.id sản_phẩm where t2.tên sản_phẩm = "ảnh"
select sum ( t1.số_lượng đặt_hàng ) from mặt_hàng được đặt as t1 join các sản_phẩm as t2 on t1.id sản_phẩm = t2.id sản_phẩm where t2.tên sản_phẩm = "Pictures"
select t1.chi_tiết khác về đơn hàng from lượt đặt_hàng as t1 join mặt_hàng được đặt as t2 on t1.id đơn hàng = t2.id đơn hàng join các sản_phẩm as t3 on t2.id sản_phẩm = t3.id sản_phẩm where t3.giá sản_phẩm > 2000
select t1.chi_tiết khác về đơn hàng from lượt đặt_hàng as t1 join mặt_hàng được đặt as t2 on t1.id đơn hàng = t2.id đơn hàng join các sản_phẩm as t3 on t2.id sản_phẩm = t3.id sản_phẩm where t3.giá sản_phẩm > 2000
select ngày giao hàng thực_tế from lượt đặt_hàng where số_lượng đặt_hàng = 1
select ngày giao hàng thực_tế from lượt đặt_hàng where số_lượng đặt_hàng = 1
select ngày đặt_hàng from lượt đặt_hàng where id đơn hàng in ( select t1.id đơn hàng from mặt_hàng được đặt as t1 join các sản_phẩm as t2 on t1.id sản_phẩm = t2.id sản_phẩm where t2.giá sản_phẩm > 1000 )
select t1.ngày đặt_hàng from lượt đặt_hàng as t1 join mặt_hàng được đặt as t2 on t1.id đơn hàng = t2.id đơn hàng join các sản_phẩm as t3 on t2.id sản_phẩm = t3.id sản_phẩm where t3.giá sản_phẩm > 1000
select count ( distinct mã_tiền tệ ) from nhóm hội_thảo kịch
select count ( * ) from nhóm hội_thảo kịch
select t1.tên cửa_hàng from cửa_hàng as t1 join địa_chỉ as t2 on t1.id địa_chỉ = t2.id địa_chỉ where t2.thành_phố thị_trấn = "Feliciaberg"
select t1.tên cửa_hàng from cửa_hàng as t1 join địa_chỉ as t2 on t1.id địa_chỉ = t2.id địa_chỉ where t2.thành_phố thị_trấn = "Feliciaberg"
select t1.địa_chỉ email cửa_hàng from cửa_hàng as t1 join địa_chỉ as t2 on t1.id cửa_hàng = t2.id địa_chỉ where t2.thành_phố thị_trấn = "Anchorage"
select t1.địa_chỉ email cửa_hàng from cửa_hàng as t1 join khu_vực tiếp_thị as t2 on t1.mã khu_vực tiếp_thị = t2.mã khu_vực tiếp_thị where t2.tên khu_vực tiếp_thị = "Alaska"
select tên thành_phố thị_trấn , count ( * ) from địa_chỉ as t1 join nhóm hội_thảo kịch as t2 on t1.id địa_chỉ = t2.id địa_chỉ group by tên thành_phố thị_trấn
select tên thành_phố thị_trấn , count ( * ) from địa_chỉ as t1 join nhóm hội_thảo kịch as t2 on t1.id địa_chỉ = t2.id địa_chỉ group by tên thành_phố thị_trấn
select mã khu_vực tiếp_thị from khu_vực tiếp_thị group by mã khu_vực tiếp_thị order by count ( * ) desc limit 1
select t1.mã khu_vực tiếp_thị from khu_vực tiếp_thị as t1 join nhóm hội_thảo kịch as t2 on t1.mã khu_vực tiếp_thị = t2.mã khu_vực tiếp_thị group by t1.mã khu_vực tiếp_thị order by count ( * ) desc limit 1
select t1.thành_phố thị_trấn from địa_chỉ as t1 join khách_hàng as t2 on t1.id địa_chỉ = t2.id địa_chỉ except select t1.thành_phố thị_trấn from địa_chỉ as t1 join khách_hàng as t2 on t1.id địa_chỉ = t2.id địa_chỉ join người biểu_diễn as t3 on t2.id khách_hàng = t3.id khách_hàng
select t1.thành_phố thị_trấn from địa_chỉ as t1 join khách_hàng as t2 on t1.id địa_chỉ = t2.id địa_chỉ where t2.id khách_hàng in ( select t3.id khách_hàng from khách_hàng as t3 join người biểu_diễn trong các lượt đặt_hàng as t4 on t3.id khách_hàng = t4.id khách_hàng except select t5.id khách_hàng from khách_hàng as t5 join người biểu_diễn trong các lượt đặt_hàng as t6 on t5.id khách_hàng = t6.id khách_hàng )
select mã trạng_thái from lượt đặt_hàng group by mã trạng_thái order by count ( * ) desc limit 1
select mã trạng_thái from lượt đặt_hàng group by mã trạng_thái order by count ( * ) desc limit 1
select t1.tên cửa_hàng from cửa_hàng as t1 join lượt đặt_hàng as t2 on t1.id cửa_hàng = t2.id cửa_hàng join khách_hàng as t3 on t2.id khách_hàng = t3.id khách_hàng join lượt đặt_hàng của khách_hàng as t4 on t3.id khách_hàng = t4.id khách_hàng join lượt đặt_hàng as t5 on t4.id đơn hàng = t5.id đơn hàng where t5.mã trạng_thái = "stop"
select t1.tên cửa_hàng from cửa_hàng as t1 join lượt đặt_hàng as t2 on t1.id cửa_hàng = t2.id cửa_hàng where t2.mã trạng_thái = "stop"
select tên khách_hàng from khách_hàng except select t1.tên khách_hàng from khách_hàng as t1 join lượt đặt_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng
select tên khách_hàng from khách_hàng except select t1.tên khách_hàng from khách_hàng as t1 join lượt đặt_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng
select avg ( t1.số_lượng đặt_hàng ) from mặt_hàng trong hoá_đơn as t1 join hoá_đơn as t2 on t1.id hoá_đơn = t2.id hoá_đơn join phương_thức thanh_toán as t3 on t2.mã phương_thức thanh_toán = t3.mã phương_thức thanh_toán where t3.mô_tả về phương_thức thanh_toán = "Mastercard"
select avg ( t1.số_lượng đặt_hàng ) from mặt_hàng trong hoá_đơn as t1 join hoá_đơn as t2 on t1.id hoá_đơn = t2.id hoá_đơn join phương_thức thanh_toán as t3 on t2.mã phương_thức thanh_toán = t3.mã phương_thức thanh_toán where t3.mô_tả về phương_thức thanh_toán = "Mastercard"
select t1.id sản_phẩm from mặt_hàng đặt_hàng as t1 join hoá_đơn as t2 on t1.id đơn hàng = t2.id đơn hàng group by t1.id sản_phẩm order by count ( * ) desc limit 1
select t1.id sản_phẩm from mặt_hàng đặt_hàng as t1 join hoá_đơn as t2 on t1.id đơn hàng = t2.id đơn hàng group by t1.id sản_phẩm order by count ( * ) desc limit 1
select mô_tả về loại dịch_vụ from loại dịch_vụ where mô_tả về loại dịch_vụ not like " ảnh " and mô_tả về loại dịch_vụ like " phim "
select t2.mô_tả về loại dịch_vụ from các sản_phẩm as t1 join loại dịch_vụ as t2 on t1.tên sản_phẩm = t2.tên sản_phẩm where t2.tên sản_phẩm = "pictures" intersect select t2.mô_tả về loại dịch_vụ from các sản_phẩm as t1 join loại dịch_vụ as t2 on t1.tên sản_phẩm = t2.tên sản_phẩm where t2.tên sản_phẩm = "phim"
select count ( * ) from tài_khoản
select count ( * ) from tài_khoản
select count ( distinct id khách_hàng ) from tài_khoản
select count ( * ) from tài_khoản
select id tài_khoản , ngày mở tài_khoản , tên tài_khoản , chi_tiết khác về tài_khoản from tài_khoản
select id tài_khoản , ngày mở tài_khoản , tên tài_khoản , chi_tiết khác về tài_khoản from tài_khoản
select t1.id tài_khoản , t1.tên tài_khoản , t1.ngày mở tài_khoản , t1.chi_tiết khác về tài_khoản from tài_khoản as t1 join khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng where t2.tên khách_hàng = "Meaghan Afghanistan"
select t1.id tài_khoản , t1.tên tài_khoản , t1.ngày mở tài_khoản , t1.chi_tiết khác về tài_khoản from tài_khoản as t1 join khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng where t2.tên khách_hàng = "Meaghan Afghanistan"
select tên tài_khoản , chi_tiết khác về tài_khoản from tài_khoản as t1 join khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng where t2.tên khách_hàng = "Meaghan" and t2.họ của khách_hàng = "Keeling"
select t1.tên tài_khoản , t1.chi_tiết khác về tài_khoản from tài_khoản as t1 join khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng where t2.tên khách_hàng = "Meaghan Afghanistan_Keeling"
select tên khách_hàng , họ khách_hàng from tài_khoản where tên tài_khoản = "900"
select t1.tên khách_hàng , t1.chữ_cái đầu của tên đệm khách_hàng , t1.họ của khách_hàng from khách_hàng as t1 join tài_khoản as t2 on t1.id khách_hàng = t2.id khách_hàng where t2.tên tài_khoản = "900"
select count ( * ) from khách_hàng where id khách_hàng not in ( select id khách_hàng from tài_khoản )
select count ( * ) from khách_hàng where id khách_hàng not in ( select id khách_hàng from tài_khoản )
select tên khách_hàng , họ khách_hàng , số điện_thoại from khách_hàng where id tài_khoản in ( select id tài_khoản from tài_khoản )
select tên khách_hàng , họ của khách_hàng , số điện_thoại from khách_hàng where id khách_hàng in ( select id khách_hàng from tài_khoản )
select id khách_hàng from khách_hàng except select id khách_hàng from tài_khoản
select tên khách_hàng from khách_hàng where id khách_hàng not in ( select id khách_hàng from tài_khoản )
select count ( * ) , id khách_hàng from tài_khoản group by id khách_hàng
select t1.id khách_hàng , count ( * ) from khách_hàng as t1 join tài_khoản as t2 on t1.id khách_hàng = t2.id khách_hàng
select tên khách_hàng , họ của khách_hàng , id khách_hàng from tài_khoản group by id khách_hàng order by count ( * ) desc limit 1
select t1.id khách_hàng , t1.tên khách_hàng , t1.họ của khách_hàng from khách_hàng as t1 join tài_khoản as t2 on t1.id khách_hàng = t2.id khách_hàng group by t1.id khách_hàng order by count ( * ) desc limit 1
select t1.id khách_hàng , t1.tên khách_hàng , t1.họ của khách_hàng , count ( * ) from khách_hàng as t1 join tài_khoản as t2 on t1.id khách_hàng = t2.id khách_hàng group by t1.id khách_hàng
select tên khách_hàng , id khách_hàng , count ( * ) from tài_khoản group by tên khách_hàng
select tên khách_hàng , id khách_hàng from tài_khoản group by tên khách_hàng having count ( * ) >= 2
select tên khách_hàng , id khách_hàng from tài_khoản group by tên khách_hàng having count ( * ) >= 2
select count ( * ) from khách_hàng
select count ( * ) from khách_hàng
select giới_tính , count ( * ) from khách_hàng group by giới_tính
select giới_tính , count ( * ) from khách_hàng group by giới_tính
select count ( * ) from giao_dịch tài_chính
select count ( * ) from giao_dịch tài_chính
select count ( * ) , t1.id tài_khoản from giao_dịch tài_chính as t1 join tài_khoản as t2 on t1.id tài_khoản = t2.id tài_khoản group by t1.id tài_khoản
select count ( * ) , t1.id tài_khoản from giao_dịch tài_chính as t1 join tài_khoản as t2 on t1.id tài_khoản = t2.id tài_khoản group by t1.id tài_khoản
select count ( * ) from giao_dịch tài_chính where id tài_khoản = ( select id tài_khoản from tài_khoản where tên tài_khoản = "337" )
select count ( * ) from giao_dịch tài_chính where id tài_khoản = ( select id tài_khoản from tài_khoản where tên tài_khoản = "337" )
select avg ( số tiền giao_dịch ) , min ( số tiền giao_dịch ) , max ( số tiền giao_dịch ) , sum ( số tiền giao_dịch ) from giao_dịch tài_chính
select avg ( số tiền giao_dịch ) , min ( số tiền giao_dịch ) , max ( số tiền giao_dịch ) , sum ( số tiền giao_dịch ) from giao_dịch tài_chính
select id giao_dịch from giao_dịch tài_chính where số tiền giao_dịch > ( select avg ( số tiền giao_dịch ) from giao_dịch tài_chính )
select id giao_dịch from giao_dịch tài_chính where số tiền giao_dịch > ( select avg ( số tiền giao_dịch ) from giao_dịch tài_chính )
select loại giao_dịch , sum ( số tiền giao_dịch ) from giao_dịch tài_chính group by loại giao_dịch
select loại giao_dịch , sum ( số tiền giao_dịch ) from giao_dịch tài_chính group by loại giao_dịch
select tên tài_khoản , id tài_khoản , count ( * ) from giao_dịch tài_chính group by tên tài_khoản
select t1.tên tài_khoản , t1.id tài_khoản , count ( * ) from tài_khoản as t1 join giao_dịch tài_chính as t2 on t1.id tài_khoản = t2.id tài_khoản group by t1.tên tài_khoản
select id tài_khoản from giao_dịch tài_chính group by id tài_khoản order by count ( * ) desc limit 1
select t1.id tài_khoản from tài_khoản as t1 join giao_dịch tài_chính as t2 on t1.id tài_khoản = t2.id tài_khoản group by t1.id tài_khoản order by count ( * ) desc limit 1
select t1.tên tài_khoản , t1.id tài_khoản from tài_khoản as t1 join giao_dịch tài_chính as t2 on t1.id tài_khoản = t2.id tài_khoản group by t1.tên tài_khoản having count ( * ) >= 4
select tên tài_khoản , id tài_khoản from tài_khoản as t1 join giao_dịch tài_chính as t2 on t1.id tài_khoản = t2.id tài_khoản group by tên tài_khoản having count ( * ) >= 4
select distinct kích_thước sản_phẩm from sản_phẩm
select distinct kích_thước sản_phẩm from sản_phẩm
select distinct màu sản_phẩm from sản_phẩm
select distinct màu sản_phẩm from sản_phẩm
select số_hoá đơn , count ( * ) from giao_dịch tài_chính group by số_hoá đơn
select count ( * ) , số_hoá đơn from giao_dịch tài_chính group by số_hoá đơn
select t1.số_hoá đơn , t1.ngày lập hoá_đơn from hoá_đơn as t1 join giao_dịch tài_chính as t2 on t1.id đơn hàng = t2.id đơn hàng group by t1.số_hoá đơn order by count ( * ) desc limit 1
select t1.số_hoá đơn , t1.ngày lập hoá_đơn from hoá_đơn as t1 join giao_dịch tài_chính as t2 on t1.số_hoá đơn = t2.số_hoá đơn order by t2.số tiền giao_dịch desc limit 1
select count ( * ) from hoá_đơn
select count ( * ) from hoá_đơn
select ngày lập hoá_đơn , id đơn hàng , chi_tiết đặt_hàng from đơn đặt_hàng
select ngày lập hoá_đơn , id đơn hàng , chi_tiết đặt_hàng from đơn đặt_hàng
select id đơn hàng , count ( * ) from hoá_đơn group by id đơn hàng
select count ( * ) , id đơn hàng from hoá_đơn group by id đơn hàng
select t1.id đơn hàng , t1.chi_tiết đặt_hàng from đơn hàng as t1 join hoá_đơn as t2 on t1.id đơn hàng = t2.id đơn hàng group by t1.id đơn hàng having count ( * ) > 2
select t1.id đơn hàng , t1.chi_tiết đặt_hàng from đơn hàng as t1 join hoá_đơn as t2 on t1.id đơn hàng = t2.id đơn hàng group by t1.id đơn hàng having count ( * ) >= 2
select t1.id khách_hàng , t1.họ của khách_hàng , t1.số điện_thoại from khách_hàng as t1 join đơn đặt_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng group by t1.id khách_hàng order by count ( * ) desc limit 1
select t1.họ của khách_hàng , t1.id khách_hàng , t1.số điện_thoại from khách_hàng as t1 join đơn đặt_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng group by t1.họ của khách_hàng order by count ( * ) desc limit 1
select tên sản_phẩm from sản_phẩm where id sản_phẩm not in ( select t1.id sản_phẩm from mặt_hàng được đặt as t1 join đơn đặt_hàng as t2 on t1.id đơn hàng = t2.id đơn hàng )
select tên sản_phẩm from sản_phẩm where id sản_phẩm not in ( select t1.id sản_phẩm from mặt_hàng được đặt as t1 join đơn đặt_hàng as t2 on t1.id đơn hàng = t2.id đơn hàng )
select t1.tên sản_phẩm , sum ( t2.số_lượng sản_phẩm ) from sản_phẩm as t1 join mặt_hàng được đặt as t2 on t1.id sản_phẩm = t2.id sản_phẩm group by t1.tên sản_phẩm
select t1.tên sản_phẩm , sum ( t2.số_lượng sản_phẩm ) from sản_phẩm as t1 join mặt_hàng được đặt as t2 on t1.id sản_phẩm = t2.id sản_phẩm group by t1.tên sản_phẩm
select id đơn hàng , count ( * ) from mặt_hàng được đặt group by id đơn hàng
select count ( * ) , id đơn hàng from mặt_hàng được đặt group by id đơn hàng
select id sản_phẩm , count ( distinct id đơn hàng ) from mặt_hàng được đặt as t1 join sản_phẩm as t2 on t1.id sản_phẩm = t2.id sản_phẩm group by id sản_phẩm
select count ( distinct t1.id đơn hàng ) from đơn đặt_hàng as t1 join mặt_hàng được đặt as t2 on t1.id đơn hàng = t2.id đơn hàng join sản_phẩm as t3 on t2.id sản_phẩm = t3.id sản_phẩm
select t1.tên sản_phẩm , count ( * ) from sản_phẩm as t1 join mặt_hàng được đặt as t2 on t1.id sản_phẩm = t2.id sản_phẩm group by t1.tên sản_phẩm
select t1.tên sản_phẩm , count ( * ) from sản_phẩm as t1 join mặt_hàng được đặt as t2 on t1.id sản_phẩm = t2.id sản_phẩm group by t1.tên sản_phẩm
select id đơn hàng , count ( * ) from mặt_hàng được đặt group by id đơn hàng
select count ( * ) , id đơn hàng from mặt_hàng được đặt group by id đơn hàng
select t1.id đơn hàng , sum ( t2.số_lượng sản_phẩm ) from đơn đặt_hàng as t1 join mặt_hàng được đặt as t2 on t1.id đơn hàng = t2.id đơn hàng group by t1.id đơn hàng
select id đơn hàng , sum ( t1.số_lượng sản_phẩm ) from mặt_hàng được đặt as t1 join đơn đặt_hàng as t2 on t1.id đơn hàng = t2.id đơn hàng group by t2.id đơn hàng
select count ( * ) from sản_phẩm where id sản_phẩm not in ( select t1.id sản_phẩm from mặt_hàng được đặt as t1 join đơn đặt_hàng as t2 on t1.id đơn hàng = t2.id đơn hàng )
select count ( * ) from sản_phẩm where id sản_phẩm not in ( select t1.id sản_phẩm from mặt_hàng được đặt as t1 join đơn đặt_hàng as t2 on t1.id đơn hàng = t2.id đơn hàng )
select count ( * ) from địa_chỉ where quốc_gia = "United_States"
select distinct thành_phố from địa_chỉ
select tiểu_bang , count ( * ) from địa_chỉ group by tiểu_bang
select tên khách_hàng , điện_thoại khách_hàng from khách_hàng where id khách_hàng not in ( select t1.id khách_hàng from lịch_sử địa_chỉ khách_hàng as t1 join địa_chỉ as t2 on t1.id địa_chỉ = t2.id địa_chỉ join khách_hàng as t3 on t3.id khách_hàng = t1.id khách_hàng where t2.địa_chỉ dòng 1 toà nhà = " ")
select t1.tên khách_hàng from khách_hàng as t1 join lượt đặt_hàng của khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng group by t1.id khách_hàng order by count ( * ) desc limit 1
select mã loại sản_phẩm from sản_phẩm group by mã loại sản_phẩm having count ( * ) >= 2
select t1.tên khách_hàng from khách_hàng as t1 join lượt đặt_hàng của khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng where t2.mã trạng_thái đơn hàng = "Đã hoàn_thành" intersect select t1.tên khách_hàng from khách_hàng as t1 join lượt đặt_hàng của khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng where t2.mã trạng_thái đơn hàng = "Đã hoàn_thành"
select mã phương_thức thanh_toán , tên khách_hàng , điện_thoại khách_hàng from khách_hàng order by mã_số khách_hàng desc
select t1.tên sản_phẩm , sum ( t2.số_lượng đặt_hàng ) from sản_phẩm as t1 join mặt_hàng được đặt as t2 on t1.id sản_phẩm = t2.id sản_phẩm group by t1.tên sản_phẩm
select max ( giá sản_phẩm ) , min ( giá sản_phẩm ) , avg ( giá sản_phẩm ) from sản_phẩm
select count ( * ) from sản_phẩm where giá sản_phẩm > ( select avg ( giá sản_phẩm ) from sản_phẩm )
select t1.tên khách_hàng , t2.thành_phố , t1.từ ngày , t1.đến ngày from lịch_sử địa_chỉ khách_hàng as t1 join địa_chỉ as t2 on t1.id địa_chỉ = t2.id địa_chỉ
select t1.tên khách_hàng from khách_hàng as t1 join lượt đặt_hàng của khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng join lịch_sử địa_chỉ khách_hàng as t3 on t2.id khách_hàng = t3.id khách_hàng where t1.mã phương_thức thanh_toán = "credit card" group by t1.tên khách_hàng having count ( * ) > 2
select t1.tên khách_hàng , t1.điện_thoại khách_hàng from khách_hàng as t1 join lượt đặt_hàng của khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng join mặt_hàng được đặt as t3 on t2.id đơn hàng = t3.id đơn hàng group by t1.id khách_hàng order by count ( * ) desc limit 1
select mã loại sản_phẩm , tên sản_phẩm from sản_phẩm where giá sản_phẩm > 1000 or giá sản_phẩm < 500
select count ( * ) from bộ_trưởng where tuổi > 56
select tên , sinh ra ở tiểu_bang , tuổi from bộ_trưởng order by tuổi
select năm thành_lập , tên , ngân_sách tính theo tỷ from các bộ
select max ( ngân_sách tính theo tỷ ) , min ( ngân_sách tính theo tỷ ) from các bộ
select avg ( số_lượng nhân_viên ) from các bộ where xếp_hạng between 10 and 15
select tên from bộ_trưởng where sinh ra ở tiểu_bang <> "california"
select distinct t1.năm thành_lập from các bộ as t1 join sự quản_lý as t2 on t1.id các bộ = t2.id các bộ join bộ_trưởng as t3 on t2.id người đứng đầu = t3.id người đứng đầu where t3.sinh ra ở tiểu_bang = "Alabama"
select sinh ra ở tiểu_bang from bộ_trưởng group by sinh ra ở tiểu_bang having count ( * ) >= 3
select năm thành_lập from các bộ group by năm thành_lập order by count ( * ) desc limit 1
select t1.tên , t1.số_lượng nhân_viên from các bộ as t1 join sự quản_lý as t2 on t1.id các bộ = t2.id các bộ join bộ_trưởng as t3 on t2.id người đứng đầu = t3.id người đứng đầu
select count ( distinct vai_trò tạm_thời ) from sự quản_lý
select count ( * ) from các bộ where id các bộ not in ( select id các bộ from bộ_trưởng )
select distinct tuổi from bộ_trưởng where vai_trò tạm_thời = "tạm_thời"
select sinh ra ở tiểu_bang from bộ_trưởng where tên = "Tài_chính" intersect select sinh ra ở tiểu_bang from bộ_trưởng where tên = "An_ninh nội_địa"
select t1.id các bộ , t1.tên , count ( * ) from các bộ as t1 join bộ_trưởng as t2 on t1.id các bộ = t2.id các bộ group by t1.id các bộ having count ( * ) > 1
select id người đứng đầu , tên from bộ_trưởng where tên like "% Ha %"
select id from xe
select id from xe
select count ( * ) from xe
select count ( * ) from xe
select chi_tiết về xe from xe where id = 1
select chi_tiết về xe from xe where id = 1
select tên , tên đệm , họ from nhân_viên
select tên , tên đệm , họ from nhân_viên
select ngày_sinh from nhân_viên where tên = "Janessa" and họ = "Sawayn"
select ngày_sinh from nhân_viên where tên = "Janessa" and middle_name = "Sawayn"
select ngày nhân_viên gia_nhập from nhân_viên where tên = "Janessa" and họ = "Sawayn"
select ngày nhân_viên gia_nhập from nhân_viên where tên = "Janessa" and middle_name = "Sawayn"
select ngày nhân_viên rời đi from nhân_viên where tên = "Janessa" and họ = "Sawayn"
select ngày nhân_viên rời đi from nhân_viên where tên = "Janessa" and middle_name = "Sawayn"
select count ( * ) from nhân_viên where tên = "Ludie"
select count ( * ) from nhân_viên where tên = "Ludie"
select biệt_danh from nhân_viên where tên = "Janessa" and họ = "Sawayn"
select biệt_danh from nhân_viên where tên = "Janessa" and middle_name = "Sawayn"
select count ( * ) from nhân_viên
select count ( * ) from nhân_viên
select t3.thành_phố from nhân_viên as t1 join địa_chỉ nhân_viên as t2 on t1.id nhân_viên = t2.id nhân_viên join địa_chỉ as t3 on t2.id địa_chỉ nhân_viên = t3.id địa_chỉ where t1.tên = "Janessa" and t1.họ = "Sawayn"
select t3.thành_phố from nhân_viên as t1 join khách_hàng as t2 on t1.id nhân_viên = t2.id nhân_viên join địa_chỉ as t3 on t2.id địa_chỉ khách_hàng = t3.id địa_chỉ where t1.tên = "Janessa" and t1.họ = "Sawayn"
select t1.quốc_gia , t1.tiểu_bang from địa_chỉ as t1 join nhân_viên as t2 on t1.id địa_chỉ = t2.id địa_chỉ nhân_viên where t2.tên = "Janessa" and t2.họ = "Sawayn"
select t3.quốc_gia , t3.tiểu_bang from nhân_viên as t1 join địa_chỉ nhân_viên as t2 on t1.id nhân_viên = t2.id nhân_viên join địa_chỉ as t3 on t2.id địa_chỉ nhân_viên = t3.id địa_chỉ where t1.tên = "Janessa" and t1.họ = "Sawayn"
select sum ( t1.giờ học ) from bài giảng as t1 join khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng where t2.tên = "Rylan" and t2.họ = "Goodwin"
select sum ( t1.ngày diễn ra bài giảng ) from bài giảng as t1 join khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng where t2.tên = "Rylan" and t2.họ = "Goodwin"
select t3.mã bưu_điện from nhân_viên as t1 join địa_chỉ nhân_viên as t2 on t1.id nhân_viên = t2.id nhân_viên join địa_chỉ as t3 on t2.id địa_chỉ nhân_viên = t3.id địa_chỉ where t1.tên = "Janessa" and t1.họ = "Sawayn"
select t3.mã bưu_điện from nhân_viên as t1 join địa_chỉ nhân_viên as t2 on t1.id nhân_viên = t2.id nhân_viên join địa_chỉ as t3 on t2.id địa_chỉ nhân_viên = t3.id địa_chỉ where t1.tên = "Janessa" and t1.họ = "Sawayn"
select count ( * ) from nhân_viên as t1 join địa_chỉ as t2 on t1.id địa_chỉ nhân_viên = t2.id địa_chỉ where t2.tiểu_bang = "Georgia"
select count ( * ) from nhân_viên as t1 join địa_chỉ as t2 on t1.id địa_chỉ nhân_viên = t2.id địa_chỉ where t2.tiểu_bang = "Georgia"
select tên , họ from nhân_viên where id địa_chỉ nhân_viên in ( select id địa_chỉ nhân_viên from địa_chỉ where thành_phố = "Damianfort" )
select tên , họ from nhân_viên where id địa_chỉ nhân_viên in ( select id địa_chỉ nhân_viên from địa_chỉ where thành_phố = "Damianfort" )
select t1.thành_phố , count ( * ) from địa_chỉ as t1 join nhân_viên as t2 on t1.id địa_chỉ = t2.id địa_chỉ nhân_viên group by t1.thành_phố order by count ( * ) desc limit 1
select thành_phố , count ( * ) from địa_chỉ group by thành_phố order by count ( * ) desc limit 1
select t2.tiểu_bang from nhân_viên as t1 join địa_chỉ nhân_viên as t2 on t1.id nhân_viên = t2.id địa_chỉ nhân_viên join địa_chỉ as t3 on t2.id địa_chỉ nhân_viên = t3.id địa_chỉ where t3.tiểu_bang in ( select t4.tiểu_bang from nhân_viên as t4 join địa_chỉ nhân_viên as t5 on t4.id nhân_viên = t5.id địa_chỉ nhân_viên join địa_chỉ as t6 on t5.id địa_chỉ nhân_viên = t6.id địa_chỉ where t6.tiểu_bang in ( 2 , 4 ) group by t6.tiểu_bang having count ( * ) between 2 and 4 )
select tiểu_bang from địa_chỉ group by tiểu_bang having count ( * ) between 2 and 4
select tên , họ from khách_hàng
select tên , họ from khách_hàng
select địa_chỉ email , ngày_sinh from khách_hàng where tên = "Carole"
select địa_chỉ email , ngày_sinh from khách_hàng where tên = "Carole"
select số điện_thoại , địa chỉ email from khách_hàng where số tiền còn thiếu > 2000
select số điện_thoại , địa chỉ email from khách_hàng where số tiền còn thiếu > 2000
select mã trạng_thái khách_hàng , số điện_thoại_di_động , địa chỉ email from khách_hàng where họ = "Kohler" or tên = "Marina"
select mã trạng_thái khách_hàng , số điện_thoại_di_động , địa chỉ email from khách_hàng where họ = "Kohler" or tên = "Marina"
select ngày_sinh from khách_hàng where mã trạng_thái khách_hàng = "Good"
select ngày_sinh from khách_hàng where mã trạng_thái khách_hàng = "Khách_hàng tốt"
select ngày trở_thành khách_hàng from khách_hàng where tên = "Carole" and họ = "Bernhard"
select ngày trở_thành khách_hàng from khách_hàng where tên = "Carole" and họ = "Bernhard"
select count ( * ) from khách_hàng
select count ( * ) from khách_hàng
select mã trạng_thái khách_hàng , count ( * ) from khách_hàng group by mã trạng_thái khách_hàng
select mã trạng_thái khách_hàng , count ( * ) from khách_hàng group by mã trạng_thái khách_hàng
select mã trạng_thái khách_hàng from khách_hàng group by mã trạng_thái khách_hàng order by count ( * ) limit 1
select mã trạng_thái khách_hàng from khách_hàng group by mã trạng_thái khách_hàng order by count ( * ) limit 1
select count ( * ) from bài giảng as t1 join khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng where t2.tên = "Rylan" and t2.họ = "Goodwin"
select count ( * ) from bài giảng as t1 join khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng join nhân_viên as t3 on t1.id nhân_viên = t3.id nhân_viên where t2.tên = "Rylan" and t2.họ = "Goodwin"
select max ( số tiền còn thiếu ) , min ( số tiền còn thiếu ) , avg ( số tiền còn thiếu ) from khách_hàng
select max ( số tiền còn thiếu ) , min ( số tiền còn thiếu ) , avg ( số tiền còn thiếu ) from khách_hàng
select tên , họ from khách_hàng where số tiền còn thiếu between 1000 and 3000
select tên , họ from khách_hàng where số tiền còn thiếu between 1000 and 3000
select tên , họ from khách_hàng where id địa_chỉ khách_hàng in ( select t1.id địa_chỉ khách_hàng from địa_chỉ as t2 join khách_hàng as t1 on t2.id địa_chỉ = t1.id địa_chỉ khách_hàng where t2.thành_phố = "Lockmanfurt" )
select tên , họ from khách_hàng where id địa_chỉ khách_hàng in ( select t1.id địa_chỉ khách_hàng from địa_chỉ as t2 join khách_hàng as t1 on t2.id địa_chỉ = t1.id địa_chỉ khách_hàng where t2.thành_phố = "Lockmanfurt" )
select t3.quốc_gia from khách_hàng as t1 join địa_chỉ khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng join địa_chỉ as t3 on t2.id địa_chỉ = t3.id địa_chỉ where t1.tên = "Carole" and t1.họ = "Bernhard"
select t3.quốc_gia from khách_hàng as t1 join địa_chỉ khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng join địa_chỉ as t3 on t2.id địa_chỉ = t3.id địa_chỉ where t1.tên = "Carole" and t1.họ = "Bernhard"
select t1.mã bưu_điện from địa_chỉ as t1 join khách_hàng as t2 on t1.id địa_chỉ = t2.id địa_chỉ khách_hàng join nhân_viên as t3 on t2.id nhân_viên = t3.id nhân_viên where t3.tên = "Carole" and t3.họ = "Bernhard"
select t1.mã bưu_điện from địa_chỉ as t1 join khách_hàng as t2 on t1.id địa_chỉ = t2.id địa_chỉ khách_hàng join nhân_viên as t3 on t2.id nhân_viên = t3.id nhân_viên where t3.tên = "Carole" and t3.họ = "Bernhard"
select t1.thành_phố from địa_chỉ as t1 join khách_hàng as t2 on t1.id địa_chỉ = t2.id địa_chỉ khách_hàng group by t1.thành_phố order by count ( * ) desc limit 1
select thành_phố from địa_chỉ group by thành_phố order by count ( * ) desc limit 1
select sum ( t1.số tiền thanh_toán ) from khoản thanh_toán của khách_hàng as t1 join khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng where t2.tên = "Carole" and t2.họ = "Bernhard"
select sum ( t1.số tiền thanh_toán ) from khoản thanh_toán của khách_hàng as t1 join khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng where t2.tên = "Carole" and t2.họ = "Bernhard"
select count ( * ) from khách_hàng where id khách_hàng not in ( select id khách_hàng from khoản thanh_toán của khách_hàng )
select count ( * ) from khách_hàng where id khách_hàng not in ( select id khách_hàng from khoản thanh_toán của khách_hàng )
select t1.tên , t1.họ from khách_hàng as t1 join khoản thanh_toán của khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng group by t1.id khách_hàng having count ( * ) > 2
select t1.tên , t1.họ from khách_hàng as t1 join khoản thanh_toán của khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng group by t1.id khách_hàng having count ( * ) > 2
select mã phương_thức thanh_toán , count ( * ) from khoản thanh_toán của khách_hàng group by mã phương_thức thanh_toán
select mã phương_thức thanh_toán , count ( * ) from khoản thanh_toán của khách_hàng group by mã phương_thức thanh_toán
select count ( * ) from bài giảng where mã trạng_thái bài giảng = "Đã huỷ"
select count ( * ) from bài giảng where mã trạng_thái bài giảng = "Đã huỷ"
select t1.id bài giảng from bài giảng as t1 join nhân_viên as t2 on t1.id nhân_viên = t2.id nhân_viên where t2.tên = "Janessa" and t2.họ = "Sawayn" and biệt_danh like "% s %"
select t1.id bài giảng from bài giảng as t1 join nhân_viên as t2 on t1.id nhân_viên = t2.id nhân_viên where t2.tên = "Janessa" and biệt_danh like "% s %"
select count ( * ) from bài giảng as t1 join nhân_viên as t2 on t1.id nhân_viên = t2.id nhân_viên where t2.tên like "% a %"
select count ( * ) from bài giảng as t1 join nhân_viên as t2 on t1.id nhân_viên = t2.id nhân_viên where t2.tên like "% a %"
select sum ( t1.ngày diễn ra bài giảng ) from bài giảng as t1 join nhân_viên as t2 on t1.id nhân_viên = t2.id nhân_viên where t2.tên = "Janessa" and t2.họ = "Sawayn"
select sum ( t1.giờ học ) from bài giảng as t1 join nhân_viên as t2 on t1.id nhân_viên = t2.id nhân_viên where t2.tên = "Janessa" and t2.tên đệm = "Sawayn"
select avg ( giá ) from bài giảng as t1 join nhân_viên as t2 on t1.id nhân_viên = t2.id nhân_viên where t2.tên = "Janessa" and t2.họ = "Sawayn"
select avg ( giá ) from bài giảng as t1 join nhân_viên as t2 on t1.id nhân_viên = t2.id nhân_viên where t2.tên = "Janessa" and t2.tên đệm = "Sawayn"
select count ( * ) from bài giảng as t1 join khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng join nhân_viên as t3 on t1.id nhân_viên = t3.id nhân_viên where t2.tên = "Ray"
select count ( * ) from bài giảng as t1 join khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng join nhân_viên as t3 on t1.id nhân_viên = t3.id nhân_viên where t2.tên = "Ray"
select t2.họ from khách_hàng as t1 join nhân_viên as t2 on t1.id khách_hàng = t2.id khách_hàng union select t2.họ from khách_hàng as t1 join nhân_viên as t2 on t1.id khách_hàng = t2.id khách_hàng
select t1.họ from khách_hàng as t1 join nhân_viên as t2 on t1.id khách_hàng = t2.id khách_hàng intersect select t1.họ from nhân_viên as t1 join khách_hàng as t2 on t1.id nhân_viên = t2.id nhân_viên
select tên from nhân_viên where id nhân_viên not in ( select t1.id nhân_viên from bài giảng as t1 join khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng )
select tên from nhân_viên where id nhân_viên not in ( select t1.id nhân_viên from bài giảng as t1 join khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng )
select t1.id , t1.chi_tiết về xe from xe as t1 join bài giảng as t2 on t1.id = t2.id xe group by t1.id order by count ( * ) desc limit 1
select count ( * ) from nhân_viên
select count ( * ) from nhân_viên
select tên from nhân_viên order by tuổi
select tên from nhân_viên order by tuổi
select count ( * ) , thành_phố from nhân_viên group by thành_phố
select count ( * ) , thành_phố from nhân_viên group by thành_phố
select thành_phố from nhân_viên where tuổi < 30 group by thành_phố having count ( * ) > 1
select thành_phố from nhân_viên where tuổi < 30 group by thành_phố having count ( * ) > 1
select địa_điểm , count ( * ) from cửa_hàng group by địa_điểm
select địa_điểm , count ( * ) from cửa_hàng group by địa_điểm
select tên người_quản_lý , quận from cửa_hàng order by số_lượng sản_phẩm desc limit 1
select tên người_quản_lý , quận from cửa_hàng order by số_lượng sản_phẩm desc limit 1
select max ( số_lượng sản_phẩm ) , min ( số_lượng sản_phẩm ) from cửa_hàng
select max ( số_lượng sản_phẩm ) , min ( số_lượng sản_phẩm ) from cửa_hàng
select tên , địa_điểm , quận from cửa_hàng order by số_lượng sản_phẩm desc
select tên , địa_điểm , quận from cửa_hàng order by số_lượng sản_phẩm desc
select tên from cửa_hàng where số_lượng sản_phẩm > ( select avg ( số_lượng sản_phẩm ) from cửa_hàng )
select tên from cửa_hàng where số_lượng sản_phẩm > ( select avg ( số_lượng sản_phẩm ) from cửa_hàng )
select tên from đánh_giá group by id nhân_viên order by count ( * ) desc limit 1
select tên from đánh_giá group by tên order by count ( * ) desc limit 1
select tên from đánh_giá order by tiền thưởng desc limit 1
select tên from đánh_giá order by tiền thưởng desc limit 1
select tên from nhân_viên where id nhân_viên not in ( select id nhân_viên from đánh_giá )
select tên from nhân_viên where id nhân_viên not in ( select id nhân_viên from đánh_giá )
select t1.tên from cửa_hàng as t1 join tuyển_dụng as t2 on t1.id cửa_hàng = t2.id cửa_hàng group by t1.tên order by count ( * ) desc limit 1
select t1.tên from cửa_hàng as t1 join tuyển_dụng as t2 on t1.id cửa_hàng = t2.id cửa_hàng group by t1.tên order by count ( * ) desc limit 1
select tên from cửa_hàng where id cửa_hàng not in ( select id cửa_hàng from tuyển_dụng )
select tên from cửa_hàng where id cửa_hàng not in ( select id cửa_hàng from tuyển_dụng )
select t1.tên , count ( * ) from cửa_hàng as t1 join tuyển_dụng as t2 on t1.id cửa_hàng = t2.id cửa_hàng group by t1.tên
select tên , số_lượng nhân_viên from cửa_hàng
select sum ( tiền thưởng ) from đánh_giá
select sum ( tiền thưởng ) from đánh_giá
select * from tuyển_dụng
select * from tuyển_dụng
select t1.quận from cửa_hàng as t1 join cửa_hàng as t2 on t1.quận = t2.quận where t1.số_lượng sản_phẩm < 3000 and t2.số_lượng sản_phẩm > 10000
select t1.quận from cửa_hàng as t1 join cửa_hàng as t2 on t1.quận = t2.quận where t1.số_lượng sản_phẩm < 3000 and t2.số_lượng sản_phẩm > 10000
select count ( distinct địa_điểm ) from cửa_hàng
select count ( distinct địa_điểm ) from cửa_hàng
select quốc_gia from hãng hàng_không where tên hãng hàng_không = "JetBlue_Airways"
select t1.quốc_gia from sân_bay as t1 join chuyến bay as t2 on t1.mã sân_bay = t2.sân_bay khởi_hành join hãng hàng_không as t3 on t2.hãng hàng_không = t3.id hãng hàng_không where t3.tên hãng hàng_không = "JetBlue_Airways"
select tên viết tắt from hãng hàng_không where tên hãng hàng_không = "JetBlue_Airways"
select tên viết tắt from hãng hàng_không where tên hãng hàng_không = "JetBlue_Airways"
select tên hãng hàng_không , tên viết tắt from hãng hàng_không where quốc_gia = "United_States"
select tên hãng hàng_không , tên viết tắt from hãng hàng_không where quốc_gia = "United_States"
select mã sân_bay , tên sân_bay from sân_bay where thành_phố = "Anthony"
select t1.mã sân_bay , t1.tên sân_bay from sân_bay as t1 join chuyến bay as t2 on t1.mã sân_bay = t2.sân_bay khởi_hành join hãng hàng_không as t3 on t2.hãng hàng_không = t3.id hãng hàng_không where t1.thành_phố = "Anthony"
select count ( * ) from hãng hàng_không
select count ( * ) from hãng hàng_không
select count ( * ) from sân_bay
select count ( * ) from sân_bay
select count ( * ) from chuyến bay
select count ( * ) from chuyến bay
select tên hãng hàng_không from hãng hàng_không where tên viết tắt = "UAL"
select tên hãng hàng_không from hãng hàng_không where tên viết tắt = "UAL"
select count ( * ) from hãng hàng_không where quốc_gia = "United_States"
select count ( * ) from hãng hàng_không where quốc_gia = "United_States"
select thành_phố , quốc_gia from sân_bay where tên sân_bay = "Alton"
select thành_phố , quốc_gia from sân_bay where tên sân_bay = "Alton"
select tên sân_bay from sân_bay where mã sân_bay = "AKO"
select tên sân_bay from sân_bay where mã sân_bay = "AKO"
select tên sân_bay from sân_bay where thành_phố = "Aberdeen"
select tên sân_bay from sân_bay where thành_phố = "Aberdeen"
select count ( * ) from chuyến bay where sân_bay khởi_hành = "APG"
select count ( * ) from chuyến bay where sân_bay khởi_hành = "APG"
select count ( * ) from chuyến bay where sân_bay đích = "ATO"
select count ( * ) from chuyến bay where sân_bay đích = ( select mã sân_bay from sân_bay where tên sân_bay = "ATO" )
select count ( * ) from chuyến bay where sân_bay khởi_hành = ( select sân_bay from sân_bay where thành_phố = "Aberdeen" )
select count ( * ) from chuyến bay where sân_bay khởi_hành = ( select sân_bay from sân_bay where thành_phố = "Aberdeen" )
select count ( * ) from sân_bay as t1 join chuyến bay as t2 on t1.mã sân_bay = t2.sân_bay đích join thành_phố as t3 on t3.mã thành_phố = t1.mã thành_phố where t3.thành_phố = "Aberdeen"
select count ( * ) from sân_bay as t1 join chuyến bay as t2 on t1.mã sân_bay = t2.sân_bay đích join hãng hàng_không as t3 on t2.hãng hàng_không = t3.id hãng hàng_không where t1.thành_phố = "Aberdeen"
select count ( * ) from sân_bay as t1 join chuyến bay as t2 on t1.mã sân_bay = t2.sân_bay khởi_hành join sân_bay as t3 on t2.sân_bay đích = t3.mã sân_bay where t1.thành_phố = "Aberdeen" and t3.thành_phố = "Ashley"
select count ( * ) from sân_bay as t1 join sân_bay as t2 on t1.mã sân_bay = "Aberdeen" join sân_bay as t3 on t2.mã sân_bay = "Ashley" join chuyến bay as t4 on t4.sân_bay khởi_hành = t1.id sân_bay join t4.sân_bay đích = t3.id sân_bay
select count ( * ) from chuyến bay as t1 join hãng hàng_không as t2 on t1.hãng hàng_không = t2.id hãng hàng_không where t2.tên hãng hàng_không = "JetBlue_Airways"
select count ( * ) from chuyến bay as t1 join hãng hàng_không as t2 on t1.hãng hàng_không = t2.id hãng hàng_không where t2.tên hãng hàng_không = "JetBlue_Airways"
select count ( * ) from chuyến bay as t1 join hãng hàng_không as t2 on t1.hãng hàng_không = t2.id hãng hàng_không join sân_bay as t3 on t1.sân_bay đích = t3.mã sân_bay where t2.tên hãng hàng_không = "United_Airlines" and t3.tên sân_bay = "ASY"
select count ( * ) from chuyến bay as t1 join sân_bay as t2 on t1.sân_bay đích = t2.mã sân_bay join hãng hàng_không as t3 on t1.hãng hàng_không = t3.id hãng hàng_không where t2.tên sân_bay = "ASY" and t3.tên hãng hàng_không = "United_Airlines"
select count ( * ) from chuyến bay as t1 join hãng hàng_không as t2 on t1.hãng hàng_không = t2.id hãng hàng_không join sân_bay as t3 on t1.sân_bay khởi_hành = t3.mã sân_bay where t2.tên hãng hàng_không = "United_Airlines" and t3.tên sân_bay = "AHD"
select count ( * ) from chuyến bay as t1 join sân_bay as t2 on t1.sân_bay khởi_hành = t2.mã sân_bay join hãng hàng_không as t3 on t1.hãng hàng_không = t3.id hãng hàng_không where t2.tên sân_bay = "AHD" and t3.tên hãng hàng_không = "United_Airlines"
select count ( * ) from sân_bay as t1 join chuyến bay as t2 on t1.mã sân_bay = t2.sân_bay đích join hãng hàng_không as t3 on t2.hãng hàng_không = t3.id hãng hàng_không where t1.thành_phố = "Aberdeen" and t3.tên hãng hàng_không = "United_Airlines"
select count ( * ) from sân_bay as t1 join chuyến bay as t2 on t1.mã sân_bay = t2.sân_bay đích join hãng hàng_không as t3 on t2.hãng hàng_không = t3.id hãng hàng_không where t1.thành_phố = "Aberdeen" and t3.tên hãng hàng_không = "United_Airlines"
select thành_phố from sân_bay group by thành_phố order by count ( * ) desc limit 1
select t2.thành_phố from chuyến bay as t1 join sân_bay as t2 on t1.sân_bay đích = t2.mã sân_bay group by t2.thành_phố order by count ( * ) desc limit 1
select thành_phố from sân_bay group by thành_phố order by count ( * ) desc limit 1
select thành_phố from sân_bay group by thành_phố order by count ( * ) desc limit 1
select sân_bay đích from chuyến bay group by sân_bay đích order by count ( * ) desc limit 1
select mã sân_bay from sân_bay group by mã sân_bay order by count ( * ) desc limit 1
select mã sân_bay from sân_bay group by mã sân_bay order by count ( * ) limit 1
select mã sân_bay from sân_bay group by mã sân_bay order by count ( * ) limit 1
select tên hãng hàng_không from chuyến bay group by tên hãng hàng_không order by count ( * ) desc limit 1
select t1.tên hãng hàng_không from hãng hàng_không as t1 join chuyến bay as t2 on t1.id hãng hàng_không = t2.hãng hàng_không group by t1.tên hãng hàng_không order by count ( * ) desc limit 1
select tên viết tắt , quốc_gia from hãng hàng_không where số_hiệu chuyến bay = ( select min ( số_hiệu chuyến bay ) from chuyến bay )
select tên viết tắt , quốc_gia from hãng hàng_không order by count ( * ) limit 1
select t1.tên hãng hàng_không from hãng hàng_không as t1 join chuyến bay as t2 on t1.id hãng hàng_không = t2.hãng hàng_không where t2.sân_bay khởi_hành = "AHD"
select t1.tên hãng hàng_không from hãng hàng_không as t1 join chuyến bay as t2 on t1.id hãng hàng_không = t2.hãng hàng_không where t2.sân_bay khởi_hành = "AHD"
select t1.tên hãng hàng_không from hãng hàng_không as t1 join chuyến bay as t2 on t1.id hãng hàng_không = t2.hãng hàng_không where t2.sân_bay khởi_hành = "AHD"
select t1.tên hãng hàng_không from hãng hàng_không as t1 join chuyến bay as t2 on t1.id hãng hàng_không = t2.hãng hàng_không where t2.sân_bay đích = "AHD"
select t1.tên hãng hàng_không from hãng hàng_không as t1 join chuyến bay as t2 on t1.id hãng hàng_không = t2.hãng hàng_không where t2.sân_bay khởi_hành = "APG" and t2.sân_bay khởi_hành = "CVO"
select t1.tên hãng hàng_không from hãng hàng_không as t1 join chuyến bay as t2 on t1.id hãng hàng_không = t2.hãng hàng_không where t2.sân_bay khởi_hành = "APG" and t2.sân_bay khởi_hành = "CVO"
select t1.tên hãng hàng_không from hãng hàng_không as t1 join chuyến bay as t2 on t1.id hãng hàng_không = t2.hãng hàng_không where t2.sân_bay khởi_hành = "CVO" except select t1.tên hãng hàng_không from hãng hàng_không as t1 join chuyến bay as t2 on t1.id hãng hàng_không = t2.hãng hàng_không where t2.sân_bay khởi_hành = "APG"
select t1.tên hãng hàng_không from hãng hàng_không as t1 join chuyến bay as t2 on t1.id hãng hàng_không = t2.hãng hàng_không where t2.sân_bay khởi_hành = "CVO" except select t1.tên hãng hàng_không from hãng hàng_không as t1 join chuyến bay as t2 on t1.id hãng hàng_không = t2.hãng hàng_không where t2.sân_bay khởi_hành = "APG"
select tên hãng hàng_không from hãng hàng_không as t1 join chuyến bay as t2 on t1.id hãng hàng_không = t2.hãng hàng_không group by tên hãng hàng_không having count ( * ) >= 10
select t1.tên hãng hàng_không from hãng hàng_không as t1 join chuyến bay as t2 on t1.id hãng hàng_không = t2.hãng hàng_không group by t1.tên hãng hàng_không having count ( * ) >= 10
select tên hãng hàng_không from hãng hàng_không where số_hiệu chuyến bay < 200
select tên hãng hàng_không from hãng hàng_không as t1 join chuyến bay as t2 on t1.id hãng hàng_không = t2.hãng hàng_không group by t1.id hãng hàng_không having count ( * ) < 200
select số_hiệu chuyến bay from chuyến bay where hãng hàng_không = ( select id hãng hàng_không from hãng hàng_không where tên hãng hàng_không = "United_Airlines" )
select số_hiệu chuyến bay from chuyến bay where hãng hàng_không = ( select id hãng hàng_không from hãng hàng_không where tên hãng hàng_không = "United_Airlines" )
select số_hiệu chuyến bay from chuyến bay where sân_bay khởi_hành = "APG"
select số_hiệu chuyến bay from chuyến bay where sân_bay khởi_hành = "APG"
select số_hiệu chuyến bay from chuyến bay where sân_bay đích = "APG"
select số_hiệu chuyến bay from chuyến bay where sân_bay khởi_hành = ( select mã sân_bay from sân_bay where tên sân_bay = "APG" )
select số_hiệu chuyến bay from chuyến bay where sân_bay khởi_hành = ( select sân_bay from sân_bay where thành_phố = "Aberdeen" )
select số_hiệu chuyến bay from chuyến bay where sân_bay khởi_hành = ( select sân_bay khởi_hành from sân_bay where thành_phố = "Aberdeen" )
select số_hiệu chuyến bay from chuyến bay where sân_bay đích = ( select sân_bay from sân_bay where thành_phố = "Aberdeen" )
select số_hiệu chuyến bay from chuyến bay where sân_bay đích = ( select sân_bay from sân_bay where thành_phố = "Aberdeen" )
select count ( * ) from chuyến bay where sân_bay khởi_hành = ( select sân_bay khởi_hành from sân_bay where thành_phố = "Aberdeen" ) or sân_bay khởi_hành = ( select sân_bay khởi_hành from sân_bay where thành_phố = "Abilene" )
select count ( * ) from sân_bay where thành_phố = "Aberdeen" or thành_phố = "Abilene"
select tên sân_bay from sân_bay where not tên sân_bay in ( select t1.tên sân_bay from sân_bay as t1 join chuyến bay as t2 on t1.mã sân_bay = t2.sân_bay khởi_hành intersect select t1.tên sân_bay from sân_bay as t1 join chuyến bay as t2 on t1.mã sân_bay = t2.sân_bay đích )
select tên sân_bay from sân_bay except select t1.tên sân_bay from sân_bay as t1 join chuyến bay as t2 on t1.mã sân_bay = t2.sân_bay khởi_hành or t1.mã sân_bay = t2.sân_bay đích
select count ( * ) from trận đấu where mùa giải > 2007
select ngày from trận đấu order by đội chủ nhà desc
select mùa giải , đội chủ nhà , đội khách from trận đấu
select avg ( trận đấu sân_nhà ) , max ( trận đấu sân_nhà ) , min ( trận đấu sân_nhà ) from sân_vận_động
select avg ( số_lượng người tham_dự trung_bình ) from sân_vận_động where phần_trăm sức chứa > 100
select cầu_thủ , số_lượng trận đấu , nguồn thông_tin from chấn_thương except select cầu_thủ , số_lượng trận đấu , nguồn thông_tin from chấn_thương where chấn_thương = "Head"
select t1.mùa giải from trận đấu as t1 join chấn_thương as t2 on t1.id = t2.id trận đấu join cầu_thủ as t3 on t2.cầu_thủ = t3.cầu_thủ where t3.cầu_thủ = "Walter_Samuel"
select t1.id , t1.tỉ_số , t1.ngày from trận đấu as t1 join chấn_thương as t2 on t1.id = t2.id trận đấu group by t1.id having count ( * ) >= 2
select t1.id , t1.tên from sân_vận_động as t1 join chấn_thương as t2 on t1.id = t2.id sân_vận_động group by t1.id order by count ( * ) desc limit 1
select t1.id , t1.tên from sân_vận_động as t1 join chấn_thương as t2 on t1.id = t2.id sân_vận_động group by t1.id order by count ( * ) desc limit 1
select t1.mùa giải , t2.tên from trận đấu as t1 join sân_vận_động as t2 on t1.id sân_vận_động = t2.id where t1.id in ( select t3.id trận đấu from chấn_thương as t3 join cầu_thủ as t4 on t3.cầu_thủ = t4.id where t4.tên = "chân" or t4.tên = "đầu_gối" )
select count ( distinct nguồn thông_tin ) from chấn_thương
select count ( * ) from trận đấu where id not in ( select id trận đấu from chấn_thương )
select count ( distinct chấn_thương ) from chấn_thương where id trận đấu in ( select id from trận đấu where mùa giải > 2010 )
select t1.tên from sân_vận_động as t1 join trận đấu as t2 on t1.id = t2.id sân_vận_động join chấn_thương as t3 on t2.id = t3.id trận đấu where t3.cầu_thủ = "Walter_Samuel" intersect select t1.tên from sân_vận_động as t1 join trận đấu as t2 on t1.id = t2.id sân_vận_động join chấn_thương as t3 on t2.id = t3.id trận đấu where t3.cầu_thủ = "Thiago_Motta"
select tên , số_lượng người tham_dự trung_bình , tổng_số người tham_dự from sân_vận_động where id not in ( select id sân_vận_động from chấn_thương )
select tên from sân_vận_động where tên like "% bank %"
select count ( * ) , t1.tên from sân_vận_động as t1 join trận đấu as t2 on t1.id = t2.id sân_vận_động group by t1.tên
select t1.cầu_thủ , t1.ngày from chấn_thương as t1 join trận đấu as t2 on t1.id trận đấu = t2.id where t1.chấn_thương = "chân" order by t2.mùa giải desc
select năm phát_hành from bộ phim where tiêu_đề = "Trò_chơi bắt_chước"
select năm phát_hành from bộ phim where tiêu_đề = "Trò_chơi bắt_chước"
select năm sinh from diễn_viên where tên = "Benedict_Cumberbatch"
select năm sinh from diễn_viên where tên = "Benedict_Cumberbatch"
select quốc_tịch from diễn_viên where tên = "Christoph_Waltz" and giới_tính = "female"
select quốc_tịch from diễn_viên where tên = "Christoph_Waltz"
select tiêu_đề from bộ phim where năm phát_hành = 2015
select tên from diễn_viên where nơi sinh = "Tehran"
select tên from diễn_viên where nơi sinh = "Tehran"
select tên from diễn_viên where nơi sinh = "Tehran"
select tên from diễn_viên where quốc_tịch = "Afghanistan"
select tên from diễn_viên where quốc_tịch = "Afghanistan"
select tên from diễn_viên where quốc_tịch = "Afghanistan"
select tên from diễn_viên where năm sinh = 1984
select năm sinh from diễn_viên where tên = "Kevin_Spacey"
select năm sinh from diễn_viên where tên = "Kevin_Spacey"
select nơi sinh from diễn_viên where tên = "Kevin_Spacey"
select nơi sinh from diễn_viên where tên = "Kevin_Spacey"
select quốc_tịch from diễn_viên where tên = "Kevin_Spacey"
select ngân_sách from bộ phim where tiêu_đề = "Find Nemo"
select t2.tiêu_đề from đạo_diễn bởi as t1 join bộ phim as t2 on t1.id sê-ri phim = t2.id sê-ri phim join đạo_diễn as t3 on t3.id đạo_diễn = t1.id đạo_diễn where t3.tên = "Steven_Spielberg" and t2.năm phát_hành > 2006
select t1.tên from đạo_diễn as t1 join đạo_diễn bởi as t2 on t1.id đạo_diễn = t2.id đạo_diễn join bộ phim as t3 on t2.id sê-ri phim = t3.id sê-ri phim where t3.tiêu_đề = "James Bond"
select t3.tên from bộ phim as t1 join đạo_diễn bởi as t2 on t1.id bộ phim = t2.id sê-ri phim join đạo_diễn as t3 on t2.id đạo_diễn = t3.id đạo_diễn where t1.tiêu_đề = "James Bond"
select t1.tên from đạo_diễn as t1 join đạo_diễn bởi as t2 on t1.id đạo_diễn = t2.id đạo_diễn join bộ phim as t3 on t2.id sê-ri phim = t3.id sê-ri phim where t3.tiêu_đề = "James Bond"
select t1.tên from diễn_viên as t1 join phân_vai as t2 on t1.id diễn_viên = t2.id diễn_viên join bộ phim as t3 on t2.id sê-ri phim = t3.id sê-ri phim where t2.vai diễn = "Alan_Turing" and t3.tiêu_đề = "Game of_Chess"
select t1.tên from diễn_viên as t1 join phân_vai as t2 on t1.id diễn_viên = t2.id diễn_viên join phim as t3 on t2.id sê-ri phim = t3.id sê-ri phim where t2.vai diễn = 1 and t3.tiêu_đề = "Game of_Chess" and t1.tên = "Alan_Turing"
select t1.tên from diễn_viên as t1 join phân_vai as t2 on t1.id diễn_viên = t2.id diễn_viên join phim as t3 on t2.id sê-ri phim = t3.id sê-ri phim where t2.vai diễn = 1 and t3.tiêu_đề = "Game of_Chess"
select t1.tên from diễn_viên as t1 join phân_vai as t2 on t1.id diễn_viên = t2.id diễn_viên join phim as t3 on t2.id sê-ri phim = t3.id sê-ri phim where t3.tiêu_đề = "Game of_Chess" and t2.vai diễn = "Alan_Turing"
select t1.tên from diễn_viên as t1 join phân_vai as t2 on t1.id diễn_viên = t2.id diễn_viên join phim as t3 on t2.id sê-ri phim = t3.id sê-ri phim where t3.tiêu_đề = "Game of_Chess" and t2.vai diễn = "Alan_Turing"
select t3.thể_loại from bộ phim as t1 join phân_loại as t2 on t1.id bộ phim = t2.id bộ phim join thể_loại as t3 on t2.id thể_loại = t3.id thể_loại where t1.tiêu_đề = "Jura Park"
select t1.tên from đạo_diễn as t1 join đạo_diễn bởi as t2 on t1.id đạo_diễn = t2.id đạo_diễn join bộ phim as t3 on t2.id sê-ri phim = t3.id sê-ri phim where t3.năm phát_hành = 2015 and t3.tiêu_đề = "Joy"
select t3.tiêu_đề from được viết bởi as t2 join diễn_viên as t1 on t2.id diễn_viên = t1.id diễn_viên join bộ phim as t3 on t3.id sê-ri phim = t2.id sê-ri phim where t1.tên = "Matt Damon"
select t3.tiêu_đề from được viết bởi as t2 join đạo_diễn bởi as t1 join bộ phim as t3 on t2.id sê-ri phim = t3.id sê-ri phim and t1.id đạo_diễn = t2.id đạo_diễn where t1.tên = "Woody_Allen"
select t3.tiêu_đề from diễn_viên as t1 join phân_vai as t2 on t1.id diễn_viên = t2.id diễn_viên join bộ phim as t3 on t2.id sê-ri phim = t3.id sê-ri phim where t1.tên = "Robin_Wright"
select t3.tiêu_đề from diễn_viên as t1 join phân_vai as t2 on t1.id diễn_viên = t2.id diễn_viên join bộ phim as t3 on t2.id sê-ri phim = t3.id sê-ri phim where t1.tên = "Robin_Wright"
select t2.tiêu_đề from diễn_viên as t1 join bộ phim as t2 on t1.id diễn_viên = t2.id diễn_viên where t1.tên = "Robin_Wright"
select ngân_sách from bộ phim where năm phát_hành = 2007 and tiêu_đề = "Juno"
select tiêu_đề from bộ phim where năm phát_hành = 2010 and tiêu_đề = "Khoa_học_viễn_tưởng"
select tiêu_đề from bộ phim where năm phát_hành = 2010
select tên from diễn_viên where nơi sinh = "Austin" and năm sinh > 1980
select tên from diễn_viên where nơi sinh = "Austin" and năm sinh > 1980
select tên from diễn_viên where nơi sinh = "Austin" and năm sinh > 1980
select t2.tiêu_đề from đạo_diễn as t1 join bộ phim as t2 on t1.id đạo_diễn = t2.đạo_diễn bởi where t1.nơi sinh = "Los Angeles"
select tên from diễn_viên where nơi sinh = "New_York" and năm sinh = 1984
select tiêu_đề from bộ phim where tiêu_đề like "Vũ_khí_hạt_nhân"
select t1.tiêu_đề from bộ phim as t1 join nhãn as t2 on t1.id bộ phim = t2.id sê-ri phim join từ_khoá as t3 on t2.id từ_khoá = t3.id where t3.từ_khoá = "Vũ_khí_hạt_nhân"
select t1.tiêu_đề from bộ phim as t1 join đạo_diễn bởi as t2 on t1.id bộ phim = t2.id sê-ri phim join đạo_diễn as t3 on t2.id đạo_diễn = t3.id đạo_diễn where t3.tên = "Alfred_Hitchcock"
select t2.tiêu_đề from đạo_diễn bởi as t1 join bộ phim as t2 on t1.id sê-ri phim = t2.id sê-ri phim join được viết bởi as t3 on t2.id sê-ri phim = t3.id sê-ri phim join đạo_diễn as t4 on t3.id đạo_diễn = t4.id đạo_diễn join diễn_viên as t5 on t5.id diễn_viên = t4.id diễn_viên where t4.tên = "Asghar Farhadi" and t5.tên = "Taraneh Alidoosti"
select t3.tiêu_đề from đạo_diễn bởi as t1 join đạo_diễn as t2 on t1.id đạo_diễn = t2.id đạo_diễn join phân_vai as t3 on t3.id sê-ri phim = t1.id sê-ri phim join diễn_viên as t4 on t3.id diễn_viên = t4.id diễn_viên join phân_vai as t5 on t5.id sê-ri phim = t1.id sê-ri phim join diễn_viên as t6 on t5.id diễn_viên = t6.id diễn_viên where t2.tên = "Asghar Farhadi" and t4.tên = "Taraneh Alidoosti"
select t3.tiêu_đề from đạo_diễn bởi as t1 join đạo_diễn as t2 on t1.id đạo_diễn = t2.id đạo_diễn join phân_vai as t3 on t3.id sê-ri phim = t1.id sê-ri phim join diễn_viên as t4 on t3.id diễn_viên = t4.id diễn_viên where t2.tên = "Asghar Farhadi" and t4.tên = "Taraneh Alidoosti"
select t3.tiêu_đề from đạo_diễn bởi as t1 join đạo_diễn as t2 on t1.id đạo_diễn = t2.id đạo_diễn join phân_vai as t3 on t3.id sê-ri phim = t1.id sê-ri phim join diễn_viên as t4 on t3.id diễn_viên = t4.id diễn_viên join phân_vai as t5 on t5.id sê-ri phim = t1.id sê-ri phim join diễn_viên as t6 on t5.id diễn_viên = t6.id diễn_viên where t2.tên = "Asghar Farhad" and t4.tên = "Taraneh Alidoosti"
select t3.tiêu_đề from đạo_diễn bởi as t1 join đạo_diễn as t2 on t1.id đạo_diễn = t2.id đạo_diễn join bộ phim as t3 on t3.id sê-ri phim = t1.id sê-ri phim where t2.tên = "Shonda_Rhimes"
select t2.tên from phân_vai as t1 join diễn_viên as t2 on t1.id diễn_viên = t2.id diễn_viên join phân_loại as t3 on t1.id sê-ri phim = t3.id sê-ri phim join thể_loại as t4 on t3.id thể_loại = t4.id thể_loại where t4.thể_loại = "Scandal" and t2.tên = "Olivia Pope"
select t3.tên from được viết bởi as t2 join nhà viết kịch_bản as t3 on t2.id nhà viết kịch_bản = t3.id nhà viết kịch_bản join bộ phim as t1 on t1.id sê-ri phim = t2.id sê-ri phim where t1.tiêu_đề = "Truman Show"
select t3.tên from bộ phim as t1 join được viết bởi as t2 on t1.id bộ phim = t2.id sê-ri phim join nhà viết kịch_bản as t3 on t2.id nhà viết kịch_bản = t3.id nhà viết kịch_bản where t1.tiêu_đề = "Truman Show"
select t1.tiêu_đề from bộ phim as t1 join được làm bởi as t2 on t1.id bộ phim = t2.id sê-ri phim join diễn_viên as t3 on t2.id diễn_viên = t3.id diễn_viên where t3.tên = "Scott_Foley"
select t1.tiêu_đề from bộ phim as t1 join phân_vai as t2 on t1.id bộ phim = t2.id sê-ri phim join diễn_viên as t3 on t2.id diễn_viên = t3.id diễn_viên where t3.tên = "Scott_Foley"
select t3.tên from diễn_viên as t1 join phân_vai as t2 on t1.id diễn_viên = t2.id diễn_viên join bộ phim as t3 on t2.id sê-ri phim = t3.id sê-ri phim where t1.tên = "Kate_Winslet"
select t3.tên from đạo_diễn bởi as t3 join đạo_diễn as t2 on t3.id đạo_diễn = t2.id đạo_diễn join diễn_viên as t1 on t2.id đạo_diễn = t1.id diễn_viên join phân_vai as t4 on t4.id diễn_viên = t1.id diễn_viên join phân_loại as t5 on t5.id = t4.id join bộ phim as t6 on t6.id bộ phim = t5.id sê-ri phim where t1.tên = "Kate_Winslet"
select t3.tên from bộ phim as t1 join đạo_diễn bởi as t2 on t1.id bộ phim = t2.id sê-ri phim join đạo_diễn as t3 on t2.id đạo_diễn = t3.id đạo_diễn where t1.năm phát_hành = 2013 and t1.tiêu_đề = "Ván bài chính_trị"
select tên from diễn_viên where giới_tính = "female" and nơi sinh = "Austin"
select tên from diễn_viên where quốc_tịch = "Italy" and năm sinh > 1980
select tên from diễn_viên where giới_tính = "female" and nơi sinh = "new york" and năm sinh > 1980
select t1.tên from diễn_viên as t1 join phân_vai as t2 on t1.id diễn_viên = t2.id diễn_viên join bộ phim as t3 on t2.id sê-ri phim = t3.id sê-ri phim where t3.tiêu_đề = "Ryan" s "and t1.giới_tính = " F "
select tên from đạo_diễn where quốc_tịch = "Afghanistan"
select t1.tên from diễn_viên as t1 join phân_vai as t2 on t1.id diễn_viên = t2.id diễn_viên join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim where t3.tiêu_đề = "Nữ binh_sĩ"
select t1.tên from diễn_viên as t1 join được làm bởi as t2 on t1.id diễn_viên = t2.id diễn_viên join phim as t3 on t2.id sê-ri phim = t3.id sê-ri phim where t3.tiêu_đề = "James Bond" and t1.quốc_tịch = "Canada"
select t2.tiêu_đề from diễn_viên as t1 join phân_vai as t2 on t1.id diễn_viên = t2.id diễn_viên join bộ phim as t3 on t2.id sê-ri phim = t3.id sê-ri phim where t1.tên = "Rowan_Atkinson" and t2.vai diễn = "Ngài_Bean"
select nơi sinh from đạo_diễn where tên = "Quá_khứ"
select t1.tên from diễn_viên as t1 join phân_vai as t2 on t1.id diễn_viên = t2.id diễn_viên join phim as t3 on t2.id sê-ri phim = t3.id sê-ri phim where t3.tiêu_đề = "Ngài_Bean"
select t3.thể_loại from đạo_diễn as t1 join đạo_diễn bởi as t2 on t1.id đạo_diễn = t2.id đạo_diễn join phân_loại as t3 on t2.id sê-ri phim = t3.id sê-ri phim join bộ phim as t4 on t4.id bộ phim = t3.id sê-ri phim join đạo_diễn bởi as t5 on t5.id sê-ri phim = t4.id bộ phim where t1.tên = "Asghar Farhadi"
select tiêu_đề from bộ phim where tiêu_đề like "% Daffy_Duck %"
select t1.vai_trò from phân_vai as t1 join bộ phim as t2 on t1.id sê-ri phim = t2.id sê-ri phim where t2.tiêu_đề = "Father_Long Legs"
select t3.tên from bộ phim as t1 join đạo_diễn bởi as t2 on t1.id bộ phim = t2.id sê-ri phim join đạo_diễn as t3 on t2.id đạo_diễn = t3.id đạo_diễn where t1.tiêu_đề = "Vũ_khí_hạt_nhân"
select count ( * ) from diễn_viên as t1 join phân_vai as t2 on t1.id diễn_viên = t2.id diễn_viên join bộ phim as t3 on t2.id sê-ri phim = t3.id sê-ri phim where t1.tên = "Jennifer_Aniston" and t3.năm phát_hành > 2010
select count ( * ) from diễn_viên as t1 join phân_vai as t2 on t1.id diễn_viên = t2.id diễn_viên join bộ phim as t3 on t3.id bộ phim = t2.id sê-ri phim where t3.tiêu_đề = "Ryan"
select count ( * ) from diễn_viên as t1 join phân_vai as t2 on t1.id diễn_viên = t2.id diễn_viên join bộ phim as t3 on t3.id bộ phim = t2.id sê-ri phim where t3.tiêu_đề = "Ryan" s "rescue binh_nhì "
select count ( * ) from đạo_diễn as t1 join đạo_diễn bởi as t2 on t1.id đạo_diễn = t2.id đạo_diễn join bộ phim as t3 on t2.id sê-ri phim = t3.id sê-ri phim join đạo_diễn bởi as t4 on t4.id đạo_diễn = t1.id đạo_diễn where t1.tên = "Steven_Spielberg"
select count ( * ) from bộ phim where năm phát_hành = 2013
select count ( * ) from bộ phim where năm phát_hành = 2013
select năm phát_hành , count ( * ) from bộ phim as t1 join đạo_diễn bởi as t2 on t1.id bộ phim = t2.id sê-ri phim join đạo_diễn as t3 on t2.id đạo_diễn = t3.id đạo_diễn where t3.tên = "Woody_Allen" group by năm phát_hành
select count ( * ) from diễn_viên as t1 join phân_vai as t2 on t1.id diễn_viên = t2.id diễn_viên join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim where t1.tên = "Shahab_Hosseini"
select count ( * ) from diễn_viên as t1 join phân_vai as t2 on t1.id diễn_viên = t2.id diễn_viên join bộ phim as t3 on t3.id sê-ri phim = t2.id sê-ri phim where t1.tên = "Shahab_Hosseini"
select count ( * ) from diễn_viên as t1 join phân_vai as t2 on t1.id diễn_viên = t2.id diễn_viên join bộ phim as t3 on t3.id sê-ri phim = t2.id sê-ri phim where t1.tên = "Shahab_Hosseini"
select count ( distinct t2.id sê-ri phim ) from diễn_viên as t1 join phân_vai as t2 on t1.id diễn_viên = t2.id diễn_viên join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim where t1.tên = "Shahab_Hosseini"
select count ( * ) from diễn_viên where nơi sinh = "Los Angeles" and năm sinh > 2000
select count ( * ) from diễn_viên as t1 join phân_vai as t2 on t1.id diễn_viên = t2.id diễn_viên join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim where t1.tên = "Humphrey_Bogart" and t3.năm phát_hành < 1942
select năm phát_hành , count ( * ) from diễn_viên as t1 join phân_vai as t2 on t1.id diễn_viên = t2.id diễn_viên join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim where t1.tên = "Brad Pitt" group by năm phát_hành
select count ( * ) from bộ phim where tiêu_đề = "Chiến_tranh Iraq" and năm phát_hành = 2015
select count ( * ) from bộ phim where tiêu_đề = "Ba Tư" and năm phát_hành > 1990
select count ( * ) from đạo_diễn as t1 join đạo_diễn bởi as t2 on t1.id đạo_diễn = t2.id đạo_diễn join bộ phim as t3 on t2.id sê-ri phim = t3.id sê-ri phim where t3.năm phát_hành > 2010 and t1.tên = "Quentin Tarantino"
select count ( * ) from đạo_diễn as t1 join đạo_diễn bởi as t2 on t1.id đạo_diễn = t2.id đạo_diễn join bộ phim as t3 on t2.id sê-ri phim = t3.id sê-ri phim where t3.năm phát_hành < 2010 and t1.tên = "Quentin Tarantino"
select count ( * ) from bộ phim as t1 join đạo_diễn bởi as t2 on t1.id bộ phim = t2.id sê-ri phim join đạo_diễn as t3 on t2.id đạo_diễn = t3.id đạo_diễn where t1.năm phát_hành < 2002 and t3.tên = "Quentin Tarantino" and t1.năm phát_hành > 2010
select count ( * ) from diễn_viên where giới_tính = "female" and nơi sinh = "new york" and năm sinh > 1980
select count ( * ) from diễn_viên as t1 join đạo_diễn bởi as t2 on t1.id diễn_viên = t2.id diễn_viên join đạo_diễn as t3 on t2.id đạo_diễn = t3.id đạo_diễn where t3.quốc_tịch = "Iran" and t2.id sê-ri phim = ( select id sê-ri phim from đạo_diễn bởi as t4 join đạo_diễn as t5 on t4.id đạo_diễn = t5.id đạo_diễn where t5.tên = "Jim Jarmusch" )
select count ( * ) from diễn_viên as t1 join phân_vai as t2 on t1.id diễn_viên = t2.id diễn_viên join bộ phim as t3 on t3.id bộ phim = t2.id sê-ri phim where t1.quốc_tịch = "China" and t3.tiêu_đề = "Giờ cao_điểm 3"
select t2.tiêu_đề from diễn_viên as t1 join phân_vai as t2 on t1.id diễn_viên = t2.id diễn_viên join bộ phim as t3 on t2.id sê-ri phim = t3.id sê-ri phim where t1.tên = "Woody_Strode" intersect select t2.tiêu_đề from diễn_viên as t1 join phân_vai as t2 on t1.id diễn_viên = t2.id diễn_viên join bộ phim as t3 on t2.id sê-ri phim = t3.id sê-ri phim where t1.tên = "Jason Robards"
select t3.tiêu_đề from diễn_viên as t1 join phân_vai as t2 on t1.id diễn_viên = t2.id diễn_viên join bộ phim as t3 on t2.id sê-ri phim = t3.id sê-ri phim where t1.tên = "Woody_Strode" or_t1.tên = "Jason Robards"
select t3.tiêu_đề from diễn_viên as t1 join phân_vai as t2 on t1.id diễn_viên = t2.id diễn_viên join bộ phim as t3 on t2.id sê-ri phim = t3.id sê-ri phim where t1.tên = "Woody_Strode" intersect select t3.tiêu_đề from diễn_viên as t1 join phân_vai as t2 on t1.id diễn_viên = t2.id diễn_viên join bộ phim as t3 on t2.id sê-ri phim = t3.id sê-ri phim where t1.tên = "Jason Robards"
select t2.tiêu_đề from diễn_viên as t1 join phân_vai as t2 on t1.id diễn_viên = t2.id diễn_viên join bộ phim as t3 on t3.id sê-ri phim = t2.id sê-ri phim where t1.tên = "Woody_Strode" intersect select t2.tiêu_đề from diễn_viên as t1 join phân_vai as t2 on t1.id diễn_viên = t2.id diễn_viên join bộ phim as t3 on t3.id sê-ri phim = t2.id sê-ri phim where t1.tên = "Jason Robards"
select t2.tên from diễn_viên as t1 join diễn_viên as t2 on t1.id diễn_viên = t2.id diễn_viên join phân_vai as t3 on t3.id diễn_viên = t2.id diễn_viên join bộ phim as t4 on t4.id sê-ri phim = t3.id sê-ri phim where t1.tên = "Tom_Hanks"
select t2.tiêu_đề from đạo_diễn bởi as t1 join bộ phim as t2 on t1.id đạo_diễn = t2.id đạo_diễn join đạo_diễn bởi as t3 on t2.id sê-ri phim = t3.id sê-ri phim join đạo_diễn bởi as t4 on t3.id đạo_diễn = t4.id đạo_diễn where t4.id đạo_diễn = ( select t5.id đạo_diễn from đạo_diễn bởi as t5 join bộ phim as t6 on t5.id sê-ri phim = t6.id sê-ri phim where t6.tiêu_đề = "The_Road_Warrior" )
select t1.tiêu_đề from bộ phim as t1 join phân_loại as t2 on t1.id bộ phim = t2.id sê-ri phim join thể_loại as t3 on t2.id thể_loại = t3.id thể_loại group by t1.tiêu_đề order by count ( * ) desc limit 1
select t1.tiêu_đề from bộ phim as t1 join phân_vai as t2 on t1.id bộ phim = t2.id sê-ri phim join diễn_viên as t3 on t2.id diễn_viên = t3.id diễn_viên where t3.quốc_tịch = "Trung_Quốc" group by t1.tiêu_đề order by count ( * ) desc limit 1
select t2.tên from diễn_viên as t2 join phân_vai as t1 on t1.id diễn_viên = t2.id diễn_viên join bộ phim as t3 on t3.id bộ phim = t1.id sê-ri phim join đạo_diễn bởi as t4 on t4.id sê-ri phim = t3.id bộ phim join đạo_diễn as t5 on t5.id đạo_diễn = t4.id đạo_diễn where t5.tên = "Quentin Tarantino" order by t3.năm phát_hành desc limit 1
select t1.tiêu_đề , t1.ngân_sách from bộ phim as t1 join đạo_diễn bởi as t2 on t1.id bộ phim = t2.id sê-ri phim join đạo_diễn as t3 on t2.id đạo_diễn = t3.id đạo_diễn where t3.tên = "Quentin Tarantino" order by t1.năm phát_hành desc limit 1
select t2.tiêu_đề from đạo_diễn bởi as t1 join bộ phim as t2 on t1.id sê-ri phim = t2.id bộ phim join đạo_diễn as t3 on t3.id đạo_diễn = t1.id đạo_diễn where t3.tên = "Jim Jarmusch" order by t2.năm phát_hành desc limit 1
select t1.tên from nhà_sản_xuất as t1 join được làm bởi as t2 on t1.id nhà_sản_xuất = t2.id nhà_sản_xuất join đạo_diễn bởi as t3 on t2.id sê-ri phim = t3.id sê-ri phim group by t1.tên order by count ( * ) desc limit 1
select t3.tiêu_đề from diễn_viên as t1 join phân_vai as t2 on t1.id diễn_viên = t2.id diễn_viên join bộ phim as t3 on t2.id sê-ri phim = t3.id sê-ri phim where t1.tên = "Gabriele_Ferzetti" order by t3.năm phát_hành desc limit 1
select tên khách_hàng from khách_hàng order by tên khách_hàng
select tên khách_hàng from khách_hàng order by tên khách_hàng
select t2.mã loại chính_sách from khách_hàng as t1 join chính_sách as t2 on t1.id khách_hàng = t2.id khách_hàng where t1.chi_tiết khách_hàng = "Dayana Robel"
select t2.mã loại chính_sách from khách_hàng as t1 join chính_sách as t2 on t1.id khách_hàng = t2.id khách_hàng where t1.chi_tiết khách_hàng = "Dayana Robel"
select mã loại chính_sách from chính_sách group by mã loại chính_sách order by count ( * ) desc limit 1
select mã loại chính_sách from chính_sách group by mã loại chính_sách order by count ( * ) desc limit 1
select mã loại chính_sách from chính_sách group by mã loại chính_sách having count ( * ) > 2
select t2.mã loại chính_sách from chính_sách as t1 join chính_sách as t2 on t1.id chính_sách = t2.id chính_sách group by t2.mã loại chính_sách having count ( * ) > 2
select sum ( số tiền được trả ) , avg ( số tiền được trả ) from tiêu_đề của yêu_cầu
select sum ( số tiền được trả ) , avg ( số tiền được trả ) from tiêu_đề của yêu_cầu
select sum ( t1.số tiền được yêu_cầu ) from tài_liệu của yêu_cầu as t1 join chính_sách as t2 on t1.id yêu_cầu = t2.id chính_sách join tiêu_đề của yêu_cầu as t3 on t2.id chính_sách = t3.id chính_sách where t3.ngày yêu_cầu = ( select max ( ngày yêu_cầu ) from tiêu_đề của yêu_cầu )
select sum ( t1.số tiền được yêu_cầu ) from tài_liệu của yêu_cầu as t1 join yêu_cầu as t2 on t1.id yêu_cầu = t2.id yêu_cầu order by t1.ngày tạo ra desc limit 1
select t1.chi_tiết khách_hàng from khách_hàng as t1 join chính_sách as t2 on t1.id khách_hàng = t2.id khách_hàng join tiêu_đề của yêu_cầu as t3 on t2.id chính_sách = t3.id chính_sách join tài_liệu của yêu_cầu as t4 on t3.id tiêu_đề của yêu_cầu = t4.id tiêu_đề của yêu_cầu where t4.mã loại tài_liệu = "Bồi_thường" order by t4.số tiền được yêu_cầu desc limit 1
select t1.chi_tiết khách_hàng from khách_hàng as t1 join chính_sách as t2 on t1.id khách_hàng = t2.id khách_hàng join tiêu_đề của yêu_cầu as t3 on t2.id chính_sách = t3.id chính_sách join tài_liệu của yêu_cầu as t4 on t3.id tiêu_đề của yêu_cầu = t4.id tiêu_đề của yêu_cầu where t4.mã loại tài_liệu = "Bồi_thường" order by t4.số tiền được yêu_cầu desc limit 1
select t1.chi_tiết khách_hàng from khách_hàng as t1 join chính_sách as t2 on t1.id khách_hàng = t2.id khách_hàng join tiêu_đề của yêu_cầu as t3 on t2.id chính_sách = t3.id chính_sách join xử_lý yêu_cầu as t4 on t3.id tiêu_đề của yêu_cầu = t4.id tiêu_đề của yêu_cầu join tài_liệu của yêu_cầu as t5 on t4.id xử_lý yêu_cầu = t5.id xử_lý yêu_cầu where t5.mã loại tài_liệu = "Bồi_thường" order by t5.số tiền được trả limit 1
select t1.chi_tiết khách_hàng from khách_hàng as t1 join chính_sách as t2 on t1.id khách_hàng = t2.id khách_hàng join tiêu_đề của yêu_cầu as t3 on t2.id chính_sách = t3.id chính_sách join xử_lý yêu_cầu as t4 on t3.id yêu_cầu = t4.id yêu_cầu join tài_liệu của yêu_cầu as t5 on t4.id xử_lý yêu_cầu = t5.id xử_lý yêu_cầu where t5.mã loại tài_liệu = "Bồi_thường" order by t5.số tiền được trả limit 1
select tên khách_hàng from khách_hàng where id khách_hàng not in ( select t1.id khách_hàng from chính_sách as t1 join tiêu_đề của yêu_cầu as t2 on t1.id chính_sách = t2.id chính_sách )
select tên khách_hàng from khách_hàng except select t1.tên khách_hàng from khách_hàng as t1 join chính_sách as t2 on t1.id khách_hàng = t2.id khách_hàng
select count ( * ) from giai_đoạn xử_lý yêu_cầu
select count ( distinct id giai_đoạn xử_lý yêu_cầu ) from giai_đoạn xử_lý yêu_cầu
select tên tình_trạng yêu_cầu from giai_đoạn xử_lý yêu_cầu where id giai_đoạn yêu_cầu = ( select id giai_đoạn yêu_cầu tiếp_theo from giai_đoạn xử_lý yêu_cầu where tên tình_trạng yêu_cầu = "Đang ở giai_đoạn xử_lý yêu_cầu" )
select t1.tên tình_trạng yêu_cầu from giai_đoạn xử_lý yêu_cầu as t1 join xử_lý yêu_cầu as t2 on t1.id giai_đoạn xử_lý yêu_cầu = t2.id giai_đoạn xử_lý yêu_cầu join tiêu_đề của yêu_cầu as t3 on t2.id yêu_cầu = t3.id yêu_cầu where t3.mã tình_trạng yêu_cầu = "Đang diễn ra" group by t1.tên tình_trạng yêu_cầu order by count ( * ) desc limit 1
select chi_tiết khách_hàng from khách_hàng where chi_tiết khách_hàng like "% Diana %"
select chi_tiết khách_hàng from khách_hàng where chi_tiết khách_hàng like "% Diana %"
select t1.chi_tiết khách_hàng from khách_hàng as t1 join chính_sách as t2 on t1.id khách_hàng = t2.id khách_hàng where t2.mã loại chính_sách = "Uỷ_quyền"
select t1.chi_tiết khách_hàng from khách_hàng as t1 join chính_sách as t2 on t1.id khách_hàng = t2.id khách_hàng where t2.mã loại chính_sách = "Insurance"
select t1.chi_tiết khách_hàng from khách_hàng as t1 join chính_sách as t2 on t1.id khách_hàng = t2.id khách_hàng where t2.mã loại chính_sách = "Unified" or t2.mã loại chính_sách = "Uỷ_quyền"
select t1.chi_tiết khách_hàng from khách_hàng as t1 join chính_sách as t2 on t1.id khách_hàng = t2.id khách_hàng where t2.mã loại chính_sách = "Insurance" or t2.mã loại chính_sách = "Unified"
select * from khách_hàng union select * from nhân_viên
select chi_tiết khách_hàng from khách_hàng union select chi_tiết nhân_viên from nhân_viên
select count ( * ), mã loại chính_sách from chính_sách group by mã loại chính_sách
select mã loại chính_sách , count ( * ) from chính_sách group by mã loại chính_sách
select t1.chi_tiết khách_hàng from khách_hàng as t1 join chính_sách as t2 on t1.id khách_hàng = t2.id khách_hàng group by t1.id khách_hàng order by count ( * ) desc limit 1
select t1.chi_tiết khách_hàng from khách_hàng as t1 join chính_sách as t2 on t1.id khách_hàng = t2.id khách_hàng group by t1.id khách_hàng order by count ( * ) desc limit 1
select t1.mô_tả về tình_trạng yêu_cầu from tiêu_đề của yêu_cầu as t1 join giai_đoạn xử_lý yêu_cầu as t2 on t1.id tiêu_đề của yêu_cầu = t2.id tiêu_đề của yêu_cầu where t1.mã tình_trạng yêu_cầu = "Mở"
select t1.mô_tả về tình_trạng yêu_cầu from tiêu_đề của yêu_cầu as t1 join giai_đoạn xử_lý yêu_cầu as t2 on t1.id tiêu_đề của yêu_cầu = t2.id tiêu_đề của yêu_cầu where t1.mã tình_trạng yêu_cầu = "Mở"
select count ( * ) , mã kết_quả của yêu_cầu from xử_lý yêu_cầu group by mã kết_quả của yêu_cầu
select count ( * ) , mã kết_quả của yêu_cầu from xử_lý yêu_cầu group by mã kết_quả của yêu_cầu
select t1.chi_tiết khách_hàng from khách_hàng as t1 join chính_sách as t2 on t1.id khách_hàng = t2.id khách_hàng order by t2.ngày bắt_đầu desc limit 1
select t1.chi_tiết khách_hàng from khách_hàng as t1 join chính_sách as t2 on t1.id khách_hàng = t2.id khách_hàng order by t2.ngày bắt_đầu desc limit 1
select t3.chi_tiết sự_kiện from dịch_vụ as t1 join sự_kiện as t2 on t1.id dịch_vụ = t2.id dịch_vụ join người tham_gia sự_kiện as t3 on t2.id sự_kiện = t3.id sự_kiện join người tham_gia as t4 on t3.id người tham_gia = t4.id người tham_gia where t1.mã loại dịch_vụ = "Wedding"
select t1.id sự_kiện , t1.chi_tiết sự_kiện from sự_kiện as t1 join người tham_gia sự_kiện as t2 on t1.id sự_kiện = t2.id sự_kiện group by t1.id sự_kiện having count ( * ) > 1
select t1.id người tham_gia , t1.mã loại người tham_gia , count ( * ) from người tham_gia as t1 join người tham_gia sự_kiện as t2 on t1.id người tham_gia = t2.id người tham_gia group by t1.id người tham_gia
select t1.id người tham_gia , t1.mã loại người tham_gia , t1.chi_tiết người tham_gia from người tham_gia as t1
select count ( * ) from người tham_gia where mã loại người tham_gia = "Người tổ_chức"
select mã loại dịch_vụ from dịch_vụ order by mã loại dịch_vụ
select t1.id dịch_vụ , t2.chi_tiết sự_kiện from dịch_vụ as t1 join sự_kiện as t2 on t1.id dịch_vụ = t2.id dịch_vụ
select count ( * ) from người tham_gia as t1 join người tham_gia sự_kiện as t2 on t1.id người tham_gia = t2.id người tham_gia join sự_kiện as t3 on t2.id sự_kiện = t3.id sự_kiện where t1.chi_tiết người tham_gia like "% Dr %"
select t1.mã loại người tham_gia from người tham_gia as t1 join người tham_gia sự_kiện as t2 on t1.id người tham_gia = t2.id người tham_gia group by t1.mã loại người tham_gia order by count ( * ) desc limit 1
select t1.id dịch_vụ , t1.mã loại dịch_vụ from dịch_vụ as t1 join sự_kiện as t2 on t1.id dịch_vụ = t2.id dịch_vụ group by t1.id dịch_vụ order by count ( * ) limit 1
select t1.id sự_kiện from sự_kiện as t1 join người tham_gia sự_kiện as t2 on t1.id sự_kiện = t2.id sự_kiện group by t1.id sự_kiện order by count ( * ) desc limit 1
select id sự_kiện from người tham_gia sự_kiện where id người tham_gia not in ( select t1.id người tham_gia from người tham_gia as t1 join người tham_gia sự_kiện as t2 on t1.id người tham_gia = t2.id người tham_gia join sự_kiện as t3 on t2.id sự_kiện = t3.id sự_kiện where t1.chi_tiết người tham_gia = "Kenyatta_Kuhn" )
select mã loại dịch_vụ from dịch_vụ where id dịch_vụ in ( select t1.id dịch_vụ from dịch_vụ as t1 join sự_kiện as t2 on t1.id dịch_vụ = t2.id dịch_vụ where t2.chi_tiết sự_kiện = "Success" intersect select t1.id dịch_vụ from dịch_vụ as t1 join sự_kiện as t2 on t1.id dịch_vụ = t2.id dịch_vụ where t2.chi_tiết sự_kiện = "Thất_bại" )
select count ( * ) from sự_kiện where id sự_kiện not in ( select id sự_kiện from người tham_gia sự_kiện )
select count ( * ) from người tham_gia sự_kiện
select count ( * ) from kỹ_thuật_viên
select count ( * ) from kỹ_thuật_viên
select tên from kỹ_thuật_viên order by tuổi
select tên from kỹ_thuật_viên order by tuổi
select đội , năm bắt_đầu from kỹ_thuật_viên
select đội , năm bắt_đầu from kỹ_thuật_viên
select tên from kỹ_thuật_viên where đội != "NYY"
select tên from kỹ_thuật_viên where đội != "NYY"
select tên from kỹ_thuật_viên where tuổi = 36 or tuổi = 37
select tên from kỹ_thuật_viên where tuổi = 36 or tuổi = 37
select năm bắt_đầu from kỹ_thuật_viên order by tuổi limit 1
select năm bắt_đầu from kỹ_thuật_viên order by tuổi desc limit 1
select đội , count ( * ) from kỹ_thuật_viên group by đội
select đội , count ( * ) from kỹ_thuật_viên group by đội
select đội from kỹ_thuật_viên group by đội order by count ( * ) desc limit 1
select đội from kỹ_thuật_viên group by đội order by count ( * ) desc limit 1
select đội from kỹ_thuật_viên group by đội having count ( * ) >= 2
select đội from kỹ_thuật_viên group by đội having count ( * ) >= 2
select t1.tên , t2.loạt máy from kỹ_thuật_viên as t1 join phân_công sửa_chữa as t2 on t1.id kỹ_thuật_viên = t2.id kỹ_thuật_viên join máy_móc as t3 on t2.id máy = t3.id máy
select t1.tên , t2.loạt máy from kỹ_thuật_viên as t1 join phân_công sửa_chữa as t2 on t1.id kỹ_thuật_viên = t2.id kỹ_thuật_viên join máy_móc as t3 on t2.id máy = t3.id máy
select t1.tên from kỹ_thuật_viên as t1 join phân_công sửa_chữa as t2 on t1.id kỹ_thuật_viên = t2.id kỹ_thuật_viên join máy_móc as t3 on t2.id máy = t3.id máy order by t3.xếp_hạng chất_lượng
select t1.tên , t2.xếp_hạng chất_lượng from kỹ_thuật_viên as t1 join phân_công sửa_chữa as t2 on t1.id kỹ_thuật_viên = t2.id kỹ_thuật_viên join máy_móc as t3 on t2.id máy = t3.id máy order by t3.xếp_hạng chất_lượng
select t1.tên from kỹ_thuật_viên as t1 join phân_công sửa_chữa as t2 on t1.id kỹ_thuật_viên = t2.id kỹ_thuật_viên join lượt sửa_chữa as t3 on t2.id lượt sửa_chữa = t3.id lượt sửa_chữa join máy_móc as t4 on t4.id máy = t3.id máy where t4.điểm giá_trị > 70
select t1.tên from kỹ_thuật_viên as t1 join phân_công sửa_chữa as t2 on t1.id kỹ_thuật_viên = t2.id kỹ_thuật_viên join lượt sửa_chữa as t3 on t2.id lượt sửa_chữa = t3.id lượt sửa_chữa join máy_móc as t4 on t4.id máy = t3.id máy where t4.điểm giá_trị > 70
select tên , count ( * ) from phân_công sửa_chữa as t1 join kỹ_thuật_viên as t2 on t1.id kỹ_thuật_viên = t2.id kỹ_thuật_viên group by tên
select t1.tên , count ( * ) from kỹ_thuật_viên as t1 join phân_công sửa_chữa as t2 on t1.id kỹ_thuật_viên = t2.id kỹ_thuật_viên join lượt sửa_chữa as t3 on t2.id lượt sửa_chữa = t3.id lượt sửa_chữa group by t1.tên
select tên from kỹ_thuật_viên where id kỹ_thuật_viên not in ( select t1.id kỹ_thuật_viên from phân_công sửa_chữa as t1 join lượt sửa_chữa as t2 on t1.id lượt sửa_chữa = t2.id lượt sửa_chữa )
select tên from kỹ_thuật_viên except select t1.tên from kỹ_thuật_viên as t1 join phân_công sửa_chữa as t2 on t1.id kỹ_thuật_viên = t2.id kỹ_thuật_viên join lượt sửa_chữa as t3 on t2.id lượt sửa_chữa = t3.id lượt sửa_chữa join máy_móc as t4 on t4.id máy = t3.id máy
select năm bắt_đầu from kỹ_thuật_viên where đội = "CLE" intersect select năm bắt_đầu from kỹ_thuật_viên where đội = "CWS"
select năm bắt_đầu from kỹ_thuật_viên where đội = "CLE" intersect select năm bắt_đầu from kỹ_thuật_viên where đội = "CWS"
select count ( * ) from ống_kính máy_ảnh where độ dài tiêu_cự theo mm > 15
select nhãn_hiệu , tên from ống_kính máy_ảnh order by khẩu_độ tối_đa desc
select id , màu_sắc , tên from ảnh
select max ( chiều cao ) , avg ( chiều cao ) from núi
select avg ( độ nổi ) from núi where quốc_gia = "Morocco"
select tên , chiều cao , độ nổi from núi where dãy núi < > "Aberdare"
select t1.id , t1.tên from ảnh as t1 join núi as t2 on t1.id núi = t2.id where t2.độ cao > 4000
select t1.tên , t1.id from núi as t1 join ảnh as t2 on t1.id = t2.id núi group by t1.tên having count ( * ) >= 2
select t1.tên from ống_kính máy_ảnh as t1 join ảnh as t2 on t1.id = t2.id ống_kính máy_ảnh join núi as t3 on t2.id núi = t3.id where t3.chiều cao = ( select max ( chiều cao ) from núi )
select t1.tên from ảnh as t1 join ống_kính máy_ảnh as t2 on t1.id ống_kính máy_ảnh = t2.id join ống_kính máy_ảnh as t3 on t2.id = t3.id where t3.nhãn_hiệu = "Sigma" or t3.nhãn_hiệu = "Olympus"
select count ( distinct nhãn_hiệu ) from ống_kính máy_ảnh
select count ( * ) from ống_kính máy_ảnh where id not in ( select id ống_kính máy_ảnh from ảnh )
select count ( distinct t1.nhãn_hiệu ) from ống_kính máy_ảnh as t1 join ảnh as t2 on t1.id = t2.id ống_kính máy_ảnh join núi as t3 on t2.id núi = t3.id where t3.quốc_gia = "Ethiopia"
select t1.nhãn_hiệu from ống_kính máy_ảnh as t1 join ảnh as t2 on t1.id = t2.id ống_kính máy_ảnh join núi as t3 on t2.id núi = t3.id join núi as t4 on t3.id = t4.id where t4.dãy núi = "Toubkal_Atlas" and t4.dãy núi = "Lasta_Massif"
select tên , độ nổi from núi where id not in ( select t1.id núi from núi as t1 join ảnh as t2 on t1.id = t2.id núi join ống_kính máy_ảnh as t3 on t2.id ống_kính máy_ảnh = t3.id join đặc_tính của ống_kính máy_ảnh as t4 on t3.id = t4.id ống_kính máy_ảnh where t4.nhãn_hiệu = "Sigma" )
select tên from ống_kính máy_ảnh where tên like "% Digital %"
select tên , count ( * ) from ống_kính máy_ảnh as t1 join ảnh as t2 on t1.id = t2.id ống_kính máy_ảnh group by tên order by count ( * ) desc
select count ( * ) from ban nhạc
select count ( * ) from ban nhạc
select hãng thu âm from album
select distinct hãng thu âm from album
select tiêu_đề from album where năm = 2012
select tiêu_đề from album where năm = 2012
select t3.vị_trí trên sân_khấu from ban_nhạc as t1 join buổi biểu_diễn as t2 on t1.id = t2.nghệ_sĩ trong ban nhạc join bài hát as t3 on t3.id bài hát = t2.id bài hát where t1.tên = "Solveig"
select t3.vị_trí trên sân_khấu from ban nhạc as t1 join buổi biểu_diễn as t2 on t1.id = t2.nghệ_sĩ trong ban nhạc join bài hát as t3 on t3.id bài hát = t2.id bài hát where t1.tên = "Solveig"
select count ( * ) from bài hát
select count ( * ) from bài hát
select t3.tiêu_đề from ban nhạc as t1 join buổi biểu_diễn as t2 on t1.id = t2.nghệ_sĩ trong ban nhạc join bài hát as t3 on t3.id bài hát = t2.id bài hát where t1.họ = "Heilo"
select t3.tiêu_đề from ban nhạc as t1 join buổi biểu_diễn as t2 on t1.id = t2.nghệ_sĩ trong ban nhạc join bài hát as t3 on t3.id bài hát = t2.id bài hát where t1.họ = "Hello"
select count ( * ) from buổi biểu_diễn as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where t2.tiêu_đề = "Flash"
select count ( distinct nghệ_sĩ trong ban nhạc ) from buổi biểu_diễn as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where t2.tiêu_đề = "Flash"
select t3.tiêu_đề from ban nhạc as t1 join buổi biểu_diễn as t2 on t1.id = t2.nghệ_sĩ trong ban nhạc join bài hát as t3 on t2.id bài hát = t3.id bài hát where t1.tên = "Marianne"
select t1.tiêu_đề from bài hát as t1 join ban nhạc as t2 on t1.id bài hát = t2.id bài hát join buổi biểu_diễn as t3 on t2.id nghệ_sĩ trong ban nhạc = t3.nghệ_sĩ trong ban nhạc join nghệ_sĩ trong ban nhạc as t4 on t3.nghệ_sĩ trong ban nhạc = t4.id nghệ_sĩ trong ban nhạc where t4.tên = "Marianne"
select t1.tên , t1.họ from ban_nhạc as t1 join buổi biểu_diễn as t2 on t1.id = t2.nghệ_sĩ trong ban nhạc join bài hát as t3 on t2.id bài hát = t3.id bài hát where t3.tiêu_đề = "Badlands"
select t1.tên , t1.họ from ban nhạc as t1 join buổi biểu_diễn as t2 on t1.id = t2.nghệ_sĩ trong ban nhạc join bài hát as t3 on t3.id bài hát = t2.id bài hát where t3.tiêu_đề = "Badlands"
select t1.tên , t1.họ from ban_nhạc as t1 join buổi biểu_diễn as t2 on t1.id = t2.nghệ_sĩ trong ban nhạc join bài hát as t3 on t3.id bài hát = t2.id bài hát where t3.tiêu_đề = "Badlands" and t2.vị_trí trên sân_khấu = "hậu_trường"
select t1.tên , t1.họ from ban_nhạc as t1 join buổi biểu_diễn as t2 on t1.id = t2.nghệ_sĩ trong ban nhạc join bài hát as t3 on t3.id bài hát = t2.id bài hát join giọng hát as t4 on t4.id bài hát = t3.id bài hát where t4.loại = "trí_tuệ" and t3.tiêu_đề = "Badlands"
select count ( distinct hãng thu âm ) from album
select count ( distinct hãng thu âm ) from album
select hãng thu âm from album group by hãng thu âm order by count ( * ) desc limit 1
select hãng thu âm from album group by hãng thu âm order by count ( * ) desc limit 1
select t2.họ from ban nhạc as t1 join bài hát as t2 on t1.id = t2.id nghệ_sĩ trong ban nhạc group by t2.họ order by count ( * ) desc limit 1
select t1.họ from ban nhạc as t1 join buổi biểu_diễn as t2 on t1.id = t2.nghệ_sĩ trong ban nhạc group by t1.họ order by count ( * ) desc limit 1
select t2.họ from buổi biểu_diễn as t1 join ban_nhạc as t2 on t1.nghệ_sĩ trong ban nhạc = t2.id join bài hát as t3 on t3.id bài hát = t1.id bài hát where t3.tiêu_đề = "hậu_trường" group by t2.họ order by count ( * ) desc limit 1
select t1.tên , t1.họ from ban nhạc as t1 join buổi biểu_diễn as t2 on t1.id = t2.nghệ_sĩ trong ban nhạc where t2.vị_trí trên sân_khấu = "hậu_trường" group by t1.tên , t1.họ order by count ( * ) desc limit 1
select tiêu_đề from bài hát where tiêu_đề like "% the %"
select tiêu_đề from bài hát where tiêu_đề like "% the %"
select t1.nhạc_cụ from nhạc_cụ as t1 join buổi biểu_diễn as t2 on t1.id bài hát = t2.id bài hát
select t1.nhạc_cụ from nhạc_cụ as t1 join buổi biểu_diễn as t2 on t1.id bài hát = t2.id bài hát
select t3.nhạc_cụ from ban_nhạc as t1 join buổi biểu_diễn as t2 on t1.id = t2.nghệ_sĩ trong ban nhạc join nhạc_cụ as t3 on t2.id bài hát = t3.id bài hát join bài hát as t4 on t3.id bài hát = t4.id bài hát where t1.họ = "Heilo" and t4.tiêu_đề = "Le_Pop"
select t3.nhạc_cụ from ban_nhạc as t1 join buổi biểu_diễn as t2 on t1.id = t2.nghệ_sĩ trong ban nhạc join nhạc_cụ as t3 on t2.id bài hát = t3.id bài hát join bài hát as t4 on t3.id bài hát = t4.id bài hát where t1.họ = "Heilo" and t4.tiêu_đề = "Le_Pop"
select nhạc_cụ from nhạc_cụ group by nhạc_cụ order by count ( * ) desc limit 1
select nhạc_cụ from nhạc_cụ group by nhạc_cụ order by count ( * ) desc limit 1
select count ( * ) from nhạc_cụ where nhạc_cụ = "guitar"
select count ( * ) from nhạc_cụ where nhạc_cụ = "trống"
select t1.nhạc_cụ from nhạc_cụ as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát join buổi biểu_diễn as t3 on t2.id bài hát = t3.id bài hát join giọng hát as t4 on t3.nghệ_sĩ trong ban nhạc = t4.nghệ_sĩ trong ban nhạc where t2.tiêu_đề = "Le_Pop"
select t1.nhạc_cụ from nhạc_cụ as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where t2.tiêu_đề = "Le_Pop"
select count ( * ) from nhạc_cụ as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where t2.tiêu_đề = "Le_Pop"
select count ( distinct nhạc_cụ ) from nhạc_cụ as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát join ban nhạc as t3 on t2.id nghệ_sĩ trong ban nhạc = t3.id nghệ_sĩ trong ban nhạc join buổi biểu_diễn as t4 on t3.id = t4.nghệ_sĩ trong ban nhạc join bài hát as t5 on t4.id bài hát = t5.id bài hát where t5.tiêu_đề = "Le_Pop"
select count ( distinct t3.nhạc_cụ ) from ban nhạc as t1 join buổi biểu_diễn as t2 on t1.id = t2.nghệ_sĩ trong ban nhạc join nhạc_cụ as t3 on t2.id bài hát = t3.id bài hát join bài hát as t4 on t3.id bài hát = t4.id bài hát where t1.họ = "Heilo"
select count ( distinct t1.nhạc_cụ ) from nhạc_cụ as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát join ban nhạc as t3 on t2.id nghệ_sĩ trong ban nhạc = t3.id nghệ_sĩ trong ban nhạc join nghệ_sĩ trong ban nhạc as t4 on t3.id = t4.id nghệ_sĩ trong ban nhạc where t4.họ = "Hello"
select t1.nhạc_cụ from nhạc_cụ as t1 join buổi biểu_diễn as t2 on t1.id bài hát = t2.id bài hát join ban nhạc as t3 on t2.nghệ_sĩ trong ban nhạc = t3.id join nghệ_sĩ trong ban nhạc as t4 on t3.id = t4.id join bài hát as t5 on t5.id bài hát = t1.id bài hát where t4.họ = "Heilo"
select t1.nhạc_cụ from nhạc_cụ as t1 join buổi biểu_diễn as t2 on t1.id bài hát = t2.id bài hát join nghệ_sĩ trong ban nhạc as t3 on t2.nghệ_sĩ trong ban nhạc = t3.id nghệ_sĩ trong ban nhạc join ban nhạc as t4 on t4.id ban nhạc = t3.id ban nhạc where t4.họ = "Hello"
select t3.id bài hát from giọng hát as t1 join buổi biểu_diễn as t2 on t1.id bài hát = t2.id bài hát join bài hát as t3 on t3.id bài hát = t2.id bài hát group by t3.id bài hát order by count ( * ) desc limit 1
select t3.id bài hát from giọng hát as t1 join buổi biểu_diễn as t2 on t1.id bài hát = t2.id bài hát join bài hát as t3 on t3.id bài hát = t2.id bài hát group by t3.id bài hát order by count ( * ) desc limit 1
select loại from giọng hát group by loại order by count ( * ) desc limit 1
select loại from giọng hát group by loại order by count ( * ) desc limit 1
select t3.loại from ban nhạc as t1 join giọng hát as t2 on t1.id = t2.nghệ_sĩ trong ban nhạc join bài hát as t3 on t3.id bài hát = t2.id bài hát where t1.họ = "Hello"
select t3.loại from ban nhạc as t1 join giọng hát as t2 on t1.id = t2.nghệ_sĩ trong ban nhạc join bài hát as t3 on t3.id bài hát = t2.id bài hát where t1.họ = "Hello"
select t3.loại from bài hát as t1 join giọng hát as t2 on t1.id bài hát = t2.id bài hát join ban nhạc as t3 on t2.nghệ_sĩ trong ban nhạc = t3.id nghệ_sĩ trong ban nhạc where t1.tiêu_đề = "Le_Pop"
select t3.loại from bài hát as t1 join buổi biểu_diễn as t2 on t1.id bài hát = t2.id bài hát join giọng hát as t3 on t2.nghệ_sĩ trong ban nhạc = t3.nghệ_sĩ trong ban nhạc where t1.tiêu_đề = "Le_Pop"
select count ( distinct t3.loại ) from bài hát as t1 join giọng hát as t2 on t1.id bài hát = t2.id bài hát join ban nhạc as t3 on t2.nghệ_sĩ trong ban nhạc = t3.id nghệ_sĩ trong ban nhạc where t1.tiêu_đề = "Demon Kitty Rag"
select count ( distinct t3.loại ) from bài hát as t1 join giọng hát as t2 on t1.id bài hát = t2.id bài hát join ban nhạc as t3 on t2.nghệ_sĩ trong ban nhạc = t3.id nghệ_sĩ trong ban nhạc join buổi biểu_diễn as t4 on t4.id bài hát = t1.id bài hát where t1.tiêu_đề = "Demon Kitty Rag"
select count ( * ) from giọng hát where loại = "chính"
select count ( * ) from giọng hát where loại = "chính"
select t3.loại from bài hát as t1 join giọng hát as t2 on t1.id bài hát = t2.id bài hát join ban nhạc as t3 on t2.nghệ_sĩ trong ban nhạc = t3.id nghệ_sĩ where t1.tiêu_đề = "Amsterdam Bar" and t3.tên = "Solveig"
select t3.loại from bài hát as t1 join giọng hát as t2 on t1.id bài hát = t2.id bài hát join ban nhạc as t3 on t2.nghệ_sĩ trong ban nhạc = t3.id nghệ_sĩ trong ban nhạc join buổi biểu_diễn as t4 on t4.id bài hát = t1.id bài hát where t1.tiêu_đề = "Amsterdam Bar" and t3.tên = "Solveig"
select t1.tiêu_đề from bài hát as t1 where id bài hát not in ( select t2.id bài hát from giọng hát as t2 where t2.loại = "chính" )
select t1.tiêu_đề from bài hát as t1 where id bài hát not in ( select t2.id bài hát from giọng hát as t2 where t2.loại = "chính" )
select distinct loại from giọng hát
select distinct loại from giọng hát
select * from album where năm = 2010
select * from album where năm = 2010
select t1.tên from ban nhạc as t1 join buổi biểu_diễn as t2 on t1.id = t2.nghệ_sĩ trong ban nhạc join bài hát as t3 on t3.id bài hát = t2.id bài hát where t3.tiêu_đề = "Le_Pop"
select t1.tên , t1.họ from ban nhạc as t1 join buổi biểu_diễn as t2 on t1.id = t2.nghệ_sĩ trong ban nhạc join bài hát as t3 on t2.id bài hát = t3.id bài hát where t3.tiêu_đề = "Le_Pop"
select t2.họ from ban nhạc as t1 join bài hát as t2 on t1.id = t2.id nghệ_sĩ trong ban nhạc group by t2.họ order by count ( * ) desc limit 1
select t1.họ from ban nhạc as t1 join buổi biểu_diễn as t2 on t1.id = t2.nghệ_sĩ trong ban nhạc group by t1.họ order by count ( * ) desc limit 1
select t3.nhạc_cụ from ban_nhạc as t1 join buổi biểu_diễn as t2 on t1.id = t2.nghệ_sĩ trong ban nhạc join nhạc_cụ as t3 on t2.id bài hát = t3.id bài hát join bài hát as t4 on t3.id bài hát = t4.id bài hát join ban_nhạc as t5 on t5.id = t2.nghệ_sĩ trong ban nhạc where t5.họ = "Heilo" and t4.tiêu_đề = "Badlands"
select t3.nhạc_cụ from ban_nhạc as t1 join buổi biểu_diễn as t2 on t1.id = t2.nghệ_sĩ trong ban nhạc join nhạc_cụ as t3 on t2.id bài hát = t3.id bài hát join bài hát as t4 on t3.id bài hát = t4.id bài hát where t1.họ = "Hello" and t4.tiêu_đề = "Badlands"
select count ( * ) from nhạc_cụ as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where t2.tiêu_đề = "Badlands"
select count ( distinct nhạc_cụ ) from nhạc_cụ as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát join ban nhạc as t3 on t2.id nghệ_sĩ trong ban nhạc = t3.id nghệ_sĩ trong ban nhạc join buổi biểu_diễn as t4 on t3.id = t4.nghệ_sĩ trong ban nhạc join bài hát as t5 on t4.id bài hát = t5.id bài hát where t5.tiêu_đề = "Badlands"
select t3.loại from bài hát as t1 join giọng hát as t2 on t1.id bài hát = t2.id bài hát join ban nhạc as t3 on t2.nghệ_sĩ trong ban nhạc = t3.id nghệ_sĩ trong ban nhạc where t1.tiêu_đề = "Badlands"
select t3.loại from bài hát as t1 join giọng hát as t2 on t1.id bài hát = t2.id bài hát join ban nhạc as t3 on t2.nghệ_sĩ trong ban nhạc = t3.id nghệ_sĩ trong ban nhạc where t1.tiêu_đề = "Badlands"
select count ( distinct t3.loại ) from bài hát as t1 join giọng hát as t2 on t1.id bài hát = t2.id bài hát join ban nhạc as t3 on t2.nghệ_sĩ trong ban nhạc = t3.id nghệ_sĩ trong ban nhạc where t1.tiêu_đề = "Le_Pop"
select count ( distinct loại ) from giọng hát as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where t2.tiêu_đề = "Le_Pop"
select count ( * ) from giọng hát as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát join ban nhạc as t3 on t3.id nghệ_sĩ trong ban nhạc = t1.nghệ_sĩ trong ban nhạc join bài hát as t4 on t4.id bài hát = t2.id bài hát where t3.tên = "Shared" and t4.tiêu_đề = "By Many Artists"
select count ( distinct t3.id bài hát ) from ban nhạc as t1 join giọng hát as t2 on t1.id = t2.nghệ_sĩ trong ban nhạc join bài hát as t3 on t3.id bài hát = t2.id bài hát where t2.loại = "share"
select t1.tiêu_đề from bài hát as t1 join giọng hát as t2 on t1.id bài hát = t2.id bài hát where t2.loại != "bass"
select t1.tiêu_đề from bài hát as t1 where id bài hát not in ( select t2.id bài hát from giọng hát as t2 where t2.loại = "bài hát phụ" )
select t3.loại from ban nhạc as t1 join giọng hát as t2 on t1.id = t2.nghệ_sĩ trong ban nhạc join bài hát as t3 on t2.id bài hát = t3.id bài hát where t1.tên = "Solveig" group by t3.loại order by count ( * ) desc limit 1
select t3.loại from ban nhạc as t1 join giọng hát as t2 on t1.id = t2.nghệ_sĩ trong ban nhạc join bài hát as t3 on t2.id bài hát = t3.id bài hát where t1.tên = "Solveig" group by t3.loại order by count ( * ) desc limit 1
select t3.loại from bài hát as t1 join buổi biểu_diễn as t2 on t1.id bài hát = t2.id bài hát join giọng hát as t3 on t2.id bài hát = t3.id bài hát join ban nhạc as t4 on t3.nghệ_sĩ trong ban nhạc = t4.id join bài hát as t5 on t5.id bài hát = t2.id bài hát where t4.họ = "Hello" and t5.tiêu_đề = "Der Kapitan"
select t3.loại from ban_nhạc as t1 join giọng hát as t2 on t1.id = t2.nghệ_sĩ trong ban nhạc join bài hát as t3 on t3.id bài hát = t2.id bài hát where t1.họ = "Hello" and t3.tiêu_đề = "Der_Kapitan"
select t1.tên from ban nhạc as t1 join buổi biểu_diễn as t2 on t1.id = t2.nghệ_sĩ trong ban nhạc group by t1.tên order by count ( * ) desc limit 1
select t1.tên , t1.họ from ban nhạc as t1 join buổi biểu_diễn as t2 on t1.id = t2.nghệ_sĩ trong ban nhạc group by t1.tên , t1.họ order by count ( * ) desc limit 1
select t3.loại from ban nhạc as t1 join giọng hát as t2 on t1.id = t2.nghệ_sĩ trong ban nhạc join bài hát as t3 on t2.id bài hát = t3.id bài hát where t1.tên = "Marianne" group by t3.loại order by count ( * ) desc limit 1
select t3.loại from ban nhạc as t1 join buổi biểu_diễn as t2 on t1.id = t2.nghệ_sĩ trong ban nhạc join giọng hát as t3 on t2.id bài hát = t3.id bài hát where t1.tên = "Marianne" group by t3.loại order by count ( * ) desc limit 1
select t1.tên , t1.họ from ban_nhạc as t1 join buổi biểu_diễn as t2 on t1.id = t2.nghệ_sĩ trong ban nhạc join bài hát as t3 on t3.id bài hát = t2.id bài hát where t3.tiêu_đề = "Der Kapitan" and t2.vị_trí trên sân_khấu = "hậu_trường"
select t1.tên , t1.họ from ban_nhạc as t1 join buổi biểu_diễn as t2 on t1.id = t2.nghệ_sĩ trong ban nhạc join bài hát as t3 on t3.id bài hát = t2.id bài hát where t3.tiêu_đề = "Der Kapitan" and t2.vị_trí trên sân_khấu = "hậu_trường"
select t1.tiêu_đề from bài hát as t1 join giọng hát as t2 on t1.id bài hát = t2.id bài hát where t2.loại != "bass"
select t1.tiêu_đề from bài hát as t1 join giọng hát as t2 on t1.id bài hát = t2.id bài hát where t2.loại = "main"
select t3.tiêu_đề from album as t1 join danh_sách bài hát as t2 on t1.id album = t2.id album join bài hát as t3 on t2.id bài hát = t3.id bài hát where t1.tiêu_đề = "A_Kiss in the Dark : Live in Hamburg"
select t3.tiêu_đề from album as t1 join danh_sách bài hát as t2 on t1.id album = t2.id album join bài hát as t3 on t2.id bài hát = t3.id bài hát where t1.tiêu_đề = "A_Kiss in the Dark : Live in Hamburg"
select t3.tiêu_đề from album as t1 join danh_sách bài hát as t2 on t1.id album = t2.id album join bài hát as t3 on t2.id bài hát = t3.id bài hát where t1.hãng thu âm = "Universal_Music Group"
select t3.tiêu_đề from album as t1 join danh_sách bài hát as t2 on t1.id album = t2.id album join bài hát as t3 on t2.id bài hát = t3.id bài hát where t1.hãng thu âm = "Universal_Music Group"
select count ( * ) from album as t1 join danh_sách bài hát as t2 on t1.id album = t2.id album join bài hát as t3 on t2.id bài hát = t3.id bài hát where t1.loại = "studio"
select count ( * ) from album where loại = "studio"
select khách_hàng tốt hay xấu from khách_hàng where id phiếu giảm_giá = ( select id phiếu giảm_giá from phiếu giảm_giá where số tiền giảm_giá = 500 )
select t1.id khách_hàng , t1.tên , count ( * ) from khách_hàng as t1 join lượt đặt mua as t2 on t1.id khách_hàng = t2.id khách_hàng group by t1.id khách_hàng
select t1.id khách_hàng , sum ( t1.số tiền phải trả ) from lượt đặt mua as t1 join khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng group by t1.id khách_hàng order by sum ( t1.số tiền phải trả ) desc limit 1
select t1.id thanh_toán , t1.số tiền hoàn_trả from thanh_toán as t1 join đặt mua as t2 on t1.id đặt mua = t2.id đặt mua group by t1.id thanh_toán order by count ( * ) desc limit 1
select t1.id sản_phẩm from sản_phẩm được đặt as t1 join sản_phẩm được đặt as t2 on t1.id sản_phẩm = t2.id sản_phẩm group by t2.id sản_phẩm having count ( * ) = 3
select t1.mô_tả sản_phẩm from sản_phẩm cho thuê as t1 join sản_phẩm được đặt as t2 on t1.id sản_phẩm = t2.id sản_phẩm where t2.số tiền đã đặt = 102,76
select t1.ngày bắt_đầu đặt mua , t1.ngày kết_thúc đặt mua from lượt đặt mua as t1 join sản_phẩm được đặt as t2 on t1.id đặt mua = t2.id đặt mua join sản_phẩm cho thuê as t3 on t2.id sản_phẩm = t3.id sản_phẩm where t3.tên sản_phẩm = "Bộ sưu_tập sách"
select tên sản_phẩm from sản_phẩm có sẵn
select count ( distinct mã loại sản_phẩm ) from sản_phẩm cho thuê
select tên , họ , giới_tính from khách_hàng where khách_hàng tốt hay xấu = "tốt" order by họ
select avg ( số tiền nợ ) from thanh_toán
select max ( số_lượng đặt mua ) , min ( số_lượng đặt mua ) , avg ( số_lượng đặt mua ) from sản_phẩm được đặt
select distinct mã loại thanh_toán from thanh_toán
select chi_phí thuê hàng ngày from sản_phẩm cho thuê where tên sản_phẩm like "% Book %"
select count ( * ) from sản_phẩm được đặt where số tiền đã đặt > 200
select sum ( t1.số tiền giảm_giá ) from phiếu giảm_giá as t1 join khách_hàng as t2 on t1.id phiếu giảm_giá = t2.id phiếu giảm_giá where t2.khách_hàng tốt hay xấu = "tốt" intersect select sum ( t1.số tiền giảm_giá ) from phiếu giảm_giá as t1 join khách_hàng as t2 on t1.id phiếu giảm_giá = t2.id phiếu giảm_giá where t2.khách_hàng tốt hay xấu = "xấu"
select ngày thanh_toán from thanh_toán where số tiền đã trả > 300 or mã loại thanh_toán = "Cash"
select tên sản_phẩm , mô_tả về sản_phẩm from sản_phẩm cho thuê where mã loại sản_phẩm = "Dao_kéo" and chi_phí thuê hàng ngày < 20
select tên nhà_hàng from nhà_hàng
select địa_chỉ from nhà_hàng where tên nhà_hàng = "Subway"
select t1.đánh_giá xếp_hạng from nhà_hàng as t1 join loại của nhà_hàng as t2 on t1.id nhà_hàng = t2.id nhà_hàng where t2.tên loại nhà_hàng = "Subway"
select tên loại nhà_hàng from loại nhà_hàng
select mô_tả về loại nhà_hàng from loại nhà_hàng where tên loại nhà_hàng = "Sandwich"
select tên nhà_hàng , đánh_giá xếp_hạng from nhà_hàng order by đánh_giá xếp_hạng desc limit 1
select tuổi from sinh_viên where họ = "Smith" and tên = "Linda"
select giới_tính from sinh_viên where họ = "Smith" and tên = "Linda"
select tên , họ from sinh_viên where chuyên_ngành = 600
select mã thành_phố from sinh_viên where họ = "Smith" and tên = "Linda"
select count ( * ) from sinh_viên where cố_vấn = 1121
select cố_vấn , count ( * ) from sinh_viên group by cố_vấn order by count ( * ) desc limit 1
select chuyên_ngành , count ( * ) from sinh_viên group by chuyên_ngành order by count ( * ) limit 1
select chuyên_ngành , count ( * ) from sinh_viên group by chuyên_ngành having count ( * ) between 2 and 30
select tên , họ from sinh_viên where tuổi > 18 and chuyên_ngành = 600
select tên , họ from sinh_viên where tuổi > 18 and giới_tính = "F" except select t1.tên , t1.họ from sinh_viên as t1 join nhà_hàng as t2 on t1.id sinh_viên = t2.cố_vấn where t1.chuyên_ngành = 600
select count ( * ) from nhà_hàng as t1 join loại nhà_hàng as t2 on t1.id nhà_hàng = t2.id nhà_hàng where t2.tên loại nhà_hàng = "Sandwich"
select sum ( t2.thời_gian dành ra ) from lượt ghé thăm nhà_hàng as t1 join sinh_viên as t2 on t1.id sinh_viên = t2.id sinh_viên join nhà_hàng as t3 on t1.id nhà_hàng = t3.id nhà_hàng where t2.tên = "Linda" and t2.họ = "Smith"
select count ( * ) from lượt ghé thăm nhà_hàng as t1 join nhà_hàng as t2 on t1.id nhà_hàng = t2.id nhà_hàng join sinh_viên as t3 on t1.id sinh_viên = t3.id sinh_viên where t3.tên = "Linda" and t3.họ = "Smith" and t2.tên nhà_hàng = "Subway"
select t1.thời_gian from lượt ghé thăm nhà_hàng as t1 join sinh_viên as t2 on t1.id sinh_viên = t2.id sinh_viên join nhà_hàng as t3 on t3.id nhà_hàng = t1.id nhà_hàng where t2.tên = "Linda" and t2.họ = "Smith" and t3.tên nhà_hàng = "Subway"
select t1.tên nhà_hàng , sum ( t2.thời_gian dành ra ) from nhà_hàng as t1 join lượt ghé thăm nhà_hàng as t2 on t1.id nhà_hàng = t2.id nhà_hàng group by t1.tên nhà_hàng order by sum ( t2.thời_gian dành ra ) limit 1
select t1.tên , t1.họ from sinh_viên as t1 join lượt ghé thăm nhà_hàng as t2 on t1.id sinh_viên = t2.id sinh_viên group by t1.tên , t1.họ order by count ( * ) desc limit 1
select count ( distinct tên ) , họ from diễn_viên where tên = "Male" union select count ( distinct tên ) , họ from diễn_viên where tên = "Female"
select count ( distinct họ ) from diễn_viên
select tên from diễn_viên group by tên order by count ( * ) desc limit 1
select t1.tên from diễn_viên as t1 join diễn_viên điện_ảnh as t2 on t1.id diễn_viên = t2.id diễn_viên group by t1.tên order by count ( * ) desc limit 1
select t1.tên , t1.họ from diễn_viên as t1 join diễn_viên điện_ảnh as t2 on t1.id diễn_viên = t2.id diễn_viên group by t1.tên , t1.họ order by count ( * ) desc limit 1
select t1.tên , t1.họ from diễn_viên as t1 join diễn_viên điện_ảnh as t2 on t1.id diễn_viên = t2.id diễn_viên group by t1.tên , t1.họ order by count ( * ) desc limit 1
select t1.quận from địa_chỉ as t1 join địa_chỉ as t2 on t1.quận = t2.quận group by t1.quận having count ( * ) >= 2
select quận from địa_chỉ group by quận having count ( * ) >= 2
select số điện_thoại , mã bưu_điện from địa_chỉ where id địa_chỉ = 1031
select số điện_thoại , mã bưu_điện from địa_chỉ where địa_chỉ = "1031 Daugavpils Parkway"
select t1.thành_phố , count ( * ) , t1.id thành_phố from địa_chỉ as t1 join thành_phố as t2 on t1.id thành_phố = t2.id thành_phố group by t1.thành_phố order by count ( * ) desc limit 1
select t1.thành_phố , t1.id thành_phố , count ( * ) from địa_chỉ as t1 join thành_phố as t2 on t1.id thành_phố = t2.id thành_phố group by t1.thành_phố order by count ( * ) desc limit 1
select count ( * ) from địa_chỉ where quận = "California"
select count ( * ) from địa_chỉ where quận = "California"
select t1.tiêu_đề , t1.id phim from phim as t1 join lượt thuê as t2 on t1.id phim = t2.id phim where t1.giá cho thuê = 0,99 and t2.id phim in ( select t3.id phim from hàng tồn_kho as t3 join lượt thuê as t4 on t3.id hàng tồn_kho = t4.id hàng tồn_kho where t4.id phim in ( select t5.id phim from phim as t5 where t5.tiêu_đề = "The_Wizard of_Oz" ) group by t3.id phim having count ( * ) < 3 )
select t1.tiêu_đề , t1.id phim from phim as t1 join hàng tồn_kho as t2 on t1.id phim = t2.id phim where t1.giá cho thuê = 0,99 and t2.id phim = t1.id phim group by t1.tiêu_đề having count ( * ) < 3
select count ( * ) from thành_phố where id quốc_gia = ( select id quốc_gia from quốc_gia where quốc_gia = "Australia" )
select count ( * ) from thành_phố where id quốc_gia = ( select id quốc_gia from quốc_gia where quốc_gia = "Australia" )
select t1.quốc_gia from quốc_gia as t1 join thành_phố as t2 on t1.id quốc_gia = t2.id quốc_gia group by t1.quốc_gia having count ( * ) >= 3
select t1.quốc_gia from quốc_gia as t1 join thành_phố as t2 on t1.id quốc_gia = t2.id quốc_gia group by t1.quốc_gia having count ( * ) >= 3
select t1.ngày thanh_toán from khoản thanh_toán as t1 join nhân_viên as t2 on t1.id nhân_viên = t2.id nhân_viên where t1.số tiền > 10 and t2.tên = "Elsa"
select ngày thanh_toán from khoản thanh_toán where số tiền > 10 or id nhân_viên = ( select id nhân_viên from nhân_viên where tên = "Elsa" )
select count ( * ) from khách_hàng where có hoạt_động không = 1
select count ( * ) from khách_hàng where có hoạt_động không = 1
select max ( giá cho thuê ) from phim
select tiêu_đề , giá cho thuê from phim order by giá cho thuê desc limit 1
select t1.tiêu_đề , t1.id phim , t1.mô_tả from phim as t1 join diễn_viên điện_ảnh as t2 on t1.id phim = t2.id phim group by t1.tiêu_đề order by count ( * ) desc limit 1
select t1.tiêu_đề , t1.id phim , t1.mô_tả from phim as t1 join diễn_viên điện_ảnh as t2 on t1.id phim = t2.id phim group by t1.tiêu_đề order by count ( * ) desc limit 1
select t1.tên , t1.họ from diễn_viên as t1 join diễn_viên điện_ảnh as t2 on t1.id diễn_viên = t2.id diễn_viên group by t1.tên , t1.họ order by count ( * ) desc limit 1
select t1.tên , t1.id diễn_viên from diễn_viên as t1 join diễn_viên điện_ảnh as t2 on t1.id diễn_viên = t2.id diễn_viên join phim as t3 on t2.id phim = t3.id phim group by t1.id diễn_viên order by count ( * ) desc limit 1
select t1.tên , t1.họ from diễn_viên as t1 join diễn_viên điện_ảnh as t2 on t1.id diễn_viên = t2.id diễn_viên group by t1.tên , t1.họ having count ( * ) > 30
select t1.tên , t1.họ from diễn_viên as t1 join diễn_viên điện_ảnh as t2 on t1.id diễn_viên = t2.id diễn_viên group by t1.tên , t1.họ having count ( * ) > 30
select t1.id cửa_hàng from cửa_hàng as t1 join hàng tồn_kho as t2 on t1.id cửa_hàng = t2.id cửa_hàng group by t1.id cửa_hàng order by count ( * ) desc limit 1
select t1.id cửa_hàng from kho as t1 join hàng tồn_kho as t2 on t1.id cửa_hàng = t2.id cửa_hàng group by t1.id cửa_hàng order by count ( * ) desc limit 1
select sum ( số tiền ) from khoản thanh_toán
select sum ( số tiền ) from khoản thanh_toán
select t1.tên , t1.họ , t1.id khách_hàng from khách_hàng as t1 join khoản thanh_toán as t2 on t1.id khách_hàng = t2.id khách_hàng group by t1.id khách_hàng having count ( * ) > = 1 order by t2.số tiền limit 1
select t1.tên , t1.họ , t1.id khách_hàng from khách_hàng as t1 join khoản thanh_toán as t2 on t1.id khách_hàng = t2.id khách_hàng group by t1.id khách_hàng order by sum ( t2.số tiền ) limit 1
select t2.tên from danh_mục phim as t1 join danh_mục as t2 on t1.id danh_mục = t2.id danh_mục join phim as t3 on t3.id phim = t1.id phim where t3.tiêu_đề = "HUNGER ROOF"
select t2.id danh_mục from phim as t1 join danh_mục phim as t2 on t1.id phim = t2.id phim where t1.tiêu_đề = "HUNGER ROOF"
select t1.tên , t1.id danh_mục , count ( * ) from danh_mục as t1 join danh_mục phim as t2 on t1.id danh_mục = t2.id danh_mục group by t1.tên , t1.id danh_mục
select t1.tên , count ( * ) from danh_mục as t1 join danh_mục phim as t2 on t1.id danh_mục = t2.id danh_mục group by t1.tên
select t1.tiêu_đề , t1.id phim from phim as t1 join hàng tồn_kho as t2 on t1.id phim = t2.id phim group by t1.tiêu_đề order by count ( * ) desc limit 1
select t1.tiêu_đề , t1.id phim from phim as t1 join hàng tồn_kho as t2 on t1.id phim = t2.id phim group by t1.id phim order by count ( * ) desc limit 1
select t1.tiêu_đề , t2.id hàng tồn_kho from phim as t1 join lượt thuê as t2 on t1.id phim = t2.id phim group by t2.id hàng tồn_kho order by count ( * ) desc limit 1
select t1.tiêu_đề , t2.id hàng tồn_kho from phim as t1 join lượt thuê as t2 on t1.id phim = t2.id phim group by t2.id phim order by count ( * ) desc limit 1
select count ( * ) from ngôn_ngữ
select count ( distinct t1.tên ) from ngôn_ngữ as t1 join phim as t2 on t1.id ngôn_ngữ = t2.id ngôn_ngữ
select tiêu_đề from phim where đánh_giá xếp_hạng = "R"
select tiêu_đề from phim where đánh_giá xếp_hạng = "R"
select t1.địa_chỉ from địa_chỉ as t1 join cửa_hàng as t2 on t1.id địa_chỉ = t2.id địa_chỉ where t2.id cửa_hàng = 1
select địa_chỉ from địa_chỉ where id địa_chỉ in ( select id địa_chỉ from cửa_hàng where id cửa_hàng = 1 )
select t1.tên , t1.họ , t1.id nhân_viên from nhân_viên as t1 join khoản thanh_toán as t2 on t1.id nhân_viên = t2.id nhân_viên group by t1.tên , t1.họ order by count ( * ) limit 1
select t1.tên , t1.id nhân_viên from nhân_viên as t1 join khoản thanh_toán as t2 on t1.id nhân_viên = t2.id nhân_viên group by t1.id nhân_viên order by count ( * ) limit 1
select t1.tên from ngôn_ngữ as t1 join phim as t2 on t1.id ngôn_ngữ = t2.id ngôn_ngữ where t2.tiêu_đề = "AIRPORT POLLOCK"
select t1.tên from ngôn_ngữ as t1 join phim as t2 on t1.id ngôn_ngữ = t2.id ngôn_ngữ where t2.tiêu_đề = "AIRPORT POLLOCK"
select count ( * ) from cửa_hàng
select count ( * ) from cửa_hàng
select count ( distinct đánh_giá xếp_hạng ) from phim
select count ( distinct đánh_giá xếp_hạng ) from phim
select tiêu_đề from phim where tính_năng đặc_biệt like "% Cảnh đã xoá %"
select tiêu_đề from phim where tính_năng đặc_biệt like "% Cảnh đã xoá %"
select count ( * ) from hàng tồn_kho where id cửa_hàng = 1
select count ( * ) from hàng tồn_kho where id cửa_hàng = 1
select min ( ngày thanh_toán ) from khoản thanh_toán
select min ( ngày thanh_toán ) from khoản thanh_toán
select t1.email from khách_hàng as t1 join địa_chỉ as t2 on t1.id địa_chỉ = t2.id địa_chỉ where t2.địa_chỉ = "Linda"
select t1.địa_chỉ , t1.email from khách_hàng as t1 join địa_chỉ as t2 on t1.id địa_chỉ = t2.id địa_chỉ where t1.tên = "Linda"
select tiêu_đề from phim where thời_lượng thuê > 100 or đánh_giá xếp_hạng = "PG" and giá thay_thế < 200
select tiêu_đề from phim where thời_lượng thuê > 100 or đánh_giá xếp_hạng = "PG" and giá thay_thế > 200
select t1.tên , t1.họ from khách_hàng as t1 join lượt thuê as t2 on t1.id khách_hàng = t2.id khách_hàng order by t2.ngày thuê phim limit 1
select t1.tên , t1.họ from khách_hàng as t1 join lượt thuê as t2 on t1.id khách_hàng = t2.id khách_hàng order by t2.ngày thuê asc limit 1
select t1.tên , t1.họ from nhân_viên as t1 join lượt thuê as t2 on t1.id nhân_viên = t2.id nhân_viên join khách_hàng as t3 on t2.id khách_hàng = t3.id khách_hàng where t3.tên = "April" and t3.họ = "Burns"
select t1.tên , t1.họ from nhân_viên as t1 join lượt thuê as t2 on t1.id nhân_viên = t2.id nhân_viên join khách_hàng as t3 on t2.id khách_hàng = t3.id khách_hàng where t3.tên = "April" and t3.họ = "Burns"
select t1.id cửa_hàng from cửa_hàng as t1 join khách_hàng as t2 on t1.id cửa_hàng = t2.id cửa_hàng group by t1.id cửa_hàng order by count ( * ) desc limit 1
select t1.id cửa_hàng from cửa_hàng as t1 join khách_hàng as t2 on t1.id cửa_hàng = t2.id cửa_hàng group by t1.id cửa_hàng order by count ( * ) desc limit 1
select max ( số tiền ) from khoản thanh_toán
select max ( số tiền ) from khoản thanh_toán
select t1.địa_chỉ from địa_chỉ as t1 join nhân_viên as t2 on t1.id địa_chỉ = t2.id địa_chỉ where t2.tên = "Elsa"
select t2.địa_chỉ from nhân_viên as t1 join địa_chỉ as t2 on t1.id địa_chỉ = t2.id địa_chỉ where t1.tên = "Elsa"
select tên from khách_hàng where not id khách_hàng in ( select t1.id khách_hàng from lượt thuê as t1 join phim as t2 on t1.id phim = t2.id phim where t2.năm phát_hành > "2005 - 08-23 02:06:01" )
select tên from khách_hàng where id khách_hàng not in ( select t1.id khách_hàng from lượt thuê as t1 join phim as t2 on t1.id phim = t2.id phim where t2.ngày thuê < "2005 - 08-23 02:06:01" )
select count ( * ) from tài_xế
select tên , thành_phố quê_hương , tuổi from tài_xế
select đảng, count ( * ) from tài_xế group by đảng
select tên from tài_xế order by tuổi desc
select distinct thành_phố quê_hương from tài_xế
select thành_phố quê_hương from tài_xế group by thành_phố quê_hương order by count ( * ) desc limit 1
select đảng from tài_xế where thành_phố quê_hương = "hartford" and tuổi > 40
select thành_phố quê_hương from tài_xế where tuổi > 40 group by thành_phố quê_hương having count ( * ) >= 2
select thành_phố quê_hương from tài_xế where tuổi > 40 except select thành_phố quê_hương from tài_xế where tuổi > 40
select tên from tài_xế where id tài_xế not in ( select t1.id tài_xế from xe_buýt của trường_học as t1 join tài_xế as t2 on t1.id tài_xế = t2.id tài_xế )
select loại_hình from trường_học group by loại_hình having count ( * ) = 2
select t1.trường_học , t2.tên from trường_học as t1 join tài_xế as t2 on t1.id trường_học = t2.id trường_học
select avg ( số năm làm_việc ) , min ( số năm làm_việc ) , max ( số năm làm_việc ) from xe_buýt của trường_học
select trường_học , loại_hình from trường_học where id trường_học not in ( select id trường_học from xe_buýt của trường_học )
select loại_hình , count ( * ) from trường_học as t1 join xe_buýt của trường_học as t2 on t1.id trường_học = t2.id trường_học group by loại_hình
select count ( * ) from tài_xế where thành_phố quê_hương = "hartford" or tuổi < 40
select tên from tài_xế where thành_phố quê_hương = "hartford" and tuổi < 40
select t1.tên , t2.số năm làm_việc from tài_xế as t1 join xe_buýt của trường_học as t2 on t1.id tài_xế = t2.id tài_xế order by t2.số năm làm_việc desc limit 1
select count ( * ) from trường_học
select count ( * ) from trường_học
select địa_điểm from trường_học order by số_lượng nhập_học
select địa_điểm from trường_học order by số_lượng nhập_học desc
select địa_điểm from trường_học order by năm thành_lập desc
select địa_điểm from trường_học order by năm thành_lập desc
select số_lượng nhập_học from trường_học where tôn_giáo != "Công_giáo"
select số_lượng nhập_học from trường_học where tôn_giáo != "Công_giáo"
select avg ( số_lượng nhập_học ) from trường_học
select avg ( số_lượng nhập_học ) from trường_học
select đội from cầu_thủ order by đội asc
select đội from cầu_thủ order by đội asc
select count ( distinct vị_trí ) from cầu_thủ
select count ( distinct vị_trí ) from cầu_thủ
select đội from cầu_thủ order by tuổi desc limit 1
select đội from cầu_thủ order by tuổi desc limit 1
select đội from cầu_thủ order by tuổi desc limit 5
select đội from cầu_thủ order by tuổi desc limit 5
select t1.đội , t2.trường_học from cầu_thủ as t1 join trường_học as t2 on t1.id_trường = t2.id_trường
select t1.đội , t2.địa_điểm from cầu_thủ as t1 join trường_học as t2 on t1.id_trường = t2.id_trường
select t1.địa_điểm from trường_học as t1 join cầu_thủ as t2 on t1.id_trường = t2.id_trường group by t1.id_trường having count ( * ) > 1
select địa_điểm from trường_học where số_lượng nhập_học > 1
select tôn_giáo from trường_học where id_trường = ( select id_trường from cầu_thủ group by id_trường order by count ( * ) desc limit 1 )
select tôn_giáo from trường_học where số_lượng nhập_học = ( select max ( số_lượng nhập_học ) from trường_học )
select địa_điểm , biệt_danh from trường_học
select biệt_danh , địa_điểm from trường_học
select tôn_giáo , count ( * ) from trường_học group by tôn_giáo
select tôn_giáo , count ( * ) from trường_học group by tôn_giáo
select tôn_giáo , count ( * ) from trường_học group by tôn_giáo order by count ( * ) desc
select tôn_giáo , count ( * ) from trường_học group by tôn_giáo order by count ( * ) desc
select màu_sắc from chi_tiết trường_học where số_lượng nhập_học = ( select max ( số_lượng nhập_học ) from trường_học )
select màu_sắc from chi_tiết trường_học where số_lượng nhập_học = ( select max ( số_lượng nhập_học ) from trường_học )
select địa_điểm from trường_học where id_trường not in ( select id_trường from cầu_thủ )
select địa_điểm from trường_học where id_trường not in ( select id_trường from cầu_thủ )
select tôn_giáo from trường_học where năm thành_lập < 1890 intersect select tôn_giáo from trường_học where năm thành_lập > 1900
select tôn_giáo from trường_học where năm thành_lập < 1890 intersect select tôn_giáo from trường_học where năm thành_lập > 1900
select biệt_danh from chi_tiết trường_học where phân_hạng ! = 1
select biệt_danh from chi_tiết trường_học where phân_hạng ! = 1
select tôn_giáo from trường_học group by tôn_giáo having count ( * ) > 1
select tôn_giáo from trường_học group by tôn_giáo having count ( * ) > 1
select tên from quốc_gia union select tên from giải đấu
select count ( * ) from giải đấu as t1 join quốc_gia as t2 on t1.id quốc_gia = t2.id where t2.tên = "England"
select avg ( trọng_lượng ) from cầu_thủ
select max ( cân nặng ) , min ( cân nặng ) from cầu_thủ
select tên cầu_thủ from đặc_điểm cầu_thủ where đánh_giá tổng_thể > ( select avg ( đánh_giá tổng_thể ) from đặc_điểm cầu_thủ )
select t1.tên cầu_thủ from cầu_thủ as t1 join đặc_điểm của cầu_thủ as t2 on t1.id cầu_thủ = t2.id cầu_thủ api order by t2.rê bóng desc limit 1
select tên cầu_thủ from cầu_thủ where tạt bóng > 90 and chân thuận = "R"
select tên cầu_thủ from cầu_thủ as t1 join đặc_điểm của cầu_thủ as t2 on t1.id cầu_thủ api = t2.id cầu_thủ api where t2.chân thuận = "L" and t2.đánh_giá tổng_thể between 85 and 90
select avg ( t1.tiềm_năng ) from đặc_điểm của cầu_thủ as t1 join đặc_điểm của cầu_thủ as t2 on t1.id = t2.id where t1.chân thuận = "R" and t2.chân thuận = "L"
select count ( * ) , chân thuận from đặc_điểm của cầu_thủ where đánh_giá tổng_thể > 80 group by chân thuận
select id cầu_thủ api của fifa from đặc_điểm của cầu_thủ where chiều cao > = 180 and đánh_giá tổng_thể > 85
select id cầu_thủ api của fifa from cầu_thủ where chân thuận = "chân trái" and chiều cao between 180 and 190
select t1.tên cầu_thủ from cầu_thủ as t1 join đặc_điểm của cầu_thủ as t2 on t1.id cầu_thủ api = t2.id cầu_thủ api order by t2.đánh_giá tổng_thể desc limit 3
select tên cầu_thủ , ngày_sinh from cầu_thủ order by tiềm_năng desc limit 5
select tên quận from quận order by diện_tích của thành_phố desc
select tên quận from quận order by diện_tích của các thành_phố desc
select kích_thước trang tối_đa from sản_phẩm group by kích_thước trang tối_đa having count ( * ) > 3
select kích_thước trang tối_đa from sản_phẩm group by kích_thước trang tối_đa having count ( * ) > 3
select tên quận , dân_số thành_phố from quận where dân_số thành_phố between 200000 and 20000000
select tên quận , dân_số thành_phố from quận where dân_số thành_phố between 200000 and 2000000
select tên quận from quận where diện_tích của các thành_phố > 10 or dân_số thành_phố > 100000
select tên quận from quận where diện_tích của các thành_phố > 10 or dân_số của các thành_phố > 100000
select tên quận from quận order by dân_số thành_phố desc limit 1
select tên quận from quận order by dân_số thành_phố desc limit 1
select tên quận from quận order by diện_tích của các thành_phố limit 1
select tên quận from quận order by diện_tích của các thành_phố limit 1
select sum ( dân_số thành_phố ) from quận order by diện_tích của các thành_phố desc limit 3
select sum ( dân_số thành_phố ) from quận order by diện_tích của các thành_phố desc limit 3
select loại , count ( * ) from cửa_hàng group by loại
select loại , count ( * ) from cửa_hàng group by loại
select t1.tên cửa_hàng from cửa_hàng as t1 join quận của cửa_hàng as t2 on t1.id cửa_hàng = t2.id cửa_hàng join quận as t3 on t2.id quận = t3.id quận where t3.tên quận = "Khanewal"
select tên cửa_hàng from cửa_hàng as t1 join quận của cửa_hàng as t2 on t1.id cửa_hàng = t2.id cửa_hàng join quận as t3 on t2.id quận = t3.id quận where t3.tên quận = "Khanewal"
select tên cửa_hàng from cửa_hàng as t1 join quận của cửa_hàng as t2 on t1.id cửa_hàng = t2.id cửa_hàng join quận as t3 on t2.id quận = t3.id quận where t3.dân_số thành_phố = ( select max ( dân_số thành_phố ) from quận )
select t1.tên cửa_hàng from cửa_hàng as t1 join quận của cửa_hàng as t2 on t1.id cửa_hàng = t2.id cửa_hàng join quận as t3 on t2.id quận = t3.id quận where t3.dân_số thành_phố = ( select max ( t3.dân_số thành_phố ) from quận as t3 join quận của cửa_hàng as t2 on t2.id quận = t3.id quận )
select thành_phố của các trụ_sở from cửa_hàng where tên cửa_hàng = "Blackville"
select tên thành_phố của các trụ_sở from cửa_hàng where tên cửa_hàng = "Blackville"
select tên thành_phố , count ( * ) from quận as t1 join quận của cửa_hàng as t2 on t1.id quận = t2.id quận group by tên thành_phố
select tên thành_phố , count ( * ) from quận as t1 join quận của cửa_hàng as t2 on t1.id quận = t2.id quận group by tên thành_phố
select tên thành_phố của các trụ_sở from quận order by số_lượng các loại sản_phẩm desc limit 1
select tên thành_phố from quận where dân_số thành_phố = ( select max ( dân_số thành_phố ) from quận )
select avg ( số trang màu trên từng phút ) from sản_phẩm
select avg ( số trang màu trên từng phút ) from sản_phẩm where giao_diện = "tô"
select t1.sản_phẩm from sản_phẩm as t1 join sản_phẩm của cửa_hàng as t2 on t1.id sản_phẩm = t2.id sản_phẩm join cửa_hàng as t3 on t2.id cửa_hàng = t3.id cửa_hàng where t3.tên cửa_hàng = "Miramichi"
select t1.sản_phẩm from sản_phẩm as t1 join sản_phẩm của cửa_hàng as t2 on t1.id sản_phẩm = t2.id sản_phẩm join cửa_hàng as t3 on t2.id cửa_hàng = t3.id cửa_hàng where t3.tên cửa_hàng = "Miramichi"
select t1.sản_phẩm from sản_phẩm as t1 join sản_phẩm của cửa_hàng as t2 on t1.id sản_phẩm = t2.id sản_phẩm join cửa_hàng as t3 on t2.id cửa_hàng = t3.id cửa_hàng where t1.kích_thước trang tối_đa = "A4" and t3.tên cửa_hàng = "Tô màu" and t1.số trang màu trên từng phút < 5
select t1.sản_phẩm from sản_phẩm as t1 join sản_phẩm của cửa_hàng as t2 on t1.id sản_phẩm = t2.id sản_phẩm join cửa_hàng as t3 on t2.id cửa_hàng = t3.id cửa_hàng where t1.kích_thước trang tối_đa = "A4" and t3.tên cửa_hàng = "Tô màu" and t1.số trang màu trên từng phút < 5
select t1.sản_phẩm from sản_phẩm as t1 join sản_phẩm của cửa_hàng as t2 on t1.id sản_phẩm = t2.id sản_phẩm join cửa_hàng as t3 on t2.id cửa_hàng = t3.id cửa_hàng where t1.kích_thước trang tối_đa = "A4" or t1.số trang màu trên từng phút < 5
select t1.sản_phẩm from sản_phẩm as t1 join sản_phẩm của cửa_hàng as t2 on t1.id sản_phẩm = t2.id sản_phẩm join cửa_hàng as t3 on t2.id cửa_hàng = t3.id cửa_hàng where t1.kích_thước trang tối_đa = "A4" or t1.số trang màu trên từng phút < 5
select tên from sản_phẩm where tên like "% Scanner %"
select tên sản_phẩm from sản_phẩm where tên sản_phẩm like "% Scanner %"
select max ( kích_thước trang tối_đa ) from sản_phẩm
select kích_thước trang tối_đa from sản_phẩm group by kích_thước trang tối_đa order by count ( * ) desc limit 1
select tên from sản_phẩm where kích_thước trang tối_đa not in ( select t1.kích_thước trang tối_đa from sản_phẩm as t1 join sản_phẩm của cửa_hàng as t2 on t1.id sản_phẩm = t2.id sản_phẩm group by t1.kích_thước trang tối_đa order by count ( * ) desc limit 1 )
select sản_phẩm from sản_phẩm where kích_thước trang tối_đa not in ( select t1.kích_thước trang tối_đa from sản_phẩm as t1 join sản_phẩm của cửa_hàng as t2 on t1.id sản_phẩm = t2.id sản_phẩm group by t1.kích_thước trang tối_đa order by count ( * ) desc limit 1 )
select sum ( dân_số thành_phố ) from quận where diện_tích của các thành_phố > ( select avg ( diện_tích của các thành_phố ) from quận )
select sum ( dân_số thành_phố ) from quận where diện_tích của các thành_phố > ( select avg ( diện_tích của các thành_phố ) from quận )
select tên quận from quận where id quận in ( select t1.id quận from quận của cửa_hàng as t1 join cửa_hàng as t2 on t1.id cửa_hàng = t2.id cửa_hàng where t2.loại = "trung_tâm mua_sắm" intersect select t1.id quận from quận của cửa_hàng as t1 join cửa_hàng as t2 on t1.id cửa_hàng = t2.id cửa_hàng where t2.loại = "cửa_hàng bình_dân" )
select tên quận from quận where id quận in ( select t1.id quận from quận của cửa_hàng as t1 join cửa_hàng as t2 on t1.id cửa_hàng = t2.id cửa_hàng where t2.loại = "trung_tâm mua_sắm" intersect select t1.id quận from quận của cửa_hàng as t1 join cửa_hàng as t2 on t1.id cửa_hàng = t2.id cửa_hàng where t2.loại = "cửa_hàng bình_dân" )
select count ( * ) from khu_vực
select count ( * ) from khu_vực
select mã khu_vực , tên khu_vực from khu_vực order by mã khu_vực
select mã khu_vực , tên khu_vực from khu_vực
select tên khu_vực from khu_vực order by tên khu_vực
select tên khu_vực from khu_vực order by tên khu_vực
select tên khu_vực from khu_vực where tên khu_vực < > "Denmark"
select tên khu_vực from khu_vực where tên khu_vực < > "Denmark"
select count ( * ) from bão where số_lượng người chết > 0
select count ( * ) from bão where số_lượng người chết > 0
select tên , ngày hoạt_động , số_lượng người chết from bão where số_lượng người chết > 0
select tên , ngày hoạt_động , số_lượng người chết from bão where số_lượng người chết > = 1
select avg ( thiệt_hại theo triệu usd ) , max ( thiệt_hại theo triệu usd ) from bão where tốc_độ tối_đa > 1000
select avg ( thiệt_hại theo triệu usd ) , max ( thiệt_hại theo triệu usd ) from bão where tốc_độ tối_đa > 1000
select số_lượng người chết , thiệt_hại theo triệu usd from bão where tốc_độ tối_đa > ( select avg ( tốc_độ tối_đa ) from bão )
select sum ( số_lượng người chết ) , sum ( thiệt_hại theo triệu usd ) from bão where tốc_độ tối_đa > ( select avg ( tốc_độ tối_đa ) from bão )
select tên , thiệt_hại theo triệu usd from bão order by tốc_độ tối_đa desc
select tên , thiệt_hại theo triệu usd from bão order by tốc_độ tối_đa desc
select count ( * ) from khu_vực bị ảnh_hưởng
select count ( distinct t1.id khu_vực ) from khu_vực bị ảnh_hưởng as t1 join khu_vực as t2 on t1.id khu_vực = t2.id khu_vực join bão as t3 on t1.id bão = t3.id bão
select tên khu_vực from khu_vực where id khu_vực not in ( select t1.id khu_vực from khu_vực bị ảnh_hưởng as t1 join bão as t2 on t1.id bão = t2.id bão )
select tên khu_vực from khu_vực where id khu_vực not in ( select t1.id khu_vực from khu_vực as t1 join khu_vực bị ảnh_hưởng as t2 on t1.id khu_vực = t2.id khu_vực join bão as t3 on t2.id bão = t3.id bão where t3.tên = "Hurricane" )
select tên khu_vực , count ( * ) from khu_vực as t1 join khu_vực bị ảnh_hưởng as t2 on t1.id khu_vực = t2.id khu_vực group by t1.id khu_vực
select count ( * ) , t1.tên khu_vực from khu_vực as t1 join khu_vực bị ảnh_hưởng as t2 on t1.id khu_vực = t2.id khu_vực group by t1.tên khu_vực
select tên , count ( * ) from bão as t1 join khu_vực bị ảnh_hưởng as t2 on t1.id cơn bão = t2.id cơn bão group by t1.id cơn bão
select count ( * ) , t1.id bão from bão as t1 join khu_vực bị ảnh_hưởng as t2 on t1.id bão = t2.id bão group by t1.id bão
select t1.tên , t1.tốc_độ tối_đa from bão as t1 join khu_vực bị ảnh_hưởng as t2 on t1.id cơn bão = t2.id cơn bão group by t1.id cơn bão order by count ( * ) desc limit 1
select t1.tên , t1.tốc_độ tối_đa from bão as t1 join khu_vực bị ảnh_hưởng as t2 on t1.id cơn bão = t2.id cơn bão group by t1.id cơn bão order by count ( * ) desc limit 1
select tên from bão where id cơn bão not in ( select t1.id cơn bão from khu_vực bị ảnh_hưởng as t1 join khu_vực as t2 on t1.id khu_vực = t2.id khu_vực where t2.tên khu_vực = "North_East" )
select tên from bão where id cơn bão not in ( select t1.id cơn bão from khu_vực bị ảnh_hưởng as t1 join khu_vực as t2 on t1.id khu_vực = t2.id khu_vực where t2.tên khu_vực = "Hồ_California" )
select t1.tên from bão as t1 join khu_vực bị ảnh_hưởng as t2 on t1.id cơn bão = t2.id cơn bão join khu_vực as t3 on t2.id khu_vực = t3.id khu_vực join khu_vực bị ảnh_hưởng as t4 on t3.id khu_vực = t4.id khu_vực join khu_vực bị ảnh_hưởng as t5 on t4.id khu_vực = t5.id khu_vực join khu_vực bị ảnh_hưởng as t6 on t5.id khu_vực = t6.id khu_vực join khu_vực bị ảnh_hưởng as t7 on t6.id khu_vực = t7.id khu_vực join khu_vực bị ảnh_hưởng as t8 on t7.id khu_vực = t8.id khu_vực join khu_vực bị ảnh_hưởng as t9 on t8.id khu_vực = t9.id khu_vực join khu_vực bị ảnh_hưởng as t10 on t9.id khu_vực = t10.id khu_vực where t2.số thành_phố bị ảnh_hưởng > 10
select t1.tên from bão as t1 join khu_vực bị ảnh_hưởng as t2 on t1.id cơn bão = t2.id cơn bão join khu_vực as t3 on t2.id khu_vực = t3.id khu_vực join khu_vực as t4 on t3.mã khu_vực = t4.mã khu_vực where t4.tên khu_vực = "North_East" and t2.số thành_phố bị ảnh_hưởng > 10
select tên from bão except select t1.tên from bão as t1 join khu_vực bị ảnh_hưởng as t2 on t1.id cơn bão = t2.id cơn bão join khu_vực as t3 on t2.id khu_vực = t3.id khu_vực group by t1.tên having count ( * ) < 2
select tên from bão except select t1.tên from bão as t1 join khu_vực bị ảnh_hưởng as t2 on t1.id cơn bão = t2.id cơn bão join khu_vực as t3 on t2.id khu_vực = t3.id khu_vực where t3.tên khu_vực = "Nor_California" group by tên having count ( * ) < 2
select t1.tên khu_vực from khu_vực as t1 join khu_vực bị ảnh_hưởng as t2 on t1.id khu_vực = t2.id khu_vực join bão as t3 on t2.id bão = t3.id bão where t3.số_lượng người chết > = 10
select t1.tên khu_vực from khu_vực as t1 join khu_vực bị ảnh_hưởng as t2 on t1.id khu_vực = t2.id khu_vực join bão as t3 on t2.id bão = t3.id bão where t3.số_lượng người chết >= 10
select t1.tên from bão as t1 join khu_vực bị ảnh_hưởng as t2 on t1.id cơn bão = t2.id cơn bão join khu_vực as t3 on t2.id khu_vực = t3.id khu_vực where t3.tên khu_vực = "Denmark"
select t1.tên from bão as t1 join khu_vực bị ảnh_hưởng as t2 on t1.id cơn bão = t2.id cơn bão join khu_vực as t3 on t2.id khu_vực = t3.id khu_vực where t3.tên khu_vực = "Denmark"
select tên khu_vực from khu_vực as t1 join khu_vực bị ảnh_hưởng as t2 on t1.id khu_vực = t2.id khu_vực group by tên khu_vực having count ( * ) >= 2
select tên khu_vực from khu_vực as t1 join khu_vực bị ảnh_hưởng as t2 on t1.id khu_vực = t2.id khu_vực group by tên khu_vực having count ( * ) >= 2
select t1.tên khu_vực from khu_vực as t1 join khu_vực bị ảnh_hưởng as t2 on t1.id khu_vực = t2.id khu_vực join bão as t3 on t2.id bão = t3.id bão where t3.số_lượng người chết = ( select max ( số_lượng người chết ) from bão )
select t1.tên khu_vực from khu_vực as t1 join khu_vực bị ảnh_hưởng as t2 on t1.id khu_vực = t2.id khu_vực join bão as t3 on t2.id bão = t3.id bão order by t3.số_lượng người chết desc limit 1
select t1.tên from bão as t1 join khu_vực bị ảnh_hưởng as t2 on t1.id cơn bão = t2.id cơn bão join khu_vực as t3 on t2.id khu_vực = t3.id khu_vực where t3.tên khu_vực = "Afghanistan" intersect select t1.tên from bão as t1 join khu_vực bị ảnh_hưởng as t2 on t1.id cơn bão = t2.id cơn bão join khu_vực as t3 on t2.id khu_vực = t3.id khu_vực where t3.tên khu_vực = "Albania"
select t1.tên from bão as t1 join khu_vực bị ảnh_hưởng as t2 on t1.id cơn bão = t2.id cơn bão join khu_vực as t3 on t2.id khu_vực = t3.id khu_vực where t3.tên khu_vực = "Afghanistan" intersect select t1.tên from bão as t1 join khu_vực bị ảnh_hưởng as t2 on t1.id cơn bão = t2.id cơn bão join khu_vực as t3 on t2.id khu_vực = t3.id khu_vực where t3.tên khu_vực = "Albania"
SELECT COUNT ( * ) FROM danh_sách
SELECT COUNT ( * ) FROM danh_sách
SELECT họ FROM danh_sách WHERE phòng học = 111
SELECT họ FROM danh_sách WHERE phòng học = 111
SELECT DISTINCT tên FROM danh_sách WHERE phòng học = 108
SELECT DISTINCT tên FROM danh_sách WHERE phòng học = 108
SELECT tên FROM danh_sách WHERE phòng học = 107
SELECT DISTINCT tên FROM danh_sách WHERE phòng học = 107
SELECT phòng học, khối lớp FROM danh_sách
SELECT DISTINCT phòng học, khối lớp FROM danh_sách
SELECT DISTINCT khối lớp FROM danh_sách WHERE phòng học = 103
SELECT DISTINCT khối lớp FROM danh_sách WHERE phòng học = 103
SELECT DISTINCT khối lớp FROM danh_sách WHERE phòng học = 105
SELECT DISTINCT khối lớp FROM danh_sách WHERE phòng học = 105
SELECT DISTINCT phòng học FROM danh_sách WHERE khối lớp = 4
SELECT DISTINCT phòng học FROM danh_sách WHERE khối lớp = 4
SELECT DISTINCT phòng học FROM danh_sách WHERE khối lớp = 5
SELECT DISTINCT phòng học FROM danh_sách WHERE khối lớp = 5
SELECT họ FROM giáo_viên WHERE khối lớp = 5
SELECT họ FROM giáo_viên WHERE phòng học = 5
SELECT DISTINCT tên FROM giáo_viên WHERE khối lớp = 1
SELECT tên FROM giáo_viên WHERE khối lớp = 1
SELECT tên FROM giáo_viên WHERE phòng học = 110
SELECT tên FROM giáo_viên WHERE phòng học = 110
SELECT họ FROM giáo_viên WHERE phòng học = 109
SELECT họ FROM giáo_viên WHERE phòng học = 109
SELECT tên, họ FROM giáo_viên
SELECT tên,họ FROM giáo_viên
SELECT tên, họ FROM danh_sách
SELECT tên, họ FROM danh_sách
SELECT T1.tên,T1.họ FROM danh_sách AS T1 JOIN giáo_viên AS T2 ON T1.phòng học = T2.phòng học WHERE T2.tên = "OTHA" AND T2.họ = "MOYER"
SELECT T1.tên,T1.họ FROM danh_sách AS T1 JOIN giáo_viên AS T2 ON T1.phòng học = T2.phòng học WHERE T2.tên = "OTHA" AND T2.họ = "MOYER"
SELECT T1.tên FROM danh_sách AS T1 JOIN giáo_viên AS T2 ON T1.phòng học = T2.phòng học WHERE T2.tên = "MARROTTE" AND T2.họ = "KIRK"
SELECT T1.tên,T1.họ FROM danh_sách AS T1 JOIN giáo_viên AS T2 ON T1.phòng học = T2.phòng học WHERE T2.tên = "MARROTTE" AND T2.họ = "KIRK"
SELECT T1.tên , T1.họ FROM giáo_viên AS T1 JOIN danh_sách AS T2 ON T1.phòng học = T2.phòng học WHERE T2.tên = "EVELINA BROMLEY"
SELECT T1.tên,T1.họ FROM giáo_viên AS T1 JOIN danh_sách AS T2 ON T1.phòng học = T2.phòng học WHERE T2.tên = "EVELINA BROMLEY"
SELECT T1.họ FROM giáo_viên AS T1 JOIN danh_sách AS T2 ON T1.họ = T2.họ WHERE T2.tên = "GELL TAMI"
SELECT T1.họ FROM giáo_viên AS T1 JOIN danh_sách AS T2 ON T1.họ = T2.họ WHERE T2.tên = "GELL TAMI"
SELECT COUNT ( * ) FROM danh_sách AS T1 JOIN giáo_viên AS T2 ON T1.phòng học = T2.phòng học WHERE T2.tên = "LORIA" AND T2.họ = "ONDERSMA"
SELECT COUNT ( * ) FROM danh_sách AS T1 JOIN giáo_viên AS T2 ON T1.phòng học = T2.phòng học WHERE T2.tên = "LORIA" AND T2.họ = "ONDERSMA"
SELECT COUNT ( * ) FROM danh_sách AS T1 JOIN giáo_viên AS T2 ON T1.phòng học = T2.phòng học WHERE T2.tên = "KAWA" AND T2.họ = "GORDON"
SELECT COUNT ( * ) FROM danh_sách AS T1 JOIN giáo_viên AS T2 ON T1.classroom = T2.classroom WHERE T2.firstname = "KAWA" AND T2.lastname = "GORDON"
SELECT COUNT ( * ) FROM danh_sách AS T1 JOIN giáo_viên AS T2 ON T1.phòng học = T2.phòng học WHERE T2.tên = "TARRING" AND T2.họ = "LEIA"
SELECT COUNT ( * ) FROM danh_sách AS T1 JOIN giáo_viên AS T2 ON T1.phòng học = T2.phòng học WHERE T2.tên = "TARRING" AND T2.họ = "LEIA"
SELECT COUNT ( * ) FROM giáo_viên AS T1 JOIN danh_sách AS T2 ON T1.họ = T2.họ AND T1.tên = T2.tên WHERE T2.tên = "CHRISSY" AND T2.họ = "NABOZNY"
SELECT COUNT ( * ) FROM danh_sách AS T1 JOIN giáo_viên AS T2 ON T1.classroom = T2.classroom WHERE T1.name = "CHRISSY" AND T2.name = "NABOZNY"
SELECT COUNT ( DISTINCT T2.họ ) FROM danh_sách AS T1 JOIN giáo_viên AS T2 ON T1.phòng học = T2.phòng học WHERE T1.tên = "MADLOCK" AND T1.họ = "RAY"
SELECT COUNT ( * ) FROM danh_sách AS T1 JOIN giáo_viên AS T2 ON T1.classroom = T2.classroom WHERE T1.name = "MADLOCK" AND T1.họ = "RAY"
SELECT tên FROM danh_sách WHERE khối lớp = 1 EXCEPT SELECT T1.tên FROM danh_sách AS T1 JOIN giáo_viên AS T2 ON T1.phòng học = T2.phòng học WHERE T2.tên = "OTHA" AND T2.họ = "MOYER"
SELECT DISTINCT T1.họ FROM danh_sách AS T1 JOIN giáo_viên AS T2 ON T1.phòng học = T2.phòng học WHERE T2.tên = "OTHA" AND T2.họ = "MOYER" AND T1.khối lớp = 1
SELECT họ FROM danh_sách WHERE khối lớp = 3 EXCEPT SELECT T1.họ FROM danh_sách AS T1 JOIN giáo_viên AS T2 ON T1.phòng học = T2.phòng học WHERE T2.tên = "COVIN" AND T2.họ = "JEROME"
SELECT DISTINCT T1.họ FROM danh_sách AS T1 JOIN giáo_viên AS T2 ON T1.phòng học = T2.phòng học WHERE T1.khối lớp = 3 EXCEPT SELECT DISTINCT T1.họ FROM danh_sách AS T1 JOIN giáo_viên AS T2 ON T1.phòng học = T2.phòng học WHERE T2.họ = "COVIN" AND T2.tên = "JEROME"
SELECT khối lớp, COUNT ( DISTINCT phòng học ) FROM danh_sách GROUP BY khối lớp
SELECT khối lớp, COUNT ( DISTINCT phòng học ) , COUNT ( * ) FROM danh_sách GROUP BY khối lớp
SELECT phòng học, COUNT ( * ) FROM danh_sách GROUP BY phòng học
SELECT phòng học, COUNT ( DISTINCT khối lớp ) FROM danh_sách GROUP BY phòng học
SELECT phòng học FROM danh_sách GROUP BY phòng học ORDER BY COUNT ( * ) DESC LIMIT 1
select phòng học from danh_sách group by phòng học order by count ( * ) desc limit 1
SELECT COUNT ( * ) , phòng học FROM danh_sách GROUP BY phòng học
SELECT COUNT ( * ) , phòng học FROM danh_sách GROUP BY phòng học
SELECT COUNT ( * ) , phòng học FROM danh_sách WHERE khối lớp = 0
SELECT phòng học, COUNT ( * ) FROM danh_sách WHERE khối lớp = 0 GROUP BY phòng học
SELECT COUNT ( * ) , phòng học FROM danh_sách WHERE khối lớp = 4 GROUP BY phòng học
SELECT phòng học, COUNT ( * ) FROM danh_sách WHERE khối lớp = 4 GROUP BY phòng học
SELECT T1.tên,T1.họ FROM giáo_viên AS T1 JOIN danh_sách AS T2 ON T1.phòng học = T2.phòng học GROUP BY T1.tên,T1.họ ORDER BY COUNT ( * ) DESC LIMIT 1
SELECT T1.tên , T1.họ FROM giáo_viên AS T1 JOIN danh_sách AS T2 ON T1.phòng học = T2.phòng học GROUP BY T1.tên , T1.họ ORDER BY COUNT ( * ) DESC LIMIT 1
SELECT COUNT ( * ) , phòng học FROM danh_sách GROUP BY phòng học
SELECT COUNT ( * ) , phòng học FROM danh_sách GROUP BY phòng học
select t1.id khoá học , t1.tên khoá học from khoá học as t1 join lượt đăng_ký khoá học của sinh_viên as t2 on t1.id khoá học = t2.id khoá học group by t1.id khoá học order by count ( * ) desc limit 1
select t1.tên khoá học from khoá học as t1 join lượt đăng_ký khoá học của sinh_viên as t2 on t1.id khoá học = t2.id khoá học group by t1.tên khoá học order by count ( * ) desc limit 1
select t1.id sinh_viên from lượt đăng_ký khoá học của sinh_viên as t1 join sinh_viên as t2 on t1.id sinh_viên = t2.id sinh_viên group by t1.id sinh_viên order by count ( * ) limit 1
select t1.id sinh_viên from lượt đăng_ký khoá học của sinh_viên as t1 join sinh_viên as t2 on t1.id sinh_viên = t2.id sinh_viên group by t1.id sinh_viên having count ( * ) < ( select min ( count ( * ) ) from lượt đăng_ký khoá học của sinh_viên as t3 join sinh_viên as t4 on t3.id sinh_viên = t4.id sinh_viên group by t4.id sinh_viên ) )
select tên , họ from cá_nhân
select tên , họ from cá_nhân
select id sinh_viên from lượt đăng_ký khoá học của sinh_viên except select id sinh_viên from lần tham_dự khoá học của sinh_viên
select id sinh_viên from lượt đăng_ký khoá học của sinh_viên except select id sinh_viên from lần tham_dự khoá học của sinh_viên
select id sinh_viên from lượt đăng_ký khoá học của sinh_viên
select id sinh_viên from lượt đăng_ký khoá học của sinh_viên
select t1.id sinh_viên , t2.tên khoá học from lượt đăng_ký khoá học của sinh_viên as t1 join khoá học as t2 on t1.id khoá học = t2.id khoá học
select t1.chi_tiết sinh_viên from cá_nhân as t1 join lượt đăng_ký khoá học của sinh_viên as t2 on t1.id cá_nhân = t2.id sinh_viên order by t2.ngày đăng_ký desc limit 1
select t1.chi_tiết sinh_viên from cá_nhân as t1 join lượt đăng_ký khoá học của sinh_viên as t2 on t1.id cá_nhân = t2.id cá_nhân order by t2.ngày đăng_kí desc limit 1
select count ( * ) from lượt đăng_ký khoá học của sinh_viên as t1 join khoá học as t2 on t1.id khoá học = t2.id khoá học where t2.tên khoá học = "English"
select count ( * ) from lượt đăng_ký khoá học của sinh_viên as t1 join khoá học as t2 on t1.id khoá học = t2.id khoá học where t2.tên khoá học = "English"
select count ( * ) from lần tham_dự khoá học của sinh_viên as t1 join sinh_viên as t2 on t1.id sinh_viên = t2.id sinh_viên where t2.id sinh_viên = 171
select count ( * ) from lần tham_dự khoá học của sinh_viên as t1 join khoá học as t2 on t1.id khoá học = t2.id khoá học join sinh_viên as t3 on t3.id sinh_viên = t1.id sinh_viên where t3.id sinh_viên = 171
select id ứng_cử_viên from ứng_cử_viên where địa chỉ email = "stanley.monahan@example.org"
select id ứng_cử_viên from ứng_cử_viên where chi_tiết ứng_cử_viên = "stanley.monahan@example.org"
select t1.id ứng_cử_viên from ứng_cử_viên as t1 join đánh_giá ứng_cử_viên as t2 on t1.id ứng_cử_viên = t2.id ứng_cử_viên order by t2.ngày đánh_giá desc limit 1
select t1.id ứng_cử_viên from ứng_cử_viên as t1 join đánh_giá ứng_cử_viên as t2 on t1.id ứng_cử_viên = t2.id ứng_cử_viên order by t2.ngày đánh_giá desc limit 1
select t1.id sinh_viên , t2.id khoá học , count ( * ) from lượt đăng_ký khoá học của sinh_viên as t1 join khoá học as t2 on t1.id khoá học = t2.id khoá học group by t1.id sinh_viên order by count ( * ) desc limit 1
select t1.id sinh_viên , t2.id khoá học , count ( * ) from lượt đăng_ký khoá học của sinh_viên as t1 join khoá học as t2 on t1.id khoá học = t2.id khoá học group by t1.id sinh_viên order by count ( * ) desc limit 1
select id sinh_viên , count ( * ) from lượt đăng_ký khoá học của sinh_viên group by id sinh_viên
select count ( * ) , t1.id sinh_viên from sinh_viên as t1 join lượt đăng_ký khoá học của sinh_viên as t2 on t1.id sinh_viên = t2.id sinh_viên group by t1.id sinh_viên
select tên khoá học , count ( * ) from khoá học as t1 join lượt đăng_ký khoá học của sinh_viên as t2 on t1.id khoá học = t2.id khoá học group by t1.id khoá học
select count ( * ) , t1.id khoá học from lượt đăng_ký khoá học của sinh_viên as t1 join khoá học as t2 on t1.id khoá học = t2.id khoá học group by t1.id khoá học
select id ứng_cử_viên from đánh_giá ứng_cử_viên where mã kết_quả đánh_giá = "Đạt"
select id ứng_cử_viên from đánh_giá ứng_cử_viên where mã kết_quả đánh_giá = "Đạt"
select t1.số di_động from cá_nhân as t1 join đánh_giá ứng_cử_viên as t2 on t1.id cá_nhân = t2.id ứng_cử_viên where t2.mã kết_quả đánh_giá = "Fail"
select t1.số di_động from ứng_cử_viên as t1 join đánh_giá ứng_cử_viên as t2 on t1.id ứng_cử_viên = t2.id ứng_cử_viên where t2.mã kết_quả đánh_giá = "Fail"
select id sinh_viên from lượt đăng_ký khoá học của sinh_viên where id khoá học = 301
select id sinh_viên from lượt đăng_ký khoá học của sinh_viên where id khoá học = 301
select id sinh_viên from lần tham_dự khoá học của sinh_viên where id khoá học = 301 order by ngày tham_dự desc limit 1
select id sinh_viên from lần tham_dự khoá học của sinh_viên where id khoá học = 301 order by ngày tham_dự desc limit 1
select distinct t3.thành_phố from địa_chỉ as t1 join địa_chỉ cá_nhân as t2 on t1.id địa_chỉ = t2.id địa_chỉ join cá_nhân as t3 on t2.id cá_nhân = t3.id cá_nhân
select distinct thành_phố from địa_chỉ
select distinct t3.thành_phố from địa_chỉ cá_nhân as t1 join địa_chỉ as t2 on t1.id địa_chỉ = t2.id địa_chỉ join cá_nhân as t3 on t1.id cá_nhân = t3.id cá_nhân
select distinct t3.thành_phố from địa_chỉ cá_nhân as t1 join cá_nhân as t2 on t1.id cá_nhân = t2.id cá_nhân join địa_chỉ as t3 on t1.id địa_chỉ = t3.id địa_chỉ where t3.thành_phố in ( select t4.thành_phố from địa_chỉ cá_nhân as t4 join cá_nhân as t5 on t4.id cá_nhân = t5.id cá_nhân where t5.tên = "Jerry" and t5.tên đệm = "Jerry" )
select tên khoá học from khoá học order by tên khoá học
select tên khoá học from khoá học order by tên khoá học
select tên from cá_nhân order by tên
select tên from cá_nhân order by tên
select id sinh_viên from lượt đăng_ký khoá học của sinh_viên union select id sinh_viên from lần tham_dự khoá học của sinh_viên
select id sinh_viên from lượt đăng_ký khoá học của sinh_viên union select id sinh_viên from lần tham_dự khoá học của sinh_viên
select id khoá học from lượt đăng_ký khoá học của sinh_viên where id sinh_viên = 121 union select id khoá học from lần tham_dự khoá học của sinh_viên where id sinh_viên = 121
select t1.id khoá học from khoá học as t1 join lượt đăng_ký khoá học của sinh_viên as t2 on t1.id khoá học = t2.id khoá học join sinh_viên as t3 on t2.id sinh_viên = t3.id sinh_viên where t3.id sinh_viên = 121 union select t1.id khoá học from khoá học as t1 join lần tham_dự khoá học của sinh_viên as t2 on t1.id khoá học = t2.id khoá học join sinh_viên as t3 on t2.id sinh_viên = t3.id sinh_viên where t3.id sinh_viên = 121
select * from lượt đăng_ký khoá học của sinh_viên except select * from lần tham_dự khoá học của sinh_viên
select t1.chi_tiết sinh_viên from cá_nhân as t1 join lượt đăng_ký khoá học của sinh_viên as t2 on t1.id cá_nhân = t2.id sinh_viên where not t2.id khoá học in ( select t3.id khoá học from lần tham_dự khoá học của sinh_viên as t3 join khoá học as t4 on t3.id khoá học = t4.id khoá học where t4.tên khoá học = "CS 111" )
select id sinh_viên from lượt đăng_ký khoá học của sinh_viên where id khoá học = ( select id khoá học from khoá học where tên khoá học = "statistics" ) order by ngày đăng_ký
select id sinh_viên from lượt đăng_ký khoá học của sinh_viên where id khoá học = ( select id khoá học from khoá học where tên khoá học = "thống_kê" ) order by ngày đăng_ký
select t1.id sinh_viên from lần tham_dự khoá học của sinh_viên as t1 join khoá học as t2 on t1.id khoá học = t2.id khoá học where t2.tên khoá học = "statistics" order by t1.ngày tham_dự
select t1.id sinh_viên from lần tham_dự khoá học của sinh_viên as t1 join khoá học as t2 on t1.id khoá học = t2.id khoá học where t2.tên khoá học = "Statistics" order by t1.ngày tham_dự
select count ( * ) from lượt nộp bài
select count ( * ) from lượt nộp bài
select tác_giả from lượt nộp bài order by số điểm
select tác_giả , số điểm from lượt nộp bài order by số điểm
select tác_giả , trường đại_học from lượt nộp bài
select tác_giả , trường đại_học from lượt nộp bài
select tác_giả from lượt nộp bài where trường đại_học = "Florida" or trường đại_học = "Temple"
select tác_giả from lượt nộp bài where trường đại_học = "Florida" or trường đại_học = "Temple"
select avg ( số điểm ) from lượt nộp bài
select avg ( số điểm ) from lượt nộp bài
select tác_giả from lượt nộp bài order by số điểm desc limit 1
select tác_giả from lượt nộp bài order by số điểm desc limit 1
select trường đại_học , count ( * ) from lượt nộp bài group by trường đại_học
select trường đại_học , count ( * ) from lượt nộp bài group by trường đại_học
select trường đại_học from lượt nộp bài group by trường đại_học order by count ( * ) desc limit 1
select trường đại_học from lượt nộp bài group by trường đại_học order by count ( * ) desc limit 1
select t1.trường đại_học from lượt nộp bài as t1 join lượt nộp bài as t2 on t1.tác_giả = t2.tác_giả where t1.số điểm > 90 intersect select t1.trường đại_học from lượt nộp bài as t1 join lượt nộp bài as t2 on t1.tác_giả = t2.tác_giả where t2.số điểm < 80
select t1.trường đại_học from lượt nộp bài as t1 join lượt nộp bài as t2 on t1.tác_giả = t2.tác_giả where t1.số điểm > 90 intersect select t1.trường đại_học from lượt nộp bài as t1 join lượt nộp bài as t2 on t1.tác_giả = t2.tác_giả where t2.số điểm < 80
select t1.tác_giả , t2.kết_quả from lượt nộp bài as t1 join chấp_thuận as t2 on t1.id lượt nộp bài = t2.id lượt nộp bài
select t1.tác_giả , t2.kết_quả from lượt nộp bài as t1 join chấp_thuận as t2 on t1.id lượt nộp bài = t2.id lượt nộp bài
select t1.kết_quả from chấp_thuận as t1 join lượt nộp bài as t2 on t1.id lượt nộp bài = t2.id lượt nộp bài order by t2.số điểm desc limit 1
select t1.tác_giả , t1.số điểm from lượt nộp bài as t1 join chấp_thuận as t2 on t1.id lượt nộp bài = t2.id lượt nộp bài where t2.kết_quả = "Được chấp_nhận" order by t1.số điểm desc limit 1
select tác_giả , count ( * ) from lượt nộp bài group by tác_giả
select t1.tác_giả , count ( * ) from lượt nộp bài as t1 join chấp_thuận as t2 on t1.id lượt nộp bài = t2.id lượt nộp bài group by t1.tác_giả
select tác_giả from lượt nộp bài group by tác_giả having count ( * ) > 1
select tác_giả from lượt nộp bài group by tác_giả having count ( * ) > 1
select ngày , địa_điểm from hội_thảo order by địa_điểm
select ngày , địa_điểm from hội_thảo
select tác_giả from lượt nộp bài where id lượt nộp bài not in ( select id lượt nộp bài from lượt nộp bài )
select tác_giả from lượt nộp bài except select t1.tác_giả from lượt nộp bài as t1 join chấp_thuận as t2 on t1.id lượt nộp bài = t2.id lượt nộp bài join hội_thảo as t3 on t2.id hội_thảo = t3.id hội_thảo where t3.tên = "ACL 2015"
select tên from doanh_nghiệp where số_lượng đánh_giá > 4.5
select tên from doanh_nghiệp where số_lượng đánh_giá = 3.5
select id người tiêu_dùng from người tiêu_dùng where tên = "Michelle"
select tiểu_bang from doanh_nghiệp where tên = "Whataburger"
select thành_phố from doanh_nghiệp where tên = "MGM Grand_Restaurant"
select thành_phố from doanh_nghiệp where đánh_giá xếp_hạng < 1,5
select thành_phố from doanh_nghiệp where tên = "Taj_Mahal"
select văn_bản from đánh_giá where đánh_giá xếp_hạng < 1
select t1.tên from doanh_nghiệp as t1 join đánh_giá as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t2.đánh_giá xếp_hạng > 3.5
select thành_phố from doanh_nghiệp where tên = "Taj_Mahal"
select t3.văn_bản from người tiêu_dùng as t1 join đánh_giá as t2 on t1.id người tiêu_dùng = t2.id người tiêu_dùng join đánh_giá as t3 on t2.id đánh_giá = t3.id đánh_giá where t1.tên = "Niloofar"
select t1.tên from doanh_nghiệp as t1 join đánh_giá as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join người tiêu_dùng as t3 on t2.id người tiêu_dùng = t3.id người tiêu_dùng where t3.tên = "Niloofar"
select t1.tên from doanh_nghiệp as t1 join đánh_giá as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join người tiêu_dùng as t3 on t2.id người tiêu_dùng = t3.id người tiêu_dùng where t3.tên = "Niloofar" and t2.đánh_giá xếp_hạng = 5
select t1.văn_bản from đánh_giá as t1 join doanh_nghiệp as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join người tiêu_dùng as t3 on t1.id người tiêu_dùng = t3.id người tiêu_dùng where t2.tên = "Italian Restaurant" and t3.name = "Michelle"
select count ( * ) from đánh_giá as t1 join doanh_nghiệp as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join người tiêu_dùng as t3 on t1.id người tiêu_dùng = t3.id người tiêu_dùng where t2.tên = "Cafe Zinho" and t2.tiểu_bang = "Texas"
select t1.tên from doanh_nghiệp as t1 join đánh_giá as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t2.đánh_giá xếp_hạng = 5 and t1.tên = "restaurant"
select tên khu_phố lân_cận from khu_vực lân_cận where tên khu_phố lân_cận like "% nhà_hàng Ý %" and thành_phố = "madison"
select tên khu_phố lân_cận from khu_vực lân_cận where tên khu_phố lân_cận like "nhà_hàng Ý" and đánh_giá xếp_hạng < 2,5 and thành_phố = "madison"
select t1.tên from doanh_nghiệp as t1 join loại_hình as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t2.tên loại_hình = "nhà_hàng" and t1.tiểu_bang = "pennsylvania"
select t1.tên from doanh_nghiệp as t1 join loại_hình as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t2.tên loại_hình = "Restaurant" and t1.state = "Pennsylvania"
select t1.văn_bản from đánh_giá as t1 join loại_hình as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t2.tên loại_hình = "chải_chuốt cho vật_nuôi" and t1.số_lượng đánh_giá > 100
select tên from doanh_nghiệp where thành_phố = "Los Angeles" and tên like "Brew"
select tên from doanh_nghiệp where thành_phố = "Los Angeles" and tên like "Brew"
select tên from doanh_nghiệp where thành_phố = "Los Angeles" and tên like "Brew"
select t1.tên from người tiêu_dùng as t1 join đánh_giá as t2 on t1.id người tiêu_dùng = t2.id người tiêu_dùng where t2.tên = "Mesa_Grill"
select t1.địa_chỉ đầy_đủ from doanh_nghiệp as t1 join loại_hình as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join khu_vực lân_cận as t3 on t2.id doanh_nghiệp = t3.id doanh_nghiệp where t1.tên = "Walmart" and t3.tên khu_phố lân_cận = "Los Angeles"
select t1.tên from doanh_nghiệp as t1 join đánh_giá as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join người tiêu_dùng as t3 on t2.id người tiêu_dùng = t3.id người tiêu_dùng where t3.tên = "Patrick" and t1.thành_phố = "Dallas"
select t1.tên from doanh_nghiệp as t1 join đánh_giá as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join người tiêu_dùng as t3 on t2.id người tiêu_dùng = t3.id người tiêu_dùng where t3.tên = "Patrick" and t1.thành_phố = "Dallas"
select t1.tên from doanh_nghiệp as t1 join đánh_giá as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join người tiêu_dùng as t3 on t2.id người tiêu_dùng = t3.id người tiêu_dùng where t3.tên = "Patrick"
select t1.tên from doanh_nghiệp as t1 join đánh_giá as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join người tiêu_dùng as t3 on t2.id người tiêu_dùng = t3.id người tiêu_dùng where t3.tên = "Patrick" and t2.đánh_giá xếp_hạng >= 3
select t1.tên from người tiêu_dùng as t1 join khoản tiền boa as t2 on t1.id người tiêu_dùng = t2.id người tiêu_dùng where t2.năm = 2015 and t2.văn_bản = "Barrio Café"
select tên from doanh_nghiệp where tiểu_bang = "texas" and đánh_giá xếp_hạng < 2
select t1.tên from doanh_nghiệp as t1 join loại_hình as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t2.tên loại_hình = "restaurant" and t1.thành_phố = "los angeles"
select t1.tên from doanh_nghiệp as t1 join loại_hình as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join khu_vực lân_cận as t3 on t1.id doanh_nghiệp = t3.id doanh_nghiệp where t2.tên loại_hình = "restaurant" and t3.tên khu_phố lân_cận = "los angeles"
select t1.tên from doanh_nghiệp as t1 join loại_hình as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join khu_vực lân_cận as t3 on t1.id doanh_nghiệp = t3.id doanh_nghiệp where t2.tên loại_hình = "Restaurant" and t3.tên khu_phố lân_cận = "Marina del Rey" and t1.thành_phố = "Los Angeles"
select t1.văn_bản from đánh_giá as t1 join người tiêu_dùng as t2 on t1.id người tiêu_dùng = t2.id người tiêu_dùng where t2.tên = "Patrick" and t1.đánh_giá xếp_hạng > 4
select t1.tên from doanh_nghiệp as t1 join loại_hình as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join khu_vực lân_cận as t3 on t1.id doanh_nghiệp = t3.id doanh_nghiệp where t2.tên loại_hình = "Store" and t3.tên khu_phố lân_cận = "Los Angeles" and t1.tên = "Apple"
select t1.tên from doanh_nghiệp as t1 join đánh_giá as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t2.đánh_giá xếp_hạng > 4,5 and t1.thành_phố = "Dallas"
select t1.tên khu_phố lân_cận from khu_phố lân_cận as t1 join doanh_nghiệp as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t2.tên = "Flat Top Grill"
select t1.văn_bản from khoản tiền boa as t1 join doanh_nghiệp as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t2.tên = "Vintner Grill" and t1.số lượt thích > 9
select t1.văn_bản from đánh_giá as t1 join doanh_nghiệp as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t2.tên = "Kabob_Temple" and t1.năm = 2014
select t1.tên from người tiêu_dùng as t1 join khoản tiền boa as t2 on t1.id người tiêu_dùng = t2.id người tiêu_dùng join doanh_nghiệp as t3 on t2.id doanh_nghiệp = t3.id doanh_nghiệp where t3.thành_phố = "Dallas"
select thành_phố from doanh_nghiệp where tên = "MGM Grand_Restaurant" and tiểu_bang = "Texas"
select t1.tên from người tiêu_dùng as t1 join khoản tiền boa as t2 on t1.id người tiêu_dùng = t2.id người tiêu_dùng join doanh_nghiệp as t3 on t2.id doanh_nghiệp = t3.id doanh_nghiệp where t3.tên = "Shoes"
select t1.văn_bản from khoản tiền boa as t1 join doanh_nghiệp as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join loại_hình as t3 on t2.id doanh_nghiệp = t3.id doanh_nghiệp join người tiêu_dùng as t4 on t1.id người tiêu_dùng = t4.id người tiêu_dùng where t3.tên loại_hình = "nhà_hàng" and t2.tên = "Cafe_Zinho" and t4.tên = "Texas"
select t1.tên from người tiêu_dùng as t1 join đánh_giá as t2 on t1.id người tiêu_dùng = t2.id người tiêu_dùng join loại_hình as t3 on t2.id doanh_nghiệp = t3.id doanh_nghiệp where t3.tên loại_hình = "Restaurant"
select t1.văn_bản from khoản tiền boa as t1 join doanh_nghiệp as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join đánh_giá as t3 on t2.id doanh_nghiệp = t3.id doanh_nghiệp join người tiêu_dùng as t4 on t3.id người tiêu_dùng = t4.id người tiêu_dùng where t2.tên = "cafe zinho" and t4.tên = "pennsylvania" and t1.năm = 2010
select t1.tên from người tiêu_dùng as t1 join đánh_giá as t2 on t1.id người tiêu_dùng = t2.id người tiêu_dùng where t2.năm = 2010
select t1.văn_bản from đánh_giá as t1 join khoản tiền boa as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t2.năm = 2012
select văn_bản from đánh_giá where đánh_giá xếp_hạng = 2.5
select count ( * ) from doanh_nghiệp as t1 join loại_hình as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join khu_vực lân_cận as t3 on t1.id doanh_nghiệp = t3.id doanh_nghiệp where t2.tên loại_hình = "Escape Game" and t3.tên khu_phố lân_cận = "Madison"
select count ( * ) from doanh_nghiệp as t1 join loại_hình as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join khu_vực lân_cận as t3 on t1.id doanh_nghiệp = t3.id doanh_nghiệp where t2.tên loại_hình = "Escape Game" and t3.tên khu_phố lân_cận = "Madison"
select count ( * ) from doanh_nghiệp as t1 join loại_hình as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join khu_vực lân_cận as t3 on t1.id doanh_nghiệp = t3.id doanh_nghiệp where t3.tên khu_phố lân_cận = "Madison" and t2.tên loại_hình = "Escape Game"
select count ( * ) from doanh_nghiệp as t1 join loại_hình as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join khu_vực lân_cận as t3 on t1.id doanh_nghiệp = t3.id doanh_nghiệp where t2.tên loại_hình = "Escape Room" and t3.tên khu_phố lân_cận = "Madison"
select count ( * ) from doanh_nghiệp as t1 join loại_hình as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join khu_vực lân_cận as t3 on t1.id doanh_nghiệp = t3.id doanh_nghiệp where t2.tên loại_hình = "Escape Game" and t3.tên khu_phố lân_cận = "Madison"
select count ( * ) from doanh_nghiệp as t1 join đánh_giá as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t2.đánh_giá xếp_hạng > 3,5 and t1.tên = "nhà_hàng"
select sum ( t1.số_lượng ) from lượt đăng_ký as t1 join doanh_nghiệp as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join loại_hình as t3 on t2.id doanh_nghiệp = t3.id doanh_nghiệp join khu_vực lân_cận as t4 on t2.id doanh_nghiệp = t4.id doanh_nghiệp where t3.tên loại_hình = "nhà_hàng" and t4.tên khu_phố lân_cận = "los angeles"
select sum ( t1.số_lượng ) from lượt đăng_ký as t1 join doanh_nghiệp as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join loại_hình as t3 on t2.id doanh_nghiệp = t3.id doanh_nghiệp join khu_vực lân_cận as t4 on t2.id doanh_nghiệp = t4.id doanh_nghiệp where t3.tên loại_hình = "restaurant" and t4.tên khu_phố lân_cận = "los angeles" and t1.ngày = "thứ_sáu"
select t1.ngày , sum ( t1.số_lượng ) from lượt đăng_ký as t1 join doanh_nghiệp as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join loại_hình as t3 on t2.id doanh_nghiệp = t3.id doanh_nghiệp join khu_vực lân_cận as t4 on t2.id doanh_nghiệp = t4.id doanh_nghiệp where t3.tên loại_hình = "restaurant" and t4.tên khu_phố lân_cận = "los angeles" group by t1.ngày
select t1.tiểu_bang , sum ( t1.số_lượng ) from lượt đăng_ký as t1 join doanh_nghiệp as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t2.tên = "Italian Delis" group by t1.tiểu_bang
select count ( * ) from đánh_giá as t1 join người tiêu_dùng as t2 on t1.id người tiêu_dùng = t2.id người tiêu_dùng where t2.tên = "Niloofar" and t1.năm = 2015
select avg ( t1.đánh_giá xếp_hạng ) from đánh_giá as t1 join người tiêu_dùng as t2 on t1.id người tiêu_dùng = t2.id người tiêu_dùng where t2.tên = "Michelle"
select số_lượng from lượt đăng_ký where id doanh_nghiệp = ( select id doanh_nghiệp from doanh_nghiệp where tên = "Cafe_Zinho" ) and ngày = "Thứ_Sáu"
select count ( * ) from người tiêu_dùng as t1 join đánh_giá as t2 on t1.id người tiêu_dùng = t2.id người tiêu_dùng join doanh_nghiệp as t3 on t2.id doanh_nghiệp = t3.id doanh_nghiệp where t3.tên = "Sushi_Too" and t3.thành_phố = "Pittsburgh"
select count ( * ) from doanh_nghiệp as t1 join đánh_giá as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t1.tên = "restaurant" and t2.đánh_giá xếp_hạng > 4,5 and t1.thành_phố = "pittsburgh"
select count ( * ) from khoản tiền boa where năm = 2015
select sum ( t1.số lượt thích ) from khoản tiền boa as t1 join đánh_giá as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join người tiêu_dùng as t3 on t2.id người tiêu_dùng = t3.id người tiêu_dùng where t3.tên = "Niloofar"
select sum ( t1.số lượt thích ) from khoản tiền boa as t1 join đánh_giá as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join người tiêu_dùng as t3 on t3.id người tiêu_dùng = t2.id người tiêu_dùng where t1.văn_bản = "Cafe_Zinho"
select sum ( t1.số lượt thích ) from khoản tiền boa as t1 join đánh_giá as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join người tiêu_dùng as t3 on t3.id người tiêu_dùng = t2.id người tiêu_dùng where t3.tên = "Niloofar" and t1.văn_bản = "Cafe_Zinho"
select count ( * ) from đánh_giá as t1 join khoản tiền boa as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join người tiêu_dùng as t3 on t2.id người tiêu_dùng = t3.id người tiêu_dùng where t3.tên = "Michelle" and t2.năm = 2010
select t1.số_lượng đánh_giá from đánh_giá as t1 join khoản tiền boa as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join người tiêu_dùng as t3 on t2.id người tiêu_dùng = t3.id người tiêu_dùng where t3.tên = "Michelle" and t2.năm = 2010
select count ( * ) from đánh_giá as t1 join khoản tiền boa as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join người tiêu_dùng as t3 on t2.id người tiêu_dùng = t3.id người tiêu_dùng where t3.tên = "Michelle" and t2.tháng = "Apr"
select count ( * ) from doanh_nghiệp where tiểu_bang = "texas" and tên = "nhà_hàng"
select count ( * ) from doanh_nghiệp as t1 join đánh_giá as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join người tiêu_dùng as t3 on t2.id người tiêu_dùng = t3.id người tiêu_dùng where t1.tên = "bar" and t2.đánh_giá xếp_hạng > 3,5 and t3.tên = "Dallas"
select count ( * ) from doanh_nghiệp as t1 join đánh_giá as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join loại_hình as t3 on t1.id doanh_nghiệp = t3.id doanh_nghiệp where t3.tên loại_hình = "Bar" and t2.đánh_giá xếp_hạng > 3,5 and t1.thành_phố = "Dallas"
select count ( * ) from doanh_nghiệp as t1 join đánh_giá as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join người tiêu_dùng as t3 on t2.id người tiêu_dùng = t3.id người tiêu_dùng where t1.tên = "Texas de Brazil" and t1.thành_phố = "Dallas" and t3.tên = "Jessica"
select count ( * ) from đánh_giá where tên = "Bistro Di_Napoli" and năm = 2015
select count ( * ) from doanh_nghiệp where tên = "nhà_hàng" and thành_phố = "dallas" and tiểu_bang = "texas"
select count ( * ) from doanh_nghiệp as t1 join loại_hình as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join khu_vực lân_cận as t3 on t1.id doanh_nghiệp = t3.id doanh_nghiệp where t2.tên loại_hình = "Tiệm Starbucks" and t3.tên khu_phố lân_cận = "Dallas" and t1.tiểu_bang = "Texas"
select count ( * ) from đánh_giá where tên doanh_nghiệp = "Acacia Cafe"
select avg ( số_lượng ) , ngày from lượt đăng_ký where id doanh_nghiệp = ( select id doanh_nghiệp from doanh_nghiệp where tên = "Barrio Cafe" ) group by ngày
select count ( * ) from doanh_nghiệp as t1 join khu_vực lân_cận as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t2.tên khu_phố lân_cận = "Stone Meadows" and t1.thành_phố = "Madison"
select count ( * ) from đánh_giá as t1 join người tiêu_dùng as t2 on t1.id người tiêu_dùng = t2.id người tiêu_dùng where t2.tên = "Adrienne"
select count ( * ) from đánh_giá where id người tiêu_dùng = ( select id người tiêu_dùng from người tiêu_dùng where tên = "Michelle" ) and năm = 2014 and tháng = "3"
select count ( t1.id doanh_nghiệp ) from đánh_giá as t1 join người tiêu_dùng as t2 on t1.id người tiêu_dùng = t2.id người tiêu_dùng where t2.tên = "Michelle" and t1.năm = 2010
select count ( t1.id doanh_nghiệp ) from doanh_nghiệp as t1 join đánh_giá as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join người tiêu_dùng as t3 on t2.id người tiêu_dùng = t3.id người tiêu_dùng where t3.tên = "Christine" and t2.năm = 2010 and t1.thành_phố = "San_Diego"
select count ( * ) from doanh_nghiệp where tên = "Target" and thành_phố = "Los Angeles"
select count ( * ) from đánh_giá as t1 join doanh_nghiệp as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join người tiêu_dùng as t3 on t1.id người tiêu_dùng = t3.id người tiêu_dùng where t2.tên = "Ai-len Restaurant" and t3.tên = "Dallas"
select avg ( t1.đánh_giá xếp_hạng ) from đánh_giá as t1 join doanh_nghiệp as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t1.năm = 2014
select count ( * ) from đánh_giá as t1 join doanh_nghiệp as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t2.tên = "Vintner Grill" and t1.năm = 2010
select t1.số_lượng đánh_giá from doanh_nghiệp as t1 join khu_vực lân_cận as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t2.tên khu_phố lân_cận = "South_Summerlin"
select count ( * ) from người tiêu_dùng where tên = "Michelle"
select count ( * ) from loại_hình where tên loại_hình = "nhà_hàng"
select count ( thành_phố ) from doanh_nghiệp where tên = "Panda_Express"
select count ( * ) from khoản tiền boa as t1 join đánh_giá as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join người tiêu_dùng as t3 on t3.id người tiêu_dùng = t2.id người tiêu_dùng where t3.tên = "Michelle"
select sum ( t1.số_lượng ) from lượt đăng_ký as t1 join khu_vực lân_cận as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join doanh_nghiệp as t3 on t2.id doanh_nghiệp = t3.id doanh_nghiệp where t3.tên = "Brighton Heights"
select count ( * ) from đánh_giá where tháng = "3"
select count ( * ) , tháng from khoản tiền boa group by tháng
select count ( * ) from doanh_nghiệp as t1 join khu_vực lân_cận as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join đánh_giá as t3 on t1.id doanh_nghiệp = t3.id doanh_nghiệp where t2.tên khu_phố lân_cận = "Madison" and t3.đánh_giá xếp_hạng = 5
select t1.tên from doanh_nghiệp as t1 join loại_hình as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join khu_vực lân_cận as t3 on t1.id doanh_nghiệp = t3.id doanh_nghiệp where t2.tên loại_hình = "restaurant" and t3.tên khu_phố lân_cận = "texas"
select t1.tên from doanh_nghiệp as t1 join lượt đăng_ký as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp group by t1.id doanh_nghiệp order by sum ( t2.số_lượng ) desc limit 1
select tên khu_phố lân_cận from khu_vực lân_cận where tên khu_phố lân_cận = "Madison" group by tên khu_phố lân_cận order by count ( * ) desc limit 1
select t1.tên from doanh_nghiệp as t1 join đánh_giá as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join người tiêu_dùng as t3 on t2.id người tiêu_dùng = t3.id người tiêu_dùng where t2.đánh_giá xếp_hạng > 3.5 and t3.tên = "Dallas" and t1.tên like "Mexico"
select t1.tên from doanh_nghiệp as t1 join đánh_giá as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join người tiêu_dùng as t3 on t2.id người tiêu_dùng = t3.id người tiêu_dùng where t1.tên = "Mexican" and t2.đánh_giá xếp_hạng > 3,5 and t3.tên = "Dallas"
select t1.tên from doanh_nghiệp as t1 join loại_hình as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join khu_vực lân_cận as t3 on t1.id doanh_nghiệp = t3.id doanh_nghiệp where t3.tên khu_phố lân_cận = "Dallas" and t2.tên loại_hình = "Delivery"
select t1.tên from doanh_nghiệp as t1 join khu_vực lân_cận as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join loại_hình as t3 on t3.id doanh_nghiệp = t1.id doanh_nghiệp where t2.tên khu_phố lân_cận = "Meadowood" and t3.tên loại_hình = "Italian" and t1.thành_phố = "Madison"
select t1.tên from doanh_nghiệp as t1 join đánh_giá as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join người tiêu_dùng as t3 on t2.id người tiêu_dùng = t3.id người tiêu_dùng where t1.thành_phố = "Los Angeles" and t2.đánh_giá xếp_hạng > 3 and t3.tên = "bar" group by t1.tên having count ( * ) >= 30
select count ( * ) from doanh_nghiệp where tên = "nhà_hàng Ai_Cập" and thành_phố = "edinburgh"
select tên from người tiêu_dùng where id người tiêu_dùng in ( select t1.id người tiêu_dùng from đánh_giá as t1 join người tiêu_dùng as t2 on t1.id người tiêu_dùng = t2.id người tiêu_dùng group by t1.id người tiêu_dùng having avg ( t1.đánh_giá xếp_hạng ) < 3 )
select t1.tên from doanh_nghiệp as t1 join đánh_giá as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t2.tháng = "4" group by t1.tên order by count ( * ) desc
select t1.tên from doanh_nghiệp as t1 join loại_hình as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp group by t1.tên order by count ( * ) desc limit 1