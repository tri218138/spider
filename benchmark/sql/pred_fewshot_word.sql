select t1.id tài_sản , t1.chi_tiết tài_sản from tài_sản as t1 join bộ_phận của tài_sản as t2 on t1.id tài_sản = t2.id tài_sản group by t1.id tài_sản having count ( * ) = 2 intersect select t1.id tài_sản , t1.chi_tiết tài_sản from tài_sản as t1 join nhật_ký lỗi as t2 on t1.id tài_sản = t2.id tài_sản group by t1.id tài_sản having count ( * ) < 2
select t1.id hợp_đồng bảo_trì , count ( * ) from hợp_đồng bảo_trì as t1 join tài_sản as t2 on t1.id hợp_đồng bảo_trì = t2.id hợp_đồng bảo_trì group by t1.id hợp_đồng bảo_trì
select count ( * ) , t1.tên công_ty from công_ty bên thứ ba as t1 join tài_sản as t2 on t1.id công_ty = t2.id công_ty cung_cấp group by t1.tên công_ty
select t1.tên công_ty from công_ty bên thứ ba as t1 join hợp_đồng bảo_trì as t2 on t1.id công_ty = t2.id hợp_đồng bảo_trì của công_ty group by t1.tên công_ty order by count ( * ) desc limit 1
select tên nhân_viên , id nhân_viên liên_lạc from nhật_ký lỗi except select t1.tên nhân_viên , t1.id nhân_viên liên_lạc from nhật_ký lỗi as t2 join nhân_viên as t1 on t2.id nhân_viên liên_lạc = t1.id nhân_viên
select t1.tên , t1.họ from kỹ_sư bảo_trì as t1 join chuyến thăm của kỹ_sư as t2 on t1.id kỹ_sư = t2.id kỹ_sư group by t1.id kỹ_sư order by count ( * ) desc limit 1
select t1.tên bộ_phận , t1.id bộ_phận from bộ_phận as t1 join lỗi bộ_phận as t2 on t1.id bộ_phận = t2.id bộ_phận group by t1.id bộ_phận having count ( * ) > 2
select tên , họ , những chi_tiết khác về kỹ_sư , mô_tả về kỹ_năng from kỹ_sư bảo_trì as t1 join kỹ_năng của kỹ_sư as t2 on t1.id kỹ_sư = t2.id kỹ_sư
select t1.mô_tả lỗi , t2.mô_tả về kỹ_năng from lỗi bộ_phận as t1 join kỹ_năng cần để sửa_chữa as t2 on t1.id bộ_phận bị lỗi = t2.id bộ_phận bị lỗi
select t2.tên bộ_phận , count ( * ) from bộ_phận của tài_sản as t1 join bộ_phận as t2 on t1.id bộ_phận = t2.id bộ_phận group by t2.tên bộ_phận
select t1.mô_tả về lỗi , t2.tình_trạng lỗi from nhật_ký lỗi as t1 join nhật_ký của lỗi bộ_phận as t2 on t1.id mục nhập của nhật_ký lỗi = t2.id mục nhập của nhật_ký lỗi
select t1.id mục nhập của nhật_ký lỗi , count ( * ) from nhật_ký lỗi as t1 join chuyến thăm của kỹ_sư as t2 on t1.id mục nhập của nhật_ký lỗi = t2.id mục nhập của nhật_ký lỗi group by t1.id mục nhập của nhật_ký lỗi order by count ( * ) desc limit 1
select distinct họ from kỹ_sư bảo_trì
select distinct tình_trạng lỗi from nhật_ký của lỗi bộ_phận
select tên , họ from kỹ_sư bảo_trì where id kỹ_sư not in ( select id kỹ_sư from chuyến thăm của kỹ_sư )
select id tài_sản , chi_tiết tài_sản , thương_hiệu tài_sản , mẫu_mã tài_sản from tài_sản
select ngày mua tài_sản from tài_sản order by ngày mua tài_sản asc limit 1
select t1.id bộ_phận bị lỗi , t1.tên viết tắt của lỗi from lỗi bộ_phận as t1 join kỹ_năng cần để sửa_chữa as t2 on t1.id bộ_phận bị lỗi = t2.id bộ_phận bị lỗi group by t1.id bộ_phận bị lỗi order by count ( * ) desc limit 1
select t1.tên viết tắt của lỗi from lỗi bộ_phận as t1 join nhật_ký của lỗi bộ_phận as t2 on t1.id bộ_phận bị lỗi = t2.id bộ_phận bị lỗi group by t1.tên viết tắt của lỗi order by count ( * ) asc limit 1
select
select t1.tên nhân_viên , t3.tên , t3.họ from nhân_viên as t1 join chuyến thăm của kỹ_sư as t2 on t1.id nhân_viên = t2.id nhân_viên liên_lạc join kỹ_sư bảo_trì as t3 on t2.id kỹ_sư = t3.id kỹ_sư
select t1.id mục nhập của nhật_ký lỗi , t1.thời_gian chuyến thăm kết_thúc , t1.mô_tả về lỗi from nhật_ký lỗi as t1 join lỗi bộ_phận as t2 on t1.id mục nhập của nhật_ký lỗi = t2.id mục nhập của nhật_ký lỗi group by t1.id mục nhập của nhật_ký lỗi order by count ( * ) desc limit 1
select t1.id kỹ_năng , t1.mô_tả về kỹ_năng from kỹ_năng as t1 join kỹ_năng cần để sửa_chữa as t2 on t1.id kỹ_năng = t2.id kỹ_năng group by t1.id kỹ_năng order by count ( * ) desc limit 1
select distinct mẫu_mã tài_sản from tài_sản
select thương_hiệu tài_sản , mẫu_mã tài_sản , chi_tiết tài_sản from tài_sản order by ngày thanh_lý tài_sản asc
select id bộ_phận , số tiền phải trả from bộ_phận order by số tiền phải trả limit 1
select t1.tên công_ty from công_ty bên thứ ba as t1 join hợp_đồng bảo_trì as t2 on t1.id công_ty = t2.id hợp_đồng bảo_trì của công_ty order by t2.ngày bắt_đầu hợp_đồng limit 1
select t1.tên công_ty from công_ty bên thứ ba as t1 join hợp_đồng bảo_trì as t2 on t1.id công_ty = t2.id hợp_đồng bảo_trì của công_ty order by t2.ngày kết_thúc hợp_đồng desc limit 1
select giới_tính from nhân_viên group by giới_tính order by count ( * ) desc limit 1
select t1.tên nhân_viên , count ( * ) from nhân_viên as t1 join chuyến thăm của kỹ_sư as t2 on t1.id nhân_viên = t2.id nhân_viên liên_lạc group by t1.id nhân_viên
select mẫu_mã tài_sản from tài_sản where id tài_sản not in ( select id tài_sản from lỗi bộ_phận )
select count ( * ) from sách
select tác_giả from sách order by tác_giả asc
select tiêu_đề from sách order by số_lượng phát_hành asc
select tiêu_đề from sách where tác_giả != "Elaine Lee"
select tiêu_đề , số_lượng phát_hành from sách
select ngày xuất_bản from ấn_phẩm order by giá bán desc
select distinct nhà_xuất_bản from ấn_phẩm where giá bán > 5000000
select nhà_xuất_bản from ấn_phẩm order by giá bán desc limit 1
select ngày xuất_bản from ấn_phẩm order by giá bán limit 3
select t1.tiêu_đề , t2.ngày xuất_bản from sách as t1 join ấn_phẩm as t2 on t1.id sách = t2.id sách
select t1.tác_giả from sách as t1 join ấn_phẩm as t2 on t1.id sách = t2.id sách where t2.giá bán > 4000000
select t1.tiêu_đề from sách as t1 join ấn_phẩm as t2 on t1.id sách = t2.id sách order by t2.giá bán desc
select nhà_xuất_bản from ấn_phẩm group by nhà_xuất_bản having count ( * ) > 1
select nhà_xuất_bản , count ( * ) from ấn_phẩm group by nhà_xuất_bản
select ngày xuất_bản from ấn_phẩm group by ngày xuất_bản order by count ( * ) desc limit 1
select tác_giả from sách group by tác_giả having count ( * ) > 1
select tiêu_đề from sách where id sách not in ( select id sách from ấn_phẩm )
select distinct nhà_xuất_bản from ấn_phẩm where giá bán > 10000000 intersect select distinct nhà_xuất_bản from ấn_phẩm where giá bán < 5000000
select count ( distinct ngày xuất_bản ) from ấn_phẩm
select count ( distinct ngày xuất_bản ) from ấn_phẩm
select giá bán from ấn_phẩm where nhà_xuất_bản = "Person" or nhà_xuất_bản = "Wiley"
select tên bộ_phận from bộ_phận order by ngày bắt_đầu quản_lý
select tên người phụ_thuộc from người phụ_thuộc where mối quan_hệ = "Married"
select count ( * ) from người phụ_thuộc where giới_tính = "F"
select t1.tên bộ_phận from bộ_phận as t1 join địa_điểm của bộ_phận as t2 on t1.mã_số bộ_phận = t2.mã_số bộ_phận where t2.địa_điểm bộ_phận = "Houston"
select tên , họ from nhân_viên where lương > 30000
select count ( * ) , giới_tính from nhân_viên where lương < 50000 group by giới_tính
select tên , họ , địa_chỉ from nhân_viên order by ngày_sinh
select count ( * ) from giáo_viên
select count ( * ) from giáo_viên
select tên from giáo_viên order by tuổi asc
select tên from giáo_viên order by tuổi asc
select tuổi , quê_quán from giáo_viên
select tên , tuổi , quê_quán from giáo_viên
select tên from giáo_viên where quê_quán != "Little Lever Urban Distric"
select tên from giáo_viên where quê_quán != "Little Lever Urban Distric"
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
select t2.tên , t3.khoá học from sắp_xếp khoá học as t1 join giáo_viên as t2 on t1.id giáo_viên = t2.id giáo_viên join khoá học as t3 on t1.id khoá học = t3.id khoá học
select t3.tên , t2.khoá học from sắp_xếp khoá học as t1 join khoá học as t2 on t1.id khoá học = t2.id khoá học join giáo_viên as t3 on t1.id giáo_viên = t3.id giáo_viên
select t2.tên , t1.khoá học from sắp_xếp khoá học as t1 join giáo_viên as t2 on t1.id giáo_viên = t2.id giáo_viên order by t2.tên
select t2.tên , t1.khoá học from sắp_xếp khoá học as t1 join giáo_viên as t2 on t1.id giáo_viên = t2.id giáo_viên order by t2.tên asc
select t3.tên from sắp_xếp khoá học as t1 join khoá học as t2 on t1.id khoá học = t2.id khoá học join giáo_viên as t3 on t1.id giáo_viên = t3.id giáo_viên where t2.khoá học = "Math"
select t2.tên from sắp_xếp khoá học as t1 join giáo_viên as t2 on t1.id giáo_viên = t2.id giáo_viên join khoá học as t3 on t1.id khoá học = t3.id khoá học where t3.khoá học = "Math"
select t2.tên , count ( * ) from sắp_xếp khoá học as t1 join giáo_viên as t2 on t1.id giáo_viên = t2.id giáo_viên group by t2.tên
select t2.tên , count ( * ) from sắp_xếp khoá học as t1 join giáo_viên as t2 on t1.id giáo_viên = t2.id giáo_viên group by t2.tên
select t2.tên from sắp_xếp khoá học as t1 join giáo_viên as t2 on t1.id giáo_viên = t2.id giáo_viên group by t2.tên having count ( * ) >= 2
select t2.tên from sắp_xếp khoá học as t1 join giáo_viên as t2 on t1.id giáo_viên = t2.id giáo_viên group by t2.tên having count ( * ) >= 2
select tên from giáo_viên where id giáo_viên not in ( select id giáo_viên from sắp_xếp khoá học )
select tên from giáo_viên where id giáo_viên not in ( select id giáo_viên from sắp_xếp khoá học )
select count ( * ) from thành_viên
select tên from thành_viên order by tên asc
select tên , quốc_gia from thành_viên
select tên from thành_viên where quốc_gia = "United States" or quốc_gia = "Canada"
select quốc_gia , count ( * ) from thành_viên group by quốc_gia
select quốc_gia from thành_viên group by quốc_gia order by count ( * ) desc limit 1
select quốc_gia from thành_viên group by quốc_gia having count ( * ) > 2
select tên lãnh_đạo , địa_điểm trường đại_học from trường đại_học
select t2.tên , t1.tên from đại_học as t1 join thành_viên as t2 on t1.id đại_học = t2.id đại_học
select
select t1.tên lãnh_đạo from trường đại_học as t1 join thành_viên as t2 on t1.id đại_học = t2.id đại_học where t2.quốc_gia = "Canada"
select t1.tên , t2.chủ_đề trang_trí from thành_viên as t1 join vòng as t2 on t1.id thành_viên = t2.id thành_viên
select t1.tên from thành_viên as t1 join vòng as t2 on t1.id thành_viên = t2.id thành_viên where t2.xếp_hạng từng vòng > 3
select t1.tên from thành_viên as t1 join vòng as t2 on t1.id thành_viên = t2.id thành_viên order by xếp_hạng từng vòng asc
select tên from thành_viên where id thành_viên not in ( select id thành_viên from vòng )
select count ( * ) from cuộc bầu_cử
select số_lượng phiếu bầu from cuộc bầu_cử order by số_lượng phiếu bầu desc
select ngày , tỉ_lệ phiếu bầu from cuộc bầu_cử
select min ( tỉ_lệ phiếu bầu ) , max ( tỉ_lệ phiếu bầu ) from cuộc bầu_cử
select tên , đảng from đại_diện
select tên from đại_diện where đảng != "Republican"
select tuổi_thọ from đại_diện where tiểu_bang = "New York" or tiểu_bang = "Indiana"
select t1.tên , t2.ngày from đại_diện as t1 join cuộc bầu_cử as t2 on t1.id đại_diện = t2.id đại_diện
select t2.tên from cuộc bầu_cử as t1 join đại_diện as t2 on t1.id đại_diện = t2.id đại_diện where t1.số_lượng phiếu bầu > 10000
select t1.tên from đại_diện as t1 join cuộc bầu_cử as t2 on t1.id đại_diện = t2.id đại_diện order by t2.số_lượng phiếu bầu desc
select t2.đảng from cuộc bầu_cử as t1 join đại_diện as t2 on t1.id đại_diện = t2.id đại_diện order by số_lượng phiếu bầu limit 1
select tuổi_thọ from đại_diện order by tỉ_lệ phiếu bầu desc
select avg ( số_lượng phiếu bầu ) from cuộc bầu_cử as t1 join đại_diện as t2 on t1.id đại_diện = t2.id đại_diện where t2.đảng = "Republican"
select đảng , count ( * ) from đại_diện group by đảng
select đảng from đại_diện group by đảng order by count ( * ) desc limit 1
select đảng from đại_diện group by đảng having count ( * ) >= 3
select tiểu_bang from đại_diện group by tiểu_bang having count ( * ) >= 2
select tên from đại_diện where id đại_diện not in ( select id đại_diện from cuộc bầu_cử )
select đảng from đại_diện where tiểu_bang = "New York" intersect select đảng from đại_diện where tiểu_bang = "Pennsylvania"
select count ( distinct đảng ) from đại_diện
select count ( * ) from quốc_gia
select count ( * ) from quốc_gia
select tên quốc_gia , thủ_đô from quốc_gia
select tên quốc_gia , thủ_đô from quốc_gia
select ngôn_ngữ bản_địa chính_thức from quốc_gia where ngôn_ngữ bản_địa chính_thức like "%English%"
select ngôn_ngữ bản_địa chính_thức from quốc_gia where ngôn_ngữ bản_địa chính_thức like "%English%"
select distinct vị_trí from trận đấu trong mùa giải
select distinct vị_trí from trận đấu trong mùa giải
select cầu_thủ from trận đấu trong mùa giải where trường đại_học = "UCLA"
select cầu_thủ from trận đấu trong mùa giải where trường đại_học = "UCLA"
select distinct vị_trí from trận đấu trong mùa giải where trường đại_học = "UCLA" or trường đại_học = "Duke"
select distinct t1.vị_trí from trận đấu trong mùa giải as t1 join đội as t2 on t1.đội = t2.id đội join trường đại_học as t3 on t2.trường đại_học = t3.tên where t3.tên = "UCLA" or t3.tên = "Duke"
select mã_số tuyển_chọn tân_binh , mùa tuyển_chọn from trận đấu trong mùa giải where vị_trí = "Defender"
select mã_số tuyển_chọn tân_binh , mùa tuyển_chọn from trận đấu trong mùa giải where vị_trí = "Defender"
select count ( distinct đội ) from trận đấu trong mùa giải
select count ( distinct đội ) from trận đấu trong mùa giải
select cầu_thủ , số năm đã chơi from cầu_thủ
select cầu_thủ , số năm đã chơi from cầu_thủ
select tên from đội
select tên from đội
select t1.mùa giải , t1.cầu_thủ , t3.tên quốc_gia from trận đấu trong mùa giải as t1 join cầu_thủ as t2 on t1.cầu_thủ = t2.cầu_thủ join quốc_gia as t3 on t1.quốc_gia = t3.id quốc_gia
select
select t2.cầu_thủ from quốc_gia as t1 join trận đấu trong mùa giải as t2 on t1.id quốc_gia = t2.quốc_gia where t1.tên quốc_gia = "Indonesia"
select t2.cầu_thủ from quốc_gia as t1 join trận đấu trong mùa giải as t2 on t1.id quốc_gia = t2.quốc_gia where t1.tên quốc_gia = "Indonesia"
select distinct t1.vị_trí from trận đấu trong mùa giải as t1 join đội as t2 on t1.đội = t2.id đội join quốc_gia as t3 on t2.quốc_gia = t3.id quốc_gia where t3.thủ_đô = "Dublin"
select distinct vị_trí from trận đấu trong mùa giải as t1 join quốc_gia as t2 on t1.quốc_gia = t2.id quốc_gia where t2.thủ_đô = "Dublin"
select distinct t1.ngôn_ngữ bản_địa chính_thức from quốc_gia as t1 join trận đấu trong mùa giải as t2 on t1.id quốc_gia = t2.quốc_gia where t2.trường đại_học = "Maryland" or t2.trường đại_học = "Duke"
select t1.ngôn_ngữ bản_địa chính_thức from quốc_gia as t1 join trận đấu trong mùa giải as t2 on t1.id quốc_gia = t2.quốc_gia where t2.trường đại_học = "Maryland" or t2.trường đại_học = "Duke"
select count ( distinct t1.ngôn_ngữ bản_địa chính_thức ) from quốc_gia as t1 join trận đấu trong mùa giải as t2 on t1.id quốc_gia = t2.quốc_gia where t2.vị_trí = "defender"
select count ( distinct t1.ngôn_ngữ bản_địa chính_thức ) from quốc_gia as t1 join trận đấu trong mùa giải as t2 on t1.id quốc_gia = t2.quốc_gia where t2.vị_trí = "Defender"
select t1.mùa giải , t1.cầu_thủ , t2.tên from trận đấu trong mùa giải as t1 join đội as t2 on t1.đội = t2.id đội
select t1.cầu_thủ , t1.mùa giải , t2.tên from trận đấu trong mùa giải as t1 join đội as t2 on t1.đội = t2.id đội
select t1.vị_trí from trận đấu trong mùa giải as t1 join đội as t2 on t1.đội = t2.id đội where t2.tên = "Ryley Goldner"
select
select count ( * ) from trận đấu trong mùa giải as t1 join đội as t2 on t1.id đội = t2.id đội join quốc_gia as t3 on t3.id quốc_gia = t1.id quốc_gia where t3.tên quốc_gia = "United States" and t1.position = "Defender"
select count ( distinct trường đại_học ) from trận đấu trong mùa giải as t1 join đội as t2 on t1.đội = t2.id đội where t2.tên = "Columbus Crew"
select t1.cầu_thủ , t1.số năm đã chơi from cầu_thủ as t1 join đội as t2 on t1.đội = t2.id đội where t2.tên = "Columbus Crew"
select distinct t2.tên from vùng sản_xuất as t1 join rượu as t2 on t1.vùng sản_xuất = t2.vùng sản_xuất where t1.khu_vực = "North Coast"
select vị_trí , count ( * ) from trận đấu trong mùa giải group by vị_trí
select vị_trí , count ( * ) from trận đấu trong mùa giải group by vị_trí
select t1.tên quốc_gia , count ( * ) from quốc_gia as t1 join cầu_thủ as t2 on t1.id quốc_gia = t2.quốc_gia group by t1.tên quốc_gia
select t1.tên quốc_gia , count ( * ) from quốc_gia as t1 join trận đấu trong mùa giải as t2 on t1.id quốc_gia = t2.quốc_gia group by t1.tên quốc_gia
select cầu_thủ from trận đấu trong mùa giải order by trường đại_học asc
select cầu_thủ from trận đấu trong mùa giải order by trường đại_học asc
select cầu_thủ , số năm đã chơi from cầu_thủ
select vị_trí from trận đấu trong mùa giải group by vị_trí order by count ( * ) desc limit 1
select t2.tên from trận đấu trong mùa giải as t1 join đội as t2 on t1.đội = t2.id đội group by t1.đội having count ( * ) >= 2
select trường đại_học from trận đấu trong mùa giải group by trường đại_học order by count ( * ) desc limit 3
select trường đại_học from trận đấu trong mùa giải group by trường đại_học having count ( * ) >= 2
select trường đại_học from trận đấu trong mùa giải group by trường đại_học having count ( * ) >= 2
select trường đại_học from trận đấu trong mùa giải group by trường đại_học having count ( * ) >= 2 order by trường đại_học desc
select trường đại_học from trận đấu trong mùa giải group by trường đại_học having count ( * ) >= 2 order by trường đại_học desc
select tên from đội where id đội not in ( select đội from trận đấu trong mùa giải )
select tên from đội where id đội not in ( select đội from trận đấu trong mùa giải )
select t1.tên quốc_gia from quốc_gia as t1 join trận đấu trong mùa giải as t2 on t1.id quốc_gia = t2.quốc_gia where t2.vị_trí = "striker" intersect select t1.tên quốc_gia from quốc_gia as t1 join trận đấu trong mùa giải as t2 on t1.id quốc_gia = t2.quốc_gia where t2.vị_trí = "defender"
select t1.tên quốc_gia from quốc_gia as t1 join trận đấu trong mùa giải as t2 on t1.id quốc_gia = t2.quốc_gia where t2.vị_trí = "striker" intersect select t1.tên quốc_gia from quốc_gia as t1 join trận đấu trong mùa giải as t2 on t1.id quốc_gia = t2.quốc_gia where t2.vị_trí = "defender"
select trường đại_học from trận đấu trong mùa giải where vị_trí = "Midfielder" intersect select trường đại_học from trận đấu trong mùa giải where vị_trí = "Defender"
select trường đại_học from trận đấu trong mùa giải where vị_trí = "Midfielder" intersect select trường đại_học from trận đấu trong mùa giải where vị_trí = "Defender"
select count ( * ) from tội_phạm
select ngày from tội_phạm order by số người bị giết desc
select số người bị_thương from tội_phạm order by số người bị_thương asc
select avg ( số người bị_thương ) from tội_phạm
select địa_điểm from tội_phạm group by địa_điểm order by sum ( số người bị giết ) desc limit 1
select tên from cá_nhân order by chiều cao asc
select t1.tên from cá_nhân as t1 join tội_phạm as t2 on t1.id cá_nhân = t2.id cá_nhân
select t1.tên from cá_nhân as t1 join tội_phạm as t2 on t1.id cá_nhân = t2.id cá_nhân where t2.quốc_gia != "China"
select t1.tên from cá_nhân as t1 join tội_phạm as t2 on t1.id cá_nhân = t2.id cá_nhân order by t1.cân nặng desc limit 1
select sum ( t1.số người bị giết ) from tội_phạm as t1 join cá_nhân as t2 on t1.id cá_nhân = t2.id cá_nhân where t2.chiều cao > 1.84
select t1.tên from cá_nhân as t1 join tội_phạm as t2 on t1.id cá_nhân = t2.id cá_nhân where t2.quốc_gia = "China" or t2.quốc_gia = "Japan"
select t1.chiều cao from cá_nhân as t1 join tội_phạm as t2 on t1.id cá_nhân = t2.id cá_nhân order by t2.số người bị_thương desc
select quốc_gia , count ( * ) from tội_phạm group by quốc_gia
select quốc_gia from tội_phạm group by quốc_gia order by count ( * ) desc limit 1
select quốc_gia , count ( * ) from tội_phạm group by quốc_gia having count ( * ) >= 2
select t1.tên from cá_nhân as t1 join tội_phạm as t2 on t1.id cá_nhân = t2.id cá_nhân order by t2.năm desc
select tên from cá_nhân where id cá_nhân not in ( select id cá_nhân from tội_phạm )
select quốc_gia from tội_phạm where số người bị_thương > 50 intersect select quốc_gia from tội_phạm where số người bị_thương < 20
select count ( distinct địa_điểm ) from tội_phạm
select t2.ngày from cá_nhân as t1 join tội_phạm as t2 on t1.id cá_nhân = t2.id cá_nhân order by t1.chiều cao desc limit 1
select năm from tội_phạm order by năm desc limit 1
select chính_quyền địa_phương , dịch_vụ from nhà_ga
select số_hiệu tàu , tên from tàu_hoả order by thời_gian
select tên , thời_gian , số_hiệu tàu from tàu_hoả where điểm đến = "Chennai" order by thời_gian
select count ( * ) from tàu_hoả where tên like "%Express%"
select số_hiệu tàu , thời_gian from tàu_hoả where điểm khởi_hành = "Chennai" and điểm đến = "Guruvayur"
select điểm khởi_hành , count ( * ) from tàu_hoả group by điểm khởi_hành
select t1.tên from tàu_hoả as t1 join lộ_trình as t2 on t1.id = t2.id tàu group by t2.id tàu order by count ( * ) desc limit 1
select count ( * ) , t1.tên mạng_lưới , t1.dịch_vụ from nhà_ga as t1 join lộ_trình as t2 on t1.id = t2.id nhà_ga group by t2.id nhà_ga
select avg ( nhiệt_độ cao ) , ngày trong tuần from thời_tiết hàng tuần group by ngày trong tuần
select avg ( t1.lượng mưa ) , max ( t1.nhiệt_độ thấp ) from thời_tiết hàng tuần as t1 join nhà_ga as t2 on t1.id nhà_ga = t2.id where t2.tên mạng_lưới = "Amersham"
select t1.tên , t1.thời_gian from tàu_hoả as t1 join lộ_trình as t2 on t1.id = t2.id tàu join nhà_ga as t3 on t2.id nhà_ga = t3.id where t3.chính_quyền địa_phương = "Chiltern"
select count ( distinct dịch_vụ ) from nhà_ga
select t2.id , t2.chính_quyền địa_phương from thời_tiết hàng tuần as t1 join nhà_ga as t2 on t1.id nhà_ga = t2.id group by t2.id order by avg ( nhiệt_độ cao ) desc limit 1
select t2.id , t2.chính_quyền địa_phương from thời_tiết hàng tuần as t1 join nhà_ga as t2 on t1.id nhà_ga = t2.id group by t2.id having max ( t1.lượng mưa ) > 50
select min ( nhiệt_độ thấp ) , max ( tốc_độ gió mph ) from thời_tiết hàng tuần
select điểm khởi_hành from tàu_hoả group by điểm khởi_hành having count ( * ) > 1
select count ( * ) from nhà_thờ where ngày mở_cửa < 1850
select tên , ngày mở_cửa , được tổ_chức bởi from nhà_thờ
select tên from nhà_thờ order by ngày mở_cửa desc
select ngày mở_cửa from nhà_thờ group by ngày mở_cửa having count ( * ) >= 2
select tên , được tổ_chức bởi from nhà_thờ where ngày mở_cửa >= 1830 and ngày mở_cửa <= 1840
select ngày mở_cửa , count ( * ) from nhà_thờ group by ngày mở_cửa
select tên , ngày mở_cửa , năm mở_cửa from nhà_thờ order by ngày mở_cửa desc limit 3
select count ( * ) from cá_nhân where là nam hay nữ = "female" and tuổi > 30
select quốc_gia from cá_nhân where tuổi > 30 intersect select quốc_gia from cá_nhân where tuổi < 25
select min ( tuổi ) , max ( tuổi ) , avg ( tuổi ) from cá_nhân
select tên , quốc_gia from cá_nhân where tuổi < ( select avg ( tuổi ) from cá_nhân )
select t3.tên , t4.tên from lễ cưới as t1 join nhà_thờ as t2 on t1.id nhà_thờ = t2.id nhà_thờ join cá_nhân as t3 on t1.id nam = t3.id cá_nhân join cá_nhân as t4 on t1.id nữ = t4.id cá_nhân where t2.ngày mở_cửa > 2014
select tên , tuổi from cá_nhân where là nam = "T" and id cá_nhân not in ( select id nam from lễ cưới )
select tên from nhà_thờ except select t2.tên from lễ cưới as t1 join nhà_thờ as t2 on t1.id nhà_thờ = t2.id nhà_thờ where t1.năm = 2015
select t1.tên from nhà_thờ as t1 join lễ cưới as t2 on t1.id nhà_thờ = t2.id nhà_thờ group by t1.tên having count ( * ) >= 2
select t3.tên from lễ cưới as t1 join nhà_thờ as t2 on t1.id nhà_thờ = t2.id nhà_thờ join cá_nhân as t3 on t1.id nữ = t3.id cá_nhân where t3.quốc_gia = "Canada" and t1.năm = 2016
select count ( * ) from lễ cưới where năm = 2016
select t3.tên from lễ cưới as t1 join cá_nhân as t2 on t1.id nam = t2.id cá_nhân join nhà_thờ as t3 on t1.id nhà_thờ = t3.id nhà_thờ where t2.tuổi > 30
select quốc_gia , count ( * ) from cá_nhân group by quốc_gia
select count ( * ) from nhà_thờ as t1 join lễ cưới as t2 on t1.id nhà_thờ = t2.id nhà_thờ where t2.năm = 2016
select count ( * ) from giảng_viên
select count ( * ) from giảng_viên
select distinct ngạch from giảng_viên
select distinct ngạch from giảng_viên
select distinct toà nhà from giảng_viên where toà nhà like "% KLG %"
select toà nhà from giảng_viên where toà nhà like "%office%"
select tên , họ , ngạch from giảng_viên
select tên , họ , ngạch from giảng_viên
select tên , họ , số điện_thoại from giảng_viên where giới_tính = "F"
select tên , họ , số điện_thoại from giảng_viên where giới_tính = "F"
select id giảng_viên from giảng_viên where giới_tính = "M"
select id giảng_viên from giảng_viên where giới_tính = "M"
select count ( * ) from giảng_viên where giới_tính = "F" and ngạch = "Professor"
select count ( * ) from giảng_viên where giới_tính = "F" and ngạch = "Professor"
select số điện_thoại , số phòng , toà nhà from giảng_viên where tên = "Prince" and họ = "Jerry"
select số phòng , toà nhà from giảng_viên where tên = "Prince" and họ = "Jerry"
select count ( * ) from giảng_viên where toà nhà = "NEB" and ngạch = "Professor"
select count ( * ) from giảng_viên where ngạch = "Professor" and toà nhà = "NEB"
select tên , họ from giảng_viên
select tên , họ from giảng_viên
select toà nhà , count ( * ) from giảng_viên group by toà nhà
select toà nhà , count ( * ) from giảng_viên group by toà nhà
select toà nhà from giảng_viên group by toà nhà order by count ( * ) desc limit 1
select toà nhà from giảng_viên group by toà nhà order by count ( * ) desc limit 1
select toà nhà from giảng_viên group by toà nhà having count ( * ) >= 10
select toà nhà from giảng_viên where ngạch = "Professor" group by toà nhà having count ( * ) >= 10
select ngạch , count ( * ) from giảng_viên group by ngạch
select ngạch , giới_tính , count ( * ) from giảng_viên group by ngạch , giới_tính
select ngạch , giới_tính , count ( * ) from giảng_viên group by ngạch , giới_tính
select ngạch , giới_tính , count ( * ) from giảng_viên group by ngạch , giới_tính
select ngạch from giảng_viên group by ngạch order by count ( * ) asc limit 1
select ngạch from giảng_viên group by ngạch order by count ( * ) asc limit 1
select giới_tính , count ( * ) from giảng_viên where ngạch = "AssocProf" group by giới_tính
select giới_tính , count ( * ) from giảng_viên where ngạch = "AsstProf" group by giới_tính
select t1.tên , t1.họ from giảng_viên as t1 join sinh_viên as t2 on t1.id giảng_viên = t2.cố_vấn where t2.tên = "Linda" and t2.họ = "Smith"
select t2.họ , t2.tên from giảng_viên as t1 join sinh_viên as t2 on t1.id giảng_viên = t2.cố_vấn where t2.họ = "Smith" and t2.tên = "Linda"
select t1.id sinh_viên from sinh_viên as t1 join giảng_viên as t2 on t1.cố_vấn = t2.id giảng_viên where t2.ngạch = "Professor"
select t1.id sinh_viên from sinh_viên as t1 join giảng_viên as t2 on t1.cố_vấn = t2.id giảng_viên where t2.ngạch = "Professor"
select t1.tên , t1.họ from sinh_viên as t1 join giảng_viên as t2 on t1.cố_vấn = t2.id giảng_viên where t2.tên = "Michael" and t2.họ = "Goodrich"
select t1.tên , t1.họ from sinh_viên as t1 join giảng_viên as t2 on t1.cố_vấn = t2.id giảng_viên where t2.tên = "Michael" and t2.họ = "Goodrich"
select t1.id giảng_viên , count ( * ) from giảng_viên as t1 join sinh_viên as t2 on t1.id giảng_viên = t2.cố_vấn group by t1.id giảng_viên
select t1.id giảng_viên , count ( * ) from giảng_viên as t1 join sinh_viên as t2 on t1.id giảng_viên = t2.cố_vấn group by t1.id giảng_viên
select t1.ngạch , count ( * ) from giảng_viên as t1 join sinh_viên as t2 on t1.id giảng_viên = t2.cố_vấn group by t1.ngạch
select t1.ngạch , count ( * ) from giảng_viên as t1 join sinh_viên as t2 on t1.id giảng_viên = t2.cố_vấn group by t1.ngạch
select t1.tên , t1.họ from giảng_viên as t1 join sinh_viên as t2 on t1.id giảng_viên = t2.cố_vấn group by t1.id giảng_viên order by count ( * ) desc limit 1
select t1.tên , t1.họ from giảng_viên as t1 join sinh_viên as t2 on t1.id giảng_viên = t2.cố_vấn group by t1.id giảng_viên order by count ( * ) desc limit 1
select t1.id giảng_viên from giảng_viên as t1 join sinh_viên as t2 on t1.id giảng_viên = t2.cố_vấn group by t1.id giảng_viên having count ( * ) >= 2
select t1.id giảng_viên from giảng_viên as t1 join sinh_viên as t2 on t1.id giảng_viên = t2.cố_vấn group by t1.id giảng_viên having count ( * ) >= 2
select id giảng_viên from giảng_viên except select cố_vấn from sinh_viên
select id giảng_viên from giảng_viên except select cố_vấn from sinh_viên
select tên hoạt_động from hoạt_động
select tên hoạt_động from hoạt_động
select count ( * ) from hoạt_động
select count ( * ) from hoạt_động
select count ( distinct id giảng_viên ) from giảng_viên tham_gia vào
select count ( distinct id giảng_viên ) from giảng_viên tham_gia vào
select id giảng_viên from giảng_viên except select id giảng_viên from giảng_viên tham_gia vào
select id giảng_viên from giảng_viên except select id giảng_viên from giảng_viên tham_gia vào
select id giảng_viên from giảng_viên tham_gia vào intersect select cố_vấn from sinh_viên
select id giảng_viên from giảng_viên tham_gia vào except select cố_vấn from sinh_viên
select count ( * ) from giảng_viên as t1 join giảng_viên tham_gia vào as t2 on t1.id giảng_viên = t2.id giảng_viên join hoạt_động as t3 on t2.id hoạt_động = t2.id hoạt_động where t1.tên = "Mark" and t1.họ = "Giuliano"
select count ( * ) from giảng_viên as t1 join giảng_viên tham_gia vào as t2 on t1.id giảng_viên = t2.id giảng_viên where t1.tên = "Mark" and t1.họ = "Giuliano"
select t3.tên hoạt_động from giảng_viên as t1 join giảng_viên tham_gia vào as t2 on t1.id giảng_viên = t2.id giảng_viên join hoạt_động as t3 on t2.id hoạt_động = t3.id hoạt_động where t1.tên = "Mark" and t1.họ = "Giuliano"
select t1.tên hoạt_động from giảng_viên as t2 join giảng_viên tham_gia vào as t3 on t2.id giảng_viên = t3.id giảng_viên join hoạt_động as t1 on t1.id hoạt_động = t3.id hoạt_động where t2.tên = "Mark" and t2.họ = "Giuliano"
select t1.tên , t1.họ , count ( * ) , t1.id giảng_viên from giảng_viên as t1 join giảng_viên tham_gia vào as t2 on t1.id giảng_viên = t2.id giảng_viên group by t1.id giảng_viên
select t1.tên , t1.họ , count ( * ) , t1.id giảng_viên from giảng_viên as t1 join giảng_viên tham_gia vào as t2 on t1.id giảng_viên = t2.id giảng_viên group by t1.id giảng_viên
select t1.tên hoạt_động , count ( * ) from hoạt_động as t1 join giảng_viên tham_gia vào as t2 on t1.id hoạt_động = t2.id hoạt_động group by t1.id hoạt_động
select t1.tên hoạt_động , count ( * ) from hoạt_động as t1 join giảng_viên tham_gia vào as t2 on t1.id hoạt_động = t2.id hoạt_động group by t1.id hoạt_động
select t1.tên , t1.họ from giảng_viên as t1 join giảng_viên tham_gia vào as t2 on t1.id giảng_viên = t2.id giảng_viên group by t1.id giảng_viên order by count ( * ) desc limit 1
select t1.tên , t1.họ from giảng_viên as t1 join giảng_viên tham_gia vào as t2 on t1.id giảng_viên = t2.id giảng_viên group by t1.id giảng_viên order by count ( * ) desc limit 1
select t1.tên hoạt_động from hoạt_động as t1 join giảng_viên tham_gia vào as t2 on t1.id hoạt_động = t2.id hoạt_động group by t1.id hoạt_động order by count ( * ) desc limit 1
select t1.tên hoạt_động from hoạt_động as t1 join giảng_viên tham_gia vào as t2 on t1.id hoạt_động = t2.id hoạt_động group by t1.id hoạt_động order by count ( * ) desc limit 1
select id sinh_viên from sinh_viên except select id sinh_viên from tham_gia vào
select id sinh_viên from sinh_viên except select id sinh_viên from tham_gia vào
select id sinh_viên from tham_gia vào intersect select id sinh_viên from sinh_viên where tuổi < 20
select id sinh_viên from tham_gia vào intersect select id sinh_viên from sinh_viên where tuổi < 20
select t1.tên , t1.họ from sinh_viên as t1 join tham_gia vào as t2 on t1.id sinh_viên = t2.id sinh_viên group by t1.id sinh_viên order by count ( * ) desc limit 1
select t1.tên , t1.họ from sinh_viên as t1 join tham_gia vào as t2 on t1.id sinh_viên = t2.id sinh_viên group by t1.id sinh_viên order by count ( * ) desc limit 1
select t1.tên hoạt_động from hoạt_động as t1 join tham_gia vào as t2 on t1.id hoạt_động = t2.id hoạt_động group by t1.id hoạt_động order by count ( * ) desc limit 1
select t1.tên hoạt_động from hoạt_động as t1 join tham_gia vào as t2 on t1.id hoạt_động = t2.id hoạt_động group by t1.id hoạt_động order by count ( * ) desc limit 1
select t1.tên from giảng_viên as t1 join giảng_viên tham_gia vào as t2 on t1.id giảng_viên = t2.id giảng_viên join hoạt_động as t3 on t2.id hoạt_động = t2.id hoạt_động where t3.tên hoạt_động = "Canoeing" or t3.tên hoạt_động = "Kayaking"
select t1.tên from giảng_viên as t1 join giảng_viên tham_gia vào as t2 on t1.id giảng_viên = t2.id giảng_viên join hoạt_động as t3 on t2.id hoạt_động = t2.id hoạt_động where t3.tên hoạt_động = "Canoeing" or t3.tên hoạt_động = "Kayaking"
select họ from giảng_viên where ngạch = "Professor" except select distinct t1.họ from giảng_viên as t1 join giảng_viên tham_gia vào as t2 on t1.id giảng_viên = t2.id giảng_viên join hoạt_động as t3 on t2.id hoạt_động = t2.id hoạt_động where t3.tên hoạt_động = "Canoeing" or t3.tên hoạt_động = "Kayaking"
select t1.tên from giảng_viên as t1 join giảng_viên tham_gia vào as t2 on t1.id giảng_viên = t2.id giảng_viên join hoạt_động as t3 on t2.id hoạt_động = t2.id hoạt_động where t3.tên hoạt_động = "Canoeing" or t3.tên hoạt_động = "Kayaking"
select t1.tên from giảng_viên as t1 join giảng_viên tham_gia vào as t2 on t1.id giảng_viên = t2.id giảng_viên join hoạt_động as t3 on t2.id hoạt_động = t2.id hoạt_động where t3.tên hoạt_động = "Canoeing" intersect select t1.tên from giảng_viên as t1 join giảng_viên tham_gia vào as t2 on t1.id giảng_viên = t2.id giảng_viên join hoạt_động as t3 on t2.id hoạt_động = t2.id hoạt_động where t3.tên hoạt_động = "Kayaking"
select t1.tên from giảng_viên as t1 join giảng_viên tham_gia vào as t2 on t1.id giảng_viên = t2.id giảng_viên join hoạt_động as t3 on t2.id hoạt_động = t2.id hoạt_động where t3.tên hoạt_động = "Canoeing" intersect select t1.tên from giảng_viên as t1 join giảng_viên tham_gia vào as t2 on t1.id giảng_viên = t2.id giảng_viên join hoạt_động as t3 on t2.id hoạt_động = t2.id hoạt_động where t3.tên hoạt_động = "Kayaking"
select t1.id sinh_viên from tham_gia vào as t1 join hoạt_động as t2 on t1.id hoạt_động = t2.id hoạt_động where t2.tên hoạt_động = "Canoeing" intersect select t1.id sinh_viên from tham_gia vào as t1 join hoạt_động as t2 on t1.id hoạt_động = t2.id hoạt_động where t2.tên hoạt_động = "Kayaking"
select t1.id sinh_viên from tham_gia vào as t1 join hoạt_động as t2 on t1.id hoạt_động = t2.id hoạt_động where t2.tên hoạt_động = "Canoeing" intersect select t1.id sinh_viên from tham_gia vào as t1 join hoạt_động as t2 on t1.id hoạt_động = t2.id hoạt_động where t2.tên hoạt_động = "Kayaking"
select count ( * ) from người luyện thể_hình
select tổng from người luyện thể_hình order by tổng asc
select cử giật , cử đẩy from người luyện thể_hình order by cử giật
select avg ( cử giật ) from người luyện thể_hình
select cử đẩy from người luyện thể_hình order by tổng desc limit 1
select ngày_sinh from cá_nhân order by chiều cao asc
select t2.tên from người luyện thể_hình as t1 join cá_nhân as t2 on t1.id cá_nhân = t2.id cá_nhân
select t2.tên from người luyện thể_hình as t1 join cá_nhân as t2 on t1.id cá_nhân = t2.id cá_nhân where t1.tổng > 300
select t2.tên from người luyện thể_hình as t1 join cá_nhân as t2 on t1.id cá_nhân = t2.id cá_nhân order by t2.cân nặng desc limit 1
select t1.ngày_sinh , t1.nơi sinh from cá_nhân as t1 join người luyện thể_hình as t2 on t1.id cá_nhân = t2.id cá_nhân order by t2.tổng desc limit 1
select t2.chiều cao from người luyện thể_hình as t1 join cá_nhân as t2 on t1.id cá_nhân = t2.id cá_nhân where t1.tổng < 315
select avg ( t1.tổng ) from người luyện thể_hình as t1 join cá_nhân as t2 on t1.id cá_nhân = t2.id cá_nhân where t2.chiều cao > 200
select t2.tên from người luyện thể_hình as t1 join cá_nhân as t2 on t1.id cá_nhân = t2.id cá_nhân order by t1.tổng desc
select nơi sinh , count ( * ) from cá_nhân group by nơi sinh
select nơi sinh from cá_nhân group by nơi sinh order by count ( * ) desc limit 1
select nơi sinh from cá_nhân group by nơi sinh having count ( * ) >= 2
select chiều cao , cân nặng from cá_nhân as t1 join người luyện thể_hình as t2 on t1.id cá_nhân = t2.id cá_nhân order by chiều cao desc
select * from người luyện thể_hình
select
select count ( distinct nơi sinh ) from cá_nhân
select count ( * ) from cá_nhân where id cá_nhân not in ( select id cá_nhân from người luyện thể_hình )
select
select t2.tổng from cá_nhân as t1 join người luyện thể_hình as t2 on t1.id cá_nhân = t2.id cá_nhân where t1.ngày_sinh like "1%"
select min ( cử giật ) from người luyện thể_hình
select count ( * ) from ứng_cử_viên
select count ( * ) from ứng_cử_viên
select nguồn thăm_dò ý_kiến from ứng_cử_viên group by nguồn thăm_dò ý_kiến order by count ( * ) desc limit 1
select nguồn thăm_dò ý_kiến from ứng_cử_viên group by nguồn thăm_dò ý_kiến order by count ( * ) desc limit 1
select tỷ_lệ ủng_hộ from ứng_cử_viên order by tỷ_lệ ủng_hộ desc limit 3
select tỷ_lệ ủng_hộ from ứng_cử_viên order by tỷ_lệ ủng_hộ desc limit 3
select id ứng_cử_viên from ứng_cử_viên order by tỷ_lệ phản_đối limit 1
select
select tỷ_lệ ủng_hộ , tỷ_lệ xem_xét , tỷ_lệ phản_đối from ứng_cử_viên order by tỷ_lệ không chắc_chắn asc
select tỷ_lệ ủng_hộ , tỷ_lệ xem_xét , tỷ_lệ phản_đối from ứng_cử_viên order by tỷ_lệ không chắc_chắn asc
select nguồn thăm_dò ý_kiến from ứng_cử_viên order by tỷ_lệ phản_đối desc limit 1
select nguồn thăm_dò ý_kiến from ứng_cử_viên order by tỷ_lệ phản_đối desc limit 1
select tên from cá_nhân order by ngày_sinh
select tên from cá_nhân order by ngày_sinh
select avg ( chiều cao ) , avg ( cân nặng ) from cá_nhân where giới_tính = "M"
select avg ( chiều cao ) , avg ( cân nặng ) from cá_nhân where giới_tính = "Male"
select tên from cá_nhân where chiều cao > 200 or chiều cao < 190
select tên from cá_nhân where chiều cao > 200 or chiều cao < 190
select avg ( cân nặng ) , min ( cân nặng ) , giới_tính from cá_nhân group by giới_tính
select avg ( cân nặng ) , min ( cân nặng ) , giới_tính from cá_nhân group by giới_tính
select t1.tên , t1.giới_tính from cá_nhân as t1 join ứng_cử_viên as t2 on t1.id cá_nhân = t2.id cá_nhân order by t2.tỷ_lệ ủng_hộ desc limit 1
select t1.tên , t1.giới_tính from cá_nhân as t1 join ứng_cử_viên as t2 on t1.id cá_nhân = t2.id cá_nhân order by t2.tỷ_lệ ủng_hộ desc limit 1
select t1.tên , t1.giới_tính , min ( t2.tỷ_lệ phản_đối ) from cá_nhân as t1 join ứng_cử_viên as t2 on t1.id cá_nhân = t2.id cá_nhân group by t1.giới_tính
select t1.tên , t1.giới_tính from cá_nhân as t1 join ứng_cử_viên as t2 on t1.id cá_nhân = t2.id cá_nhân group by t1.giới_tính order by min ( t2.tỷ_lệ phản_đối )
select giới_tính , avg ( tỷ_lệ không chắc_chắn ) from ứng_cử_viên group by giới_tính
select t2.giới_tính from ứng_cử_viên as t1 join cá_nhân as t2 on t1.id cá_nhân = t2.id cá_nhân group by t2.giới_tính order by avg ( t1.tỷ_lệ không chắc_chắn ) desc limit 1
select tên from cá_nhân where id cá_nhân not in ( select id cá_nhân from ứng_cử_viên )
select tên from cá_nhân where id cá_nhân not in ( select id cá_nhân from ứng_cử_viên )
select t1.tên from cá_nhân as t1 join ứng_cử_viên as t2 on t1.id cá_nhân = t2.id cá_nhân where t2.tỷ_lệ ủng_hộ < t2.tỷ_lệ phản_đối
select t1.tên from cá_nhân as t1 join ứng_cử_viên as t2 on t1.id cá_nhân = t2.id cá_nhân where t2.tỷ_lệ ủng_hộ < t2.tỷ_lệ phản_đối
select count ( * ) , giới_tính from cá_nhân where cân nặng > 85 group by giới_tính
select count ( * ) , giới_tính from cá_nhân where cân nặng > 85 group by giới_tính
select max ( tỷ_lệ ủng_hộ ) , min ( tỷ_lệ xem_xét ) , min ( tỷ_lệ phản_đối ) from ứng_cử_viên
select max ( tỷ_lệ ủng_hộ ) , min ( tỷ_lệ xem_xét ) , min ( tỷ_lệ phản_đối ) from ứng_cử_viên
select tên from cá_nhân where giới_tính = "F" order by tên
select t1.tên from cá_nhân as t1 join ứng_cử_viên as t2 on t1.id cá_nhân = t2.id cá_nhân where t1.giới_tính = "Female" order by t1.tên
select tên from cá_nhân where chiều cao < ( select avg ( chiều cao ) from cá_nhân )
select tên from cá_nhân where chiều cao < ( select avg ( chiều cao ) from cá_nhân )
select * from cá_nhân
select * from cá_nhân
select t1.id thành_phố from thành_phố as t1 join thành_phố chủ nhà as t2 on t1.id thành_phố = t2.thành_phố chủ nhà order by t2.năm desc limit 1
select id thành_phố from thành_phố chủ nhà order by năm desc limit 1
select id trận đấu from trận đấu where giải đấu = "1994 FIFA World Cup qualification"
select id trận đấu from trận đấu where giải đấu = "1994 FIFA World Cup qualification"
select distinct t3.thành_phố chủ nhà from trận đấu as t1 join thành_phố chủ nhà as t2 on t1.id trận đấu = t2.id trận đấu join thành_phố as t3 on t1.id thành_phố chủ nhà = t3.id thành_phố chủ nhà where t2.năm > 2010
select t3.thành_phố chủ nhà from trận đấu as t1 join thành_phố chủ nhà as t2 on t1.id trận đấu = t2.id trận đấu join thành_phố as t3 on t3.id thành_phố = t2.thành_phố chủ nhà where t1.năm > 2010
select t3.thành_phố from trận đấu as t1 join thành_phố chủ nhà as t2 on t1.id trận đấu = t2.id trận đấu join thành_phố as t3 on t3.id thành_phố = t2.thành_phố chủ nhà group by t3.thành_phố order by count ( * ) desc limit 1
select t2.thành_phố from trận đấu as t1 join thành_phố as t2 on t1.id trận đấu = t2.id thành_phố group by t2.thành_phố order by count ( * ) desc limit 1
select t3.địa_điểm from trận đấu as t1 join giải đấu as t2 on t1.giải đấu = t2.id trận đấu join thành_phố chủ nhà as t3 on t1.id trận đấu = t3.id trận đấu where t2.giải đấu = "1994 FIFA World Cup qualification" and t3.thành_phố chủ nhà = "Nam_Kinh(Giang_Tô)"
select t3.địa_điểm from thành_phố as t2 join thành_phố chủ nhà as t1 on t2.id thành_phố = t1.thành_phố chủ nhà join trận đấu as t3 on t3.id trận đấu = t1.id trận đấu where t2.thành_phố = "Seoul" and t3.giải đấu = "1994 FIFA World Cup qualification"
select t1.tháng một from nhiệt_độ as t1 join thành_phố as t2 on t1.id thành_phố = t2.id thành_phố where t2.thành_phố = "Macau"
select t2.tháng_một from thành_phố as t1 join nhiệt_độ as t2 on t1.id thành_phố = t2.id thành_phố where t1.thành_phố = "Shanghai"
select t1.năm from thành_phố chủ nhà as t1 join thành_phố as t2 on t1.thành_phố chủ nhà = t2.id thành_phố where t2.thành_phố = "Shanghai(Shanghai)"
select t2.năm from thành_phố as t1 join thành_phố chủ nhà as t2 on t1.id thành_phố = t2.thành_phố chủ nhà where t1.thành_phố = "Taizhou(Zhejiang)"
select thành_phố from thành_phố order by dân_số khu_vực desc limit 3
select thành_phố from thành_phố order by dân_số khu_vực desc limit 3
select thành_phố , gdp from thành_phố order by gdp limit 1
select thành_phố , gdp from thành_phố order by gdp limit 1
select t1.thành_phố from thành_phố as t1 join nhiệt_độ as t2 on t1.id thành_phố = t2.id thành_phố order by t2.tháng hai desc limit 1
select t1.thành_phố from thành_phố as t1 join nhiệt_độ as t2 on t1.id thành_phố = t2.id thành_phố order by t2.tháng hai desc limit 1
select t1.thành_phố from thành_phố as t1 join nhiệt_độ as t2 on t1.id thành_phố = t2.id thành_phố where t2.tháng ba < t2.tháng sáu or t2.tháng ba > t2.tháng 10
select t1.thành_phố from thành_phố as t1 join nhiệt_độ as t2 on t1.id thành_phố = t2.id thành_phố where t2.tháng ba < t2.tháng sáu or t2.tháng ba > t2.tháng 10
select t1.thành_phố from thành_phố as t1 join nhiệt_độ as t2 on t1.id thành_phố = t2.id thành_phố where t2.tháng ba < t2.tháng sáu intersect select t3.thành_phố from thành_phố as t3 join thành_phố chủ nhà as t4 on t3.id thành_phố = t4.thành_phố chủ nhà
select distinct t1.thành_phố from thành_phố as t1 join nhiệt_độ as t2 on t1.id thành_phố = t2.id thành_phố where t2.tháng ba < t2.tháng sáu intersect select distinct t3.thành_phố from thành_phố as t3 join thành_phố chủ nhà as t4 on t3.id thành_phố = t4.thành_phố chủ nhà
select distinct t1.thành_phố from thành_phố as t1 join nhiệt_độ as t2 on t1.id thành_phố = t2.id thành_phố where t2.tháng ba < t2.tháng mười hai except select distinct t3.thành_phố from thành_phố as t3 join thành_phố chủ nhà as t4 on t3.id thành_phố = t4.thành_phố chủ nhà
select t1.thành_phố from thành_phố as t1 join nhiệt_độ as t2 on t1.id thành_phố = t2.id thành_phố where t2.tháng ba < t2.tháng mười hai except select t3.thành_phố from thành_phố as t3 join thành_phố chủ nhà as t4 on t3.id thành_phố = t4.thành_phố chủ nhà
select t1.thành_phố from thành_phố as t1 join nhiệt_độ as t2 on t1.id thành_phố = t2.id thành_phố where t2.tháng hai > t2.tháng sáu union select t3.thành_phố from thành_phố as t3 join thành_phố chủ nhà as t4 on t3.id thành_phố = t4.thành_phố chủ nhà
select t1.thành_phố from thành_phố as t1 join nhiệt_độ as t2 on t1.id thành_phố = t2.id thành_phố where t2.tháng hai > t2.tháng sáu union select t3.thành_phố from thành_phố as t3 join thành_phố chủ nhà as t4 on t3.id thành_phố = t4.thành_phố chủ nhà
select thành_phố from thành_phố where dân_số khu_vực > 10000000
select thành_phố from thành_phố where dân_số khu_vực > 10000000
select thành_phố from thành_phố where dân_số khu_vực > 8000000 or dân_số khu_vực < 5000000
select thành_phố from thành_phố where dân_số khu_vực > 8000000 or dân_số khu_vực < 5000000
select t1.thành_phố from thành_phố as t1 join thành_phố chủ nhà as t2 on t1.id thành_phố = t2.thành_phố chủ nhà group by t2.thành_phố chủ nhà order by count ( * ) desc limit 1
select count ( * ) , giải đấu from trận đấu group by giải đấu
select địa_điểm from trận đấu order by ngày desc
select địa_điểm from trận đấu order by ngày desc
select gdp from thành_phố order by dân_số khu_vực desc limit 1
select gdp from thành_phố order by dân_số khu_vực desc limit 1
select t1.gdp , t1.dân_số khu_vực from thành_phố as t1 join thành_phố chủ nhà as t2 on t1.id thành_phố = t2.thành_phố chủ nhà group by t2.thành_phố chủ nhà having count ( * ) > 1
select t1.gdp , t1.dân_số khu_vực from thành_phố as t1 join thành_phố chủ nhà as t2 on t1.id thành_phố = t2.thành_phố chủ nhà group by t2.thành_phố chủ nhà having count ( * ) > 1
select count ( * ) from giáo_sư as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa where tên khoa = "Accounting"
select count ( * ) from giáo_sư as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa where tên khoa = "Accounting"
select count ( distinct mã_số nhân_viên của giáo_sư ) from lớp_học where mã khoá học = "ACCT-211"
select count ( distinct mã_số nhân_viên của giáo_sư ) from lớp_học where mã khoá học = "ACCT-211"
select t3.tên của nhân_viên , t3.họ của nhân_viên from giáo_sư as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa join nhân_viên as t3 on t1.mã số nhân_viên = t3.mã số nhân_viên where tên khoa = "Biology"
select t3.tên của nhân_viên , t3.họ của nhân_viên from giáo_sư as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa join nhân_viên as t3 on t1.mã số nhân_viên = t3.mã số nhân_viên where tên khoa = "Biology"
select t2.tên của nhân_viên , t2.ngày_sinh của nhân_viên from lớp_học as t1 join nhân_viên as t2 on t1.mã khoá học = t2.mã khoa where t1.lớp_học phần = "Fall" and t1.năm = 2016
select t2.tên của nhân_viên , t2.ngày_sinh của nhân_viên from lớp_học as t1 join nhân_viên as t2 on t1.mã khoá học = t2.mã khoa where t1.mã khoá học = "ACCT-211"
select count ( * ) from lớp_học as t1 join nhân_viên as t2 on t1.mã_số nhân_viên của giáo_sư = t2.mã số nhân_viên where t2.họ của nhân_viên = "Graztevski"
select count ( * ) from lớp_học as t1 join nhân_viên as t2 on t1.mã_số nhân_viên của giáo_sư = t2.mã số nhân_viên where t2.họ của nhân_viên = "Graztevski"
select mã_trường from khoa where tên khoa = "Accounting"
select mã_trường from khoa where tên khoa = "Accounting"
select mô_tả về khoá học , số_lượng tín_chỉ của khoá học from khoá học where mã khoá học = "CIS-220"
select mô_tả về khoá học , số_lượng tín_chỉ của khoá học from khoá học where mã khoá học = "CIS-220"
select địa_chỉ khoa from khoa where tên khoa = "History"
select địa_chỉ khoa from khoa where tên khoa = "History"
select count ( distinct địa_chỉ khoa ) from khoa where mã_trường = "BUS"
select count ( distinct địa_chỉ khoa ) from khoa where mã_trường = "BUS"
select count ( distinct địa_chỉ khoa ) from khoa
select count ( distinct địa_chỉ khoa ) , mã_trường from khoa group by mã_trường
select mô_tả về khoá học , số_lượng tín_chỉ của khoá học from khoá học where mã khoá học = "QM-261"
select mô_tả về khoá học , số_lượng tín_chỉ của khoá học from khoá học where mã khoá học = "QM-261"
select count ( distinct tên khoa ) , mã_trường from khoa group by mã_trường
select count ( distinct tên khoa ) , mã_trường from khoa group by mã_trường
select count ( distinct tên khoa ) , mã_trường from khoa group by mã_trường having count ( distinct tên khoa ) < 5
select count ( distinct tên khoa ) , mã_trường from khoa group by mã_trường having count ( distinct tên khoa ) < 5
select count ( * ) , mã khoá học from lớp_học group by mã khoá học
select count ( * ) , mã khoá học from lớp_học group by mã khoá học
select sum ( số_lượng tín_chỉ của khoá học ) , mã khoa from khoá học group by mã khoa
select sum ( số_lượng tín_chỉ của khoá học ) , mã khoa from khoá học group by mã khoa
select count ( * ) , phòng học from lớp_học group by phòng học having count ( * ) >= 2
select count ( * ) , phòng học from lớp_học group by phòng học having count ( * ) >= 2
select count ( * ) , mã khoa from lớp_học as t1 join khoá học as t2 on t1.mã khoá học = t2.mã khoá học group by mã khoa
select count ( * ) , t1.mã khoa from lớp_học as t1 join khoá học as t2 on t1.mã khoá học = t2.mã khoá học group by t1.mã khoa
select count ( * ) , t1.mã_trường from khoa as t1 join lớp_học as t2 on t1.mã khoa = t2.mã khoa group by t1.mã_trường
select count ( * ) , t1.mã_trường from khoa as t1 join lớp_học as t2 on t1.mã khoa = t2.mã khoa group by t1.mã_trường
select count ( * ) , t1.mã_trường from khoa as t1 join giáo_sư as t2 on t1.mã khoa = t2.mã khoa group by t1.mã_trường
select count ( * ) , mã_trường from khoa as t1 join giáo_sư as t2 on t1.mã khoa = t2.mã khoa group by mã_trường
select mã công_việc của nhân_viên , count ( * ) from nhân_viên group by mã công_việc của nhân_viên order by count ( * ) desc limit 1
select mã công_việc của nhân_viên , count ( * ) from nhân_viên group by mã công_việc của nhân_viên order by count ( * ) desc limit 1
select t1.mã_trường from khoa as t1 join giáo_sư as t2 on t1.mã khoa = t2.mã khoa group by t1.mã_trường order by count ( * ) limit 1
select t2.mã_trường from giáo_sư as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa group by t2.mã_trường order by count ( * ) limit 1
select count ( * ) , mã khoa from giáo_sư where bằng_cấp cao nhất = "Ph.D." group by mã khoa
select count ( * ) , mã khoa from giáo_sư where bằng_cấp cao nhất = "Ph.D." group by mã khoa
select count ( * ) , mã khoa from sinh_viên group by mã khoa
select count ( * ) , mã khoa from sinh_viên group by mã khoa
select sum ( giờ học của sinh_viên ) , mã khoa from sinh_viên group by mã khoa
select sum ( giờ học của sinh_viên ) , mã khoa from sinh_viên group by mã khoa
select avg ( gpa của sinh_viên ) , max ( gpa của sinh_viên ) , min ( gpa của sinh_viên ) , mã khoa from sinh_viên group by mã khoa
select max ( gpa của sinh_viên ) , avg ( gpa của sinh_viên ) , min ( gpa của sinh_viên ) , mã khoa from sinh_viên group by mã khoa
select t2.tên của sinh_viên , avg ( t1.gpa của sinh_viên ) from sinh_viên as t1 join lớp_học as t2 on t1.mã lớp = t2.mã lớp_học where t1.gpa của sinh_viên = ( select avg ( gpa của sinh_viên ) from sinh_viên ) group by t2.tên của sinh_viên order by avg ( t1.gpa của sinh_viên ) desc limit 1
select t4.mã khoa , avg ( t1.gpa của sinh_viên ) from sinh_viên as t1 join đăng_ký khoá học as t2 on t1.mã_số sinh_viên = t2.mã_số sinh_viên join lớp_học as t3 on t2.mã lớp = t3.mã lớp_học join khoa as t4 on t4.mã khoa = t3.mã khoa group by t4.mã khoa order by avg ( t1.gpa của sinh_viên ) desc limit 1
select count ( distinct mã_trường ) from khoa
select count ( distinct mã_trường ) from khoa
select count ( distinct mã lớp_học ) from lớp_học
select count ( distinct mã lớp_học ) from lớp_học
select count ( distinct mô_tả về khoá học ) from khoá học
select count ( distinct mã khoá học ) from lớp_học
select count ( distinct tên khoa ) from khoa
select count ( distinct tên khoa ) from khoa
select count ( * ) from khoá học as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa where t2.tên khoa = "Computer Info. Systems"
select count ( * ) from khoa as t1 join khoá học as t2 on t1.mã khoa = t2.mã khoa where tên khoa = "Computer Information Systems"
select count ( distinct lớp_học phần ) from lớp_học where mã khoá học = "ACCT-211"
select count ( distinct lớp_học phần ) from lớp_học where mã khoá học = "ACCT-211"
select sum ( số_lượng tín_chỉ của khoá học ) , mã khoa from khoá học group by mã khoa
select sum ( t2.số_lượng tín_chỉ của khoá học ) , t1.tên khoa from khoa as t1 join khoá học as t2 on t1.mã khoa = t2.mã khoa group by t1.tên khoa
select t2.tên khoa from khoá học as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa group by t1.mã khoa order by sum ( t1.số_lượng tín_chỉ của khoá học ) desc limit 1
select t2.tên khoa from khoá học as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa group by t1.mã khoa order by sum ( t1.số_lượng tín_chỉ của khoá học ) desc limit 1
select count ( distinct mã_số sinh_viên ) from đăng_ký khoá học as t1 join khoá học as t2 on t1.mã khoá học = t2.mã khoá học where t2.mã khoa = "ACCT" and t2.mã khoá học = "211"
select count ( * ) from lớp_học as t1 join đăng_ký khoá học as t2 on t1.mã lớp_học = t2.mã lớp where t1.mã khoá học = "ACCT-211"
select t1.tên của sinh_viên from sinh_viên as t1 join đăng_ký khoá học as t2 on t1.mã_số sinh_viên = t2.mã_số sinh_viên where t2.mã khoá học = "ACCT-211"
select t1.tên của sinh_viên from sinh_viên as t1 join đăng_ký khoá học as t2 on t1.mã_số sinh_viên = t2.mã_số sinh_viên join khoá học as t3 on t2.mã khoá học = t3.mã khoá học where t3.mã khoá học = "ACCT-211"
select t1.tên của sinh_viên from sinh_viên as t1 join đăng_ký khoá học as t2 on t1.mã_số sinh_viên = t2.mã_số sinh_viên where t2.mã lớp = "ACCT-211" and t2.điểm_số = "C"
select t1.tên của sinh_viên from sinh_viên as t1 join đăng_ký khoá học as t2 on t1.mã_số sinh_viên = t2.mã_số sinh_viên where t2.điểm_số = "C" and t2.mã lớp = "ACCT-211"
select count ( * ) from nhân_viên
select count ( * ) from nhân_viên
select count ( * ) from giáo_sư where bằng_cấp cao nhất = "Ph.D."
select count ( * ) from giáo_sư where bằng_cấp cao nhất = "Ph.D."
select count ( * ) from lớp_học as t1 join đăng_ký khoá học as t2 on t1.mã lớp_học = t2.mã lớp join khoá học as t3 on t1.mã khoá học = t3.mã khoá học join khoa as t4 on t3.mã khoa = t4.mã khoa where t4.tên khoa = "Accounting"
select count ( * ) from lớp_học as t1 join đăng_ký khoá học as t2 on t1.mã lớp_học = t2.mã lớp join khoá học as t3 on t1.mã khoá học = t3.mã khoá học join khoa as t4 on t3.mã khoa = t4.mã khoa where t4.tên khoa = "Accounting"
select t2.tên khoa from sinh_viên as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa group by t1.mã khoa order by count ( * ) desc limit 1
select t2.tên khoa from sinh_viên as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa group by t1.mã khoa order by count ( * ) desc limit 1
select tên khoa from khoa order by tên khoa asc
select tên khoa from khoa order by tên khoa
select mã khoá học from lớp_học where phòng học = "KLR 209"
select mã khoá học from lớp_học where phòng học = "KLR 209"
select tên của nhân_viên from nhân_viên where mã công_việc của nhân_viên = "Professor" order by ngày_sinh của nhân_viên
select tên của nhân_viên from nhân_viên where mã công_việc của nhân_viên = "Professor" order by ngày_sinh của nhân_viên
select t2.tên của nhân_viên , t1.văn_phòng giáo_sư from giáo_sư as t1 join nhân_viên as t2 on t1.mã số nhân_viên = t2.mã số nhân_viên order by t2.tên của nhân_viên
select t2.tên của nhân_viên , t1.văn_phòng giáo_sư from giáo_sư as t1 join nhân_viên as t2 on t1.mã số nhân_viên = t2.mã số nhân_viên order by t2.tên của nhân_viên
select tên của nhân_viên , họ của nhân_viên from nhân_viên order by ngày_sinh của nhân_viên limit 1
select tên của nhân_viên , họ của nhân_viên from nhân_viên order by ngày_sinh của nhân_viên limit 1
select tên của sinh_viên , họ của sinh_viên , gpa của sinh_viên from sinh_viên where gpa của sinh_viên > 3 order by ngày_sinh của sinh_viên limit 1
select tên của sinh_viên , họ của sinh_viên , gpa của sinh_viên from sinh_viên where gpa của sinh_viên > 3 order by ngày_sinh của sinh_viên limit 1
select t1.tên của sinh_viên from sinh_viên as t1 join đăng_ký khoá học as t2 on t1.mã_số sinh_viên = t2.mã_số sinh_viên where t2.điểm_số = "C"
select distinct t1.tên của sinh_viên from sinh_viên as t1 join đăng_ký khoá học as t2 on t1.mã_số sinh_viên = t2.mã_số sinh_viên where t2.điểm_số = "C"
select t2.tên khoa from giáo_sư as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa group by t1.mã khoa order by count ( * ) asc limit 1
select t2.tên khoa from giáo_sư as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa group by t1.mã khoa order by count ( * ) asc limit 1
select t2.tên khoa from giáo_sư as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa where t1.bằng_cấp cao nhất = "Ph.D." group by t2.tên khoa order by count ( * ) desc limit 1
select t2.tên khoa from giáo_sư as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa where t1.bằng_cấp cao nhất = "Ph.D." group by t2.mã khoa order by count ( * ) desc limit 1
select tên của nhân_viên from nhân_viên where mã công_việc của nhân_viên = "PROF" except select t1.tên của nhân_viên from nhân_viên as t1 join lớp_học as t2 on t1.mã số nhân_viên = t2.mã_số nhân_viên của giáo_sư
select tên của nhân_viên from nhân_viên except select t1.tên của nhân_viên from nhân_viên as t1 join lớp_học as t2 on t1.mã số nhân_viên = t2.mã_số nhân_viên của giáo_sư
select t1.tên của nhân_viên from nhân_viên as t1 join giáo_sư as t2 on t1.mã số nhân_viên = t2.mã số nhân_viên join khoa as t3 on t2.mã khoa = t3.mã khoa where t3.tên khoa = "History" except select t4.tên của nhân_viên from nhân_viên as t4 join lớp_học as t5 on t4.mã số nhân_viên = t5.mã_số nhân_viên của giáo_sư
select t1.tên của nhân_viên from nhân_viên as t1 join giáo_sư as t2 on t1.mã số nhân_viên = t2.mã số nhân_viên join khoa as t3 on t2.mã khoa = t3.mã khoa where t3.tên khoa = "History" except select t4.tên của nhân_viên from nhân_viên as t4 join lớp_học as t5 on t4.mã số nhân_viên = t5.mã_số nhân_viên của giáo_sư
select t1.họ của nhân_viên , t2.văn_phòng giáo_sư from nhân_viên as t1 join giáo_sư as t2 on t1.mã số nhân_viên = t2.mã số nhân_viên join khoa as t3 on t2.mã khoa = t3.mã khoa where t3.tên khoa = "History"
select t1.họ của nhân_viên , t2.văn_phòng giáo_sư from nhân_viên as t1 join giáo_sư as t2 on t1.mã số nhân_viên = t2.mã số nhân_viên join khoa as t3 on t2.mã khoa = t3.mã khoa where t3.tên khoa = "History"
select t2.văn_phòng giáo_sư , t1.tên khoa from giáo_sư as t1 join nhân_viên as t2 on t1.mã số nhân_viên = t2.mã số nhân_viên where t2.họ của nhân_viên = "Heffington"
select t2.tên khoa , t1.văn_phòng giáo_sư from giáo_sư as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa where t1.họ của nhân_viên = "Heffington"
select t1.họ của nhân_viên , t1.ngày bắt_đầu công_việc của nhân_viên from nhân_viên as t1 join giáo_sư as t2 on t1.mã số nhân_viên = t2.mã số nhân_viên where t2.văn_phòng giáo_sư = "DRE 102"
select t1.họ của nhân_viên , t1.ngày bắt_đầu công_việc của nhân_viên from nhân_viên as t1 join giáo_sư as t2 on t1.mã số nhân_viên = t2.mã số nhân_viên where t2.văn_phòng giáo_sư = "DRE 102"
select t1.mã khoá học from lớp_học as t1 join đăng_ký khoá học as t2 on t1.mã lớp_học = t2.mã lớp join sinh_viên as t3 on t3.mã_số sinh_viên = t2.mã_số sinh_viên where t3.họ của sinh_viên = "Smithson"
select t1.mã lớp from đăng_ký khoá học as t1 join sinh_viên as t2 on t1.mã_số sinh_viên = t2.mã_số sinh_viên where t2.họ của sinh_viên = "Smithson"
select t4.mô_tả về khoá học , t4.số_lượng tín_chỉ của khoá học from lớp_học as t1 join đăng_ký khoá học as t2 on t1.mã lớp_học = t2.mã lớp join sinh_viên as t3 on t3.mã_số sinh_viên = t2.mã_số sinh_viên join khoá học as t4 on t4.mã khoá học = t1.mã khoá học where t3.họ của sinh_viên = "Smithson"
select t4.mô_tả về khoá học , t4.số_lượng tín_chỉ của khoá học from sinh_viên as t1 join đăng_ký khoá học as t2 on t1.mã_số sinh_viên = t2.mã_số sinh_viên join lớp_học as t3 on t2.mã lớp = t3.mã lớp_học join khoá học as t4 on t3.mã khoá học = t4.mã khoá học where t1.họ của sinh_viên = "Smithson"
select count ( * ) from giáo_sư where bằng_cấp cao nhất = "Ph.D." or bằng_cấp cao nhất = "MA"
select count ( * ) from giáo_sư where bằng_cấp cao nhất = "Ph.D." or bằng_cấp cao nhất = "MA"
select count ( * ) from giáo_sư as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa where t2.tên khoa = "Accounting" or t2.tên khoa = "Biology"
select count ( * ) from giáo_sư as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa where t2.tên khoa = "Accounting" or t2.tên khoa = "Biology"
select t1.tên của nhân_viên from nhân_viên as t1 join lớp_học as t2 on t1.mã số nhân_viên = t2.mã_số nhân_viên của giáo_sư where t2.mã khoá học = "CIS-220" intersect select t1.tên của nhân_viên from nhân_viên as t1 join lớp_học as t2 on t1.mã số nhân_viên = t2.mã_số nhân_viên của giáo_sư where t2.mã khoá học = "QM-261"
select distinct t2.tên của nhân_viên from lớp_học as t1 join nhân_viên as t2 on t1.mã khoá học = "CIS-220" intersect select distinct t2.tên của nhân_viên from lớp_học as t1 join nhân_viên as t2 on t1.mã khoá học = "QM-261"
select t1.tên của sinh_viên from sinh_viên as t1 join đăng_ký khoá học as t2 on t1.mã_số sinh_viên = t2.mã_số sinh_viên join lớp_học as t3 on t2.mã lớp = t3.mã lớp_học join khoá học as t4 on t3.mã khoá học = t4.mã khoá học join khoa as t5 on t4.mã khoa = t5.mã khoa where t5.tên khoa = "Accounting" intersect select t1.tên của sinh_viên from sinh_viên as t1 join đăng_ký khoá học as t2 on t1.mã_số sinh_viên = t2.mã_số sinh_viên join lớp_học as t3 on t2.mã lớp = t3.mã lớp_học join khoá học as t4 on t3.mã khoá học = t4.mã khoá học join khoa as t5 on t4.mã khoa = t5.mã khoa where t5.tên khoa = "Computer Info. Systems"
select t1.tên của sinh_viên from sinh_viên as t1 join đăng_ký khoá học as t2 on t1.mã_số sinh_viên = t2.mã_số sinh_viên join lớp_học as t3 on t2.mã lớp = t3.mã lớp_học join khoá học as t4 on t3.mã khoá học = t4.mã khoá học join khoa as t5 on t5.mã khoa = t4.mã khoa where t5.tên khoa = "Accounting" intersect select t1.tên của sinh_viên from sinh_viên as t1 join đăng_ký khoá học as t2 on t1.mã_số sinh_viên = t2.mã_số sinh_viên join lớp_học as t3 on t2.mã lớp = t3.mã lớp_học join khoá học as t4 on t3.mã khoá học = t4.mã khoá học join khoa as t5 on t5.mã khoa = t4.mã khoa where t5.tên khoa = "Computer Info. Systems"
select avg ( t1.gpa của sinh_viên ) from sinh_viên as t1 join đăng_ký khoá học as t2 on t1.mã_số sinh_viên = t2.mã_số sinh_viên where t2.mã khoá học = "ACCT-211"
select avg ( t2.gpa của sinh_viên ) from lớp_học as t1 join đăng_ký khoá học as t2 on t1.mã lớp_học = t2.mã lớp where t1.mã khoá học = "ACCT-211"
select tên của sinh_viên , gpa của sinh_viên , số điện_thoại của sinh_viên from sinh_viên order by gpa của sinh_viên desc limit 5
select tên của sinh_viên , gpa của sinh_viên , số điện_thoại của sinh_viên from sinh_viên order by gpa của sinh_viên desc limit 5
select t2.tên khoa from sinh_viên as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa order by gpa của sinh_viên limit 1
select t1.mã khoa from sinh_viên as t1 join đăng_ký khoá học as t2 on t1.mã_số sinh_viên = t2.mã_số sinh_viên where gpa của sinh_viên = ( select min ( gpa của sinh_viên ) from sinh_viên )
select tên của sinh_viên , gpa của sinh_viên from sinh_viên where gpa của sinh_viên < ( select avg ( gpa của sinh_viên ) from sinh_viên )
select tên của sinh_viên , gpa của sinh_viên from sinh_viên where gpa của sinh_viên < ( select avg ( gpa của sinh_viên ) from sinh_viên )
select t2.tên khoa , t2.địa_chỉ khoa from sinh_viên as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa group by t1.mã khoa order by count ( * ) desc limit 1
select t2.tên khoa , t2.địa_chỉ khoa from sinh_viên as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa group by t1.mã khoa order by count ( * ) desc limit 1
select t2.tên khoa , t2.địa_chỉ khoa , count ( * ) from sinh_viên as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa group by t1.mã khoa order by count ( * ) desc limit 3
select t2.tên khoa , t2.địa_chỉ khoa , count ( * ) from sinh_viên as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa group by t1.mã khoa order by count ( * ) desc limit 3
select t2.tên của nhân_viên , t3.văn_phòng giáo_sư from giáo_sư as t1 join nhân_viên as t2 on t1.mã số nhân_viên = t2.mã số nhân_viên join khoa as t3 on t1.mã khoa = t3.mã khoa where t3.tên khoa = "History" and t1.bằng_cấp cao nhất = "Ph.D."
select t2.tên của nhân_viên , t2.văn_phòng giáo_sư from giáo_sư as t1 join nhân_viên as t2 on t1.mã số nhân_viên = t2.mã số nhân_viên join khoa as t3 on t1.mã khoa = t3.mã khoa where t3.tên khoa = "History" and t1.bằng_cấp cao nhất = "Ph.D."
select t2.tên của nhân_viên , t1.mã khoá học from lớp_học as t1 join nhân_viên as t2 on t1.mã_số nhân_viên của giáo_sư = t2.mã số nhân_viên
select t2.tên của nhân_viên , t1.mã khoá học from lớp_học as t1 join nhân_viên as t2 on t1.mã_số nhân_viên của giáo_sư = t2.mã số nhân_viên
select distinct t2.tên của nhân_viên , t3.mô_tả về khoá học from lớp_học as t1 join nhân_viên as t2 on t1.mã_số nhân_viên của giáo_sư = t2.mã số nhân_viên join khoá học as t3 on t1.mã khoá học = t3.mã khoá học
select t2.tên của nhân_viên , t3.mô_tả về khoá học from lớp_học as t1 join nhân_viên as t2 on t1.mã_số nhân_viên của giáo_sư = t2.mã số nhân_viên join khoá học as t3 on t1.mã khoá học = t3.mã khoá học
select distinct t2.tên của nhân_viên , t3.văn_phòng giáo_sư , t4.mô_tả về khoá học from lớp_học as t1 join nhân_viên as t2 on t1.mã_số nhân_viên của giáo_sư = t2.mã số nhân_viên join giáo_sư as t3 on t2.mã số nhân_viên = t3.mã số nhân_viên join khoá học as t4 on t1.mã khoá học = t4.mã khoá học
select t2.tên của nhân_viên , t4.văn_phòng giáo_sư , t3.mô_tả về khoá học from lớp_học as t1 join nhân_viên as t2 on t1.mã_số nhân_viên của giáo_sư = t2.mã số nhân_viên join khoá học as t3 on t1.mã khoá học = t3.mã khoá học join giáo_sư as t4 on t2.mã số nhân_viên = t4.mã số nhân_viên
select t2.tên của nhân_viên , t4.văn_phòng giáo_sư , t3.mô_tả về khoá học , t5.tên khoa from lớp_học as t1 join nhân_viên as t2 on t1.mã_số nhân_viên của giáo_sư = t2.mã số nhân_viên join khoá học as t3 on t1.mã khoá học = t3.mã khoá học join giáo_sư as t4 on t2.mã số nhân_viên = t4.mã số nhân_viên join khoa as t5 on t4.mã khoa = t5.mã khoa
select t2.tên của nhân_viên , t4.địa_chỉ khoa , t3.mô_tả về khoá học from lớp_học as t1 join nhân_viên as t2 on t1.mã_số nhân_viên của giáo_sư = t2.mã số nhân_viên join khoá học as t3 on t1.mã khoá học = t3.mã khoá học join khoa as t4 on t2.mã khoa = t4.mã khoa
select t1.tên của sinh_viên , t1.họ của sinh_viên , t4.mô_tả về khoá học from sinh_viên as t1 join đăng_ký khoá học as t2 on t1.mã_số sinh_viên = t2.mã_số sinh_viên join lớp_học as t3 on t2.mã lớp = t3.mã lớp_học join khoá học as t4 on t3.mã khoá học = t4.mã khoá học
select distinct t1.tên của sinh_viên , t1.họ của sinh_viên from sinh_viên as t1 join đăng_ký khoá học as t2 on t1.mã_số sinh_viên = t2.mã_số sinh_viên
select t1.tên của sinh_viên from sinh_viên as t1 join đăng_ký khoá học as t2 on t1.mã_số sinh_viên = t2.mã_số sinh_viên where t2.điểm_số = "C" or t2.điểm_số = "A"
select t1.tên của sinh_viên from sinh_viên as t1 join đăng_ký khoá học as t2 on t1.mã_số sinh_viên = t2.mã_số sinh_viên where t2.điểm_số = "C" or t2.điểm_số = "A"
select t2.tên của nhân_viên , t1.phòng học from lớp_học as t1 join nhân_viên as t2 on t1.mã_số nhân_viên của giáo_sư = t2.mã số nhân_viên join giáo_sư as t3 on t2.mã số nhân_viên = t3.mã số nhân_viên join khoa as t4 on t3.mã khoa = t4.mã khoa where t4.tên khoa = "Accounting"
select t2.tên của nhân_viên , t3.phòng học from giáo_sư as t1 join nhân_viên as t2 on t1.mã số nhân_viên = t2.mã số nhân_viên join lớp_học as t3 on t1.mã lớp_học = t3.mã lớp_học join khoa as t4 on t4.mã khoa = t1.mã khoa where t4.tên khoa = "Accounting"
select distinct t2.tên của nhân_viên , t3.bằng_cấp cao nhất from lớp_học as t1 join nhân_viên as t2 on t1.mã_số nhân_viên của giáo_sư = t2.mã số nhân_viên join giáo_sư as t3 on t2.mã số nhân_viên = t3.mã số nhân_viên join khoa as t4 on t4.mã khoa = t3.mã khoa where t4.tên khoa = "Computer Info. Systems"
select distinct t2.tên của nhân_viên , t3.bằng_cấp cao nhất from lớp_học as t1 join nhân_viên as t2 on t1.mã_số nhân_viên của giáo_sư = t2.mã số nhân_viên join giáo_sư as t3 on t2.mã số nhân_viên = t3.mã số nhân_viên join khoa as t4 on t4.mã khoa = t3.mã khoa where t4.tên khoa = "Computer Info. Systems"
select t1.họ của sinh_viên from sinh_viên as t1 join đăng_ký khoá học as t2 on t1.mã_số sinh_viên = t2.mã_số sinh_viên where t2.điểm_số = "A" and t2.mã lớp = 10018
select t1.họ của sinh_viên from sinh_viên as t1 join đăng_ký khoá học as t2 on t1.mã_số sinh_viên = t2.mã_số sinh_viên where t2.điểm_số = "A" and t2.mã lớp = 10018
select t1.tên của nhân_viên , t1.văn_phòng giáo_sư from nhân_viên as t1 join giáo_sư as t2 on t1.mã số nhân_viên = t2.mã số nhân_viên join khoa as t3 on t2.mã khoa = t3.mã khoa where t3.tên khoa = "History" and t2.bằng_cấp cao nhất != "Ph.D."
select t2.tên của nhân_viên , t2.văn_phòng giáo_sư from giáo_sư as t1 join nhân_viên as t2 on t1.mã số nhân_viên = t2.mã số nhân_viên join khoa as t3 on t1.mã khoa = t3.mã khoa where t3.tên khoa = "History" and t1.bằng_cấp cao nhất != "Ph.D."
select t2.tên của nhân_viên from lớp_học as t1 join nhân_viên as t2 on t1.mã khoá học = t2.mã khoa group by t2.tên của nhân_viên having count ( * ) > 1
select t2.tên của nhân_viên from lớp_học as t1 join nhân_viên as t2 on t1.mã không học = t2.mã số nhân_viên group by t1.mã không học having count ( * ) > 1
select t1.tên của sinh_viên from sinh_viên as t1 join đăng_ký khoá học as t2 on t1.mã_số sinh_viên = t2.mã_số sinh_viên group by t1.tên của sinh_viên having count ( * ) = 1
select t1.tên của sinh_viên from sinh_viên as t1 join đăng_ký khoá học as t2 on t1.mã_số sinh_viên = t2.mã_số sinh_viên group by t1.tên của sinh_viên having count ( * ) = 1
select t2.tên khoa from khoá học as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa where t1.mô_tả về khoá học like "%Statistics%"
select t2.tên khoa from khoá học as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa where t1.mô_tả về khoá học like "%Statistics%"
select t3.tên của sinh_viên from lớp_học as t1 join đăng_ký khoá học as t2 on t1.mã lớp_học = t2.mã lớp join sinh_viên as t3 on t2.mã_số sinh_viên = t3.mã_số sinh_viên where t1.mã khoá học = "ACCT-211" and t3.họ của sinh_viên like "S%"
select t1.tên của sinh_viên from sinh_viên as t1 join đăng_ký khoá học as t2 on t1.mã_số sinh_viên = t2.mã_số sinh_viên join lớp_học as t3 on t2.mã lớp = t3.mã lớp_học join khoá học as t4 on t3.mã khoá học = t4.mã khoá học where t1.họ của sinh_viên like "S%" and t4.mã khoá học = "ACCT-211"
select mã trạng_thái tài_liệu from trạng_thái của tài_liệu
select mô_tả về trạng_thái tài_liệu from trạng_thái của tài_liệu where mã trạng_thái tài_liệu = "in progress"
select mã loại tài_liệu from loại tài_liệu
select mô_tả về loại tài_liệu from loại tài_liệu where mã loại tài_liệu = "Paper"
select tên đại_lý vận_chuyển from đại_lý vận_chuyển tài_liệu
select mã đại_lý vận_chuyển from đại_lý vận_chuyển tài_liệu where tên đại_lý vận_chuyển = "UPS"
select mã vai_trò from vai_trò
select mô_tả về vai_trò from vai_trò where mã vai_trò = "ED"
select count ( * ) from nhân_viên
select t1.mô_tả về vai_trò from vai_trò as t1 join nhân_viên as t2 on t1.mã vai_trò = t2.mã vai_trò where t2.tên nhân_viên = "Koby"
select id tài_liệu , ngày lập biên_lai from tài_liệu
select t1.mô_tả về vai_trò , t2.id vai_trò , count ( * ) from vai_trò as t1 join nhân_viên as t2 on t1.mã vai_trò = t2.mã vai_trò group by t2.id vai_trò
select t1.mô_tả về vai_trò , count ( * ) from vai_trò as t1 join nhân_viên as t2 on t1.mã vai_trò = t2.mã vai_trò group by t1.mã vai_trò
select t2.mô_tả về trạng_thái tài_liệu from tài_liệu as t1 join trạng_thái của tài_liệu as t2 on t1.mã trạng_thái tài_liệu = t2.mã trạng_thái tài_liệu where t1.id tài_liệu = 1
select count ( * ) from tài_liệu where mã trạng_thái tài_liệu = "Done"
select mã loại tài_liệu from tài_liệu where id tài_liệu = 2
select id tài_liệu from tài_liệu where mã trạng_thái tài_liệu = "done" and mã loại tài_liệu = "Paper"
select t1.tên đại_lý vận_chuyển from đại_lý vận_chuyển tài_liệu as t1 join tài_liệu as t2 on t1.mã đại_lý vận_chuyển = t2.mã đại_lý vận_chuyển where t2.id tài_liệu = 2
select count ( * ) from tài_liệu as t1 join đại_lý vận_chuyển tài_liệu as t2 on t1.mã đại_lý vận_chuyển = t2.mã đại_lý vận_chuyển where t2.tên đại_lý vận_chuyển = "USPS"
select t1.tên đại_lý vận_chuyển , count ( * ) from đại_lý vận_chuyển tài_liệu as t1 join tài_liệu as t2 on t1.mã đại_lý vận_chuyển = t2.mã đại_lý vận_chuyển group by t1.mã đại_lý vận_chuyển order by count ( * ) desc limit 1
select ngày lập biên_lai from tài_liệu where id tài_liệu = 3
select t3.chi_tiết địa_chỉ from tài_liệu được gửi as t1 join địa_chỉ as t2 on t1.gửi đến địa_chỉ có id = t2.id địa_chỉ join tài_liệu as t3 on t3.id tài_liệu = t1.id tài_liệu where t3.id tài_liệu = 4
select ngày gửi from tài_liệu được gửi where id tài_liệu = 7
select id tài_liệu from tài_liệu where mã trạng_thái tài_liệu = "Done" and mã loại tài_liệu = "Paper" except select id tài_liệu from tài_liệu join đại_lý vận_chuyển tài_liệu on tài_liệu.mã đại_lý vận_chuyển = đại_lý vận_chuyển tài_liệu.mã đại_lý vận_chuyển where tên đại_lý vận_chuyển = "USPS"
select id tài_liệu from tài_liệu where mã trạng_thái tài_liệu = "Done" and mã loại tài_liệu = "Paper" intersect select id tài_liệu from tài_liệu join đại_lý vận_chuyển tài_liệu on tài_liệu.mã đại_lý vận_chuyển = đại_lý vận_chuyển tài_liệu.mã đại_lý vận_chuyển where đại_lý vận_chuyển tài_liệu.tên đại_lý vận_chuyển = "USPS"
select chi_tiết dự_thảo from bản dự_thảo của tài_liệu where id tài_liệu = 7
select count ( * ) from bản_sao where id tài_liệu = 2 and số_lượng dự_thảo = 2
select id tài_liệu , số_lượng bản_sao from bản_sao group by id tài_liệu order by count ( * ) desc limit 1
select id tài_liệu , count ( số_lượng bản_sao ) from bản_sao group by id tài_liệu having count ( số_lượng bản_sao ) > 1
select t1.tên nhân_viên from nhân_viên as t1 join lịch_sử lưu_hành as t2 on t1.id nhân_viên = t2.id nhân_viên where t2.id tài_liệu = 1
select tên nhân_viên from nhân_viên except select nhân_viên.tên nhân_viên from nhân_viên join lịch_sử lưu_hành on lịch_sử lưu_hành.id nhân_viên = nhân_viên.id nhân_viên
select t1.tên nhân_viên , count ( * ) from nhân_viên as t1 join lịch_sử lưu_hành as t2 on t1.id nhân_viên = t2.id nhân_viên group by t2.id nhân_viên order by count ( * ) desc limit 1
select id tài_liệu , count ( distinct id nhân_viên ) from lịch_sử lưu_hành group by id tài_liệu
select count ( * ) from khách_hàng
select count ( * ) from lượt đặt_hàng
select ngày đặt_hàng from lượt đặt_hàng
select ngày đặt_hàng from lượt đặt_hàng
select distinct tên sản_phẩm from các sản_phẩm
select ngày giao hàng theo kế_hoạch , ngày giao hàng thực_tế from lượt đặt_hàng
select count ( * ) from khách_hàng
select count ( * ) from khách_hàng
select số điện_thoạp khách_hàng , địa_chỉ email khách_hàng from khách_hàng where tên khách_hàng = "Harold"
select địa_chỉ email khách_hàng , số điện_thoại khách_hàng from khách_hàng where tên khách_hàng = "Harold"
select tên cửa_hàng from nhóm hội_thảo kịch
select tên cửa_hàng from nhóm hội_thảo kịch
select min ( số_lượng đặt_hàng ) , max ( số_lượng đặt_hàng ) , avg ( số_lượng đặt_hàng ) from hoá_đơn
select min ( số_lượng đặt_hàng ) , avg ( số_lượng đặt_hàng ) , max ( số_lượng đặt_hàng ) from hoá_đơn
select distinct mã phương_thức thanh_toán from lượt đặt_hàng
select distinct mã phương_thức thanh_toán from hoá_đơn
select mô_tả về khu_vực tiếp_thị from khu_vực tiếp_thị where tên khu_vực tiếp_thị = "China"
select mô_tả về khu_vực tiếp_thị from khu_vực tiếp_thị where tên khu_vực tiếp_thị = "China"
select distinct tên sản_phẩm from các sản_phẩm
select distinct tên sản_phẩm from các sản_phẩm
select tên sản_phẩm , giá sản_phẩm from sản_phẩm order by count ( * ) desc limit 1
select tên sản_phẩm from các sản_phẩm where giá sản_phẩm > ( select avg ( giá sản_phẩm ) from các sản_phẩm )
select tên sản_phẩm from các sản_phẩm order by giá sản_phẩm asc
select tên sản_phẩm from các sản_phẩm order by giá sản_phẩm asc
select số điện_thoại khách_hàng from người biểu_diễn where tên khách_hàng = "Ashley"
select số điện_thoại khách_hàng from người biểu_diễn where tên khách_hàng = "Ashley"
select count ( * ) , mã phương_thức thanh_toán from hoá_đơn group by mã phương_thức thanh_toán
select mã phương_thức thanh_toán from hoá_đơn group by mã phương_thức thanh_toán order by count ( * ) desc limit 1
select mã phương_thức thanh_toán from hoá_đơn group by mã phương_thức thanh_toán order by count ( * ) desc limit 1
select mã phương_thức thanh_toán from hoá_đơn group by mã phương_thức thanh_toán order by count ( * ) desc limit 1
select distinct t3.tên sản_phẩm from lượt đặt_hàng as t1 join khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng join mặt_hàng được đặt as t3 on t1.id đơn hàng = t3.id đơn hàng where t2.tên khách_hàng = "Rylan Robel"
select t1.thành_phố thị_trấn from địa_chỉ as t1 join cửa_hàng as t2 on t1.id địa_chỉ = t2.id địa_chỉ where t2.tên cửa_hàng = "FJA Filming"
select t1.quận hạt from địa_chỉ as t1 join cửa_hàng as t2 on t1.id địa_chỉ = t2.id địa_chỉ where t2.mã khu_vực tiếp_thị = "CA" group by t1.quận hạt having count ( * ) > 1
select t1.quận hạt from địa_chỉ as t1 join cửa_hàng as t2 on t1.id địa_chỉ = t2.id địa_chỉ where t2.mã khu_vực tiếp_thị = "CA"
select t3.mã khu_vực tiếp_thị from cửa_hàng as t1 join nhóm hội_thảo kịch as t2 on t1.id nhóm hội_thảo kịch = t2.id nhóm hội_thảo kịch join khu_vực tiếp_thị as t3 on t2.mã khu_vực tiếp_thị = t3.mã khu_vực tiếp_thị where t1.tên cửa_hàng = "Rob Dinning"
select t3.mã khu_vực tiếp_thị from cửa_hàng as t1 join nhóm hội_thảo kịch as t2 on t1.id cửa_hàng = t2.id nhóm hội_thảo kịch join khu_vực tiếp_thị as t3 on t2.mã khu_vực tiếp_thị = t3.mã khu_vực tiếp_thị where t1.tên cửa_hàng = "Rob Dinning"
select t2.mô_tả về loại dịch_vụ from dịch_vụ as t1 join loại dịch_vụ as t2 on t1.mã loại dịch_vụ = t2.mã loại dịch_vụ where t1.giá sản_phẩm > 100
select t2.mô_tả về loại dịch_vụ from dịch_vụ as t1 join loại dịch_vụ as t2 on t1.mã loại dịch_vụ = t2.mã loại dịch_vụ where t1.giá sản_phẩm > 100
select t2.tên sản_phẩm , count ( * ) from hoá_đơn as t1 join các sản_phẩm as t2 on t1.id sản_phẩm = t2.id sản_phẩm group by t1.id sản_phẩm
select t1.mô_tả về loại dịch_vụ , t2.mã loại dịch_vụ , count ( * ) from loại dịch_vụ as t1 join dịch_vụ as t2 on t1.mã loại dịch_vụ = t2.mã loại dịch_vụ group by t2.mã loại dịch_vụ
select t1.mô_tả về loại dịch_vụ , t1.mã loại dịch_vụ from loại dịch_vụ as t1 join dịch_vụ as t2 on t1.mã loại dịch_vụ = t2.mã loại dịch_vụ group by t1.mã loại dịch_vụ order by count ( * ) desc limit 1
select t1.mô_tả về loại dịch_vụ , t1.mã loại dịch_vụ from loại dịch_vụ as t1 join dịch_vụ as t2 on t1.mã loại dịch_vụ = t2.mã loại dịch_vụ group by t1.mã loại dịch_vụ order by count ( * ) desc limit 1
select
select t1.địa_chỉ email cửa_hàng , t1.số điện_thoại cửa_hàng from nhóm hội_thảo kịch as t1 join dịch_vụ as t2 on t1.id nhóm hội_thảo kịch = t2.id nhóm hội_thảo kịch
select t1.số điện_thoại cửa_hàng , t1.địa_chỉ email cửa_hàng from nhóm hội_thảo kịch as t1 join dịch_vụ as t2 on t1.id nhóm hội_thảo kịch = t2.id nhóm hội_thảo kịch where t2.tên sản_phẩm = "film"
select t2.id nhóm hội_thảo kịch from dịch_vụ as t1 join nhóm hội_thảo kịch as t2 on t1.id nhóm hội_thảo kịch = t2.id nhóm hội_thảo kịch where t1.tên sản_phẩm = "film"
select tên sản_phẩm , avg ( giá sản_phẩm ) from các sản_phẩm group by tên sản_phẩm
select tên sản_phẩm , avg ( giá sản_phẩm ) from các sản_phẩm group by tên sản_phẩm
select tên sản_phẩm from các sản_phẩm group by tên sản_phẩm having avg ( giá sản_phẩm ) < 1000000
select tên sản_phẩm from các sản_phẩm group by tên sản_phẩm having avg ( giá sản_phẩm ) < 1000000
select
select sum ( t2.số_lượng đặt_hàng ) from mặt_hàng được đặt as t1 join các sản_phẩm as t2 on t1.id sản_phẩm = t2.id sản_phẩm where t2.tên sản_phẩm = "photo"
select t2.chi_tiết khác về mặt_hàng from mặt_hàng được đặt as t1 join các sản_phẩm as t2 on t1.id sản_phẩm = t2.id sản_phẩm where t2.giá sản_phẩm > 2000
select t1.tên cửa_hàng from nhóm hội_thảo kịch as t1 join lượt đặt_hàng as t2 on t1.id nhóm hội_thảo kịch = t2.id nhóm hội_thảo kịch group by t1.id nhóm hội_thảo kịch having count ( * ) > 10
select t2.ngày giao hàng thực_tế from mặt_hàng trong hoá_đơn as t1 join lượt đặt_hàng as t2 on t1.id đơn hàng = t2.id đơn hàng where t1.số_lượng đặt_hàng = 1
select
select
select t2.ngày đặt_hàng from lượt đặt_hàng của khách_hàng as t1 join lượt đặt_hàng as t2 on t1.id đơn hàng = t2.id đơn hàng join các mặt_hàng được đặt as t3 on t2.id đơn hàng = t3.id đơn hàng join các sản_phẩm as t4 on t3.id sản_phẩm = t4.id sản_phẩm where t4.giá sản_phẩm > 1000
select count ( distinct mã_tiền tệ ) from nhóm hội_thảo kịch
select count ( distinct mã phương_thức thanh_toán ) from phương_thức thanh_toán
select t2.tên cửa_hàng from địa_chỉ as t1 join nhóm hội_thảo kịch as t2 on t1.id địa_chỉ = t2.id địa_chỉ where t1.thành_phố thị_trấn = "Feliciaberg"
select t2.tên cửa_hàng from địa_chỉ as t1 join nhóm hội_thảo kịch as t2 on t1.id địa_chỉ = t2.id địa_chỉ where t1.thành_phố thị_trấn = "Feliciaberg"
select t3.tên sản_phẩm from khách_hàng as t1 join lượt đặt_hàng của khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng join mặt_hàng được đặt trong các hoá_đơn as t3 on t2.id đơn hàng = t3.id đơn hàng where t1.tên khách_hàng = "Rodrick Heaney" group by t3.tên sản_phẩm having count ( * ) > 1
select t1.địa_chỉ email cửa_hàng from nhóm hội_thảo kịch as t1 join địa_chỉ as t2 on t1.id địa_chỉ = t2.id địa_chỉ where t2.quận hạt = "Alaska"
select t2.thành_phố thị_trấn , count ( * ) from nhóm hội_thảo kịch as t1 join địa_chỉ as t2 on t1.id địa_chỉ = t2.id địa_chỉ group by t2.thành_phố thị_trấn
select t1.thành_phố thị_trấn , count ( * ) from địa_chỉ as t1 join nhóm hội_thảo kịch as t2 on t1.id địa_chỉ = t2.id địa_chỉ group by t1.thành_phố thị_trấn
select tên sản_phẩm from các sản_phẩm where giá sản_phẩm > ( select avg ( giá sản_phẩm ) from các sản_phẩm )
select t1.tên sản_phẩm from các sản_phẩm as t1 join mặt_hàng được đặt as t2 on t1.id sản_phẩm = t2.id sản_phẩm group by t1.tên sản_phẩm order by count ( * ) desc limit 1
select t3.thành_phố thị_trấn from khách_hàng as t1 join địa_chỉ as t2 on t1.id địa_chỉ = t2.id địa_chỉ join địa_chỉ as t3 on t1.id địa_chỉ = t3.id địa_chỉ except select t3.thành_phố thị_trấn from người biểu_diễn as t1 join địa_chỉ as t2 on t1.id địa_chỉ = t2.id địa_chỉ join địa_chỉ as t3 on t1.id địa_chỉ = t3.id địa_chỉ
select t1.tên khách_hàng from khách_hàng as t1 join lượt đặt_hàng của khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng join cửa_hàng as t3 on t2.id cửa_hàng = t3.id cửa_hàng where t3.tên cửa_hàng = "Bar"
select mã trạng_thái from lượt đặt_hàng group by mã trạng_thái order by count ( * ) desc limit 1
select tên sản_phẩm from các sản_phẩm where giá sản_phẩm > ( select avg ( giá sản_phẩm ) from các sản_phẩm )
select avg ( t2.số_lượng đặt_hàng ) , t1.id đơn hàng from hoá_đơn as t1 join mặt_hàng trong hoá_đơn as t2 on t1.id hoá_đơn = t2.id hoá_đơ
select t3.tên sản_phẩm from lượt đặt_hàng của khách_hàng as t1 join lượt đặt_hàng as t2 on t1.id đơn hàng = t2.id đơn hàng join mặt_hàng được đặt as t3 on t2.id đơn hàng = t3.id đơn hàng join khách_hàng as t4 on t1.id khách_hàng = t4.id khách_hàng where t4.tên khách_hàng = "Rodrick Heaney"
select tên khách_hàng from khách_hàng except select t2.tên khách_hàng from lượt đặt_hàng as t1 join khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng
select t1.tên cửa_hàng from nhóm hội_thảo kịch as t1 join địa_chỉ as t2 on t1.id địa_chỉ = t2.id địa_chỉ where t2.thành_phố thị_trấn = "Brussels"
select avg ( số_lượng đặt_hàng ) from hoá_đơn where mã phương_thức thanh_toán = "Mastercard"
select avg ( số_lượng đặt_hàng ) from hoá_đơn where mã phương_thức thanh_toán = "Mastercard"
select id sản_phẩm from mặt_hàng được đặt group by id sản_phẩm order by count ( * ) desc limit 1
select
select
select t1.mô_tả về loại dịch_vụ from loại dịch_vụ as t1 join dịch_vụ as t2 on t1.mã loại dịch_vụ = t2.mã loại dịch_vụ where t2.tên sản_phẩm = "photo" intersect select t1.mô_tả về loại dịch_vụ from loại dịch_vụ as t1 join dịch_vụ as t2 on t1.mã loại dịch_vụ = t2.mã loại dịch_vụ where t2.tên sản_phẩm = "film"
select count ( * ) from tài_khoản
select count ( * ) from tài_khoản
select count ( distinct id khách_hàng ) from tài_khoản
select count ( distinct id khách_hàng ) from tài_khoản
select id tài_khoản , ngày mở tài_khoản , tên tài_khoản , chi_tiết khác về tài_khoản from tài_khoản
select id tài_khoản , ngày mở tài_khoản , tên tài_khoản , chi_tiết khác về tài_khoản from tài_khoản
select t1.id tài_khoản , t1.tên tài_khoản , t1.ngày mở tài_khoản , t1.chi_tiết khác về tài_khoản from tài_khoản as t1 join khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng where t2.tên khách_hàng = "Meaghan"
select t1.id tài_khoản , t1.tên tài_khoản , t1.ngày mở tài_khoản , t1.chi_tiết khác về tài_khoản from tài_khoản as t1 join khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng where t2.tên khách_hàng = "Meaghan"
select t1.tên tài_khoản , t1.chi_tiết khác về tài_khoản from tài_khoản as t1 join khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng where t2.tên khách_hàng = "Meaghan" and t2.họ của khách_hàng = "Keeling"
select t1.tên tài_khoản , t1.chi_tiết khác về tài_khoản from tài_khoản as t1 join khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng where t2.tên khách_hàng = "Meaghan Keeling"
select t1.tên khách_hàng , t1.họ của khách_hàng from khách_hàng as t1 join tài_khoản as t2 on t1.id khách_hàng = t2.id khách_hàng where tên tài_khoản = "900"
select t1.tên khách_hàng , t1.họ của khách_hàng from khách_hàng as t1 join tài_khoản as t2 on t1.id khách_hàng = t2.id khách_hàng where t2.tên tài_khoản = "900"
select count ( * ) from khách_hàng where id khách_hàng not in ( select id khách_hàng from tài_khoản )
select count ( * ) from khách_hàng where id khách_hàng not in ( select id khách_hàng from tài_khoản )
select distinct t1.tên khách_hàng , t1.họ của khách_hàng , t1.số điện_thoại from khách_hàng as t1 join tài_khoản as t2 on t1.id khách_hàng = t2.id khách_hàng
select distinct t1.tên khách_hàng , t1.họ của khách_hàng , t1.số điện_thoại from khách_hàng as t1 join tài_khoản as t2 on t1.id khách_hàng = t2.id khách_hàng
select id khách_hàng from khách_hàng except select id khách_hàng from tài_khoản
select id khách_hàng from khách_hàng except select id khách_hàng from tài_khoản
select count ( * ) , id khách_hàng from tài_khoản group by id khách_hàng
select id khách_hàng , count ( * ) from tài_khoản group by id khách_hàng
select t1.tên khách_hàng , t1.họ của khách_hàng , t1.id khách_hàng from khách_hàng as t1 join tài_khoản as t2 on t1.id khách_hàng = t2.id khách_hàng group by t1.id khách_hàng order by count ( * ) desc limit 1
select t1.id khách_hàng , t2.tên khách_hàng , t2.họ của khách_hàng from tài_khoản as t1 join khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng group by t1.id khách_hàng order by count ( * ) desc limit 1
select t1.id khách_hàng , t2.tên khách_hàng , t2.họ của khách_hàng , count ( * ) from tài_khoản as t1 join khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng group by t1.id khách_hàng
select t1.id khách_hàng , t2.tên khách_hàng , t2.họ của khách_hàng , count ( * ) from tài_khoản as t1 join khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng group by t1.id khách_hàng
select t1.tên khách_hàng , t1.id khách_hàng from khách_hàng as t1 join tài_khoản as t2 on t1.id khách_hàng = t2.id khách_hàng group by t1.id khách_hàng having count ( * ) >= 2
select t1.tên khách_hàng , t1.id khách_hàng from khách_hàng as t1 join tài_khoản as t2 on t1.id khách_hàng = t2.id khách_hàng group by t1.id khách_hàng having count ( * ) >= 2
select count ( * ) from khách_hàng
select count ( * ) from khách_hàng
select count ( * ) , giới_tính from khách_hàng group by giới_tính
select count ( * ) , giới_tính from khách_hàng group by giới_tính
select count ( * ) from giao_dịch tài_chính
select count ( * ) from giao_dịch tài_chính
select count ( * ) , id tài_khoản from giao_dịch tài_chính group by id tài_khoản
select count ( * ) , id tài_khoản from giao_dịch tài_chính group by id tài_khoản
select count ( * ) from giao_dịch tài_chính as t1 join tài_khoản as t2 on t1.id tài_khoản = t2.id tài_khoản where t2.tên tài_khoản = "337"
select count ( * ) from giao_dịch tài_chính as t1 join tài_khoản as t2 on t1.id tài_khoản = t2.id tài_khoản where t2.tên tài_khoản = "337"
select avg ( số tiền giao_dịch ) , min ( số tiền giao_dịch ) , max ( số tiền giao_dịch ) , sum ( số tiền giao_dịch ) from giao_dịch tài_chính
select avg ( số tiền giao_dịch ) , min ( số tiền giao_dịch ) , max ( số tiền giao_dịch ) , sum ( số tiền giao_dịch ) from giao_dịch tài_chính
select id giao_dịch from giao_dịch tài_chính where số tiền giao_dịch > ( select avg ( số tiền giao_dịch ) from giao_dịch tài_chính )
select id giao_dịch from giao_dịch tài_chính where số tiền giao_dịch > ( select avg ( số tiền giao_dịch ) from giao_dịch tài_chính )
select loại giao_dịch , sum ( số tiền giao_dịch ) from giao_dịch tài_chính group by loại giao_dịch
select loại giao_dịch , sum ( số tiền giao_dịch ) from giao_dịch tài_chính group by loại giao_dịch
select t1.tên tài_khoản , t1.id tài_khoản , count ( * ) from tài_khoản as t1 join giao_dịch tài_chính as t2 on t1.id tài_khoản = t2.id tài_khoản group by t1.id tài_khoản
select t1.tên tài_khoản , t1.id tài_khoản , count ( * ) from tài_khoản as t1 join giao_dịch tài_chính as t2 on t1.id tài_khoản = t2.id tài_khoản group by t1.id tài_khoản
select id tài_khoản from giao_dịch tài_chính group by id tài_khoản order by count ( * ) desc limit 1
select id tài_khoản from giao_dịch tài_chính group by id tài_khoản order by count ( * ) desc limit 1
select t1.tên tài_khoản , t1.id tài_khoản from tài_khoản as t1 join giao_dịch tài_chính as t2 on t1.id tài_khoản = t2.id tài_khoản group by t1.id tài_khoản having count ( * ) >= 4
select t1.tên tài_khoản , t1.id tài_khoản from tài_khoản as t1 join giao_dịch tài_chính as t2 on t1.id tài_khoản = t2.id tài_khoản group by t1.id tài_khoản having count ( * ) >= 4
select distinct kích_thước sản_phẩm from sản_phẩm
select distinct kích_thước sản_phẩm from sản_phẩm
select distinct màu sản_phẩm from sản_phẩm
select count ( distinct màu sản_phẩm ) from sản_phẩm
select số_hoá đơn , count ( * ) from giao_dịch tài_chính group by số_hoá đơn
select số_hoá đơn , count ( * ) from giao_dịch tài_chính group by số_hoá đơn
select t2.số_hoá đơn , t2.ngày lập hoá_đơn from giao_dịch tài_chính as t1 join hoá_đơn as t2 on t1.số_hoá đơn = t2.số_hoá đơn group by t1.số_hoá đơn order by count ( * ) desc limit 1
select t1.số_hoá đơn , t1.ngày lập hoá_đơn from hoá_đơn as t1 join giao_dịch tài_chính as t2 on t1.số_hoá đơn = t2.số_hoá đơn group by t1.số_hoá đơn order by sum ( số tiền giao_dịch ) desc limit 1
select count ( * ) from hoá_đơn
select count ( * ) from hoá_đơn
select
select t2.ngày lập hoá_đơn , t1.id đơn hàng , t2.chi_tiết đặt_hàng from hoá_đơn as t1 join đơn đặt_hàng as t2 on t1.id đơn hàng = t2.id đơn hàng
select id đơn hàng , count ( * ) from hoá_đơn group by id đơn hàng
select id đơn hàng , count ( * ) from hoá_đơn group by id đơn hàng
select t1.id đơn hàng , t1.chi_tiết đặt_hàng from đơn đặt_hàng as t1 join hoá_đơn as t2 on t1.id đơn hàng = t2.id đơn hàng group by t1.id đơn hàng having count ( * ) > 2
select t1.id đơn hàng , t1.chi_tiết đặt_hàng from đơn đặt_hàng as t1 join hoá_đơn as t2 on t1.id đơn hàng = t2.id đơn hàng group by t1.id đơn hàng having count ( * ) >= 2
select t1.id khách_hàng , t1.họ của khách_hàng , t1.số điện_thoại from khách_hàng as t1 join đơn đặt_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng group by t1.id khách_hàng order by count ( * ) desc limit 1
select t2.họ của khách_hàng , t1.id khách_hàng , t2.số điện_thoại from đơn đặt_hàng as t1 join khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng group by t1.id khách_hàng order by count ( * ) desc limit 1
select tên sản_phẩm from sản_phẩm except select t1.tên sản_phẩm from sản_phẩm as t1 join mặt_hàng được đặt as t2 on t1.id sản_phẩm = t2.id sản_phẩm
select tên sản_phẩm from sản_phẩm except select t1.tên sản_phẩm from sản_phẩm as t1 join mặt_hàng được đặt as t2 on t1.id sản_phẩm = t2.id sản_phẩm
select t2.tên sản_phẩm , sum ( t1.số_lượng sản_phẩm ) from mặt_hàng được đặt as t1 join sản_phẩm as t2 on t1.id sản_phẩm = t2.id sản_phẩm group by t2.tên sản_phẩm
select t2.tên sản_phẩm , sum ( t1.số_lượng sản_phẩm ) from mặt_hàng được đặt as t1 join sản_phẩm as t2 on t1.id sản_phẩm = t2.id sản_phẩm group by t2.tên sản_phẩm
select id đơn hàng , count ( * ) from mặt_hàng được đặt group by id đơn hàng
select id đơn hàng , count ( * ) from mặt_hàng được đặt group by id đơn hàng
select id sản_phẩm , count ( distinct id đơn hàng ) from mặt_hàng được đặt where id sản_phẩm = 1 group by id sản_phẩm
select count ( distinct id đơn hàng ) from mặt_hàng được đặt
select t2.tên sản_phẩm , count ( * ) from mặt_hàng được đặt as t1 join sản_phẩm as t2 on t1.id sản_phẩm = t2.id sản_phẩm join đơn đặt_hàng as t3 on t3.id đơn hàng = t1.id đơn hàng group by t2.tên sản_phẩm
select t2.tên sản_phẩm , count ( * ) from mặt_hàng được đặt as t1 join sản_phẩm as t2 on t1.id sản_phẩm = t2.id sản_phẩm join đơn đặt_hàng as t3 on t3.id đơn hàng = t1.id đơn hàng group by t2.tên sản_phẩm
select id đơn hàng , count ( * ) from mặt_hàng được đặt group by id đơn hàng
select count ( distinct id sản_phẩm ) , id đơn hàng from mặt_hàng được đặt group by id đơn hàng
select số_hoá đơn , count ( * ) from giao_dịch tài_chính group by số_hoá đơn
select id sản_phẩm from hoá_đơn mặt_hàng group by id sản_phẩm order by count ( * ) desc limit 1
select count ( * ) from sản_phẩm where id sản_phẩm not in ( select id sản_phẩm from mặt_hàng được đặt )
select count ( * ) from sản_phẩm where id sản_phẩm not in ( select id sản_phẩm from mặt_hàng được đặt )
select count ( * ) from địa_chỉ where quốc_gia = "USA"
select distinct thành_phố from địa_chỉ
select tiểu_bang , count ( * ) from địa_chỉ group by tiểu_bang
select tên khách_hàng , điện_thoại khách_hàng from khách_hàng where id khách_hàng not in ( select id khách_hàng from lượt đặt_hàng của khách_hàng )
select t1.tên khách_hàng from khách_hàng as t1 join lượt đặt_hàng của khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng group by t1.id khách_hàng order by count ( * ) desc limit 1
select mã loại sản_phẩm from sản_phẩm group by mã loại sản_phẩm having count ( * ) >= 2
select t1.tên khách_hàng from khách_hàng as t1 join lượt đặt_hàng của khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng where t2.mã trạng_thái đơn hàng = "Completed" intersect select t1.tên khách_hàng from khách_hàng as t1 join lượt đặt_hàng của khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng where t2.mã trạng_thái đơn hàng = "Partially Shipped"
select tên khách_hàng , điện_thoại khách_hàng , mã phương_thức thanh_toán from khách_hàng order by mã_số khách_hàng desc
select t1.tên sản_phẩm , sum ( t2.số_lượng đặt_hàng ) from sản_phẩm as t1 join mặt_hàng được đặt as t2 on t1.id sản_phẩm = t2.id sản_phẩm group by t1.id sản_phẩm
select max ( giá sản_phẩm ) , min ( giá sản_phẩm ) , avg ( giá sản_phẩm ) from sản_phẩm
select count ( * ) from sản_phẩm where giá sản_phẩm > ( select avg ( giá sản_phẩm ) from sản_phẩm )
select t1.tên khách_hàng , t2.thành_phố , t3.từ ngày , t3.đến ngày from khách_hàng as t1 join địa_chỉ as t2 on t1.id địa_chỉ khách_hàng = t2.id địa_chỉ join lịch_sử địa_chỉ khách_hàng as t3 on t1.id khách_hàng = t3.id khách_hàng
select t1.tên khách_hàng from khách_hàng as t1 join lượt đặt_hàng của khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng where t1.mã phương_thức thanh_toán = "Credit Card" group by t1.id khách_hàng having count ( * ) > 2
select t1.tên khách_hàng , t1.điện_thoại khách_hàng from khách_hàng as t1 join lượt đặt_hàng của khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng join mặt_hàng được đặt as t3 on t2.id đơn hàng = t3.id đơn hàng group by t1.id khách_hàng order by sum ( t3.số_lượng đặt_hàng ) limit 1
select mã loại sản_phẩm , tên sản_phẩm from sản_phẩm where giá sản_phẩm > 1000 or giá sản_phẩm < 500
select count ( * ) from bộ_trưởng where tuổi > 56
select tên , sinh ra ở tiểu_bang , tuổi from bộ_trưởng order by tuổi
select năm thành_lập , tên , ngân_sách tính theo tỷ from các bộ
select max ( ngân_sách tính theo tỷ ) , min ( ngân_sách tính theo tỷ ) from các bộ
select avg ( số_lượng nhân_viên ) from các bộ where xếp_hạng between 10 and 15
select tên from bộ_trưởng where sinh ra ở tiểu_bang != "California"
select distinct t1.năm thành_lập from các bộ as t1 join sự quản_lý as t2 on t1.id các bộ = t2.id các bộ join bộ_trưởng as t3 on t2.id người đứng đầu = t3.id người đứng đầu where t3.sinh ra ở tiểu_bang = "Alabama"
select sinh ra ở tiểu_bang from bộ_trưởng group by sinh ra ở tiểu_bang having count ( * ) >= 3
select năm thành_lập from các bộ group by năm thành_lập order by count ( * ) desc limit 1
select t2.tên , t1.số_lượng nhân_viên from các bộ as t1 join sự quản_lý as t2 on t1.id các bộ = t2.id các bộ where t2.vai_trò tạm_thời = "yes"
select count ( distinct vai_trò tạm_thời ) from sự quản_lý
select count ( * ) from các bộ where id các bộ not in ( select id các bộ from sự quản_lý )
select distinct tuổi from bộ_trưởng where vai_trò tạm_thời = 1
select distinct t2.sinh ra ở tiểu_bang from sự quản_lý as t1 join bộ_trưởng as t2 on t1.id người đứng đầu = t2.id người đứng đầu where t1.id các bộ = 5 intersect select distinct t2.sinh ra ở tiểu_bang from sự quản_lý as t1 join bộ_trưởng as t2 on t1.id người đứng đầu = t2.id người đứng đầu where t1.id các bộ = 6
select t1.id các bộ , t1.tên , count ( * ) from các bộ as t1 join bộ_trưởng as t2 on t1.id các bộ = t2.id các bộ group by t1.id các bộ having count ( * ) > 1
select id người đứng đầu , tên from bộ_trưởng where tên like "%Ha%"
select id from xe
select id from xe
select count ( * ) from xe
select count ( * ) from xe
select chi_tiết về xe from xe where id = 1
select chi_tiết về xe from xe where id = 1
select tên , tên đệm , họ from nhân_viên
select tên , tên đệm , họ from nhân_viên
select ngày_sinh from nhân_viên where tên = "Janessa" and họ = "Sawayn"
select ngày_sinh from nhân_viên where tên = "Janessa" and họ = "Sawayn"
select ngày nhân_viên gia_nhập from nhân_viên where tên = "Janessa" and họ = "Sawayn"
select ngày nhân_viên gia_nhập from nhân_viên where tên = "Janessa" and họ = "Sawayn"
select ngày nhân_viên rời đi from nhân_viên where tên = "Janessa" and họ = "Sawayn"
select ngày nhân_viên rời đi from nhân_viên where tên = "Janessa" and họ = "Sawayn"
select count ( * ) from nhân_viên where tên = "Ludie"
select count ( * ) from nhân_viên where tên = "Ludie"
select biệt_danh from nhân_viên where tên = "Janessa" and họ = "Sawayn"
select biệt_danh from nhân_viên where tên = "Janessa" and họ = "Sawayn"
select count ( * ) from nhân_viên
select count ( * ) from nhân_viên
select t1.thành_phố from địa_chỉ as t1 join nhân_viên as t2 on t1.id địa_chỉ = t2.id địa_chỉ nhân_viên where t2.tên = "Janessa" and t2.họ = "Sawayn"
select t1.thành_phố from địa_chỉ as t1 join nhân_viên as t2 on t1.id địa_chỉ = t2.id địa_chỉ nhân_viên where t2.tên = "Janessa" and t2.họ = "Sawayn"
select t1.quốc_gia , t1.tiểu_bang from địa_chỉ as t1 join nhân_viên as t2 on t1.id địa_chỉ nhân_viên = t2.id địa_chỉ nhân_viên where t2.tên = "Janessa" and t2.họ = "Sawayn"
select t1.quốc_gia , t1.tiểu_bang from địa_chỉ as t1 join khách_hàng as t2 on t1.id địa_chỉ = t2.id địa_chỉ khách_hàng where t2.tên = "Janessa" and t2.họ = "Sawayn"
select sum ( giờ học ) from bài giảng as t1 join khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng where t2.tên = "Rylan" and t2.họ = "Goodwin"
select sum ( giờ học ) from bài giảng as t1 join khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng where t2.tên = "Rylan" and t2.họ = "Goodwin"
select t1.mã bưu_điện from địa_chỉ as t1 join nhân_viên as t2 on t1.id địa_chỉ = t2.id địa_chỉ nhân_viên where t2.tên = "Janessa" and t2.họ = "Sawayn"
select t3.mã bưu_điện from nhân_viên as t1 join địa_chỉ as t2 on t1.id địa_chỉ nhân_viên = t2.id địa_chỉ join khách_hàng as t3 on t3.id khách_hàng = t1.id khách_hàng where t1.tên = "Janessa" and t1.họ = "Sawayn"
select count ( * ) from địa_chỉ where tiểu_bang = "Georgia"
select count ( * ) from địa_chỉ where tiểu_bang = "Georgia"
select t2.tên , t2.họ from địa_chỉ as t1 join khách_hàng as t2 on t1.id địa_chỉ = t2.id địa_chỉ khách_hàng where t1.thành_phố = "Lake Bernice"
select distinct t1.tên , t1.họ from nhân_viên as t1 join địa_chỉ as t2 on t1.id địa_chỉ nhân_viên = t2.id địa_chỉ where t2.thành_phố = "Damianfort"
select t2.thành_phố , count ( * ) from nhân_viên as t1 join địa_chỉ as t2 on t1.id địa_chỉ nhân_viên = t2.id địa_chỉ group by t2.thành_phố order by count ( * ) desc limit 1
select t2.thành_phố , count ( * ) from nhân_viên as t1 join địa_chỉ as t2 on t1.id địa_chỉ nhân_viên = t2.id địa_chỉ group by t2.thành_phố order by count ( * ) desc limit 1
select t1.tiểu_bang from địa_chỉ as t1 join nhân_viên as t2 on t1.id địa_chỉ = t2.id địa_chỉ nhân_viên group by t1.tiểu_bang having count ( * ) between 2 and 4
select t1.tiểu_bang from địa_chỉ as t1 join nhân_viên as t2 on t1.id địa_chỉ = t2.id địa_chỉ nhân_viên group by t1.tiểu_bang having count ( * ) between 2 and 4
select tên , họ from khách_hàng
select tên , họ from khách_hàng
select địa chỉ email , ngày_sinh from khách_hàng where tên = "Carole"
select địa chỉ email , ngày_sinh from khách_hàng where tên = "Carole"
select số điện_thoại , địa chỉ email from khách_hàng where số tiền còn thiếu > 2000
select số điện_thoại , địa chỉ email from khách_hàng where số tiền còn thiếu > 2000
select mã trạng_thái khách_hàng , số điện_thoại_di_động , địa chỉ email from khách_hàng where tên = "Marina" or họ = "Kohler"
select mã trạng_thái khách_hàng , số điện_thoại_di_động , địa chỉ email from khách_hàng where tên = "Marina" or họ = "Kohler"
select ngày_sinh from khách_hàng where mã trạng_thái khách_hàng = "Good Customer"
select ngày_sinh from khách_hàng where mã trạng_thái khách_hàng = "Good Customer"
select ngày trở_thành khách_hàng from khách_hàng where tên = "Carole" and họ = "Bernhard"
select ngày trở_thành khách_hàng from khách_hàng where tên = "Carole" and họ = "Bernhard"
select count ( * ) from khách_hàng
select count ( * ) from khách_hàng
select mã trạng_thái khách_hàng , count ( * ) from khách_hàng group by mã trạng_thái khách_hàng
select mã trạng_thái khách_hàng , count ( * ) from khách_hàng group by mã trạng_thái khách_hàng
select mã trạng_thái khách_hàng from khách_hàng group by mã trạng_thái khách_hàng order by count ( * ) asc limit 1
select mã trạng_thái khách_hàng from khách_hàng group by mã trạng_thái khách_hàng order by count ( * ) asc limit 1
select count ( * ) from bài giảng as t1 join khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng where t2.tên = "Rylan" and t2.họ = "Goodwin" and t1.mã trạng_thái bài giảng = "Completed"
select count ( * ) from bài giảng as t1 join khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng where t2.tên = "Rylan" and t2.họ = "Goodwin"
select max ( số tiền còn thiếu ) , min ( số tiền còn thiếu ) , avg ( số tiền còn thiếu ) from khách_hàng
select max ( số tiền còn thiếu ) , min ( số tiền còn thiếu ) , avg ( số tiền còn thiếu ) from khách_hàng
select tên , họ from khách_hàng where số tiền còn thiếu between 1000 and 3000
select tên , họ from khách_hàng where số tiền còn thiếu between 1000 and 3000
select t1.tên , t1.họ from khách_hàng as t1 join địa_chỉ as t2 on t1.id địa_chỉ khách_hàng = t2.id địa_chỉ where t2.thành_phố = "Lockmanfurt"
select t1.tên , t1.họ from khách_hàng as t1 join địa_chỉ as t2 on t1.id địa_chỉ khách_hàng = t2.id địa_chỉ where t2.thành_phố = "Lockmanfurt"
select t2.quốc_gia from khách_hàng as t1 join địa_chỉ as t2 on t1.id địa_chỉ khách_hàng = t2.id địa_chỉ where t1.tên = "Carole" and t1.họ = "Bernhard"
select t1.quốc_gia from địa_chỉ as t1 join khách_hàng as t2 on t1.id địa_chỉ = t2.id địa_chỉ khách_hàng where t2.tên = "Carole" and t2.họ = "Bernhard"
select t2.mã bưu_điện from khách_hàng as t1 join địa_chỉ as t2 on t1.id địa_chỉ khách_hàng = t2.id địa_chỉ where t1.tên = "Carole" and t1.họ = "Bernhard"
select t1.mã bưu_điện from địa_chỉ as t1 join khách_hàng as t2 on t1.id địa_chỉ = t2.id địa_chỉ khách_hàng where t2.tên = "Carole" and t2.họ = "Bernhard"
select t2.thành_phố from khách_hàng as t1 join địa_chỉ as t2 on t1.id địa_chỉ khách_hàng = t2.id địa_chỉ group by t2.thành_phố order by count ( * ) desc limit 1
select t2.thành_phố from khách_hàng as t1 join địa_chỉ as t2 on t1.id địa_chỉ khách_hàng = t2.id địa_chỉ group by t2.thành_phố order by count ( * ) desc limit 1
select sum ( t1.số tiền thanh_toán ) from khoản thanh_toán của khách_hàng as t1 join khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng where t2.tên = "Carole" and t2.họ = "Bernhard"
select sum ( t1.số tiền thanh_toán ) from khoản thanh_toán của khách_hàng as t1 join khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng where t2.tên = "Carole" and t2.họ = "Bernhard"
select count ( * ) from khách_hàng where id khách_hàng not in ( select id khách_hàng from khoản thanh_toán của khách_hàng )
select count ( * ) from khách_hàng where id khách_hàng not in ( select id khách_hàng from khoản thanh_toán của khách_hàng )
select t1.tên , t1.họ from khách_hàng as t1 join khoản thanh_toán của khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng group by t1.id khách_hàng having count ( * ) > 2
select t1.tên , t1.họ from khách_hàng as t1 join khoản thanh_toán của khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng group by t1.id khách_hàng having count ( * ) > 2
select mã phương_thức thanh_toán , count ( * ) from khoản thanh_toán của khách_hàng group by mã phương_thức thanh_toán
select mã phương_thức thanh_toán , count ( * ) from khoản thanh_toán của khách_hàng group by mã phương_thức thanh_toán
select count ( * ) from bài giảng where mã trạng_thái bài giảng = "Cancelled"
select count ( * ) from bài giảng where mã trạng_thái bài giảng = "Cancelled"
select t1.id bài giảng from bài giảng as t1 join nhân_viên as t2 on t1.id nhân_viên = t2.id nhân_viên where t2.tên = "Janessa" and t2.họ = "Sawayn" and biệt_danh like "%s%"
select t1.id bài giảng from bài giảng as t1 join nhân_viên as t2 on t1.id nhân_viên = t2.id nhân_viên where t2.tên = "Janessa" and t2.họ = "Sawayn" and biệt_danh like "%s%"
select count ( * ) from bài giảng as t1 join nhân_viên as t2 on t1.id nhân_viên = t2.id nhân_viên where t2.tên like "%a%"
select count ( * ) from bài giảng as t1 join nhân_viên as t2 on t1.id nhân_viên = t2.id nhân_viên where t2.tên like "%a%"
select sum ( giờ học ) from bài giảng as t1 join nhân_viên as t2 on t1.id nhân_viên = t2.id nhân_viên where t2.tên = "Janessa" and t2.họ = "Sawayn"
select sum ( giờ học ) from bài giảng as t1 join nhân_viên as t2 on t1.id nhân_viên = t2.id nhân_viên where t2.tên = "Janessa" and t2.họ = "Sawayn"
select avg ( giá ) from bài giảng as t1 join nhân_viên as t2 on t1.id nhân_viên = t2.id nhân_viên where t2.tên = "Janessa" and t2.họ = "Sawayn"
select avg ( giá ) from bài giảng as t1 join nhân_viên as t2 on t1.id nhân_viên = t2.id nhân_viên where t2.tên = "Janessa" and t2.họ = "Sawayn"
select count ( * ) from bài giảng as t1 join khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng where t2.tên = "Ray"
select count ( * ) from bài giảng as t1 join khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng where t2.tên = "Ray"
select họ from khách_hàng intersect select họ from nhân_viên
select họ from khách_hàng intersect select họ from nhân_viên
select tên from nhân_viên except select t2.tên from bài giảng as t1 join nhân_viên as t2 on t1.id nhân_viên = t2.id nhân_viên
select tên from nhân_viên except select t2.tên from bài giảng as t1 join nhân_viên as t2 on t1.id nhân_viên = t2.id nhân_viên
select t1.id , t1.chi_tiết về xe from xe as t1 join bài giảng as t2 on t1.id = t2.id xe group by t1.id order by count ( * ) desc limit 1
select count ( * ) from nhân_viên
select count ( * ) from nhân_viên
select tên from nhân_viên order by tuổi
select tên from nhân_viên order by tuổi asc
select count ( * ) , thành_phố from nhân_viên group by thành_phố
select count ( * ) , thành_phố from nhân_viên group by thành_phố
select thành_phố from nhân_viên where tuổi < 30 group by thành_phố having count ( * ) > 1
select thành_phố from nhân_viên where tuổi < 30 group by thành_phố having count ( * ) > 1
select count ( * ) , địa_điểm from cửa_hàng group by địa_điểm
select count ( * ) , địa_điểm from cửa_hàng group by địa_điểm
select t2.tên người_quản_lý , t2.quận from cửa_hàng as t1 join tuyển_dụng as t2 on t1.id cửa_hàng = t2.id cửa_hàng order by t1.số_lượng sản_phẩm desc limit 1
select tên người_quản_lý , quận from cửa_hàng order by số_lượng sản_phẩm desc limit 1
select min ( số_lượng sản_phẩm ) , max ( số_lượng sản_phẩm ) from cửa_hàng
select min ( số_lượng sản_phẩm ) , max ( số_lượng sản_phẩm ) from cửa_hàng
select tên , địa_điểm , quận from cửa_hàng order by số_lượng sản_phẩm desc
select tên , địa_điểm , quận from cửa_hàng order by số_lượng sản_phẩm desc
select tên from cửa_hàng where số_lượng sản_phẩm > ( select avg ( số_lượng sản_phẩm ) from cửa_hàng )
select tên from cửa_hàng where số_lượng sản_phẩm > ( select avg ( số_lượng sản_phẩm ) from cửa_hàng )
select t1.tên from nhân_viên as t1 join đánh_giá as t2 on t1.id nhân_viên = t2.id nhân_viên group by t2.id nhân_viên order by count ( * ) desc limit 1
select t1.tên from nhân_viên as t1 join đánh_giá as t2 on t1.id nhân_viên = t2.id nhân_viên group by t2.id nhân_viên order by count ( * ) desc limit 1
select t1.tên from nhân_viên as t1 join đánh_giá as t2 on t1.id nhân_viên = t2.id nhân_viên order by t2.tiền thưởng desc limit 1
select t1.tên from nhân_viên as t1 join đánh_giá as t2 on t1.id nhân_viên = t2.id nhân_viên order by t2.tiền thưởng desc limit 1
select tên from nhân_viên where id nhân_viên not in ( select id nhân_viên from đánh_giá )
select tên from nhân_viên where id nhân_viên not in ( select id nhân_viên from đánh_giá )
select t1.tên from cửa_hàng as t1 join tuyển_dụng as t2 on t1.id cửa_hàng = t2.id cửa_hàng group by t1.tên order by count ( * ) desc limit 1
select t1.tên from cửa_hàng as t1 join tuyển_dụng as t2 on t1.id cửa_hàng = t2.id cửa_hàng group by t1.tên order by count ( * ) desc limit 1
select tên from cửa_hàng where id cửa_hàng not in ( select id cửa_hàng from tuyển_dụng )
select tên from cửa_hàng where id cửa_hàng not in ( select id cửa_hàng from tuyển_dụng )
select t2.tên , count ( * ) from tuyển_dụng as t1 join cửa_hàng as t2 on t1.id cửa_hàng = t2.id cửa_hàng group by t1.id cửa_hàng
select t2.tên , count ( * ) from tuyển_dụng as t1 join cửa_hàng as t2 on t1.id cửa_hàng = t2.id cửa_hàng group by t1.id cửa_hàng
select sum ( tiền thưởng ) from đánh_giá
select sum ( tiền thưởng ) from đánh_giá
select * from tuyển_dụng
select * from tuyển_dụng
select quận from cửa_hàng where số_lượng sản_phẩm < 3000 intersect select quận from cửa_hàng where số_lượng sản_phẩm > 10000
select quận from cửa_hàng where số_lượng sản_phẩm < 3000 intersect select quận from cửa_hàng where số_lượng sản_phẩm > 10000
select count ( distinct địa_điểm ) from cửa_hàng
select count ( distinct địa_điểm ) from cửa_hàng
select quốc_gia from hãng hàng_không where tên hãng hàng_không = "JetBlue Airways"
select quốc_gia from hãng hàng_không where tên hãng hàng_không = "JetBlue Airways"
select tên viết tắt from hãng hàng_không where tên hãng hàng_không = "JetBlue Airways"
select tên viết tắt from hãng hàng_không where tên hãng hàng_không = "JetBlue Airways"
select tên hãng hàng_không , tên viết tắt from hãng hàng_không where quốc_gia = "United States"
select tên hãng hàng_không , tên viết tắt from hãng hàng_không where quốc_gia = "United States"
select mã sân_bay , tên sân_bay from sân_bay where thành_phố = "Anthony"
select mã sân_bay , tên sân_bay from sân_bay where thành_phố = "Anthony"
select count ( * ) from hãng hàng_không
select count ( * ) from hãng hàng_không
select count ( * ) from sân_bay
select count ( * ) from sân_bay
select count ( * ) from chuyến bay
select count ( * ) from chuyến bay
select tên hãng hàng_không from hãng hàng_không where tên viết tắt = "UAL"
select tên hãng hàng_không from hãng hàng_không where tên viết tắt = "UAL"
select count ( * ) from hãng hàng_không where quốc_gia = "USA"
select count ( * ) from hãng hàng_không where quốc_gia = "United States"
select thành_phố , quốc_gia from sân_bay where tên sân_bay = "Alton"
select thành_phố , quốc_gia from sân_bay where tên sân_bay = "Alton"
select tên sân_bay from sân_bay where mã sân_bay = "AKO"
select tên sân_bay from sân_bay where mã sân_bay = "AKO"
select tên sân_bay from sân_bay where thành_phố = "Aberdeen"
select tên sân_bay from sân_bay where thành_phố = "Aberdeen"
select count ( * ) from chuyến bay where sân_bay khởi_hành = "APG"
select count ( * ) from chuyến bay where sân_bay khởi_hành = "APG"
select count ( * ) from chuyến bay where sân_bay đích = "ATO"
select count ( * ) from chuyến bay where sân_bay đích = "ATO"
select count ( * ) from chuyến bay as t1 join sân_bay as t2 on t1.sân_bay khởi_hành = t2.mã sân_bay where t2.thành_phố = "Aberdeen"
select count ( * ) from chuyến bay as t1 join sân_bay as t2 on t1.sân_bay khởi_hành = t2.mã sân_bay where t2.thành_phố = "Aberdeen"
select count ( * ) from sân_bay as t1 join chuyến bay as t2 on t1.mã sân_bay = t2.sân_bay đích where t1.thành_phố = "Aberdeen"
select count ( * ) from chuyến bay as t1 join sân_bay as t2 on t1.sân_bay đích = t2.mã sân_bay where t2.thành_phố = "Aberdeen"
select count ( * ) from chuyến bay as t1 join sân_bay as t2 on t1.sân_bay khởi_hành = t2.mã sân_bay join sân_bay as t3 on t1.sân_bay đích = t3.mã sân_bay where t2.thành_phố = "Aberdeen" and t3.thành_phố = "Ashley"
select count ( * ) from chuyến bay as t1 join sân_bay as t2 on t1.sân_bay đích = t2.mã sân_bay join sân_bay as t3 on t1.sân_bay khởi_hành = t3.mã sân_bay where t2.thành_phố = "Ashley" and t3.thành_phố = "Aberdeen"
select count ( * ) from hãng hàng_không as t1 join chuyến bay as t2 on t1.id hãng hàng_không = t2.hãng hàng_không where t1.tên hãng hàng_không = "JetBlue Airways"
select count ( * ) from hãng hàng_không as t1 join chuyến bay as t2 on t1.id hãng hàng_không = t2.hãng hàng_không where t1.tên hãng hàng_không = "JetBlue Airways"
select count ( * ) from hãng hàng_không as t1 join chuyến bay as t2 on t1.id hãng hàng_không = t2.hãng hàng_không where t1.tên hãng hàng_không = "United Airlines" and t2.sân_bay đích = "ASY"
select count ( * ) from chuyến bay as t1 join hãng hàng_không as t2 on t1.hãng hàng_không = t2.id hãng hàng_không where t1.sân_bay đích = "ASY" and t2.tên hãng hàng_không = "United Airlines"
select count ( * ) from hãng hàng_không as t1 join chuyến bay as t2 on t1.id hãng hàng_không = t2.hãng hàng_không where t1.tên hãng hàng_không = "United Airlines" and t2.sân_bay khởi_hành = "AHD"
select count ( * ) from hãng hàng_không as t1 join chuyến bay as t2 on t1.id hãng hàng_không = t2.hãng hàng_không where t2.sân_bay khởi_hành = "AHD" and t1.tên hãng hàng_không = "United Airlines"
select count ( * ) from hãng hàng_không as t1 join chuyến bay as t2 on t1.id hãng hàng_không = t2.hãng hàng_không where t1.tên hãng hàng_không = "United Airlines" and t2.sân_bay đích = "Aberdeen"
select count ( * ) from chuyến bay as t1 join sân_bay as t2 on t1.sân_bay đích = t2.mã sân_bay join hãng hàng_không as t3 on t1.hãng hàng_không = t3.id hãng hàng_không where t2.thành_phố = "Aberdeen" and t3.tên hãng hàng_không = "United Airlines"
select t1.thành_phố from sân_bay as t1 join chuyến bay as t2 on t1.mã sân_bay = t2.sân_bay đích or t1.mã sân_bay = t2.sân_bay khởi_hành group by t1.thành_phố order by count ( * ) desc limit 1
select t1.thành_phố from sân_bay as t1 join chuyến bay as t2 on t1.mã sân_bay = t2.sân_bay đích group by t1.thành_phố order by count ( * ) desc limit 1
select t1.thành_phố from sân_bay as t1 join chuyến bay as t2 on t1.mã sân_bay = t2.sân_bay khởi_hành group by t1.thành_phố order by count ( * ) desc limit 1
select t1.thành_phố from sân_bay as t1 join chuyến bay as t2 on t1.mã sân_bay = t2.sân_bay khởi_hành group by t1.thành_phố order by count ( * ) desc limit 1
select t1.mã sân_bay from sân_bay as t1 join chuyến bay as t2 on t1.mã sân_bay = t2.sân_bay đích or t1.mã sân_bay = t2.sân_bay khởi_hành group by t1.mã sân_bay order by count ( * ) desc limit 1
select t1.mã sân_bay from sân_bay as t1 join chuyến bay as t2 on t1.mã sân_bay = t2.sân_bay đích or t1.mã sân_bay = t2.sân_bay khởi_hành group by t1.mã sân_bay order by count ( * ) desc limit 1
select t1.mã sân_bay from sân_bay as t1 join chuyến bay as t2 on t1.mã sân_bay = t2.sân_bay đích or t1.mã sân_bay = t2.sân_bay khởi_hành group by t1.mã sân_bay order by count ( * ) limit 1
select t1.mã sân_bay from sân_bay as t1 join chuyến bay as t2 on t1.mã sân_bay = t2.sân_bay đích or t1.mã sân_bay = t2.sân_bay khởi_hành group by t1.mã sân_bay order by count ( * ) limit 1
select t1.tên hãng hàng_không from hãng hàng_không as t1 join chuyến bay as t2 on t1.id hãng hàng_không = t2.hãng hàng_không group by t1.tên hãng hàng_không order by count ( * ) desc limit 1
select t1.tên hãng hàng_không from hãng hàng_không as t1 join chuyến bay as t2 on t1.id hãng hàng_không = t2.hãng hàng_không group by t1.tên hãng hàng_không order by count ( * ) desc limit 1
select t1.tên viết tắt , t1.quốc_gia from hãng hàng_không as t1 join chuyến bay as t2 on t1.id hãng hàng_không = t2.hãng hàng_không group by t1.tên viết tắt order by count ( * ) limit 1
select t1.tên viết tắt , t1.quốc_gia from hãng hàng_không as t1 join chuyến bay as t2 on t1.id hãng hàng_không = t2.hãng hàng_không group by t1.tên viết tắt order by count ( * ) asc limit 1
select t1.tên hãng hàng_không from hãng hàng_không as t1 join chuyến bay as t2 on t1.id hãng hàng_không = t2.hãng hàng_không where t2.sân_bay khởi_hành = "AHD"
select t1.tên hãng hàng_không from hãng hàng_không as t1 join chuyến bay as t2 on t1.id hãng hàng_không = t2.hãng hàng_không where t2.sân_bay khởi_hành = "AHD"
select t1.tên hãng hàng_không from hãng hàng_không as t1 join chuyến bay as t2 on t1.id hãng hàng_không = t2.hãng hàng_không where t2.sân_bay đích = "AHD"
select t1.tên hãng hàng_không from hãng hàng_không as t1 join chuyến bay as t2 on t1.id hãng hàng_không = t2.hãng hàng_không where t2.sân_bay đích = "AHD"
select t1.tên hãng hàng_không from hãng hàng_không as t1 join chuyến bay as t2 on t1.id hãng hàng_không = t2.hãng hàng_không where t2.sân_bay khởi_hành = "APG" intersect select t1.tên hãng hàng_không from hãng hàng_không as t1 join chuyến bay as t2 on t1.id hãng hàng_không = t2.hãng hàng_không where t2.sân_bay khởi_hành = "CVO"
select t1.tên hãng hàng_không from hãng hàng_không as t1 join chuyến bay as t2 on t1.id hãng hàng_không = t2.hãng hàng_không where t2.sân_bay khởi_hành = "APG" intersect select t1.tên hãng hàng_không from hãng hàng_không as t1 join chuyến bay as t2 on t1.id hãng hàng_không = t2.hãng hàng_không where t2.sân_bay khởi_hành = "CVO"
select t1.tên hãng hàng_không from hãng hàng_không as t1 join chuyến bay as t2 on t1.id hãng hàng_không = t2.hãng hàng_không where t2.sân_bay khởi_hành = "CVO" except select t1.tên hãng hàng_không from hãng hàng_không as t1 join chuyến bay as t2 on t1.id hãng hàng_không = t2.hãng hàng_không where t2.sân_bay khởi_hành = "APG"
select t1.tên hãng hàng_không from hãng hàng_không as t1 join chuyến bay as t2 on t1.id hãng hàng_không = t2.hãng hàng_không where t2.sân_bay khởi_hành = "CVO" except select t1.tên hãng hàng_không from hãng hàng_không as t1 join chuyến bay as t2 on t1.id hãng hàng_không = t2.hãng hàng_không where t2.sân_bay khởi_hành = "APG"
select t1.tên hãng hàng_không from hãng hàng_không as t1 join chuyến bay as t2 on t1.id hãng hàng_không = t2.hãng hàng_không group by t1.tên hãng hàng_không having count ( * ) >= 10
select t1.tên hãng hàng_không from hãng hàng_không as t1 join chuyến bay as t2 on t1.id hãng hàng_không = t2.hãng hàng_không group by t1.tên hãng hàng_không having count ( * ) >= 10
select t1.tên hãng hàng_không from hãng hàng_không as t1 join chuyến bay as t2 on t1.id hãng hàng_không = t2.hãng hàng_không group by t1.tên hãng hàng_không having count ( * ) < 200
select t1.tên hãng hàng_không from hãng hàng_không as t1 join chuyến bay as t2 on t1.id hãng hàng_không = t2.hãng hàng_không group by t1.tên hãng hàng_không having count ( * ) < 200
select t2.số_hiệu chuyến bay from hãng hàng_không as t1 join chuyến bay as t2 on t1.id hãng hàng_không = t2.hãng hàng_không where t1.tên hãng hàng_không = "United Airlines"
select t2.số_hiệu chuyến bay from hãng hàng_không as t1 join chuyến bay as t2 on t1.id hãng hàng_không = t2.hãng hàng_không where t1.tên hãng hàng_không = "United Airlines"
select số_hiệu chuyến bay from chuyến bay where sân_bay khởi_hành = "APG"
select số_hiệu chuyến bay from chuyến bay where sân_bay khởi_hành = "APG"
select số_hiệu chuyến bay from chuyến bay where sân_bay đích = "APG"
select số_hiệu chuyến bay from chuyến bay where sân_bay đích = "APG"
select t1.số_hiệu chuyến bay from chuyến bay as t1 join sân_bay as t2 on t1.sân_bay khởi_hành = t2.mã sân_bay where t2.thành_phố = "Aberdeen"
select t1.số_hiệu chuyến bay from chuyến bay as t1 join sân_bay as t2 on t1.sân_bay khởi_hành = t2.mã sân_bay where t2.thành_phố = "Aberdeen"
select t1.số_hiệu chuyến bay from chuyến bay as t1 join sân_bay as t2 on t1.sân_bay đích = t2.mã sân_bay where t2.thành_phố = "Aberdeen"
select t1.số_hiệu chuyến bay from chuyến bay as t1 join sân_bay as t2 on t1.sân_bay đích = t2.mã sân_bay where t2.thành_phố = "Aberdeen"
select count ( * ) from chuyến bay as t1 join sân_bay as t2 on t1.sân_bay đích = t2.mã sân_bay join sân_bay as t3 on t1.sân_bay khởi_hành = t3.mã sân_bay where t2.thành_phố = "Aberdeen" or t2.thành_phố = "Abilene"
select count ( * ) from chuyến bay as t1 join sân_bay as t2 on t1.sân_bay đích = t2.mã sân_bay where t2.thành_phố = "Aberdeen" or t2.thành_phố = "Abilene"
select tên sân_bay from sân_bay where mã sân_bay not in ( select sân_bay đích from chuyến bay ) and mã sân_bay not in ( select sân_bay khởi_hành from chuyến bay )
select tên sân_bay from sân_bay where mã sân_bay not in ( select sân_bay khởi_hành from chuyến bay union select sân_bay đích from chuyến bay )
select
select ngày from trận đấu order by đội chủ nhà desc
select mùa giải , đội chủ nhà , đội khách from trận đấu
select avg ( trận đấu sân_nhà ) , max ( trận đấu sân_nhà ) , min ( trận đấu sân_nhà ) from sân_vận_động
select avg ( số_lượng người tham_dự trung_bình ) from sân_vận_động where phần_trăm sức chứa > 100
select cầu_thủ , số_lượng trận đấu , nguồn thông_tin from chấn_thương except select cầu_thủ , số_lượng trận đấu , nguồn thông_tin from chấn_thương where chấn_thương = "Concussion"
select t1.mùa giải from trận đấu as t1 join chấn_thương as t2 on t1.id = t2.id trận đấu where t2.cầu_thủ = "Walter Samuel"
select
select t1.id , t1.tên from sân_vận_động as t1 join trận đấu as t2 on t1.id = t2.id sân_vận_động join chấn_thương as t3 on t2.id = t3.id trận đấu group by t1.id order by count ( * ) desc limit 1
select
select t1.mùa giải , t2.tên from trận đấu as t1 join sân_vận_động as t2 on t1.id sân_vận_động = t2.id join chấn_thương as t3 on t1.id = t3.id trận đấu where t3.chấn_thương = "knee" or t3.chấn_thương = "head"
select count ( distinct nguồn thông_tin ) from chấn_thương
select count ( * ) from trận đấu where id not in ( select id trận đấu from chấn_thương )
select count ( distinct t2.chấn_thương ) from trận đấu as t1 join chấn_thương as t2 on t1.id = t2.id trận đấu where t1.mùa giải > 2010
select t3.tên from chấn_thương as t1 join trận đấu as t2 on t1.id trận đấu = t2.id join sân_vận_động as t3 on t2.id sân_vận_động = t3.id where t1.cầu_thủ = "Walter Samuel" intersect select t3.tên from chấn_thương as t1 join trận đấu as t2 on t1.id trận đấu = t2.id join sân_vận_động as t3 on t2.id sân_vận_động = t3.id where t1.cầu_thủ = "Thiago Motta"
select tên , số_lượng người tham_dự trung_bình , tổng_số người tham_dự from sân_vận_động where id not in ( select id sân_vận_động from chấn_thương )
select tên from sân_vận_động where tên like "%bank%"
select t1.tên , count ( * ) from sân_vận_động as t1 join trận đấu as t2 on t1.id = t2.id sân_vận_động group by t1.tên
select tên from sân_vận_động where số_lượng người tham_dự trung_bình > 5000 order by tổng_số người tham_dự desc
select năm phát_hành from bộ phim where tiêu_đề = "The Imitation Game"
select năm phát_hành from bộ phim where tiêu_đề = "The Imitation Game"
select năm sinh from diễn_viên where tên = "Benedict Cumberbatch"
select năm sinh from diễn_viên where tên = "Benedict Cumberbatch"
select quốc_tịch from diễn_viên where tên = "Christoph Waltz" and giới_tính = "female"
select quốc_tịch from diễn_viên where tên = "Christoph Waltz"
select tiêu_đề from bộ phim where năm phát_hành = 2015
select tên from diễn_viên where nơi sinh = "Tehran"
select tên from diễn_viên where nơi sinh = "Tehran"
select tên from diễn_viên where nơi sinh = "Tehran"
select tên from diễn_viên where quốc_tịch = "Afghanistan"
select tên from diễn_viên where quốc_tịch = "Afghanistan"
select tên from diễn_viên where quốc_tịch = "Afghanistan"
select tên from diễn_viên where năm sinh = 1984
select năm sinh from đạo_diễn where tên = "Kevin Spacey"
select năm sinh from diễn_viên where tên = "Kevin Spacey"
select nơi sinh from diễn_viên where tên = "Kevin Spacey"
select nơi sinh from diễn_viên where tên = "Kevin Spacey"
select quốc_tịch from diễn_viên where tên = "Kevin Spacey"
select ngân_sách from bộ phim where tiêu_đề = "Find Nemo"
select t3.tiêu_đề from đạo_diễn as t2 join đạo_diễn bởi as t1 on t2.id đạo_diễn = t1.id đạo_diễn join bộ phim as t3 on t3.id bộ phim = t1.id sê-ri phim where t2.tên = "Steven Spielberg" and t3.năm phát_hành > 2006
select t1.tên from đạo_diễn as t1 join đạo_diễn bởi as t2 on t1.id đạo_diễn = t2.id đạo_diễn join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim where t3.tiêu_đề = "James Bond"
select t2.tên from đạo_diễn bởi as t1 join đạo_diễn as t2 on t1.id đạo_diễn = t2.id đạo_diễn join bộ phim as t3 on t3.id bộ phim = t1.id sê-ri phim where t3.tiêu_đề = "James Bond"
select t2.tên from đạo_diễn bởi as t1 join đạo_diễn as t2 on t1.id đạo_diễn = t2.id đạo_diễn join bộ phim as t3 on t3.id bộ phim = t1.id sê-ri phim where t3.tiêu_đề = "James Bond"
select t1.tên from diễn_viên as t1 join phân_vai as t2 on t1.id diễn_viên = t2.id diễn_viên join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim join phân_vai as t4 on t2.id sê-ri phim = t4.id sê-ri phim where t3.tiêu_đề = "The Imitation Game" and t4.vai diễn = "Alan Turing"
select t1.tên from phân_vai as t2 join diễn_viên as t1 on t2.id diễn_viên = t1.id diễn_viên join bộ phim as t3 on t3.id bộ phim = t2.id sê-ri phim where t2.vai diễn = "Alan Turing" and t3.tiêu_đề = "The Imitation Game"
select t1.tên from phân_vai as t2 join diễn_viên as t1 on t2.id diễn_viên = t1.id diễn_viên join bản_quyền as t3 on t2.id sê-ri phim = t3.id sê-ri phim where t3.id quyền_tác_giả = 1 and t2.vai diễn = "Alan Turing" and t3.tiêu_đề = "The Imitation Game"
select t1.tên from được viết bởi as t2 join bộ phim as t1 on t2.id sê-ri phim = t1.id bộ phim join nhà viết kịch_bản as t3 on t2.id nhà viết kịch_bản = t3.id nhà viết kịch_bản where t3.tên = "Rome One Day"
select t1.tên from diễn_viên as t1 join phân_vai as t2 on t1.id diễn_viên = t2.id diễn_viên join bộ phim as t3 on t3.id bộ phim = t2.id sê-ri phim where t3.tiêu_đề = "The Imitation Game" and t2.vai diễn = 3
select t3.thể_loại from bộ phim as t1 join phân_loại as t2 on t1.id bộ phim = t2.id sê-ri phim join thể_loại as t3 on t2.id thể_loại = t3.id thể_loại where t1.tiêu_đề = "Jura Park"
select t1.tên from đạo_diễn as t1 join đạo_diễn bởi as t2 on t1.id đạo_diễn = t2.id đạo_diễn join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim where t3.tiêu_đề = "Joy" and t3.năm phát_hành = 2015
select t3.tiêu_đề from được viết bởi as t2 join diễn_viên as t1 on t2.id nhà viết kịch_bản = t1.id nhà viết kịch_bản join bộ phim as t3 on t3.id bộ phim = t2.id sê-ri phim where t1.tên = "Matt Damon"
select t3.tiêu_đề from được làm bởi as t2 join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim join được viết bởi as t1 on t1.id sê-ri phim = t2.id sê-ri phim join nhà viết kịch_bản as t4 on t1.id nhà viết kịch_bản = t4.id nhà viết kịch_bản where t4.tên = "Woody Allen"
select t3.tiêu_đề from phân_vai as t1 join diễn_viên as t2 on t1.id diễn_viên = t2.id diễn_viên join bộ phim as t3 on t3.id bộ phim = t1.id sê-ri phim where t2.tên = "Robin Wright"
select t3.tiêu_đề from phân_vai as t1 join diễn_viên as t2 on t1.id diễn_viên = t2.id diễn_viên join bộ phim as t3 on t3.id bộ phim = t1.id sê-ri phim where t2.tên = "Robin Wright"
select t2.tiêu_đề from phân_vai as t1 join bộ phim as t2 on t1.id sê-ri phim = t2.id bộ phim join diễn_viên as t3 on t1.id diễn_viên = t3.id diễn_viên where t3.tên = "Robin Wright"
select ngân_sách from bộ phim where tiêu_đề = "Juno" and năm phát_hành = 2007
select t3.tiêu_đề from thể_loại as t2 join phân_loại as t1 on t2.id thể_loại = t1.id thể_loại join bộ phim as t3 on t3.id bộ phim = t1.id sê-ri phim where t2.thể_loại = "Sci-Fi" and t3.năm phát_hành = 2010
select t3.tiêu_đề from thể_loại as t2 join phân_loại as t1 on t2.id thể_loại = t1.id thể_loại join bộ phim as t3 on t3.id bộ phim = t1.id sê-ri phim where t2.thể_loại = "Sci-Fi" and t3.năm phát_hành = 2010
select tên from diễn_viên where nơi sinh = "Austin" and năm sinh > 1980
select tên from diễn_viên where nơi sinh = "Austin" and năm sinh > 1980
select tên from diễn_viên where nơi sinh = "Austin" and năm sinh > 1980
select t3.tiêu_đề from đạo_diễn as t2 join đạo_diễn bởi as t1 on t2.id đạo_diễn = t1.id đạo_diễn join bộ phim as t3 on t3.id bộ phim = t1.id sê-ri phim where t2.nơi sinh = "Los Angeles"
select tên from diễn_viên where nơi sinh = "New York City" and năm sinh = 1984
select t3.tiêu_đề from nhãn as t2 join từ_khoá as t1 on t2.id từ_khoá = t1.id join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim where t1.từ_khoá = "nuclear weapons"
select t3.tiêu_đề from nhãn as t2 join từ_khoá as t1 on t2.id từ_khoá = t1.id join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim where t1.từ_khoá = "nuclear weapons"
select t1.tiêu_đề from bộ phim as t1 join đạo_diễn bởi as t2 on t1.id bộ phim = t2.id sê-ri phim join đạo_diễn as t3 on t2.id đạo_diễn = t3.id đạo_diễn where t3.tên = "Alfred Hitchcock"
select t3.tiêu_đề from phân_vai as t1 join diễn_viên as t2 on t1.id diễn_viên = t2.id diễn_viên join bộ phim as t3 on t3.id bộ phim = t1.id sê-ri phim join đạo_diễn bởi as t4 on t4.id sê-ri phim = t3.id bộ phim join đạo_diễn as t5 on t4.id đạo_diễn = t5.id đạo_diễn where t2.tên = "Taraneh Alidoosti" and t5.tên = "Asghar Farhadi"
select t3.tiêu_đề from đạo_diễn as t2 join đạo_diễn bởi as t1 on t2.id đạo_diễn = t1.id đạo_diễn join bộ phim as t3 on t3.id bộ phim = t1.id sê-ri phim join phân_vai as t4 on t3.id bộ phim = t4.id sê-ri phim join diễn_viên as t5 on t4.id diễn_viên = t5.id diễn_viên where t2.tên = "Asghar Farhadi" and t5.tên = "Taraneh Alidoosti"
select t3.tiêu_đề from đạo_diễn as t2 join đạo_diễn bởi as t1 on t2.id đạo_diễn = t1.id đạo_diễn join bộ phim as t3 on t3.id bộ phim = t1.id sê-ri phim join phân_vai as t4 on t3.id bộ phim = t4.id sê-ri phim join diễn_viên as t5 on t4.id diễn_viên = t5.id diễn_viên where t2.tên = "Asghar Farhadi" and t5.tên = "Taraneh Alidoosti"
select t3.tiêu_đề from đạo_diễn as t2 join đạo_diễn bởi as t1 on t2.id đạo_diễn = t1.id đạo_diễn join bộ phim as t3 on t3.id bộ phim = t1.id sê-ri phim join phân_vai as t4 on t3.id bộ phim = t4.id sê-ri phim join diễn_viên as t5 on t4.id diễn_viên = t5.id diễn_viên where t2.tên = "Asghar Farhad" and t5.tên = "Taraneh Alidoosti"
select t3.tiêu_đề from đạo_diễn as t2 join đạo_diễn bởi as t1 on t2.id đạo_diễn = t1.id đạo_diễn join bộ phim as t3 on t3.id bộ phim = t1.id sê-ri phim where t2.tên = "Shonda Rhimes"
select t1.tên from diễn_viên as t1 join phân_vai as t2 on t1.id diễn_viên = t2.id diễn_viên join bộ phim as t3 on t3.id bộ phim = t2.id sê-ri phim where t2.vai diễn = 1 and t3.tiêu_đề = "Scandal" and t1.tên = "Olivia Pope"
select t1.tên from được viết bởi as t3 join nhà viết kịch_bản as t1 on t3.id nhà viết kịch_bản = t1.id nhà viết kịch_bản join bộ phim as t2 on t2.id bộ phim = t3.id sê-ri phim where t2.tiêu_đề = "The Truman Show"
select t2.tên from được viết bởi as t3 join bộ phim as t1 on t3.id sê-ri phim = t1.id bộ phim join nhà viết kịch_bản as t2 on t3.id nhà viết kịch_bản = t2.id nhà viết kịch_bản where t1.tiêu_đề = "The Truman Show"
select t3.tiêu_đề from phân_vai as t2 join diễn_viên as t1 on t2.id diễn_viên = t1.id diễn_viên join bộ phim as t3 on t3.id bộ phim = t2.id sê-ri phim where t1.tên = "Scott Foley"
select t3.tiêu_đề from phân_vai as t1 join diễn_viên as t2 on t1.id diễn_viên = t2.id diễn_viên join bộ phim as t3 on t3.id bộ phim = t1.id sê-ri phim where t2.tên = "Scott Foley"
select distinct t2.tên from phân_vai as t1 join diễn_viên as t2 on t1.id diễn_viên = t2.id diễn_viên join bộ phim as t3 on t3.id bộ phim = t1.id sê-ri phim where t2.tên = "Kate Winslet"
select distinct t2.tên from phân_vai as t1 join diễn_viên as t2 on t1.id diễn_viên = t2.id diễn_viên join bộ phim as t3 on t3.id bộ phim = t1.id sê-ri phim join đạo_diễn bởi as t4 on t4.id sê-ri phim = t3.id bộ phim join đạo_diễn as t5 on t4.id đạo_diễn = t5.id đạo_diễn where t2.tên = "Kate Winslet"
select t1.tên from đạo_diễn as t1 join đạo_diễn bởi as t2 on t1.id đạo_diễn = t2.id đạo_diễn join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim where t3.tiêu_đề = "The Great Debate" and t3.năm phát_hành = 2013
select tên from diễn_viên where nơi sinh = "Austin" and giới_tính = "female"
select tên from diễn_viên where quốc_tịch = "Italy" and năm sinh > 1980
select tên from diễn_viên where nơi sinh = "New York City" and năm sinh > 1980 and giới_tính = "female"
select t1.tên from diễn_viên as t1 join phân_vai as t2 on t1.id diễn_viên = t2.id diễn_viên join bộ phim as t3 on t3.id bộ phim = t2.id sê-ri phim where t3.tiêu_đề = "Saving Private Ryan" and t2.vai diễn = 2 and t1.giới_tính = "female"
select tên from đạo_diễn where quốc_tịch = "Afghanistan"
select t1.tên from diễn_viên as t1 join phân_vai as t2 on t1.id diễn_viên = t2.id diễn_viên join bộ phim as t3 on t3.id bộ phim = t2.id sê-ri phim where t3.tiêu_đề = "The Women Warriors"
select t1.tên from diễn_viên as t1 join phân_vai as t2 on t1.id diễn_viên = t2.id diễn_viên join bộ phim as t3 on t3.id bộ phim = t2.id sê-ri phim where t3.tiêu_đề = "James Bond" and t1.quốc_tịch = "Canada"
select t3.tiêu_đề from phân_vai as t2 join diễn_viên as t1 on t2.id diễn_viên = t1.id diễn_viên join bộ phim as t3 on t3.id bộ phim = t2.id sê-ri phim where t1.tên = "Rowan Atkinson" and t2.vai diễn = "Ngài Bean"
select t3.nơi sinh from đạo_diễn as t2 join đạo_diễn bởi as t1 on t2.id đạo_diễn = t1.id đạo_diễn join bộ phim as t3 on t3.id bộ phim = t1.id sê-ri phim where t3.tiêu_đề = "The Past"
select t1.tên from diễn_viên as t1 join phân_vai as t2 on t1.id diễn_viên = t2.id diễn_viên join bộ phim as t3 on t3.id bộ phim = t2.id sê-ri phim where t2.vai diễn = "Godfather"
select t3.thể_loại from đạo_diễn as t2 join đạo_diễn bởi as t1 on t2.id đạo_diễn = t1.id đạo_diễn join phân_loại as t3 on t3.id sê-ri phim = t1.id sê-ri phim join bộ phim as t4 on t4.id bộ phim = t3.id sê-ri phim where t2.tên = "Asghar Farhadi"
select t3.tiêu_đề from phân_vai as t2 join diễn_viên as t1 on t2.id diễn_viên = t1.id diễn_viên join bộ phim as t3 on t3.id bộ phim = t2.id sê-ri phim where t1.tên = "Daffy Duck"
select t2.vai diễn from bộ phim as t1 join phân_vai as t2 on t1.id bộ phim = t2.id sê-ri phim where t1.tiêu_đề = "Grandpa chân dài"
select t3.tên from nhãn as t2 join từ_khoá as t1 on t2.id từ_khoá = t1.id join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim where t1.từ_khoá = "nuclear weapons"
select count ( distinct t3.tiêu_đề ) from diễn_viên as t1 join phân_vai as t2 on t1.id diễn_viên = t2.id diễn_viên join bộ phim as t3 on t3.id bộ phim = t2.id sê-ri phim where t1.tên = "Jennifer Aniston" and t3.năm phát_hành > 2010
select count ( distinct t1.tên ) from phân_vai as t2 join diễn_viên as t1 on t2.id diễn_viên = t1.id diễn_viên join bộ phim as t3 on t3.id bộ phim = t2.id sê-ri phim where t3.tiêu_đề = "Ryan" s binh nhì "
select count ( distinct t1.tên ) from phân_vai as t2 join diễn_viên as t1 on t2.id diễn_viên = t1.id diễn_viên join bộ phim as t3 on t3.id bộ phim = t2.id sê-ri phim where t3.tiêu_đề = "Saving Private Ryan"
select count ( distinct t3.tiêu_đề ) from đạo_diễn as t2 join đạo_diễn bởi as t1 on t2.id đạo_diễn = t1.id đạo_diễn join bộ phim as t3 on t3.id bộ phim = t1.id sê-ri phim where t2.tên = "Steven Spielberg"
select count ( distinct tiêu_đề ) from bộ phim where năm phát_hành = 2013
select count ( distinct tiêu_đề ) from bộ phim where năm phát_hành = 2013
select t3.tiêu_đề , t3.năm phát_hành from đạo_diễn as t2 join đạo_diễn bởi as t1 on t2.id đạo_diễn = t1.id đạo_diễn join bộ phim as t3 on t3.id bộ phim = t1.id sê-ri phim where t2.tên = "Woody Allen" group by t3.tiêu_đề , t3.năm phát_hành
select count ( distinct t2.tiêu_đề ) from phân_vai as t1 join bộ phim as t2 on t1.id sê-ri phim = t2.id bộ phim join diễn_viên as t3 on t1.id diễn_viên = t3.id diễn_viên where t3.tên = "Shahab Hosseini"
select count ( distinct t3.tiêu_đề ) from đạo_diễn as t2 join đạo_diễn bởi as t1 on t2.id đạo_diễn = t1.id đạo_diễn join bộ phim as t3 on t3.id bộ phim = t1.id sê-ri phim where t2.tên = "Shahab Hosseini"
select count ( distinct t3.tiêu_đề ) from phân_vai as t2 join diễn_viên as t1 on t2.id diễn_viên = t1.id diễn_viên join bộ phim as t3 on t3.id bộ phim = t2.id sê-ri phim where t1.tên = "Shahab Hosseini"
select
select count ( * ) from diễn_viên where nơi sinh = "Los Angeles" and năm sinh > 2000
select count ( distinct t3.tiêu_đề ) from đạo_diễn as t2 join đạo_diễn bởi as t1 on t2.id đạo_diễn = t1.id đạo_diễn join bộ phim as t3 on t3.id bộ phim = t1.id sê-ri phim where t2.tên = "Humphrey Bogart" and t3.năm phát_hành < 1942
select t2.tiêu_đề , t2.năm phát_hành from diễn_viên as t1 join bộ phim as t2 on t2.id bộ phim in ( select t3.id sê-ri phim from phân_vai as t3 join diễn_viên as t4 on t3.id diễn_viên = t4.id diễn_viên where t4.tên = "Brad Pitt" ) where t1.tên = "Brad Pitt"
select count ( distinct t3.tiêu_đề ) from nhãn as t2 join từ_khoá as t1 on t2.id từ_khoá = t1.id join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim where t3.năm phát_hành = 2015 and t1.từ_khoá = "Iraq War"
select count ( distinct t3.tiêu_đề ) from nhãn as t2 join từ_khoá as t1 on t2.id từ_khoá = t1.id join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim where t1.từ_khoá = "Ba Tư" and t3.năm phát_hành > 1990
select
select count ( distinct t3.tiêu_đề ) from đạo_diễn as t2 join đạo_diễn bởi as t1 on t2.id đạo_diễn = t1.id đạo_diễn join bộ phim as t3 on t3.id bộ phim = t1.id sê-ri phim where t2.tên = "Quentin Tarantino" and t3.năm phát_hành < 2010
select count ( distinct t2.tiêu_đề ) from đạo_diễn as t3 join đạo_diễn bởi as t1 on t3.id đạo_diễn = t1.id đạo_diễn join bộ phim as t2 on t2.id bộ phim = t1.id sê-ri phim where t3.tên = "Quentin Tarantino" and t2.năm phát_hành < 2002 and t2.năm phát_hành > 2010
select count ( distinct tên ) from diễn_viên where nơi sinh = "New York City" and năm sinh > 1980 and giới_tính = "female"
select count ( distinct t2.tên ) from đạo_diễn as t3 join đạo_diễn bởi as t4 on t3.id đạo_diễn = t4.id đạo_diễn join phim_truyền_hình nhiều tập as t1 on t4.id sê-ri phim = t1.id sê-ri phim join diễn_viên as t2 on t2.id diễn_viên = t5.id diễn_viên where t3.tên = "Jim Jarmusch" and t2.quốc_tịch = "Iran"
select count ( distinct t1.tên ) from diễn_viên as t1 join phân_vai as t2 on t1.id diễn_viên = t2.id diễn_viên join bộ phim as t3 on t3.id bộ phim = t2.id sê-ri phim where t3.tiêu_đề = "The 3 o" clock high" and t1.quốc_tịch = "China"
select t3.tiêu_đề from phân_vai as t1 join diễn_viên as t2 on t1.id diễn_viên = t2.id diễn_viên join bộ phim as t3 on t3.id bộ phim = t1.id sê-ri phim where t2.tên = "Woody Strode" intersect select t3.tiêu_đề from phân_vai as t1 join diễn_viên as t2 on t1.id diễn_viên = t2.id diễn_viên join bộ phim as t3 on t3.id bộ phim = t1.id sê-ri phim where t2.tên = "Jason Robards"
select t4.tiêu_đề from phân_vai as t5 join diễn_viên as t1 on t5.id diễn_viên = t1.id diễn_viên join bộ phim as t4 on t4.id bộ phim = t5.id sê-ri phim join phân_vai as t3 on t4.id bộ phim = t3.id sê-ri phim join diễn_viên as t2 on t3.id diễn_viên = t2.id diễn_viên where t1.tên = "Woody Strode" and t2.tên = "Jason Robards"
select t3.tiêu_đề from phân_vai as t1 join diễn_viên as t2 on t1.id diễn_viên = t2.id diễn_viên join bộ phim as t3 on t3.id bộ phim = t1.id sê-ri phim where t2.tên = "Woody Strode" intersect select t3.tiêu_đề from phân_vai as t1 join diễn_viên as t2 on t1.id diễn_viên = t2.id diễn_viên join bộ phim as t3 on t3.id bộ phim = t1.id sê-ri phim where t2.tên = "Jason Robards"
select t3.tiêu_đề from phân_vai as t1 join diễn_viên as t2 on t1.id diễn_viên = t2.id diễn_viên join bộ phim as t3 on t3.id bộ phim = t1.id sê-ri phim where t2.tên = "Woody Strode" intersect select t3.tiêu_đề from phân_vai as t1 join diễn_viên as t2 on t1.id diễn_viên = t2.id diễn_viên join bộ phim as t3 on t3.id bộ phim = t1.id sê-ri phim where t2.tên = "Jason Robards"
select distinct t1.tên from diễn_viên as t1 join phân_vai as t2 on t1.id diễn_viên = t2.id diễn_viên join bộ phim as t3 on t3.id bộ phim = t2.id sê-ri phim where t2.vai diễn = 1 and t1.tên = "Tom Hanks"
select t2.tiêu_đề from đạo_diễn bởi as t1 join bộ phim as t2 on t1.id sê-ri phim = t2.id bộ phim join đạo_diễn bởi as t3 on t3.id sê-ri phim = t2.id bộ phim where t1.id đạo_diễn = t3.id đạo_diễn and t2.tiêu_đề = "The_Wire"
select t3.tiêu_đề from thể_loại as t2 join phân_loại as t1 on t2.id thể_loại = t1.id thể_loại join bộ phim as t3 on t3.id bộ phim = t1.id sê-ri phim group by t3.tiêu_đề order by count ( distinct t2.thể_loại ) desc limit 1
select t3.tiêu_đề from diễn_viên as t1 join phân_vai as t2 on t1.id diễn_viên = t2.id diễn_viên join bộ phim as t3 on t3.id bộ phim = t2.id sê-ri phim where t1.quốc_tịch = "China" group by t3.tiêu_đề order by count ( distinct t1.tên ) desc limit 1
select t1.tên from diễn_viên as t1 join phân_vai as t2 on t1.id diễn_viên = t2.id diễn_viên join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim join đạo_diễn bởi as t4 on t3.id bộ phim = t4.id sê-ri phim join đạo_diễn as t5 on t4.id đạo_diễn = t5.id đạo_diễn where t5.tên = "Quentin Tarantino" order by t3.năm phát_hành desc limit 1
select t1.tiêu_đề , t1.ngân_sách from bộ phim as t1 join đạo_diễn bởi as t2 on t1.id bộ phim = t2.id sê-ri phim join đạo_diễn as t3 on t2.id đạo_diễn = t3.id đạo_diễn where t3.tên = "Quentin Tarantino" order by t1.năm phát_hành desc limit 1
select t3.tiêu_đề from đạo_diễn as t2 join đạo_diễn bởi as t1 on t2.id đạo_diễn = t1.id đạo_diễn join bộ phim as t3 on t3.id bộ phim = t1.id sê-ri phim where t2.tên = "Jim Jarmusch" order by t3.năm phát_hành desc limit 1
select t2.tên from đạo_diễn bởi as t1 join đạo_diễn as t2 on t1.id đạo_diễn = t2.id đạo_diễn group by t1.id đạo_diễn order by count ( * ) desc limit 1
select t3.tiêu_đề from phân_vai as t2 join diễn_viên as t1 on t2.id diễn_viên = t1.id diễn_viên join bộ phim as t3 on t3.id bộ phim = t2.id sê-ri phim where t1.tên = "Gabriele Ferzetti" order by t3.năm phát_hành desc limit 1
select chi_tiết khách_hàng from khách_hàng order by chi_tiết khách_hàng
select chi_tiết khách_hàng from khách_hàng order by chi_tiết khách_hàng asc
select mã loại chính_sách from chính_sách as t1 join khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng where t2.chi_tiết khách_hàng = "Dayana Robel"
select t2.mã loại chính_sách from khách_hàng as t1 join chính_sách as t2 on t1.id khách_hàng = t2.id khách_hàng where t1.chi_tiết khách_hàng = "Dayana Robel"
select mã loại chính_sách from chính_sách group by mã loại chính_sách order by count ( * ) desc limit 1
select mã loại chính_sách from chính_sách group by mã loại chính_sách order by count ( * ) desc limit 1
select mã loại chính_sách from chính_sách group by mã loại chính_sách having count ( * ) > 2
select mã loại chính_sách from chính_sách group by mã loại chính_sách having count ( * ) > 2
select sum ( số tiền được trả ) , avg ( số tiền được trả ) from tiêu_đề của yêu_cầu
select sum ( số tiền được trả ) , avg ( số tiền được trả ) from tiêu_đề của yêu_cầu
select sum ( t1.số tiền được yêu_cầu ) from tiêu_đề của yêu_cầu as t1 join tài_liệu của yêu_cầu as t2 on t1.id tiêu_đề của yêu_cầu = t2.id yêu_cầu where t2.ngày tạo ra = ( select ngày tạo ra from tài_liệu của yêu_cầu order by ngày tạo ra limit 1 )
select sum ( t1.số tiền được yêu_cầu ) from tiêu_đề của yêu_cầu as t1 join tài_liệu của yêu_cầu as t2 on t1.id tiêu_đề của yêu_cầu = t2.id yêu_cầu where t2.ngày tạo ra = ( select ngày tạo ra from tài_liệu của yêu_cầu order by ngày tạo ra limit 1 )
select t3.chi_tiết khách_hàng from tiêu_đề của yêu_cầu as t1 join chính_sách as t2 on t1.id chính_sách = t2.id chính_sách join khách_hàng as t3 on t2.id khách_hàng = t3.id khách_hàng where t1.số tiền được yêu_cầu = ( select max ( số tiền được yêu_cầu ) from tiêu_đề của yêu_cầu )
select t3.chi_tiết khách_hàng from tiêu_đề của yêu_cầu as t1 join chính_sách as t2 on t1.id chính_sách = t2.id chính_sách join khách_hàng as t3 on t2.id khách_hàng = t3.id khách_hàng where t1.số tiền được yêu_cầu = ( select max ( số tiền được yêu_cầu ) from tiêu_đề của yêu_cầu )
select t3.chi_tiết khách_hàng from tiêu_đề của yêu_cầu as t1 join chính_sách as t2 on t1.id chính_sách = t2.id chính_sách join khách_hàng as t3 on t2.id khách_hàng = t3.id khách_hàng where t1.số tiền được trả = ( select min ( số tiền được trả ) from tiêu_đề của yêu_cầu )
select t3.chi_tiết khách_hàng from tiêu_đề của yêu_cầu as t1 join chính_sách as t2 on t1.id chính_sách = t2.id chính_sách join khách_hàng as t3 on t2.id khách_hàng = t3.id khách_hàng where t1.số tiền được trả = ( select min ( số tiền được trả ) from tiêu_đề của yêu_cầu )
select chi_tiết khách_hàng from khách_hàng except select t2.chi_tiết khách_hàng from chính_sách as t1 join khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng
select chi_tiết khách_hàng from khách_hàng except select t2.chi_tiết khách_hàng from chính_sách as t1 join khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng
select count ( * ) from giai_đoạn xử_lý yêu_cầu
select count ( * ) from giai_đoạn xử_lý yêu_cầu
select t1.tên tình_trạng yêu_cầu , t2.id giai_đoạn yêu_cầu from giai_đoạn xử_lý yêu_cầu as t1 join xử_lý yêu_cầu as t2 on t1.id giai_đoạn xử_lý yêu_cầu = t2.id giai_đoạn giai_đoạn yêu_cầu group by t2.id giai_đoạn giai_đoạn yêu_cầu order by count ( * ) desc limit 1
select t1.tên tình_trạng yêu_cầu from giai_đoạn xử_lý yêu_cầu as t1 join xử_lý yêu_cầu as t2 on t1.id giai_đoạn xử_lý yêu_cầu = t2.id giai_đoạn xử_lý yêu_cầu group by t2.id giai_đoạn xử_lý yêu_cầu order by count ( * ) desc limit 1
select chi_tiết khách_hàng from khách_hàng where chi_tiết khách_hàng like "%Diana%"
select chi_tiết khách_hàng from khách_hàng where chi_tiết khách_hàng like "%Diana%"
select distinct t2.chi_tiết khách_hàng from chính_sách as t1 join khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng where t1.mã loại chính_sách = "Uỷ_quyền"
select t2.chi_tiết khách_hàng from chính_sách as t1 join khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng where t1.mã loại chính_sách = "Insurance"
select distinct t2.chi_tiết khách_hàng from chính_sách as t1 join khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng where t1.mã loại chính_sách = "Unlimited" or t1.mã loại chính_sách = "Single"
select t2.chi_tiết khách_hàng from chính_sách as t1 join khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng where t1.mã loại chính_sách = "Union" or t1.mã loại chính_sách = "Unified"
select chi_tiết khách_hàng from khách_hàng union select chi_tiết nhân_viên from nhân_viên
select chi_tiết khách_hàng from khách_hàng union select chi_tiết nhân_viên from nhân_viên
select mã loại chính_sách , count ( * ) from chính_sách group by mã loại chính_sách
select mã loại chính_sách , count ( * ) from chính_sách group by mã loại chính_sách
select t2.chi_tiết khách_hàng from chính_sách as t1 join khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng group by t2.chi_tiết khách_hàng order by count ( * ) desc limit 1
select t2.chi_tiết khách_hàng from chính_sách as t1 join khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng group by t2.chi_tiết khách_hàng order by count ( * ) desc limit 1
select mô_tả về tình_trạng yêu_cầu from giai_đoạn xử_lý yêu_cầu where tên tình_trạng yêu_cầu = "Open"
select mô_tả về tình_trạng yêu_cầu from giai_đoạn xử_lý yêu_cầu where tên tình_trạng yêu_cầu = "Open"
select count ( distinct mã kết_quả của yêu_cầu ) from xử_lý yêu_cầu
select count ( distinct mã kết_quả của yêu_cầu ) from xử_lý yêu_cầu
select t2.chi_tiết khách_hàng from chính_sách as t1 join khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng where t1.ngày bắt_đầu = ( select max ( ngày bắt_đầu ) from chính_sách )
select t3.chi_tiết khách_hàng from chính_sách as t1 join tiêu_đề của yêu_cầu as t2 on t1.id chính_sách = t2.id chính_sách join khách_hàng as t3 on t1.id khách_hàng = t3.id khách_hàng where t2.ngày yêu_cầu = ( select max ( ngày yêu_cầu ) from tiêu_đề của yêu_cầu )
select t1.chi_tiết sự_kiện from sự_kiện as t1 join dịch_vụ as t2 on t1.id dịch_vụ = t2.id dịch_vụ where t2.mã loại dịch_vụ = "Wedding"
select t1.id sự_kiện , t1.chi_tiết sự_kiện from sự_kiện as t1 join người tham_gia sự_kiện as t2 on t1.id sự_kiện = t2.id sự_kiện group by t1.id sự_kiện having count ( * ) > 1
select t1.id người tham_gia , t1.mã loại người tham_gia , count ( * ) from người tham_gia as t1 join người tham_gia sự_kiện as t2 on t1.id người tham_gia = t2.id người tham_gia group by t1.id người tham_gia
select id người tham_gia , mã loại người tham_gia , chi_tiết người tham_gia from người tham_gia
select count ( * ) from người tham_gia where mã loại người tham_gia = "Organizer"
select mã loại dịch_vụ from dịch_vụ order by mã loại dịch_vụ
select id dịch_vụ , chi_tiết sự_kiện from sự_kiện
select count ( * ) from người tham_gia sự_kiện as t1 join sự_kiện as t2 on t1.id sự_kiện = t2.id sự_kiện join người tham_gia as t3 on t1.id người tham_gia = t3.id người tham_gia where chi_tiết người tham_gia like "%Dr%"
select mã loại người tham_gia from người tham_gia group by mã loại người tham_gia order by count ( * ) desc limit 1
select t1.id dịch_vụ , t1.mã loại dịch_vụ from dịch_vụ as t1 join người tham_gia sự_kiện as t2 on t1.id dịch_vụ = t2.id dịch_vụ group by t1.id dịch_vụ order by count ( * ) limit 1
select t1.id sự_kiện from sự_kiện as t1 join người tham_gia sự_kiện as t2 on t1.id sự_kiện = t2.id sự_kiện group by t1.id sự_kiện order by count ( * ) desc limit 1
select id sự_kiện from sự_kiện except select t1.id sự_kiện from người tham_gia as t1 join người tham_gia sự_kiện as t2 on t1.id người tham_gia = t2.id người tham_gia where chi_tiết người tham_gia = "Kenyatta Kuhn"
select t1.mã loại dịch_vụ from dịch_vụ as t1 join sự_kiện as t2 on t1.id dịch_vụ = t2.id dịch_vụ where chi_tiết sự_kiện = "Success" intersect select t1.mã loại dịch_vụ from dịch_vụ as t1 join sự_kiện as t2 on t1.id dịch_vụ = t2.id dịch_vụ where chi_tiết sự_kiện = "Failed"
select count ( * ) from sự_kiện where id sự_kiện not in ( select id sự_kiện from người tham_gia sự_kiện )
select count ( distinct id người tham_gia ) from người tham_gia sự_kiện
select count ( * ) from kỹ_thuật_viên
select count ( * ) from kỹ_thuật_viên
select tên from kỹ_thuật_viên order by tuổi asc
select tên from kỹ_thuật_viên order by tuổi asc
select đội , năm bắt_đầu from kỹ_thuật_viên
select đội , năm bắt_đầu from kỹ_thuật_viên
select tên from kỹ_thuật_viên where đội != "NYY"
select tên from kỹ_thuật_viên where đội != "NYY"
select tên from kỹ_thuật_viên where tuổi = 36 or tuổi = 37
select tên from kỹ_thuật_viên where tuổi = 36 or tuổi = 37
select năm bắt_đầu from kỹ_thuật_viên order by tuổi desc limit 1
select năm bắt_đầu from kỹ_thuật_viên order by tuổi desc limit 1
select đội , count ( * ) from kỹ_thuật_viên group by đội
select đội , count ( * ) from kỹ_thuật_viên group by đội
select đội from kỹ_thuật_viên group by đội order by count ( * ) desc limit 1
select đội from kỹ_thuật_viên group by đội order by count ( * ) desc limit 1
select đội from kỹ_thuật_viên group by đội order by count ( * ) desc limit 1
select đội from kỹ_thuật_viên group by đội having count ( * ) >= 2
select t3.tên , t2.loạt máy from phân_công sửa_chữa as t1 join máy_móc as t2 on t1.id máy = t2.id máy join kỹ_thuật_viên as t3 on t1.id kỹ_thuật_viên = t3.id kỹ_thuật_viên
select t3.tên , t2.loạt máy from phân_công sửa_chữa as t1 join máy_móc as t2 on t1.id máy = t2.id máy join kỹ_thuật_viên as t3 on t1.id kỹ_thuật_viên = t3.id kỹ_thuật_viên
select t3.tên from phân_công sửa_chữa as t1 join máy_móc as t2 on t1.id máy = t2.id máy join kỹ_thuật_viên as t3 on t1.id kỹ_thuật_viên = t3.id kỹ_thuật_viên order by t2.xếp_hạng chất_lượng asc
select t3.tên from phân_công sửa_chữa as t1 join máy_móc as t2 on t1.id máy = t2.id máy join kỹ_thuật_viên as t3 on t1.id kỹ_thuật_viên = t3.id kỹ_thuật_viên order by t2.xếp_hạng chất_lượng
select t3.tên from phân_công sửa_chữa as t1 join máy_móc as t2 on t1.id máy = t2.id máy join kỹ_thuật_viên as t3 on t1.id kỹ_thuật_viên = t3.id kỹ_thuật_viên where t2.điểm giá_trị > 70
select t3.tên from phân_công sửa_chữa as t1 join máy_móc as t2 on t1.id máy = t2.id máy join kỹ_thuật_viên as t3 on t1.id kỹ_thuật_viên = t3.id kỹ_thuật_viên where t2.điểm giá_trị > 70
select t3.tên , count ( * ) from phân_công sửa_chữa as t1 join máy_móc as t2 on t1.id máy = t2.id máy join kỹ_thuật_viên as t3 on t1.id kỹ_thuật_viên = t3.id kỹ_thuật_viên group by t3.tên
select t1.tên , count ( * ) from kỹ_thuật_viên as t1 join phân_công sửa_chữa as t2 on t1.id kỹ_thuật_viên = t2.id kỹ_thuật_viên group by t1.tên
select tên from kỹ_thuật_viên where id kỹ_thuật_viên not in ( select id kỹ_thuật_viên from phân_công sửa_chữa )
select tên from kỹ_thuật_viên where id kỹ_thuật_viên not in ( select id kỹ_thuật_viên from phân_công sửa_chữa )
select năm bắt_đầu from kỹ_thuật_viên where đội = "CLE" intersect select năm bắt_đầu from kỹ_thuật_viên where đội = "CWS"
select năm bắt_đầu from kỹ_thuật_viên where đội = "CLE" intersect select năm bắt_đầu from kỹ_thuật_viên where đội = "CWS"
select count ( * ) from ống_kính máy_ảnh where độ dài tiêu_cự theo mm > 15
select nhãn_hiệu , tên from ống_kính máy_ảnh order by khẩu_độ tối_đa desc
select id , màu_sắc , tên from ảnh
select max ( chiều cao ) , avg ( chiều cao ) from núi
select avg ( độ nổi ) from núi where quốc_gia = "Morocco"
select tên , chiều cao , độ nổi from núi where dãy núi != "Aberdare Range"
select t1.id , t1.tên from núi as t1 join ảnh as t2 on t1.id = t2.id núi where t1.chiều cao > 4000
select t1.tên , t1.id from núi as t1 join ảnh as t2 on t1.id = t2.id núi group by t1.id having count ( * ) >= 2
select t1.tên from ống_kính máy_ảnh as t1 join ảnh as t2 on t1.id = t2.id ống_kính máy_ảnh join núi as t3 on t2.id núi = t3.id order by t3.chiều cao desc limit 1
select t1.tên from ảnh as t1 join ống_kính máy_ảnh as t2 on t1.id ống_kính máy_ảnh = t2.id where t2.nhãn_hiệu = "Sigma" or t2.nhãn_hiệu = "Olympus"
select count ( distinct nhãn_hiệu ) from ống_kính máy_ảnh
select count ( * ) from ống_kính máy_ảnh where id not in ( select id ống_kính máy_ảnh from ảnh )
select count ( distinct t1.nhãn_hiệu ) from ống_kính máy_ảnh as t1 join ảnh as t2 on t1.id = t2.id ống_kính máy_ảnh join núi as t3 on t3.id = t2.id id núi where t3.quốc_gia = "Ethiopia"
select distinct t1.nhãn_hiệu from ống_kính máy_ảnh as t1 join ảnh as t2 on t1.id = t2.id ống_kính máy_ảnh join núi as t3 on t2.id núi = t3.id where t3.dãy núi = "Toubkal Atlas" intersect select distinct t1.nhãn_hiệu from ống_kính máy_ảnh as t1 join ảnh as t2 on t1.id = t2.id ống_kính máy_ảnh join núi as t3 on t2.id núi = t3.id where t3.dãy núi = "Lasta Massif"
select tên , độ nổi from núi except select t1.tên , t1.độ nổi from núi as t1 join ảnh as t2 on t1.id = t2.id núi join ống_kính máy_ảnh as t3 on t2.id ống_kính máy_ảnh = t3.id where t3.nhãn_hiệu = "Sigma"
select tên from ống_kính máy_ảnh where tên like "%Digital%"
select t1.tên , count ( * ) from ống_kính máy_ảnh as t1 join ảnh as t2 on t1.id = t2.id ống_kính máy_ảnh group by t1.tên order by count ( * )
select count ( * ) from ban nhạc
select count ( * ) from ban nhạc
select distinct hãng thu âm from album
select distinct hãng thu âm from album
select * from album where năm = 2012
select tiêu_đề from album where năm = 2012
select t2.vị_trí trên sân_khấu from buổi biểu_diễn as t1 join ban nhạc as t2 on t1.nghệ_sĩ trong ban nhạc = t2.id where tên = "Solveig"
select t2.vị_trí trên sân_khấu from buổi biểu_diễn as t1 join ban nhạc as t2 on t1.nghệ_sĩ trong ban nhạc = t2.id where t2.tên = "Solveig"
select count ( * ) from bài hát
select count ( * ) from bài hát
select t3.tiêu_đề from buổi biểu_diễn as t1 join ban nhạc as t2 on t1.nghệ_sĩ trong ban nhạc = t2.id join bài hát as t3 on t3.id bài hát = t1.id bài hát where t2.họ = "Heilo"
select t3.tiêu_đề from buổi biểu_diễn as t1 join ban nhạc as t2 on t1.nghệ_sĩ trong ban nhạc = t2.id join bài hát as t3 on t3.id bài hát = t1.id bài hát where t2.họ = "Heilo"
select count ( * ) from buổi biểu_diễn as t1 join ban nhạc as t2 on t1.nghệ_sĩ trong ban nhạc = t2.id join bài hát as t3 on t3.id bài hát = t1.id bài hát where t3.tiêu_đề = "Flash"
select count ( * ) from buổi biểu_diễn as t1 join ban nhạc as t2 on t1.nghệ_sĩ trong ban nhạc = t2.id join bài hát as t3 on t3.id bài hát = t1.id bài hát where t3.tiêu_đề = "Flash"
select t3.tiêu_đề from ban nhạc as t1 join giọng hát as t2 on t1.id = t2.nghệ_sĩ trong ban nhạc join bài hát as t3 on t3.id bài hát = t2.id bài hát where t1.tên = "Marianne"
select t3.tiêu_đề from buổi biểu_diễn as t1 join ban nhạc as t2 on t1.nghệ_sĩ trong ban nhạc = t2.id join bài hát as t3 on t3.id bài hát = t1.id bài hát where t2.tên = "Marianne"
select t2.tên , t2.họ from buổi biểu_diễn as t1 join ban nhạc as t2 on t1.nghệ_sĩ trong ban nhạc = t2.id join bài hát as t3 on t3.id bài hát = t1.id bài hát where t3.tiêu_đề = "Badlands"
select t2.tên , t2.họ from buổi biểu_diễn as t1 join ban nhạc as t2 on t1.nghệ_sĩ trong ban nhạc = t2.id join bài hát as t3 on t3.id bài hát = t1.id bài hát where t3.tiêu_đề = "Badlands"
select t2.tên , t2.họ from buổi biểu_diễn as t1 join ban nhạc as t2 on t1.nghệ_sĩ trong ban nhạc = t2.id join bài hát as t3 on t3.id bài hát = t1.id bài hát where t3.tiêu_đề = "Badlands" and t1.vị_trí trên sân_khấu = "back"
select t2.tên , t2.họ from buổi biểu_diễn as t1 join ban nhạc as t2 on t1.nghệ_sĩ trong ban nhạc = t2.id join bài hát as t3 on t3.id bài hát = t1.id bài hát where t3.tiêu_đề = "Badlands" and t1.vị_trí trên sân_khấu = "back"
select count ( distinct hãng thu âm ) from album
select count ( distinct hãng thu âm ) from album
select hãng thu âm from album group by hãng thu âm order by count ( * ) desc limit 1
select hãng thu âm from album group by hãng thu âm order by count ( * ) desc limit 1
select t2.họ from buổi biểu_diễn as t1 join ban nhạc as t2 on t1.nghệ_sĩ trong ban nhạc = t2.id join bài hát as t3 on t3.id bài hát = t1.id bài hát group by t2.họ order by count ( * ) desc limit 1
select t2.họ from buổi biểu_diễn as t1 join ban nhạc as t2 on t1.nghệ_sĩ trong ban nhạc = t2.id join bài hát as t3 on t3.id bài hát = t1.id bài hát group by t2.họ order by count ( * ) desc limit 1
select t2.họ from buổi biểu_diễn as t1 join ban nhạc as t2 on t1.nghệ_sĩ trong ban nhạc = t2.id where vị_trí trên sân_khấu = "back" group by họ order by count ( * ) desc limit 1
select t2.họ from buổi biểu_diễn as t1 join ban nhạc as t2 on t1.nghệ_sĩ trong ban nhạc = t2.id where vị_trí trên sân_khấu = "back" group by họ order by count ( * ) desc limit 1
select tiêu_đề from bài hát where tiêu_đề like "%the%"
select tiêu_đề from bài hát where tiêu_đề like "%the%"
select distinct nhạc_cụ from nhạc_cụ
select distinct nhạc_cụ from nhạc_cụ
select nhạc_cụ from nhạc_cụ as t1 join ban nhạc as t2 on t1.id nghệ_sĩ trong ban nhạc = t2.id join bài hát as t3 on t3.id bài hát = t1.id bài hát where t2.họ = "Heilo" and t3.tiêu_đề = "Le Pop"
select t4.nhạc_cụ from buổi biểu_diễn as t1 join ban nhạc as t2 on t1.nghệ_sĩ trong ban nhạc = t2.id join nhạc_cụ as t4 on t4.id bài hát = t1.id bài hát join bài hát as t3 on t3.id bài hát = t4.id bài hát join ban nhạc as t5 on t5.id = t1.nghệ_sĩ trong ban nhạc where t2.họ = "Heilo" and t3.tiêu_đề = "Le Pop"
select nhạc_cụ from nhạc_cụ group by nhạc_cụ order by count ( * ) desc limit 1
select nhạc_cụ from nhạc_cụ group by nhạc_cụ order by count ( * ) desc limit 1
select count ( * ) from nhạc_cụ where nhạc_cụ = "drums"
select count ( * ) from nhạc_cụ where nhạc_cụ = "trống"
select t3.nhạc_cụ from bài hát as t1 join nhạc_cụ as t2 on t1.id bài hát = t2.id bài hát join ban nhạc as t3 on t2.id nghệ_sĩ trong ban nhạc = t3.id where t1.tiêu_đề = "Le Pop"
select nhạc_cụ from nhạc_cụ as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where tiêu_đề = "Le Pop"
select count ( distinct nhạc_cụ ) from nhạc_cụ as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where tiêu_đề = "Le Pop"
select count ( distinct nhạc_cụ ) from nhạc_cụ as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where tiêu_đề = "Le Pop"
select count ( distinct nhạc_cụ ) from nhạc_cụ as t1 join ban nhạc as t2 on t1.id nghệ_sĩ trong ban nhạc = t2.id where t2.họ = "Heilo"
select count ( distinct nhạc_cụ ) from nhạc_cụ as t1 join ban nhạc as t2 on t1.id nghệ_sĩ trong ban nhạc = t2.id where t2.họ = "Heilo"
select t3.nhạc_cụ from ban nhạc as t1 join nhạc_cụ as t2 on t1.id = t2.id nghệ_sĩ trong ban nhạc join bài hát as t3 on t3.id bài hát = t2.id bài hát where t1.họ = "Heilo"
select nhạc_cụ from nhạc_cụ as t1 join ban nhạc as t2 on t1.id nghệ_sĩ trong ban nhạc = t2.id where t2.họ = "Heilo"
select t3.tiêu_đề from giọng hát as t1 join buổi biểu_diễn as t2 on t1.id bài hát = t2.id bài hát join bài hát as t3 on t3.id bài hát = t2.id bài hát group by t3.tiêu_đề order by count ( * ) desc limit 1
select t3.tiêu_đề from giọng hát as t1 join buổi biểu_diễn as t2 on t1.id bài hát = t2.id bài hát join bài hát as t3 on t3.id bài hát = t2.id bài hát group by t3.tiêu_đề order by count ( distinct t1.loại ) desc limit 1
select loại from giọng hát group by loại order by count ( * ) desc limit 1
select loại from giọng hát group by loại order by count ( * ) desc limit 1
select loại from giọng hát as t1 join ban nhạc as t2 on t1.nghệ_sĩ trong ban nhạc = t2.id where họ = "Heilo" group by loại order by count ( * ) desc limit 1
select loại from giọng hát as t1 join ban nhạc as t2 on t1.nghệ_sĩ trong ban nhạc = t2.id where họ = "Heilo" group by loại order by count ( * ) desc limit 1
select loại from giọng hát as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where tiêu_đề = "Le Pop"
select loại from giọng hát as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where tiêu_đề = "Le Pop"
select count ( * ) from giọng hát as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where t2.tiêu_đề = "Demon Kitty Rag"
select count ( * ) from giọng hát as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where t2.tiêu_đề = "Demon Kitty Rag"
select count ( distinct tiêu_đề ) from giọng hát as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where loại = "lead"
select count ( distinct tiêu_đề ) from giọng hát as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where loại = "lead"
select loại from giọng hát as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát join ban nhạc as t3 on t1.nghệ_sĩ trong ban nhạc = t3.id where t3.tên = "Solveig" and t2.tiêu_đề = "A Bar In Amsterdam"
select loại from giọng hát as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát join ban nhạc as t3 on t1.nghệ_sĩ trong ban nhạc = t3.id where t3.tên = "Solveig" and t2.tiêu_đề = "A Bar In Amsterdam"
select distinct tiêu_đề from giọng hát as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát except select t2.tiêu_đề from giọng hát as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where loại = "lead"
select distinct tiêu_đề from giọng hát as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát except select t2.tiêu_đề from giọng hát as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where loại = "lead"
select distinct loại from giọng hát
select distinct loại from giọng hát
select * from album where năm = 2010
select * from album where năm = 2010
select t2.tên from buổi biểu_diễn as t1 join ban nhạc as t2 on t1.nghệ_sĩ trong ban nhạc = t2.id join bài hát as t3 on t3.id bài hát = t1.id bài hát where t3.tiêu_đề = "Le Pop"
select t2.tên , t2.họ from buổi biểu_diễn as t1 join ban nhạc as t2 on t1.nghệ_sĩ trong ban nhạc = t2.id join bài hát as t3 on t3.id bài hát = t1.id bài hát where t3.tiêu_đề = "Le Pop"
select t2.họ from giọng hát as t1 join ban nhạc as t2 on t1.nghệ_sĩ trong ban nhạc = t2.id join bài hát as t3 on t3.id bài hát = t1.id bài hát group by t2.họ order by count ( * ) desc limit 1
select t2.họ from buổi biểu_diễn as t1 join ban nhạc as t2 on t1.nghệ_sĩ trong ban nhạc = t2.id join bài hát as t3 on t3.id bài hát = t1.id bài hát group by t2.họ order by count ( * ) desc limit 1
select nhạc_cụ from nhạc_cụ as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát join ban nhạc as t3 on t1.id nghệ_sĩ trong ban nhạc = t3.id where t3.họ = "Heilo" and t2.tiêu_đề = "Badlands"
select t4.nhạc_cụ from buổi biểu_diễn as t1 join ban nhạc as t2 on t1.nghệ_sĩ trong ban nhạc = t2.id join nhạc_cụ as t4 on t4.id bài hát = t1.id bài hát join bài hát as t3 on t3.id bài hát = t4.id bài hát where t2.họ = "Heilo" and t3.tiêu_đề = "Badlands"
select count ( distinct nhạc_cụ ) from nhạc_cụ as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where tiêu_đề = "Badlands"
select count ( distinct nhạc_cụ ) from nhạc_cụ as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where tiêu_đề = "Badlands"
select loại from giọng hát as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where tiêu_đề = "Badlands"
select loại from giọng hát as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where tiêu_đề = "Badlands"
select count ( * ) from giọng hát as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where t2.tiêu_đề = "Le Pop"
select count ( * ) from giọng hát as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where tiêu_đề = "Le Pop"
select count ( distinct t3.tiêu_đề ) from giọng hát as t1 join ban nhạc as t2 on t1.nghệ_sĩ trong ban nhạc = t2.id join bài hát as t3 on t3.id bài hát = t1.id bài hát where t2.tên = "John" and t2.họ = "Smith" and t1.loại = "shared"
select count ( distinct tiêu_đề ) from giọng hát as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where loại = "shared"
select distinct tiêu_đề from giọng hát as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát except select t2.tiêu_đề from giọng hát as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where loại = "back"
select distinct tiêu_đề from giọng hát as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát except select t2.tiêu_đề from giọng hát as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where loại = "back"
select loại from giọng hát as t1 join ban nhạc as t2 on t1.nghệ_sĩ trong ban nhạc = t2.id where t2.tên = "Solveig" group by loại order by count ( * ) desc limit 1
select loại from giọng hát as t1 join ban nhạc as t2 on t1.nghệ_sĩ trong ban nhạc = t2.id where t2.tên = "Solveig" group by loại order by count ( * ) desc limit 1
select loại from giọng hát as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát join ban nhạc as t3 on t1.nghệ_sĩ trong ban nhạc = t3.id where t3.họ = "Heilo" and t2.tiêu_đề = "Der Kapitan"
select loại from giọng hát as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát join ban nhạc as t3 on t1.nghệ_sĩ trong ban nhạc = t3.id where t3.họ = "Heilo" and t2.tiêu_đề = "Der Kapitan"
select t2.tên from buổi biểu_diễn as t1 join ban nhạc as t2 on t1.nghệ_sĩ trong ban nhạc = t2.id join bài hát as t3 on t3.id bài hát = t1.id bài hát group by t2.tên order by count ( * ) desc limit 1
select t2.tên from buổi biểu_diễn as t1 join ban nhạc as t2 on t1.nghệ_sĩ trong ban nhạc = t2.id join bài hát as t3 on t3.id bài hát = t1.id bài hát group by t2.tên order by count ( * ) desc limit 1
select loại from giọng hát as t1 join ban nhạc as t2 on t1.nghệ_sĩ trong ban nhạc = t2.id where t2.tên = "Marianne" group by loại order by count ( * ) desc limit 1
select loại from giọng hát as t1 join ban nhạc as t2 on t1.nghệ_sĩ trong ban nhạc = t2.id where tên = "Marianne" group by loại order by count ( * ) desc limit 1
select t2.tên , t2.họ from buổi biểu_diễn as t1 join ban nhạc as t2 on t1.nghệ_sĩ trong ban nhạc = t2.id join bài hát as t3 on t3.id bài hát = t1.id bài hát where t3.tiêu_đề = "Der Kapitan" and t1.vị_trí trên sân_khấu = "back"
select t2.tên , t2.họ from buổi biểu_diễn as t1 join ban nhạc as t2 on t1.nghệ_sĩ trong ban nhạc = t2.id join bài hát as t3 on t3.id bài hát = t1.id bài hát where t3.tiêu_đề = "Der Kapitan" and t1.vị_trí trên sân_khấu = "back"
select distinct tiêu_đề from giọng hát as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát except select t2.tiêu_đề from giọng hát as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where loại = "back"
select t3.tiêu_đề from giọng hát as t1 join buổi biểu_diễn as t2 on t1.id bài hát = t2.id bài hát join bài hát as t3 on t3.id bài hát = t2.id bài hát where t1.loại != "back"
select t3.tiêu_đề from album as t1 join danh_sách bài hát as t2 on t1.id album = t2.id album join bài hát as t3 on t2.id bài hát = t3.id bài hát where t1.tiêu_đề = "A Kiss Before You Go: Living in Hamburg"
select t3.tiêu_đề from album as t1 join danh_sách bài hát as t2 on t1.id album = t2.id album join bài hát as t3 on t2.id bài hát = t3.id bài hát where t1.tiêu_đề = "A Kiss Before You Go: Living in Hamburg"
select t3.tiêu_đề from album as t1 join danh_sách bài hát as t2 on t1.id album = t2.id album join bài hát as t3 on t2.id bài hát = t3.id bài hát where t1.hãng thu âm = "Universal Music Group"
select t3.tiêu_đề from album as t1 join danh_sách bài hát as t2 on t1.id album = t2.id album join bài hát as t3 on t2.id bài hát = t3.id bài hát where t1.hãng thu âm = "Universal Music Group"
select count ( distinct t3.tiêu_đề ) from album as t1 join danh_sách bài hát as t2 on t1.id album = t2.id album join bài hát as t3 on t2.id bài hát = t3.id bài hát where t1.loại = "Studio"
select count ( distinct t3.tiêu_đề ) from album as t1 join danh_sách bài hát as t2 on t1.id album = t2.id album join bài hát as t3 on t2.id bài hát = t3.id bài hát where t1.loại = "Studio"
select t1.khách_hàng tốt hay xấu from khách_hàng as t1 join phiếu giảm_giá as t2 on t1.id khách_hàng = t2.id khách_hàng where t2.số tiền giảm_giá = 500
select t2.id khách_hàng , t2.tên , count ( * ) from lượt đặt mua as t1 join khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng group by t2.id khách_hàng
select t1.id khách_hàng , sum ( t2.số tiền phải trả ) from khách_hàng as t1 join lượt đặt mua as t2 on t1.id khách_hàng = t2.id khách_hàng group by t1.id khách_hàng order by sum ( t2.số tiền phải trả ) desc limit 1
select t1.id đặt mua , t1.số tiền hoàn_trả from lượt đặt mua as t1 join thanh_toán as t2 on t1.id đặt mua = t2.id đặt mua group by t1.id đặt mua order by count ( * ) desc limit 1
select id sản_phẩm from sản_phẩm được đặt group by id sản_phẩm having count ( * ) = 3
select t2.mô_tả Sản_phẩm from sản_phẩm được đặt as t1 join sản_phẩm cho thuê as t2 on t1.id sản_phẩm = t2.id sản_phẩm where t1.số tiền đã đặt = 102.76
select t1.ngày bắt_đầu đặt mua , t1.ngày kết_thúc đặt mua from lượt đặt mua as t1 join sản_phẩm được đặt as t2 on t1.id đặt mua = t2.id đặt mua join sản_phẩm cho thuê as t3 on t2.id sản_phẩm = t3.id sản_phẩm where t3.tên sản_phẩm = "Book Collection Book"
select distinct t1.tên sản_phẩm from sản_phẩm cho thuê as t1 join sản_phẩm có sẵn as t2 on t1.id sản_phẩm = t2.id sản_phẩm where t2.có sẵn hay không = "Y"
select count ( distinct mã loại sản_phẩm ) from sản_phẩm cho thuê
select tên , họ , giới_tính from khách_hàng where khách_hàng tốt hay xấu = "good" order by họ
select avg ( số tiền nợ ) from thanh_toán
select max ( số_lượng đặt mua ) , min ( số_lượng đặt mua ) , avg ( số_lượng đặt mua ) from sản_phẩm được đặt
select distinct mã loại thanh_toán from thanh_toán
select chi_phí thuê hàng ngày from sản_phẩm cho thuê where tên sản_phẩm like "%Book%"
select count ( * ) from sản_phẩm cho thuê where id sản_phẩm not in ( select id sản_phẩm from sản_phẩm được đặt where số tiền đã đặt > 200 )
select sum ( t2.số tiền giảm_giá ) from khách_hàng as t1 join phiếu giảm_giá as t2 on t1.id khách_hàng = t2.id khách_hàng where t1.khách_hàng tốt hay xấu = "good" intersect select sum ( t2.số tiền giảm_giá ) from khách_hàng as t1 join phiếu giảm_giá as t2 on t1.id khách_hàng = t2.id khách_hàng where t1.khách_hàng tốt hay xấu = "bad"
select ngày thanh_toán from thanh_toán where số tiền đã trả > 300 or mã loại thanh_toán = "CHECK"
select tên sản_phẩm , mô_tả sản_phẩm from sản_phẩm cho thuê where mã loại sản_phẩm = "Saw" and chi_phí thuê hàng ngày < 20
select tên nhà_hàng from nhà_hàng
select địa_chỉ from nhà_hàng where tên nhà_hàng = "Subway"
select đánh_giá xếp_hạng from nhà_hàng where tên nhà_hàng = "Subway"
select tên loại nhà_hàng from loại nhà_hàng
select mô_tả về loại nhà_hàng from loại nhà_hàng where tên loại nhà_hàng = "Sandwich"
select tên nhà_hàng , đánh_giá xếp_hạng from nhà_hàng order by đánh_giá xếp_hạng desc limit 1
select tuổi from sinh_viên where tên = "Linda" and họ = "Smith"
select giới_tính from sinh_viên where tên = "Linda" and họ = "Smith"
select tên , họ from sinh_viên where chuyên_ngành = 600
select mã thành_phố from sinh_viên where tên = "Linda" and họ = "Smith"
select count ( * ) from sinh_viên where cố_vấn = 1121
select cố_vấn , count ( * ) from sinh_viên group by cố_vấn order by count ( * ) desc limit 1
select chuyên_ngành , count ( * ) from sinh_viên group by chuyên_ngành order by count ( chuyên_ngành ) asc limit 1
select chuyên_ngành , count ( * ) from sinh_viên group by chuyên_ngành having count ( * ) between 2 and 30
select tên , họ from sinh_viên where tuổi > 18 and chuyên_ngành = 600
select tên , họ from sinh_viên where tuổi > 18 and giới_tính = "F" and chuyên_ngành != 600
select count ( * ) from nhà_hàng as t1 join loại của nhà_hàng as t2 on t1.id nhà_hàng = t2.id nhà_hàng join loại nhà_hàng as t3 on t2.id loại nhà_hàng = t3.id loại nhà_hàng where t3.tên loại nhà_hàng = "Sandwich"
select count ( * ) from thú cưng where cân nặng > 10
select count ( * ) from nhà_hàng as t1 join lượt ghé thăm nhà_hàng as t2 on t1.id nhà_hàng = t2.id nhà_hàng join sinh_viên as t3 on t3.id sinh_viên = t2.id sinh_viên where t3.tên = "Linda" and t3.họ = "Smith" and t1.tên nhà_hàng = "Subway"
select t1.thời_gian from lượt ghé thăm nhà_hàng as t1 join sinh_viên as t2 on t1.id sinh_viên = t2.id sinh_viên join nhà_hàng as t3 on t1.id nhà_hàng = t3.id nhà_hàng where t2.tên = "Linda" and t2.họ = "Smith" and t3.tên nhà_hàng = "Subway"
select t2.tên nhà_hàng , sum ( thời_gian dành ra ) from lượt ghé thăm nhà_hàng as t1 join nhà_hàng as t2 on t1.id nhà_hàng = t2.id nhà_hàng group by t2.tên nhà_hàng order by sum ( thời_gian dành ra ) asc limit 1
select t1.tên , t1.họ from sinh_viên as t1 join lượt ghé thăm nhà_hàng as t2 on t1.id sinh_viên = t2.id sinh_viên group by t1.id sinh_viên order by count ( * ) desc limit 1
select count ( distinct họ ) from diễn_viên
select count ( distinct họ ) from diễn_viên
select tên from diễn_viên group by tên order by count ( * ) desc limit 1
select tên from diễn_viên group by tên order by count ( * ) desc limit 1
select tên , họ from diễn_viên group by tên , họ order by count ( * ) desc limit 1
select tên , họ from diễn_viên group by tên , họ order by count ( * ) desc limit 1
select quận from địa_chỉ group by quận having count ( * ) >= 2
select quận from địa_chỉ group by quận having count ( * ) >= 2
select số điện_thoại , mã bưu_điện from địa_chỉ where địa_chỉ 2 = "1031 Daugavpils Parkway"
select số điện_thoại , mã bưu_điện from địa_chỉ where địa_chỉ = "1031 Daugavpils Parkway"
select t2.thành_phố , count ( * ) , t1.id thành_phố from địa_chỉ as t1 join thành_phố as t2 on t1.id thành_phố = t2.id thành_phố group by t1.id thành_phố order by count ( * ) desc limit 1
select t2.thành_phố , t1.id thành_phố , count ( * ) from địa_chỉ as t1 join thành_phố as t2 on t1.id thành_phố = t2.id thành_phố group by t1.id thành_phố order by count ( * ) desc limit 1
select count ( * ) from vùng sản_xuất where quận = "Napa"
select count ( * ) from địa_chỉ where quận = "California"
select t2.tiêu_đề , t2.id phim from hàng tồn_kho as t1 join phim as t2 on t1.id phim = t2.id phim where t2.giá cho thuê = 0.99 and t2.thời_lượng thuê < 3
select t1.tiêu_đề , t1.id phim from phim as t1 join hàng tồn_kho as t2 on t1.id phim = t2.id phim where t1.giá thay_thế = 0.99 and t2.id phim = t1.id phim group by t1.id phim having count ( * ) < 3
select count ( * ) from thành_phố as t1 join quốc_gia as t2 on t1.id quốc_gia = t2.id quốc_gia where t2.quốc_gia = "Australia"
select count ( * ) from thành_phố as t1 join quốc_gia as t2 on t1.id quốc_gia = t2.id quốc_gia where t2.quốc_gia = "Australia"
select t1.quốc_gia from thành_phố as t1 join quốc_gia as t2 on t1.id quốc_gia = t2.id quốc_gia group by t2.quốc_gia having count ( * ) >= 3
select t1.quốc_gia from thành_phố as t1 join quốc_gia as t2 on t1.id quốc_gia = t2.id quốc_gia group by t1.id quốc_gia having count ( * ) >= 3
select t2.ngày thanh_toán from nhân_viên as t1 join khoản thanh_toán as t2 on t1.id nhân_viên = t2.id nhân_viên where t1.tên = "Elsa" and t2.số tiền > 10
select t1.ngày thanh_toán from khoản thanh_toán as t1 join nhân_viên as t2 on t1.id nhân_viên = t2.id nhân_viên where t2.tên = "Elsa" or t1.số tiền > 10
select
select count ( * ) from khách_hàng where có hoạt_động không = 1
select giá cho thuê from phim order by giá cho thuê desc limit 1
select tiêu_đề , giá cho thuê from phim order by giá cho thuê desc limit 1
select t1.tiêu_đề , t1.id phim , t1.mô_tả from phim as t1 join diễn_viên điện_ảnh as t2 on t1.id phim = t2.id phim group by t1.id phim order by count ( * ) desc limit 1
select t2.tiêu_đề , t2.id phim , t2.mô_tả from diễn_viên điện_ảnh as t1 join phim as t2 on t1.id phim = t2.id phim group by t2.id phim order by count ( * ) desc limit 1
select
select t1.tên , t1.họ , t1.id diễn_viên from diễn_viên as t1 join diễn_viên điện_ảnh as t2 on t1.id diễn_viên = t2.id diễn_viên where giới_tính = "Male" or giới_tính = "Female" group by t1.id diễn_viên order by count ( * ) desc limit 1
select
select t1.tên , t1.họ from diễn_viên as t1 join diễn_viên điện_ảnh as t2 on t1.id diễn_viên = t2.id diễn_viên group by t1.id diễn_viên having count ( * ) > 30
select id khách_hàng from lượt cho thuê group by id khách_hàng order by count ( * ) desc limit 1
select id cửa_hàng from hàng tồn_kho group by id cửa_hàng order by count ( * ) desc limit 1
select sum ( số tiền ) from khoản thanh_toán
select sum ( số tiền ) from khoản thanh_toán
select t1.tên , t1.họ , t1.id khách_hàng from khách_hàng as t1 join khoản thanh_toán as t2 on t1.id khách_hàng = t2.id khách_hàng group by t1.id khách_hàng order by sum ( số tiền ) limit 1
select t1.tên , t1.họ , t1.id khách_hàng from khách_hàng as t1 join khoản thanh_toán as t2 on t1.id khách_hàng = t2.id khách_hàng group by t1.id khách_hàng order by sum ( t2.số tiền ) asc limit 1
select t1.tên from danh_mục as t1 join danh_mục phim as t2 on t1.id danh_mục = t2.id danh_mục join phim as t3 on t2.id phim = t3.id phim where t3.tiêu_đề = "HUNGER ROOF"
select t1.tên from danh_mục as t1 join danh_mục phim as t2 on t1.id danh_mục = t2.id danh_mục where t2.tiêu_đề = "HUNGER ROOF"
select t2.tên , t2.họ from diễn_viên điện_ảnh as t1 join diễn_viên as t2 on t1.id diễn_viên = t2.id diễn_viên group by t2.id diễn_viên having count ( * ) >= 3
select t2.tên , t1.id danh_mục , count ( * ) from danh_mục phim as t1 join danh_mục as t2 on t1.id danh_mục = t2.id danh_mục group by t1.id danh_mục
select t1.tiêu_đề , t1.id phim from phim as t1 join hàng tồn_kho as t2 on t1.id phim = t2.id phim group by t1.id phim order by count ( * ) desc limit 1
select t1.tiêu_đề , t1.id phim from phim as t1 join hàng tồn_kho as t2 on t1.id phim = t2.id phim group by t1.id phim order by count ( * ) desc limit 1
select t1.tiêu_đề , t2.id hàng tồn_kho from phim as t1 join hàng tồn_kho as t2 on t1.id phim = t2.id phim group by t2.id hàng tồn_kho order by count ( * ) desc limit 1
select t1.tiêu_đề , t2.id hàng tồn_kho from phim as t1 join hàng tồn_kho as t2 on t1.id phim = t2.id phim join lượt cho thuê as t3 on t2.id hàng tồn_kho = t3.id hàng tồn_kho group by t2.id hàng tồn_kho order by count ( * ) desc limit 1
select count ( distinct id ngôn_ngữ ) from phim
select count ( distinct id ngôn_ngữ ) from phim
select tiêu_đề from phim where đánh_giá xếp_hạng = "R"
select tiêu_đề from phim where đánh_giá xếp_hạng = "R"
select t3.địa_chỉ from cửa_hàng as t1 join nhân_viên as t2 on t1.id nhân_viên quản_lý = t2.id nhân_viên join địa_chỉ as t3 on t3.id địa_chỉ = t2.id địa_chỉ where t1.id cửa_hàng = 1
select t2.địa_chỉ from cửa_hàng as t1 join địa_chỉ as t2 on t1.id địa_chỉ = t2.id địa_chỉ where t1.id cửa_hàng = 1
select t1.tên , t1.họ , t1.id nhân_viên from nhân_viên as t1 join khoản thanh_toán as t2 on t1.id nhân_viên = t2.id nhân_viên group by t1.id nhân_viên order by count ( * ) asc limit 1
select t1.tên , t1.họ , t1.id nhân_viên from nhân_viên as t1 join khoản thanh_toán as t2 on t1.id nhân_viên = t2.id nhân_viên group by t1.id nhân_viên order by count ( * ) asc limit 1
select t1.tên from ngôn_ngữ as t1 join phim as t2 on t1.id ngôn_ngữ = t2.id ngôn_ngữ where t2.tiêu_đề = "AIRPORT POLLOCK"
select t1.tên from ngôn_ngữ as t1 join phim as t2 on t1.id ngôn_ngữ = t2.id ngôn_ngữ where t2.tiêu_đề = "AIRPORT POLLOCK"
select count ( * ) from cửa_hàng
select count ( * ) from cửa_hàng
select count ( distinct đánh_giá xếp_hạng ) from phim
select count ( distinct đánh_giá xếp_hạng ) from phim
select tiêu_đề from phim where tính_năng đặc_biệt like "%Deleted Scenes%"
select tiêu_đề from phim where tính_năng đặc_biệt like "%Deleted Scenes%"
select count ( * ) from hàng tồn_kho where id cửa_hàng = 1
select count ( * ) from hàng tồn_kho where id cửa_hàng = 1
select ngày thanh_toán from khoản thanh_toán order by ngày thanh_toán asc limit 1
select ngày thanh_toán from khoản thanh_toán order by ngày thanh_toán asc limit 1
select t1.email from khách_hàng as t1 join địa_chỉ as t2 on t1.id địa_chỉ = t2.id địa_chỉ where t2.thành_phố = "Berlin" and t1.tên = "Linda"
select t2.địa_chỉ , t1.email from khách_hàng as t1 join địa_chỉ as t2 on t1.id địa_chỉ = t2.id địa_chỉ where t1.tên = "Linda"
select tiêu_đề from phim where thời_lượng thuê > 100 or đánh_giá xếp_hạng = "PG" except select tiêu_đề from phim where giá thay_thế > 200
select tiêu_đề from phim where thời_lượng phim > 100 or đánh_giá xếp_hạng = "PG" except select tiêu_đề from phim where giá thay_thế > 200
select t1.tên , t1.họ from khách_hàng as t1 join lượt cho thuê as t2 on t1.id khách_hàng = t2.id khách_hàng order by t2.ngày cho thuê asc limit 1
select t1.tên , t1.họ from khách_hàng as t1 join lượt cho thuê as t2 on t1.id khách_hàng = t2.id khách_hàng order by t2.ngày cho thuê limit 1
select distinct t1.tên , t1.họ from nhân_viên as t1 join lượt cho thuê as t2 on t1.id nhân_viên = t2.id nhân_viên join khách_hàng as t3 on t2.id khách_hàng = t3.id khách_hàng where t3.tên = "Tháng Tư" and t3.họ = "Burns"
select distinct t1.tên , t1.họ from nhân_viên as t1 join lượt cho thuê as t2 join khách_hàng as t3 on t1.id nhân_viên = t2.id nhân_viên join phim as t4 on t2.id hàng tồn_kho = t4.id hàng tồn_kho where t3.tên = "April" and t3.họ = "Burns"
select id cửa_hàng from nhân_viên group by id cửa_hàng order by count ( * ) desc limit 1
select id cửa_hàng from khách_hàng group by id cửa_hàng order by count ( * ) desc limit 1
select số tiền from khoản thanh_toán order by số tiền desc limit 1
select số tiền from khoản thanh_toán order by số tiền desc limit 1
select t2.thành_phố from nhân_viên as t1 join địa_chỉ as t2 on t1.id địa_chỉ = t2.id địa_chỉ where t1.tên = "Elsa"
select t2.địa_chỉ from nhân_viên as t1 join địa_chỉ as t2 on t1.id địa_chỉ = t2.id địa_chỉ where t1.tên = "Elsa"
select tên from khách_hàng where id khách_hàng not in ( select id khách_hàng from lượt cho thuê where ngày cho thuê > "2005-08-23 02:06:01" )
select tên from khách_hàng where id khách_hàng not in ( select id khách_hàng from lượt cho thuê where ngày cho thuê > "2005-08-23 02:06:01" )
select count ( * ) from tài_xế
select tên , thành_phố quê_hương , tuổi from tài_xế
select đảng , count ( * ) from tài_xế group by đảng
select tên from tài_xế order by tuổi desc
select distinct thành_phố quê_hương from tài_xế
select thành_phố quê_hương from tài_xế group by thành_phố quê_hương order by count ( * ) desc limit 1
select đảng from tài_xế where thành_phố quê_hương = "Hartford" and tuổi > 40
select thành_phố quê_hương from tài_xế where tuổi > 40 group by thành_phố quê_hương having count ( * ) >= 2
select thành_phố quê_hương from tài_xế except select thành_phố quê_hương from tài_xế where tuổi > 40
select tên from tài_xế where id tài_xế not in ( select id tài_xế from xe_buýt của trường_học )
select loại_hình from trường_học group by loại_hình having count ( * ) = 2
select t2.trường_học , t1.tên from tài_xế as t1 join xe_buýt của trường_học as t2 on t1.id tài_xế = t2.id tài_xế
select avg ( số năm làm_việc ) , max ( số năm làm_việc ) , min ( số năm làm_việc ) from xe_buýt của trường_học
select trường_học , loại_hình from trường_học where id trường_học not in ( select id trường_học from xe_buýt của trường_học )
select t1.loại_hình , count ( * ) from trường_học as t1 join xe_buýt của trường_học as t2 on t1.id trường_học = t2.id trường_học group by t1.loại_hình
select count ( * ) from tài_xế where thành_phố quê_hương = "Hartford" or tuổi < 40
select tên from tài_xế where thành_phố quê_hương = "Hartford" and tuổi < 40
select t1.tên from tài_xế as t1 join xe_buýt của trường_học as t2 on t1.id tài_xế = t2.id tài_xế order by t2.số năm làm_việc desc limit 1
select count ( * ) from trường_học
select count ( * ) from trường_học
select địa_điểm from trường_học order by số_lượng nhập_học asc
select địa_điểm from trường_học order by số_lượng nhập_học asc
select địa_điểm from trường_học order by năm thành_lập desc
select địa_điểm from trường_học order by năm thành_lập desc
select số_lượng nhập_học from trường_học where tôn_giáo != "Catholic"
select số_lượng nhập_học from trường_học where tôn_giáo != "Catholic"
select avg ( số_lượng nhập_học ) from trường_học
select avg ( số_lượng nhập_học ) from trường_học
select đội from cầu_thủ order by đội asc
select đội from cầu_thủ order by đội asc
select count ( distinct vị_trí ) from cầu_thủ
select count ( distinct vị_trí ) from cầu_thủ
select đội from cầu_thủ order by tuổi desc limit 1
select đội from cầu_thủ order by tuổi desc limit 1
select cầu_thủ from cầu_thủ order by tuổi desc limit 3
select đội from cầu_thủ order by tuổi desc limit 5
select t2.đội , t1.trường_học from trường_học as t1 join cầu_thủ as t2 on t1.id_trường = t2.id_trường
select t2.đội , t1.trường_học from trường_học as t1 join cầu_thủ as t2 on t1.id_trường = t2.id_trường
select t2.địa_điểm from cầu_thủ as t1 join trường_học as t2 on t1.id_trường = t2.id_trường group by t1.id_trường having count ( * ) > 1
select t2.địa_điểm from cầu_thủ as t1 join trường_học as t2 on t1.id_trường = t2.id_trường group by t1.id_trường having count ( * ) > 1
select t2.tôn_giáo from cầu_thủ as t1 join trường_học as t2 on t1.id_trường = t2.id_trường group by t1.id_trường order by count ( * ) desc limit 1
select t2.tôn_giáo from cầu_thủ as t1 join trường_học as t2 on t1.id_trường = t2.id_trường group by t1.id_trường order by count ( * ) desc limit 1
select t1.địa_điểm , t2.biệt_danh from trường_học as t1 join chi_tiết trường_học as t2 on t1.id_trường = t2.id_trường
select t1.biệt_danh , t1.địa_điểm from chi_tiết trường_học as t1 join trường_học as t2 on t1.id_trường = t2.id_trường
select tôn_giáo , count ( * ) from trường_học group by tôn_giáo
select tôn_giáo , count ( * ) from trường_học group by tôn_giáo
select tôn_giáo , count ( * ) from trường_học group by tôn_giáo order by count ( * ) desc
select tôn_giáo , count ( * ) from trường_học group by tôn_giáo order by count ( * ) desc
select màu của_trường from trường_học order by số_lượng nhập_học desc limit 1
select màu của_trường from trường_học order by số_lượng nhập_học desc limit 1
select địa_điểm from trường_học where id_trường not in ( select id_trường from cầu_thủ )
select địa_điểm from trường_học where id_trường not in ( select id_trường from cầu_thủ )
select tôn_giáo from trường_học where năm thành_lập < 1890 intersect select tôn_giáo from trường_học where năm thành_lập > 1900
select tôn_giáo from trường_học where năm thành_lập < 1890 intersect select tôn_giáo from trường_học where năm thành_lập > 1900
select biệt_danh from chi_tiết trường_học where phân_hạng != "Division 1"
select biệt_danh from chi_tiết trường_học where phân_hạng != "Division 1"
select tôn_giáo from trường_học group by tôn_giáo having count ( * ) > 1
select tôn_giáo from trường_học group by tôn_giáo having count ( * ) > 1
select t1.tên , t2.tên from quốc_gia as t1 join giải đấu as t2 on t1.id = t2.id quốc_gia
select count ( distinct t1.tên ) from giải đấu as t1 join quốc_gia as t2 on t1.id quốc_gia = t2.id where t2.tên = "England"
select avg ( cân nặng ) from cầu_thủ
select max ( cân nặng ) , min ( cân nặng ) from cầu_thủ
select distinct t1.tên cầu_thủ from cầu_thủ as t1 join đặc_điểm của cầu_thủ as t2 on t1.id cầu_thủ api = t2.id cầu_thủ api where t2.đánh_giá tổng_thể > ( select avg ( đánh_giá tổng_thể ) from đặc_điểm của cầu_thủ )
select t1.tên cầu_thủ from cầu_thủ as t1 join đặc_điểm của cầu_thủ as t2 on t1.id cầu_thủ api = t2.id cầu_thủ api order by t2.rê bóng trong khi dàn_xếp tấn_công desc limit 1
select t1.tên cầu_thủ from cầu_thủ as t1 join đặc_điểm của cầu_thủ as t2 on t1.id cầu_thủ api = t2.id cầu_thủ api where t2.tạt bóng > 90 and t2.chân thuận = "right"
select distinct t1.tên cầu_thủ from cầu_thủ as t1 join đặc_điểm của cầu_thủ as t2 on t1.id cầu_thủ api = t2.id cầu_thủ api where t2.chân thuận = "left" and t2.đánh_giá tổng_thể between 85 and 90
select avg ( tiềm_năng ) from đặc_điểm của cầu_thủ where chân thuận = "right" union select avg ( tiềm_năng ) from đặc_điểm của cầu_thủ where chân thuận = "left"
select chân thuận , count ( * ) from cầu_thủ where đánh_giá tổng_thể > 80 group by chân thuận
select id cầu_thủ api from cầu_thủ where chiều cao >= 180 intersect select id cầu_thủ api from đặc_điểm của cầu_thủ where đánh_giá tổng_thể > 85
select id cầu_thủ api from cầu_thủ where chân thuận = "left" and chiều cao between 180 and 190
select distinct t1.tên cầu_thủ from cầu_thủ as t1 join đặc_điểm của cầu_thủ as t2 on t1.id cầu_thủ api = t2.id cầu_thủ api order by t2.đánh_giá tổng_thể desc limit 3
select t1.tên cầu_thủ , t1.ngày_sinh from cầu_thủ as t1 join đặc_điểm của cầu_thủ as t2 on t1.id cầu_thủ api = t2.id cầu_thủ api order by t2.tiềm_năng desc limit 5
select distinct tên quận from quận order by diện_tích của các thành_phố desc
select tên quận from quận order by diện_tích của các thành_phố desc
select kích_thước trang tối_đa from sản_phẩm group by kích_thước trang tối_đa having count ( * ) > 3
select kích_thước trang tối_đa from sản_phẩm group by kích_thước trang tối_đa having count ( * ) > 3
select tên quận , dân_số thành_phố from quận where dân_số thành_phố between 200000 and 20000000
select tên quận , dân_số thành_phố from quận where dân_số thành_phố between 200000 and 2000000
select tên quận from quận where diện_tích của các thành_phố > 10 or dân_số thành_phố > 100000
select tên quận from quận where diện_tích của các thành_phố > 10 or dân_số thành_phố > 100000
select tên quận from quận order by dân_số thành_phố desc limit 1
select tên quận from quận order by dân_số thành_phố desc limit 1
select tên quận from quận order by diện_tích của các thành_phố asc limit 1
select tên quận from quận order by diện_tích của các thành_phố asc limit 1
select sum ( dân_số thành_phố ) from quận order by diện_tích của các thành_phố desc limit 3
select sum ( dân_số thành_phố ) from quận order by diện_tích của các thành_phố desc limit 3
select loại , count ( * ) from cửa_hàng group by loại
select loại , count ( * ) from cửa_hàng group by loại
select t1.tên cửa_hàng from cửa_hàng as t1 join quận của cửa_hàng as t2 on t1.id cửa_hàng = t2.id cửa_hàng join quận as t3 on t2.id quận = t3.id quận where t3.tên quận = "Khanewal District"
select t1.tên cửa_hàng from cửa_hàng as t1 join quận của cửa_hàng as t2 on t1.id cửa_hàng = t2.id cửa_hàng join quận as t3 on t2.id quận = t3.id quận where t3.tên quận = "Khanewal District"
select t1.tên cửa_hàng from cửa_hàng as t1 join quận của cửa_hàng as t2 on t1.id cửa_hàng = t2.id cửa_hàng where id quận = ( select id quận from quận order by dân_số thành_phố desc limit 1 )
select t2.tên cửa_hàng from quận của cửa_hàng as t1 join cửa_hàng as t2 on t1.id cửa_hàng = t2.id cửa_hàng join quận as t3 on t1.id quận = t3.id quận where t3.dân_số thành_phố = ( select max ( dân_số thành_phố ) from quận )
select t3.thành_phố của các trụ_sở from cửa_hàng as t1 join quận của cửa_hàng as t2 on t1.id cửa_hàng = t2.id cửa_hàng join quận as t3 on t2.id quận = t3.id quận where t1.tên cửa_hàng = "Blackville"
select t3.thành_phố của các trụ_sở from cửa_hàng as t1 join quận của cửa_hàng as t2 on t1.id cửa_hàng = t2.id cửa_hàng join quận as t3 on t2.id quận = t3.id quận where t1.tên cửa_hàng = "Blackville"
select t3.thành_phố của các trụ_sở , count ( * ) from cửa_hàng as t1 join quận của cửa_hàng as t2 on t1.id cửa_hàng = t2.id cửa_hàng join quận as t3 on t2.id quận = t3.id quận group by t3.thành_phố của các trụ_sở
select t3.thành_phố của các trụ_sở , count ( * ) from cửa_hàng as t1 join quận của cửa_hàng as t2 on t1.id cửa_hàng = t2.id cửa_hàng join quận as t3 on t2.id quận = t3.id quận group by t3.thành_phố của các trụ_sở
select t3.thành_phố của các trụ_sở from cửa_hàng as t1 join quận của cửa_hàng as t2 on t1.id cửa_hàng = t2.id cửa_hàng join quận as t3 on t2.id quận = t3.id quận group by t3.thành_phố của các trụ_sở order by count ( * ) desc limit 1
select t3.thành_phố của các trụ_sở from cửa_hàng as t1 join quận của cửa_hàng as t2 on t1.id cửa_hàng = t2.id cửa_hàng join quận as t3 on t2.id quận = t3.id quận group by t3.thành_phố của các trụ_sở order by count ( * ) desc limit 1
select avg ( số trang màu trên từng phút ) from sản_phẩm
select avg ( số trang màu trên từng phút ) from sản_phẩm
select t3.sản_phẩm from cửa_hàng as t1 join sản_phẩm của cửa_hàng as t2 on t1.id cửa_hàng = t2.id cửa_hàng join sản_phẩm as t3 on t2.id sản_phẩm = t3.id sản_phẩm where t1.tên cửa_hàng = "Miramichi"
select t3.sản_phẩm from cửa_hàng as t1 join quận của cửa_hàng as t2 on t1.id cửa_hàng = t2.id cửa_hàng join sản_phẩm của cửa_hàng as t3 on t1.id cửa_hàng = t3.id cửa_hàng where t2.id quận = ( select id quận from quận where tên quận = "Miramichi" )
select sản_phẩm from sản_phẩm where kích_thước trang tối_đa = "A4" and số trang màu trên từng phút < 5
select sản_phẩm from sản_phẩm where kích_thước trang tối_đa = "A4" and số trang màu trên từng phút < 5
select sản_phẩm from sản_phẩm where kích_thước trang tối_đa = "A4" or số trang màu trên từng phút < 5
select sản_phẩm from sản_phẩm where kích_thước trang tối_đa = "A4" or số trang màu trên từng phút < 5
select sản_phẩm from sản_phẩm where sản_phẩm like "%Scanner%"
select sản_phẩm from sản_phẩm where sản_phẩm like "%Scanner%"
select kích_thước trang tối_đa from sản_phẩm group by kích_thước trang tối_đa order by count ( * ) desc limit 1
select kích_thước trang tối_đa from sản_phẩm group by kích_thước trang tối_đa order by count ( * ) desc limit 1
select sản_phẩm from sản_phẩm except select sản_phẩm from sản_phẩm where kích_thước trang tối_đa = ( select kích_thước trang tối_đa from sản_phẩm group by kích_thước trang tối_đa order by count ( * ) desc limit 1 )
select sản_phẩm from sản_phẩm except select t1.sản_phẩm from sản_phẩm as t1 join sản_phẩm của cửa_hàng as t2 on t1.id sản_phẩm = t2.id sản_phẩm where t1.kích_thước trang tối_đa = ( select max ( kích_thước trang tối_đa ) from sản_phẩm )
select sum ( dân_số thành_phố ) from quận where diện_tích của các thành_phố > ( select avg ( diện_tích của các thành_phố ) from quận )
select sum ( dân_số thành_phố ) from quận where diện_tích của các thành_phố > ( select avg ( diện_tích của các thành_phố ) from quận )
select t1.tên quận from quận as t1 join quận của cửa_hàng as t2 on t1.id quận = t2.id quận join cửa_hàng as t3 on t2.id cửa_hàng = t3.id cửa_hàng where t3.loại = "Mall" intersect select t1.tên quận from quận as t1 join quận của cửa_hàng as t2 on t1.id quận = t2.id quận join cửa_hàng as t3 on t2.id cửa_hàng = t3.id cửa_hàng where t3.loại = "Lowend"
select t1.tên quận from quận as t1 join cửa_hàng as t2 on t1.id quận = t2.id quận where t2.loại = "Mall" intersect select t1.tên quận from quận as t1 join cửa_hàng as t2 on t1.id quận = t2.id quận where t2.loại = "Low-end store"
select count ( * ) from khu_vực
select count ( * ) from khu_vực
select mã khu_vực , tên khu_vực from khu_vực order by mã khu_vực
select mã khu_vực , tên khu_vực from khu_vực order by mã khu_vực
select tên khu_vực from khu_vực order by tên khu_vực
select tên khu_vực from khu_vực order by tên khu_vực
select tên khu_vực from khu_vực where tên khu_vực != "Denmark"
select tên khu_vực from khu_vực where tên khu_vực != "Denmark"
select count ( * ) from bão where số_lượng người chết > 0
select count ( * ) from bão where số_lượng người chết >= 1
select tên , ngày hoạt_động , số_lượng người chết from bão where số_lượng người chết >= 1
select tên , ngày hoạt_động , số_lượng người chết from bão where số_lượng người chết >= 1
select avg ( thiệt_hại theo triệu usd ) , max ( thiệt_hại theo triệu usd ) from bão where tốc_độ tối_đa > 1000
select avg ( thiệt_hại theo triệu usd ) , max ( thiệt_hại theo triệu usd ) from bão where tốc_độ tối_đa > 1000
select số_lượng người chết , thiệt_hại theo triệu usd from bão where tốc_độ tối_đa > ( select avg ( tốc_độ tối_đa ) from bão )
select sum ( số_lượng người chết ) , sum ( thiệt_hại theo triệu usd ) from bão where tốc_độ tối_đa > ( select avg ( tốc_độ tối_đa ) from bão )
select tên , thiệt_hại theo triệu usd from bão order by tốc_độ tối_đa desc
select tên , thiệt_hại theo triệu usd from bão order by tốc_độ tối_đa desc
select count ( distinct id khu_vực ) from khu_vực bị ảnh_hưởng
select count ( distinct id khu_vực ) from khu_vực bị ảnh_hưởng
select tên khu_vực from khu_vực where id khu_vực not in ( select id khu_vực from khu_vực bị ảnh_hưởng )
select tên khu_vực from khu_vực where id khu_vực not in ( select id khu_vực from khu_vực bị ảnh_hưởng )
select t1.tên khu_vực , count ( * ) from khu_vực as t1 join khu_vực bị ảnh_hưởng as t2 on t1.id khu_vực = t2.id khu_vực group by t1.id khu_vực
select count ( * ) , t1.tên khu_vực from khu_vực as t1 join khu_vực bị ảnh_hưởng as t2 on t1.id khu_vực = t2.id khu_vực group by t1.tên khu_vực
select t1.tên , count ( * ) from bão as t1 join khu_vực bị ảnh_hưởng as t2 on t1.id cơn bão = t2.id bão group by t1.id cơn bão
select t1.tên , count ( * ) from bão as t1 join khu_vực bị ảnh_hưởng as t2 on t1.id cơn bão = t2.id bão group by t1.id cơn bão
select t1.tên , t1.tốc_độ tối_đa from bão as t1 join khu_vực bị ảnh_hưởng as t2 on t1.id cơn bão = t2.id bão group by t1.id cơn bão order by count ( * ) desc limit 1
select t1.tên , t1.tốc_độ tối_đa from bão as t1 join khu_vực bị ảnh_hưởng as t2 on t1.id cơn bão = t2.id bão group by t1.id cơn bão order by count ( * ) desc limit 1
select tên from bão where id cơn bão not in ( select id bão from khu_vực bị ảnh_hưởng )
select tên from bão where id cơn bão not in ( select id bão from khu_vực bị ảnh_hưởng )
select t1.tên from bão as t1 join khu_vực bị ảnh_hưởng as t2 on t1.id cơn bão = t2.id bão group by t1.id cơn bão having count ( * ) >= 2 intersect select t1.tên from bão as t1 join khu_vực bị ảnh_hưởng as t2 on t1.id cơn bão = t2.id bão join khu_vực as t3 on t2.id khu_vực = t3.id khu_vực where t2.số thành_phố bị ảnh_hưởng >= 10
select t1.tên from bão as t1 join khu_vực bị ảnh_hưởng as t2 on t1.id cơn bão = t2.id bão where t2.số thành_phố bị ảnh_hưởng >= 10 group by t1.tên having count ( distinct t2.id khu_vực ) >= 2
select tên from bão except select t1.tên from bão as t1 join khu_vực bị ảnh_hưởng as t2 on t1.id cơn bão = t2.id bão group by t1.id cơn bão having count ( * ) >= 2
select tên from bão except select t1.tên from bão as t1 join khu_vực bị ảnh_hưởng as t2 on t1.id cơn bão = t2.id bão group by t1.id cơn bão having count ( * ) > 2
select t1.tên khu_vực from khu_vực as t1 join khu_vực bị ảnh_hưởng as t2 on t1.id khu_vực = t2.id khu_vực join bão as t3 on t2.id bão = t3.id cơn bão where t3.số_lượng người chết >= 10
select t1.tên khu_vực from khu_vực as t1 join khu_vực bị ảnh_hưởng as t2 on t1.id khu_vực = t2.id khu_vực join bão as t3 on t2.id bão = t3.id cơn bão where t3.số_lượng người chết >= 10
select t1.tên from bão as t1 join khu_vực bị ảnh_hưởng as t2 on t1.id cơn bão = t2.id bão join khu_vực as t3 on t2.id khu_vực = t3.id khu_vực where t3.tên khu_vực = "Denmark"
select t1.tên from bão as t1 join khu_vực bị ảnh_hưởng as t2 on t1.id cơn bão = t2.id bão join khu_vực as t3 on t2.id khu_vực = t3.id khu_vực where t3.tên khu_vực = "Denmark"
select t1.tên khu_vực from khu_vực as t1 join khu_vực bị ảnh_hưởng as t2 on t1.id khu_vực = t2.id khu_vực group by t1.id khu_vực having count ( * ) >= 2
select t1.tên khu_vực from khu_vực as t1 join khu_vực bị ảnh_hưởng as t2 on t1.id khu_vực = t2.id khu_vực group by t1.id khu_vực having count ( * ) >= 2
select t1.tên khu_vực from khu_vực as t1 join khu_vực bị ảnh_hưởng as t2 on t1.id khu_vực = t2.id khu_vực join bão as t3 on t2.id bão = t3.id cơn bão order by t3.số_lượng người chết desc limit 1
select t1.tên khu_vực from khu_vực as t1 join khu_vực bị ảnh_hưởng as t2 on t1.id khu_vực = t2.id khu_vực join bão as t3 on t2.id bão = t3.id cơn bão group by t1.tên khu_vực order by sum ( t3.số_lượng người chết ) desc limit 1
select t1.tên from bão as t1 join khu_vực bị ảnh_hưởng as t2 on t1.id cơn bão = t2.id bão join khu_vực as t3 on t2.id khu_vực = t3.id khu_vực where t3.tên khu_vực = "Afghanistan" intersect select t1.tên from bão as t1 join khu_vực bị ảnh_hưởng as t2 on t1.id cơn bão = t2.id bão join khu_vực as t3 on t2.id khu_vực = t3.id khu_vực where t3.tên khu_vực = "Albania"
select distinct t1.tên from bão as t1 join khu_vực bị ảnh_hưởng as t2 on t1.id cơn bão = t2.id bão join khu_vực as t3 on t2.id khu_vực = t3.id khu_vực where t3.tên khu_vực = "Afghanistan" and t2.id khu_vực = t3.id khu_vực union select distinct tên from bão where id cơn bão not in ( select distinct id cơn bão from khu_vực bị ảnh_hưởng as t2 join khu_vực as t3 on t2.id khu_vực = t3.id khu_vực where t3.tên khu_vực = "Albania" )
select count ( * ) from danh_sách
select count ( * ) from danh_sách
select họ from danh_sách where phòng học = 111
select họ from danh_sách where phòng học = 111
select tên from danh_sách where phòng học = 108
select tên from danh_sách where phòng học = 108
select tên from danh_sách where phòng học = 107
select distinct tên from danh_sách where phòng học = 107
select phòng học , khối lớp from danh_sách
select distinct phòng học , khối lớp from danh_sách
select distinct khối lớp from danh_sách where phòng học = 103
select distinct khối lớp from danh_sách where phòng học = 103
select distinct khối lớp from danh_sách where phòng học = 105
select distinct khối lớp from danh_sách where phòng học = 105
select distinct phòng học from danh_sách where khối lớp = 4
select distinct phòng học from danh_sách where khối lớp = 4
select distinct phòng học from danh_sách where khối lớp = 5
select distinct phòng học from danh_sách where khối lớp = 5
select t2.họ from danh_sách as t1 join giáo_viên as t2 on t1.phòng học = t2.phòng học where khối lớp = 5
select distinct t2.họ from danh_sách as t1 join giáo_viên as t2 on t1.phòng học = t2.phòng học where t1.khối lớp = 5
select t1.tên from giáo_viên as t1 join danh_sách as t2 on t1.phòng học = t2.phòng học where t2.khối lớp = 1
select t2.tên from danh_sách as t1 join giáo_viên as t2 on t1.phòng học = t2.phòng học where t1.khối lớp = 1
select tên from giáo_viên where phòng học = 110
select tên from giáo_viên where phòng học = 110
select họ from giáo_viên where phòng học = 109
select họ from giáo_viên where phòng học = 109
select distinct tên , họ from giáo_viên
select distinct tên , họ from giáo_viên
select distinct tên , họ from danh_sách
select distinct tên , họ from danh_sách
select distinct t2.tên , t2.họ from giáo_viên as t1 join danh_sách as t2 on t1.phòng học = t2.phòng học where t1.tên = "OTHA" and t1.họ = "MOYER"
select distinct t1.tên , t1.họ from danh_sách as t1 join giáo_viên as t2 on t1.phòng học = t2.phòng học where t2.tên = "OTHA" and t2.họ = "MOYER"
select distinct t1.tên , t1.họ from danh_sách as t1 join giáo_viên as t2 on t1.phòng học = t2.phòng học where t2.tên = "MARROTTE" and t2.họ = "KIRK"
select distinct t2.tên , t2.họ from giáo_viên as t1 join danh_sách as t2 on t1.phòng học = t2.phòng học where t1.tên = "MARROTTE" and t1.họ = "KIRK"
select distinct t2.tên , t2.họ from danh_sách as t1 join giáo_viên as t2 on t1.phòng học = t2.phòng học where t1.tên = "EVELINA" and t1.họ = "BROMLEY"
select distinct t2.tên , t2.họ from danh_sách as t1 join giáo_viên as t2 on t1.phòng học = t2.phòng học where t1.tên = "EVELINA" and t1.họ = "BROMLEY"
select t1.họ from giáo_viên as t1 join danh_sách as t2 on t1.phòng học = t2.phòng học where t2.tên = "GELL" and t2.họ = "TAMI"
select t2.họ from danh_sách as t1 join giáo_viên as t2 on t1.phòng học = t2.phòng học where t1.tên = "GELL" and t1.họ = "TAMI"
select count ( * ) from danh_sách as t1 join giáo_viên as t2 on t1.phòng học = t2.phòng học where t2.tên = "LORIA" and t2.họ = "ONDERSMA"
select count ( * ) from danh_sách as t1 join giáo_viên as t2 on t1.phòng học = t2.phòng học where t2.tên = "LORIA" and t2.họ = "ONDERSMA"
select count ( * ) from danh_sách as t1 join giáo_viên as t2 on t1.phòng học = t2.phòng học where t2.tên = "KAWA" and t2.họ = "GORDON"
select count ( * ) from danh_sách as t1 join giáo_viên as t2 on t1.phòng học = t2.phòng học where t2.tên = "KAWA" and t2.họ = "GORDON"
select count ( * ) from danh_sách as t1 join giáo_viên as t2 on t1.phòng học = t2.phòng học where t2.tên = "TARRING" and t2.họ = "LEIA"
select count ( * ) from danh_sách as t1 join giáo_viên as t2 on t1.phòng học = t2.phòng học where t2.tên = "TARRING" and t2.họ = "LEIA"
select count ( * ) from danh_sách as t1 join giáo_viên as t2 on t1.phòng học = t2.phòng học where t1.tên = "CHRISSY" and t1.họ = "NABOZNY"
select count ( * ) from danh_sách as t1 join giáo_viên as t2 on t1.phòng học = t2.phòng học where t1.tên = "CHRISSY" and t1.họ = "NABOZNY"
select count ( * ) from danh_sách as t1 join giáo_viên as t2 on t1.phòng học = t2.phòng học where t1.tên = "MADLOCK" and t1.họ = "RAY"
select count ( * ) from danh_sách as t1 join giáo_viên as t2 on t1.phòng học = t2.phòng học where t1.tên = "MADLOCK" and t1.họ = "RAY"
select distinct t1.tên , t1.họ from danh_sách as t1 join giáo_viên as t2 on t1.phòng học = t2.phòng học where t1.khối lớp = 1 except select t1.tên , t1.họ from danh_sách as t1 join giáo_viên as t2 on t1.phòng học = t2.phòng học where t2.tên = "OTHA" and t2.họ = "MOYER"
select distinct t1.tên , t1.họ from danh_sách as t1 join giáo_viên as t2 on t1.phòng học = t2.phòng học where t1.khối lớp = 1 except select t1.tên , t1.họ from danh_sách as t1 join giáo_viên as t2 on t1.phòng học = t2.phòng học where t2.tên = "OTHA" and t2.họ = "MOYER"
select họ from danh_sách where khối lớp = 3 except select t2.họ from danh_sách as t1 join giáo_viên as t2 on t1.phòng học = t2.phòng học where t2.tên = "COVIN" and t2.họ = "JEROME"
select distinct t1.họ from danh_sách as t1 join giáo_viên as t2 on t1.phòng học = t2.phòng học where t1.khối lớp = "THREE" except select t1.họ from danh_sách as t1 join giáo_viên as t2 on t1.phòng học = t2.phòng học where t2.tên = "COVIN" and t2.họ = "JEROME"
select khối lớp , count ( distinct phòng học ) , count ( * ) from danh_sách group by khối lớp
select khối lớp , count ( distinct phòng học ) , count ( * ) from danh_sách group by khối lớp
select phòng học , count ( distinct khối lớp ) from danh_sách group by phòng học
select phòng học , count ( distinct khối lớp ) from danh_sách group by phòng học
select phòng học from danh_sách group by phòng học order by count ( * ) desc limit 1
select phòng học from danh_sách group by phòng học order by count ( * ) desc limit 1
select phòng học , count ( * ) from danh_sách group by phòng học
select phòng học , count ( * ) from danh_sách group by phòng học
select sum ( khối lớp ) , phòng học from danh_sách where khối lớp = 0 group by phòng học
select phòng học , count ( * ) from danh_sách where khối lớp = 0 group by phòng học
select phòng học , count ( * ) from danh_sách where khối lớp = "4" group by phòng học
select phòng học , count ( * ) from danh_sách where khối lớp = "4" group by phòng học
select t2.tên , t2.họ from danh_sách as t1 join giáo_viên as t2 on t1.phòng học = t2.phòng học group by t2.tên , t2.họ order by count ( * ) desc limit 1
select t2.tên , t2.họ from danh_sách as t1 join giáo_viên as t2 on t1.phòng học = t2.phòng học group by t2.tên , t2.họ order by count ( * ) desc limit 1
select count ( * ) , phòng học from danh_sách group by phòng học
select phòng học , count ( * ) from danh_sách group by phòng học
select t1.tên khoá học from khoá học as t1 join lượt đăng_ký khoá học của sinh_viên as t2 on t1.id khoá học = t2.id khoá học group by t1.tên khoá học order by count ( * ) desc limit 1
select t1.tên khoá học from khoá học as t1 join lượt đăng_ký khoá học của sinh_viên as t2 on t1.id khoá học = t2.id khoá học group by t1.tên khoá học order by count ( * ) desc limit 1
select id sinh_viên from lượt đăng_ký khoá học của sinh_viên group by id sinh_viên order by count ( * ) limit 1
select id sinh_viên from lượt đăng_ký khoá học của sinh_viên group by id sinh_viên order by count ( * ) limit 1
select t1.tên , t1.họ from cá_nhân as t1 join ứng_cử_viên as t2 on t1.id cá_nhân = t2.id cá_nhân
select tên , họ from cá_nhân as t1 join ứng_cử_viên as t2 on t1.id cá_nhân = t2.id cá_nhân
select id sinh_viên from sinh_viên where id sinh_viên not in ( select id sinh_viên from lần tham_dự khoá học của sinh_viên )
select id sinh_viên from sinh_viên where id sinh_viên not in ( select id sinh_viên from lần tham_dự khoá học của sinh_viên )
select id sinh_viên from lần tham_dự khoá học của sinh_viên
select id sinh_viên from lần tham_dự khoá học của sinh_viên
select t1.id sinh_viên , t2.tên khoá học from lượt đăng_ký khoá học của sinh_viên as t1 join khoá học as t2 on t1.id khoá học = t2.id khoá học
select t1.chi_tiết sinh_viên from sinh_viên as t1 join lượt đăng_ký khoá học của sinh_viên as t2 on t1.id sinh_viên = t2.id sinh_viên order by t2.ngày đăng_kí desc limit 1
select t1.chi_tiết sinh_viên from sinh_viên as t1 join lượt đăng_ký khoá học của sinh_viên as t2 on t1.id sinh_viên = t2.id sinh_viên order by t2.ngày đăng_kí desc limit 1
select count ( * ) from khoá học as t1 join lần tham_dự khoá học của sinh_viên as t2 on t1.id khoá học = t2.id khoá học where t1.tên khoá học = "English"
select count ( * ) from khoá học as t1 join lần tham_dự khoá học của sinh_viên as t2 on t1.id khoá học = t2.id khoá học where t1.tên khoá học = "English"
select count ( * ) from lần tham_dự khoá học của sinh_viên where id sinh_viên = 171
select count ( * ) from lần tham_dự khoá học của sinh_viên as t1 join khoá học as t2 on t1.id khoá học = t2.id khoá học where t1.id sinh_viên = 171
select t2.id ứng_cử_viên from cá_nhân as t1 join ứng_cử_viên as t2 on t1.id cá_nhân = t2.id ứng_cử_viên where t1.địa chỉ email = "stanley.monahan@example.org"
select t1.id ứng_cử_viên from ứng_cử_viên as t1 join địa_chỉ cá_nhân as t2 on t1.id ứng_cử_viên = t2.id cá_nhân where t2.địa chỉ email = "stanley.monahan@example.org"
select id ứng_cử_viên from đánh_giá ứng_cử_viên order by ngày đánh_giá desc limit 1
select id ứng_cử_viên from đánh_giá ứng_cử_viên order by ngày đánh_giá desc limit 1
select t2.chi_tiết sinh_viên from lượt đăng_ký khoá học của sinh_viên as t1 join sinh_viên as t2 on t1.id sinh_viên = t2.id sinh_viên group by t2.id sinh_viên order by count ( * ) desc limit 1
select t2.chi_tiết sinh_viên from lượt đăng_ký khoá học của sinh_viên as t1 join sinh_viên as t2 on t1.id sinh_viên = t2.id sinh_viên group by t2.id sinh_viên order by count ( * ) desc limit 1
select t1.id sinh_viên , count ( * ) from sinh_viên as t1 join lượt đăng_ký khoá học của sinh_viên as t2 on t1.id sinh_viên = t2.id sinh_viên group by t1.id sinh_viên
select count ( * ) , id sinh_viên from lượt đăng_ký khoá học của sinh_viên group by id sinh_viên
select t1.tên khoá học , count ( * ) from khoá học as t1 join lượt đăng_ký khoá học của sinh_viên as t2 on t1.id khoá học = t2.id khoá học group by t1.tên khoá học
select count ( * ) , t1.id khoá học from lượt đăng_ký khoá học của sinh_viên as t1 join khoá học as t2 on t1.id khoá học = t2.id khoá học group by t1.id khoá học
select id ứng_cử_viên from đánh_giá ứng_cử_viên where mã kết_quả đánh_giá = "Pass"
select id ứng_cử_viên from đánh_giá ứng_cử_viên where mã kết_quả đánh_giá = "Pass"
select t1.số di_động from ứng_cử_viên as t1 join đánh_giá ứng_cử_viên as t2 on t1.id ứng_cử_viên = t2.id ứng_cử_viên where t2.mã kết_quả đánh_giá = "Fail"
select t1.số di_động from ứng_cử_viên as t1 join đánh_giá ứng_cử_viên as t2 on t1.id ứng_cử_viên = t2.id ứng_cử_viên where t2.mã kết_quả đánh_giá = "Fail"
select id sinh_viên from lượt đăng_ký khoá học của sinh_viên where id khoá học = 301
select id sinh_viên from lượt đăng_ký khoá học của sinh_viên where id khoá học = 301
select id sinh_viên from lần tham_dự khoá học của sinh_viên where id khoá học = 301 order by ngày tham_dự desc limit 1
select id sinh_viên from lần tham_dự khoá học của sinh_viên where id khoá học = 301 order by ngày tham_dự desc limit 1
select distinct t1.thành_phố from địa_chỉ as t1 join địa_chỉ cá_nhân as t2 on t1.id địa_chỉ = t2.id địa_chỉ
select distinct thành_phố from địa_chỉ
select distinct t1.thành_phố from địa_chỉ as t1 join địa_chỉ cá_nhân as t2 on t1.id địa_chỉ = t2.id địa_chỉ join sinh_viên as t3 on t2.id cá_nhân = t3.id sinh_viên
select distinct t1.thành_phố from địa_chỉ as t1 join địa_chỉ cá_nhân as t2 on t1.id địa_chỉ = t2.id địa_chỉ join sinh_viên as t3 on t2.id cá_nhân = t3.id sinh_viên
select tên khoá học from khoá học order by tên khoá học
select tên khoá học from khoá học order by tên khoá học asc
select tên from cá_nhân order by tên asc
select tên from cá_nhân order by tên
select id sinh_viên from lần tham_dự khoá học của sinh_viên union select id sinh_viên from lượt đăng_ký khoá học của sinh_viên
select id sinh_viên from lượt đăng_ký khoá học của sinh_viên union select id sinh_viên from lần tham_dự khoá học của sinh_viên
select id khoá học from lượt đăng_ký khoá học của sinh_viên where id sinh_viên = 121 union select id khoá học from lần tham_dự khoá học của sinh_viên where id sinh_viên = 121
select id khoá học from lượt đăng_ký khoá học của sinh_viên where id sinh_viên = 121 union select id khoá học from lần tham_dự khoá học của sinh_viên where id sinh_viên = 121
select * from sinh_viên where id sinh_viên not in ( select id sinh_viên from lần tham_dự khoá học của sinh_viên )
select chi_tiết sinh_viên from sinh_viên where id sinh_viên not in ( select id sinh_viên from lần tham_dự khoá học của sinh_viên )
select id sinh_viên from lượt đăng_ký khoá học của sinh_viên where id khoá học in ( select id khoá học from khoá học where tên khoá học = "statistics" ) order by ngày đăng_kí
select t1.id sinh_viên from lượt đăng_ký khoá học của sinh_viên as t1 join khoá học as t2 on t1.id khoá học = t2.id khoá học where t2.tên khoá học = "statistics" order by t1.ngày đăng_kí
select t1.id sinh_viên from lần tham_dự khoá học của sinh_viên as t1 join khoá học as t2 on t1.id khoá học = t2.id khoá học where t2.tên khoá học = "statistics" order by t1.ngày tham_dự
select t1.id sinh_viên from lần tham_dự khoá học của sinh_viên as t1 join khoá học as t2 on t1.id khoá học = t2.id khoá học where t2.tên khoá học = "Statistics" order by t1.ngày tham_dự
select count ( * ) from lượt nộp bài
select count ( * ) from lượt nộp bài
select tác_giả from lượt nộp bài order by số điểm asc
select tác_giả , số điểm from lượt nộp bài order by số điểm asc
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
select trường đại_học from lượt nộp bài where số điểm > 90 intersect select trường đại_học from lượt nộp bài where số điểm < 80
select trường đại_học from lượt nộp bài where số điểm > 90 intersect select trường đại_học from lượt nộp bài where số điểm < 80
select t2.tác_giả , t1.kết_quả from chấp_thuận as t1 join lượt nộp bài as t2 on t1.id lượt nộp bài = t2.id lượt nộp bài
select t2.tác_giả , t1.kết_quả from chấp_thuận as t1 join lượt nộp bài as t2 on t1.id lượt nộp bài = t2.id lượt nộp bài
select t2.kết_quả from lượt nộp bài as t1 join chấp_thuận as t2 on t1.id lượt nộp bài = t2.id lượt nộp bài order by t1.số điểm desc limit 1
select t1.tác_giả , t1.số điểm from lượt nộp bài as t1 join chấp_thuận as t2 on t1.id lượt nộp bài = t2.id lượt nộp bài group by t1.id lượt nộp bài order by t1.số điểm desc limit 1
select t2.tác_giả , count ( distinct t1.id hội_thảo ) from chấp_thuận as t1 join lượt nộp bài as t2 on t1.id lượt nộp bài = t2.id lượt nộp bài group by t2.tác_giả
select t2.tác_giả , count ( * ) from chấp_thuận as t1 join lượt nộp bài as t2 on t1.id lượt nộp bài = t2.id lượt nộp bài group by t2.tác_giả
select t1.tác_giả from lượt nộp bài as t1 join chấp_thuận as t2 on t1.id lượt nộp bài = t2.id lượt nộp bài group by t1.tác_giả having count ( distinct t2.id hội_thảo ) > 1
select t2.tác_giả from chấp_thuận as t1 join lượt nộp bài as t2 on t1.id lượt nộp bài = t2.id lượt nộp bài group by t2.tác_giả having count ( distinct t1.id hội_thảo ) > 1
select ngày , địa_điểm from hội_thảo order by địa_điểm
select ngày , địa_điểm from hội_thảo order by địa_điểm
select tác_giả from lượt nộp bài where id lượt nộp bài not in ( select id lượt nộp bài from chấp_thuận )
select tác_giả from lượt nộp bài where id lượt nộp bài not in ( select id lượt nộp bài from chấp_thuận )
select tên from doanh_nghiệp where đánh_giá xếp_hạng > 4.5
select tên from doanh_nghiệp where đánh_giá xếp_hạng = 3.5
select id người tiêu_dùng from người tiêu_dùng where tên = "Michelle"
select tiểu_bang from doanh_nghiệp where tên = "Whataburger"
select t1.thành_phố from doanh_nghiệp as t1 join loại_hình as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t1.tên = "MGM Golden Nugget" and t2.tên loại_hình = "restaurant" group by t1.thành_phố having count ( * ) >= 1
select thành_phố from doanh_nghiệp where đánh_giá xếp_hạng < 1.5
select thành_phố from doanh_nghiệp where tên = "Taj Mahal"
select văn_bản from đánh_giá where đánh_giá xếp_hạng < 1
select t1.tên from doanh_nghiệp as t1 join loại_hình as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t2.tên loại_hình = "restaurant" and t1.đánh_giá xếp_hạng > 3.5
select t1.thành_phố from doanh_nghiệp as t1 join loại_hình as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t1.tên = "Taj Mahal" and t2.tên loại_hình = "restaurant" group by t1.thành_phố
select t1.văn_bản from người tiêu_dùng as t2 join đánh_giá as t1 on t2.id người tiêu_dùng = t1.id người tiêu_dùng where t2.tên = "Niloofar"
select distinct t1.tên from doanh_nghiệp as t1 join đánh_giá as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join người tiêu_dùng as t3 on t2.id người tiêu_dùng = t3.id người tiêu_dùng where t3.tên = "Niloofar"
select t1.tên from doanh_nghiệp as t1 join đánh_giá as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join người tiêu_dùng as t3 on t2.id người tiêu_dùng = t3.id người tiêu_dùng where t3.tên = "Niloofar" and t2.đánh_giá xếp_hạng = 5
select t3.văn_bản from loại_hình as t2 join doanh_nghiệp as t1 on t2.id doanh_nghiệp = t1.id doanh_nghiệp join đánh_giá as t3 on t3.id doanh_nghiệp = t1.id doanh_nghiệp join người tiêu_dùng as t4 on t4.id người tiêu_dùng = t3.id người tiêu_dùng where t4.tên = "Michelle" and t2.tên loại_hình = "italian restaurant"
select count ( distinct t1.văn_bản ) from đánh_giá as t1 join loại_hình as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join doanh_nghiệp as t3 on t2.id doanh_nghiệp = t3.id doanh_nghiệp where t3.tiểu_bang = "Texas" and t2.tên loại_hình = "cafe" and t3.tên = "Cafe Zinho"
select t1.tên from loại_hình as t2 join doanh_nghiệp as t1 on t2.id doanh_nghiệp = t1.id doanh_nghiệp where t1.đánh_giá xếp_hạng = 5 and t2.tên loại_hình = "restaurant" and t1.tên = "italian"
select t1.tên khu_phố lân_cận from loại_hình as t3 join doanh_nghiệp as t2 on t3.id doanh_nghiệp = t2.id doanh_nghiệp join khu_vực lân_cận as t1 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t2.thành_phố = "madison" and t3.tên loại_hình = "restaurant"
select t1.tên khu_phố lân_cận from khu_vực lân_cận as t1 join doanh_nghiệp as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t2.đánh_giá xếp_hạng < 2.5 and t2.tên = "italian restaurant" and t2.tiểu_bang = "madison"
select t1.tên from loại_hình as t2 join doanh_nghiệp as t1 on t2.id doanh_nghiệp = t1.id doanh_nghiệp join khu_vực lân_cận as t3 on t3.id doanh_nghiệp = t1.id doanh_nghiệp where t1.tiểu_bang = "Pennsylvania" and t2.tên loại_hình = "restaurant"
select t1.tên from loại_hình as t2 join doanh_nghiệp as t1 on t2.id doanh_nghiệp = t1.id doanh_nghiệp where t1.tiểu_bang = "Pennsylvania" and t2.tên loại_hình = "restaurant"
select t2.văn_bản from loại_hình as t1 join đánh_giá as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t1.tên loại_hình = "Pet Grooming" and t2.số_lượng đánh_giá > 100
select t1.tên from doanh_nghiệp as t1 join loại_hình as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t1.thành_phố = "Los Angeles" and t2.tên loại_hình = "brewery"
select tên from doanh_nghiệp where thành_phố = "Los Angeles"
select tên from doanh_nghiệp where thành_phố = "Los Angeles"
select t1.tên from người tiêu_dùng as t1 join đánh_giá as t2 on t1.id người tiêu_dùng = t2.id người tiêu_dùng join doanh_nghiệp as t3 on t2.id doanh_nghiệp = t3.id doanh_nghiệp where t3.tên = "Mesa Grill"
select địa_chỉ đầy_đủ from doanh_nghiệp where thành_phố = "Los Angeles" and tên = "Walmart"
select t1.tên from doanh_nghiệp as t1 join loại_hình as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join người tiêu_dùng as t3 on t3.id người tiêu_dùng = t2.id người tiêu_dùng join đánh_giá as t4 on t4.id doanh_nghiệp = t1.id doanh_nghiệp join người tiêu_dùng as t5 on t5.id người tiêu_dùng = t3.id người tiêu_dùng where t3.tên = "Patrick" and t5.tên = "Patrick" and t1.thành_phố = "Dallas" and t2.tên loại_hình = "restaurant"
select t1.tên from loại_hình as t2 join doanh_nghiệp as t1 on t2.id doanh_nghiệp = t1.id doanh_nghiệp join người tiêu_dùng as t3 on t3.id người tiêu_dùng = t2.id người tiêu_dùng join đánh_giá as t4 on t4.id doanh_nghiệp = t1.id doanh_nghiệp where t3.tên = "Patrick" and t1.thành_phố = "Dallas" and t2.tên loại_hình = "restaurant"
select t1.tên from loại_hình as t2 join doanh_nghiệp as t1 on t2.id doanh_nghiệp = t1.id doanh_nghiệp join đánh_giá as t3 on t2.id doanh_nghiệp = t3.id doanh_nghiệp join người tiêu_dùng as t4 on t4.id người tiêu_dùng = t3.id người tiêu_dùng where t4.tên = "Patrick" and t2.tên loại_hình = "Bar"
select distinct t1.tên from loại_hình as t2 join doanh_nghiệp as t1 on t2.id doanh_nghiệp = t1.id doanh_nghiệp join đánh_giá as t3 on t3.id doanh_nghiệp = t1.id doanh_nghiệp join người tiêu_dùng as t4 on t4.id người tiêu_dùng = t3.id người tiêu_dùng where t4.tên = "Patrick" and t3.đánh_giá xếp_hạng >= 3 and t2.tên loại_hình = "Bar"
select t1.tên from người tiêu_dùng as t1 join khoản tiền boa as t2 on t1.id người tiêu_dùng = t2.id người tiêu_dùng where t2.năm = 2015 and t2.văn_bản = "Cafe Barrio"
select tên from doanh_nghiệp where tiểu_bang = "Texas" and đánh_giá xếp_hạng < 2
select t1.tên from loại_hình as t2 join doanh_nghiệp as t1 on t2.id doanh_nghiệp = t1.id doanh_nghiệp join loại_hình as t3 on t3.id doanh_nghiệp = t1.id doanh_nghiệp where t1.thành_phố = "Los Angeles" and t2.tên loại_hình = "Seafood" and t3.tên loại_hình = "restaurant"
select t1.tên from doanh_nghiệp as t1 join loại_hình as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t1.thành_phố = "Los Angeles" and t2.tên loại_hình = "seafood"
select t1.tên from loại_hình as t2 join doanh_nghiệp as t1 on t2.id doanh_nghiệp = t1.id doanh_nghiệp join loại_hình as t3 on t3.id doanh_nghiệp = t1.id doanh_nghiệp where t1.thành_phố = "Los Angeles" and t3.tên loại_hình = "Seafood" and t2.tên loại_hình = "restaurant"
select t2.văn_bản from người tiêu_dùng as t1 join đánh_giá as t2 on t1.id người tiêu_dùng = t2.id người tiêu_dùng where t1.tên = "Patrick" and t2.đánh_giá xếp_hạng > 4
select tên from doanh_nghiệp where thành_phố = "Los Angeles" and tên like "%Apple Store%"
select t1.tên from loại_hình as t2 join doanh_nghiệp as t1 on t2.id doanh_nghiệp = t1.id doanh_nghiệp where t1.thành_phố = "Dallas" and t1.đánh_giá xếp_hạng > 4.5 and t2.tên loại_hình = "restaurant"
select t1.tên khu_phố lân_cận from khu_vực lân_cận as t1 join doanh_nghiệp as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t2.tên = "Flat Top Grill"
select t2.văn_bản from khoản tiền boa as t2 join doanh_nghiệp as t1 on t2.id doanh_nghiệp = t1.id doanh_nghiệp where t1.tên = "Vintner Grill" and t2.số lượt thích > 9
select t1.văn_bản from đánh_giá as t1 join doanh_nghiệp as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t2.tên = "Kabob Palace" and t1.năm = 2014
select distinct t1.tên from người tiêu_dùng as t1 join khoản tiền boa as t2 on t1.id người tiêu_dùng = t2.id người tiêu_dùng join doanh_nghiệp as t3 on t2.id doanh_nghiệp = t3.id doanh_nghiệp where t3.thành_phố = "Dallas"
select t1.thành_phố from loại_hình as t2 join doanh_nghiệp as t1 on t2.id doanh_nghiệp = t1.id doanh_nghiệp where t1.tiểu_bang = "Texas" and t1.tên = "MGM Golden_Grill" and t2.tên loại_hình = "restaurant"
select t1.tên from người tiêu_dùng as t1 join khoản tiền boa as t2 on t1.id người tiêu_dùng = t2.id người tiêu_dùng join loại_hình as t3 on t2.id doanh_nghiệp = t3.id doanh_nghiệp join doanh_nghiệp as t4 on t3.id doanh_nghiệp = t4.id doanh_nghiệp where t4.tên = "Pet Groomers"
select t2.văn_bản from khoản tiền boa as t2 join doanh_nghiệp as t1 on t2.id doanh_nghiệp = t1.id doanh_nghiệp where t1.tên = "Cafe Zinho" and t1.tiểu_bang = "Texas"
select t2.tên from loại_hình as t1 join doanh_nghiệp as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join đánh_giá as t3 on t3.id doanh_nghiệp = t2.id doanh_nghiệp join người tiêu_dùng as t4 on t4.id người tiêu_dùng = t3.id người tiêu_dùng where t1.tên loại_hình = "restaurant"
select t2.văn_bản from khoản tiền boa as t2 join doanh_nghiệp as t1 on t2.id doanh_nghiệp = t1.id doanh_nghiệp where t1.tên = "cafe zinho" and t2.năm = 2010
select
select t1.văn_bản from đánh_giá as t1 join khoản tiền boa as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t2.năm = 2012
select t2.văn_bản from đánh_giá as t2 join doanh_nghiệp as t1 on t2.id doanh_nghiệp = t1.id doanh_nghiệp where t1.đánh_giá xếp_hạng = 2.5
select count ( distinct t1.tên ) from loại_hình as t2 join doanh_nghiệp as t1 on t2.id doanh_nghiệp = t1.id doanh_nghiệp where t1.thành_phố = "Madison" and t2.tên loại_hình = "escape games"
select count ( distinct t1.tên ) from loại_hình as t2 join doanh_nghiệp as t1 on t2.id doanh_nghiệp = t1.id doanh_nghiệp where t1.thành_phố = "Madison" and t2.tên loại_hình = "escape games"
select count ( distinct t1.tên ) from loại_hình as t2 join doanh_nghiệp as t1 on t2.id doanh_nghiệp = t1.id doanh_nghiệp where t1.thành_phố = "Madison" and t2.tên loại_hình = "escape games"
select count ( distinct t1.tên ) from loại_hình as t2 join doanh_nghiệp as t1 on t2.id doanh_nghiệp = t1.id doanh_nghiệp where t1.thành_phố = "Madison" and t2.tên loại_hình = "escape games"
select count ( distinct t1.tên ) from loại_hình as t2 join doanh_nghiệp as t1 on t2.id doanh_nghiệp = t1.id doanh_nghiệp where t1.thành_phố = "Madison" and t2.tên loại_hình = "escape games"
select count ( distinct t1.tên ) from loại_hình as t2 join doanh_nghiệp as t1 on t2.id doanh_nghiệp = t1.id doanh_nghiệp where t1.đánh_giá xếp_hạng > 3.5 and t2.tên loại_hình = "restaurant"
select sum ( t2.số_lượng ) from loại_hình as t1 join khu_vực lân_cận as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join doanh_nghiệp as t3 on t2.id doanh_nghiệp = t3.id doanh_nghiệp where t3.thành_phố = "Los Angeles" and t1.tên loại_hình = "Marokkanese"
select sum ( t1.số_lượng ) from lượt đăng_ký as t1 join doanh_nghiệp as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t2.tên = "Marokko" and t2.thành_phố = "Los Angeles" and t1.ngày = "Friday"
select t2.ngày , sum ( t2.số_lượng ) from loại_hình as t1 join lượt đăng_ký as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join doanh_nghiệp as t3 on t2.id doanh_nghiệp = t3.id doanh_nghiệp where t3.thành_phố = "Los Angeles" and t1.tên loại_hình = "Marokchinese" group by t2.ngày
select sum ( t2.số_lượng ) , t3.tiểu_bang from loại_hình as t1 join lượt đăng_ký as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join doanh_nghiệp as t3 on t3.id doanh_nghiệp = t2.id doanh_nghiệp where t1.tên loại_hình = "Italian Delis" and t3.tiểu_bang = "CA" and t2.ngày = "Sunday" group by t3.tiểu_bang
select count ( distinct t1.văn_bản ) from người tiêu_dùng as t2 join đánh_giá as t1 on t2.id người tiêu_dùng = t1.id người tiêu_dùng where t1.năm = 2015 and t2.tên = "Niloofar"
select avg ( t1.đánh_giá xếp_hạng ) from người tiêu_dùng as t2 join đánh_giá as t1 on t2.id người tiêu_dùng = t1.id người tiêu_dùng where t2.tên = "Michelle"
select t2.số_lượng from lượt đăng_ký as t2 join doanh_nghiệp as t1 on t2.id doanh_nghiệp = t1.id doanh_nghiệp where t1.tên = "Cafe Zinho" and t2.ngày = "Friday"
select count ( distinct t2.tên ) from loại_hình as t3 join doanh_nghiệp as t1 on t3.id doanh_nghiệp = t1.id doanh_nghiệp join đánh_giá as t2 on t2.id doanh_nghiệp = t1.id doanh_nghiệp join người tiêu_dùng as t4 on t4.id người tiêu_dùng = t2.id người tiêu_dùng where t1.thành_phố = "Pittsburgh" and t1.tên = "Sushi Too" and t3.tên loại_hình = "restaurant" and t2.id người tiêu_dùng = t4.id người tiêu_dùng
select count ( distinct t1.tên ) from loại_hình as t2 join doanh_nghiệp as t1 on t2.id doanh_nghiệp = t1.id doanh_nghiệp where t1.thành_phố = "Pittsburgh" and t1.đánh_giá xếp_hạng > 4.5 and t2.tên loại_hình = "restaurant"
select count ( distinct văn_bản ) from khoản tiền boa where năm = 2015
select sum ( t2.số lượt thích ) from người tiêu_dùng as t1 join khoản tiền boa as t2 on t1.id người tiêu_dùng = t2.id người tiêu_dùng where t1.tên = "Niloofar"
select sum ( t2.số lượt thích ) from khoản tiền boa as t2 join doanh_nghiệp as t1 on t2.id doanh_nghiệp = t1.id doanh_nghiệp where t1.tên = "Cafe Zinho"
select sum ( t2.số lượt thích ) from khoản tiền boa as t2 join người tiêu_dùng as t1 on t2.id người tiêu_dùng = t1.id người tiêu_dùng join doanh_nghiệp as t3 on t2.id doanh_nghiệp = t3.id doanh_nghiệp where t1.tên = "Niloofar" and t3.tên = "Cafe Zinho"
select count ( distinct t1.văn_bản ) from người tiêu_dùng as t2 join khoản tiền boa as t1 on t2.id người tiêu_dùng = t1.id người tiêu_dùng where t1.năm = 2010 and t2.tên = "Michelle"
select count ( distinct t1.văn_bản ) from người tiêu_dùng as t2 join khoản tiền boa as t1 on t2.id người tiêu_dùng = t1.id người tiêu_dùng where t1.năm = 2010 and t2.tên = "Michelle"
select count ( distinct t1.văn_bản ) from người tiêu_dùng as t2 join khoản tiền boa as t1 on t2.id người tiêu_dùng = t1.id người tiêu_dùng where t1.tháng = "April" and t2.tên = "Michelle"
select count ( distinct t1.tên ) from loại_hình as t2 join doanh_nghiệp as t1 on t2.id doanh_nghiệp = t1.id doanh_nghiệp where t1.tiểu_bang = "Texas" and t2.tên loại_hình = "restaurant"
select count ( distinct t1.tên ) from loại_hình as t2 join doanh_nghiệp as t1 on t2.id doanh_nghiệp = t1.id doanh_nghiệp where t1.thành_phố = "Dallas" and t1.đánh_giá xếp_hạng > 3.5 and t2.tên loại_hình = "bar"
select count ( distinct t1.tên ) from loại_hình as t2 join doanh_nghiệp as t1 on t2.id doanh_nghiệp = t1.id doanh_nghiệp where t1.thành_phố = "Dallas" and t1.đánh_giá xếp_hạng > 3.5 and t2.tên loại_hình = "Bar"
select count ( distinct t4.tên ) from loại_hình as t2 join doanh_nghiệp as t1 on t2.id doanh_nghiệp = t1.id doanh_nghiệp join đánh_giá as t3 on t3.id doanh_nghiệp = t1.id doanh_nghiệp join người tiêu_dùng as t4 on t4.id người tiêu_dùng = t3.id người tiêu_dùng where t1.thành_phố = "Dallas" and t1.tên = "Texas de Brazil" and t2.tên loại_hình = "restaurant"
select count ( distinct t4.tên ) from loại_hình as t2 join doanh_nghiệp as t1 on t2.id doanh_nghiệp = t1.id doanh_nghiệp join đánh_giá as t3 on t3.id doanh_nghiệp = t1.id doanh_nghiệp join người tiêu_dùng as t4 on t4.id người tiêu_dùng = t3.id người tiêu_dùng where t1.tên = "Bistro Di Napoli" and t3.năm = 2015 and t2.tên loại_hình = "restaurant"
select count ( distinct t1.tên ) from loại_hình as t2 join doanh_nghiệp as t1 on t2.id doanh_nghiệp = t1.id doanh_nghiệp where t1.thành_phố = "Dallas" and t1.tiểu_bang = "Texas" and t2.tên loại_hình = "restaurant"
select count ( distinct t1.tên ) from loại_hình as t2 join doanh_nghiệp as t1 on t2.id doanh_nghiệp = t1.id doanh_nghiệp where t1.thành_phố = "Dallas" and t1.tiểu_bang = "Texas" and t2.tên loại_hình = "starbucks"
select số_lượng đánh_giá from doanh_nghiệp where tên = "Acacia Cafe"
select avg ( t2.số_lượng ) , t2.ngày from loại_hình as t1 join lượt đăng_ký as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t1.tên loại_hình = "restaurant" and t1.id doanh_nghiệp = "barrio cafe" group by t2.ngày
select
select count ( distinct t1.văn_bản ) from người tiêu_dùng as t2 join đánh_giá as t1 on t2.id người tiêu_dùng = t1.id người tiêu_dùng where t2.tên = "Adrienne"
select count ( distinct t1.văn_bản ) from người tiêu_dùng as t2 join đánh_giá as t1 on t2.id người tiêu_dùng = t1.id người tiêu_dùng where t1.tháng = "March" and t1.năm = 2014 and t2.tên = "Michelle"
select count ( distinct t1.tên ) from người tiêu_dùng as t2 join đánh_giá as t1 on t2.id người tiêu_dùng = t1.id người tiêu_dùng where t1.năm = 2010 and t2.tên = "Michelle"
select count ( distinct t1.tên ) from doanh_nghiệp as t1 join đánh_giá as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join người tiêu_dùng as t3 on t2.id người tiêu_dùng = t3.id người tiêu_dùng where t3.tên = "Christine" and t1.thành_phố = "San Diego" and t2.năm = 2010
select count ( distinct t1.tên ) from doanh_nghiệp as t1 join loại_hình as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t1.thành_phố = "Los Angeles" and t2.tên loại_hình = "Target"
select count ( distinct t4.tên ) from loại_hình as t2 join doanh_nghiệp as t1 on t2.id doanh_nghiệp = t1.id doanh_nghiệp join đánh_giá as t3 on t3.id doanh_nghiệp = t1.id doanh_nghiệp join người tiêu_dùng as t4 on t4.id người tiêu_dùng = t3.id người tiêu_dùng where t1.thành_phố = "Dallas" and t2.tên loại_hình = "Irish Pub"
select avg ( đánh_giá xếp_hạng ) from đánh_giá where năm = 2014
select count ( distinct t2.tên ) from đánh_giá as t1 join người tiêu_dùng as t2 on t1.id người tiêu_dùng = t2.id người tiêu_dùng join doanh_nghiệp as t3 on t1.id doanh_nghiệp = t3.id doanh_nghiệp where t3.tên = "Vintner Grill" and t1.năm = 2010
select t1.số_lượng đánh_giá from doanh_nghiệp as t1 join khu_vực lân_cận as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t2.tên khu_phố lân_cận = "South Summerlin"
select count ( distinct tên ) from người tiêu_dùng where tên = "Michelle"
select count ( distinct t1.tên ) from loại_hình as t2 join doanh_nghiệp as t1 on t2.id doanh_nghiệp = t1.id doanh_nghiệp where t2.tên loại_hình = "restaurant"
select count ( distinct t1.thành_phố ) from doanh_nghiệp as t1 join loại_hình as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t1.tên = "Panda Express" and t2.tên loại_hình = "restaurant"
select count ( distinct t1.văn_bản ) from người tiêu_dùng as t2 join khoản tiền boa as t1 on t2.id người tiêu_dùng = t1.id người tiêu_dùng where t2.tên = "Michelle"
select sum ( t2.số_lượng ) from khu_vực lân_cận as t1 join lượt đăng_ký as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t1.tên khu_phố lân_cận = "Brighton Heights"
select count ( distinct văn_bản ) from đánh_giá where tháng = "March"
select count ( distinct văn_bản ) , tháng from khoản tiền boa group by tháng
select count ( distinct t1.tên khu_phố lân_cận ) from khu_vực lân_cận as t1 join doanh_nghiệp as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t2.đánh_giá xếp_hạng = 5 and t2.thành_phố = "Madison"
select t1.tên from loại_hình as t2 join doanh_nghiệp as t1 on t2.id doanh_nghiệp = t1.id doanh_nghiệp join khu_vực lân_cận as t3 on t3.id doanh_nghiệp = t1.id doanh_nghiệp where t1.tiểu_bang = "Texas" and t2.tên loại_hình = "Marokch"
select t1.tên from doanh_nghiệp as t1 join lượt đăng_ký as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp group by t1.tên order by sum ( t2.số_lượng ) desc limit 1
select t1.tên khu_phố lân_cận from khu_vực lân_cận as t1 join doanh_nghiệp as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t2.thành_phố = "Madison" group by t1.tên khu_phố lân_cận order by count ( * ) desc limit 1
select t1.tên from loại_hình as t2 join doanh_nghiệp as t1 on t2.id doanh_nghiệp = t1.id doanh_nghiệp where t1.thành_phố = "Dallas" and t1.đánh_giá xếp_hạng >= 3.5 and t2.tên loại_hình = "Mexican"
select t1.tên from loại_hình as t2 join doanh_nghiệp as t1 on t2.id doanh_nghiệp = t1.id doanh_nghiệp join khu_vực lân_cận as t3 on t3.id doanh_nghiệp = t1.id doanh_nghiệp where t1.tiểu_bang = "Texas" and t1.thành_phố = "Dallas" and t2.tên loại_hình = "Mexican" and t1.đánh_giá xếp_hạng >= 3.5
select t1.tên from loại_hình as t2 join doanh_nghiệp as t1 on t2.id doanh_nghiệp = t1.id doanh_nghiệp join khu_vực lân_cận as t3 on t3.id doanh_nghiệp = t1.id doanh_nghiệp where t1.thành_phố = "Dallas" and t1.tiểu_bang = "Texas" and t2.tên loại_hình = "Parking services" and t3.tên khu_phố lân_cận = "Fort_Worth"
select t1.tên from loại_hình as t2 join doanh_nghiệp as t1 on t2.id doanh_nghiệp = t1.id doanh_nghiệp join khu_vực lân_cận as t3 on t3.id doanh_nghiệp = t1.id doanh_nghiệp where t3.tên khu_phố lân_cận = "Meadowood" and t2.tên loại_hình = "Italian" and t1.thành_phố = "Madison"
select t1.tên from doanh_nghiệp as t1 join loại_hình as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t1.thành_phố = "Los Angeles" and t2.tên loại_hình = "bar" and t1.đánh_giá xếp_hạng > 3.5 group by t2.id doanh_nghiệp having count ( distinct t1.tên ) >= 30
select count ( distinct t1.tên ) from loại_hình as t2 join doanh_nghiệp as t1 on t2.id doanh_nghiệp = t1.id doanh_nghiệp where t1.thành_phố = "Edinburgh" and t2.tên loại_hình = "restaurant" and t1.tên = "Moroccan"
select t1.tên from người tiêu_dùng as t1 join đánh_giá as t2 on t1.id người tiêu_dùng = t2.id người tiêu_dùng group by t2.id người tiêu_dùng having avg ( t2.đánh_giá xếp_hạng ) < 3
select t1.tên from doanh_nghiệp as t1 join đánh_giá as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t2.tháng = "April" group by t2.id doanh_nghiệp order by count ( * ) desc limit 1
select t1.tên from loại_hình as t2 join doanh_nghiệp as t1 on t2.id doanh_nghiệp = t1.id doanh_nghiệp group by t2.id doanh_nghiệp order by count ( * ) desc limit 1