select t1.id tài_sản , t1.chi_tiết tài_sản from tài_sản as t1 join bộ_phận của tài_sản as t2 on t1.id tài_sản = t2.id tài_sản group by t1.id tài_sản having count (*) = 2 intersect select t1.id tài_sản , t1.chi_tiết tài_sản from tài_sản as t1 join bộ_phận của tài_sản as t2 on t1.id tài_sản = t2.id tài_sản join nhật_ký lỗi as t3 on t1.id tài_sản = t3.id tài_sản group by t1.id tài_sản having count (*) < 2
select count (*) , t1.id hợp_đồng bảo_trì from hợp_đồng bảo_trì as t1 join tài_sản as t2 on t1.id hợp_đồng bảo_trì của công_ty = t2.id hợp_đồng bảo_trì group by t1.id hợp_đồng bảo_trì
select count (*) , t1.id công_ty from công_ty bên thứ ba as t1 join tài_sản as t2 on t1.id công_ty cung_cấp = t2.id công_ty group by t1.id công_ty
select t1.id công_ty , t1.tên công_ty from công_ty bên thứ ba as t1 join hợp_đồng bảo_trì as t2 on t1.id công_ty = t2.id hợp_đồng bảo_trì của công_ty group by t1.id công_ty having count (*) >= 2 union select tên công_ty , id công_ty from công_ty bên thứ ba as t1 join kỹ_sư bảo_trì as t2 on t1.id công_ty = t2.id công_ty group by t1.id công_ty having count (*) >= 2
select t1.tên nhân_viên , t1.id nhân_viên from nhân_viên as t1 join nhật_ký lỗi as t2 on t1.id nhân_viên = t2.được ghi lại bởi nhân_viên có id where id kỹ_sư = null
select t1.id kỹ_sư , t1.tên , t1.họ from kỹ_sư bảo_trì as t1 join chuyến thăm của kỹ_sư as t2 on t1.id kỹ_sư = t2.id kỹ_sư ghé thăm group by t1.id kỹ_sư order by count (*) desc limit 1
select t1.tên bộ_phận , t1.id bộ_phận from bộ_phận as t1 join lỗi bộ_phận as t2 on t1.id bộ_phận = t2.id bộ_phận group by t1.id bộ_phận having count (*) > 2
select t1.tên , t1.họ , t1.những chi_tiết khác from kỹ_sư bảo_trì as t1 join kỹ_năng của kỹ_sư as t2 on t1.id kỹ_sư = t2.id kỹ_sư
select t1.mô_tả lỗi , t2.mã kỹ_năng from lỗi bộ_phận as t1 join kỹ_năng cần để sửa_chữa as t2 on t1.id bộ_phận bị lỗi = t2.id bộ_phận bị lỗi
select t2.tên bộ_phận , count (*) from bộ_phận của tài_sản as t1 join bộ_phận as t2 on t1.id bộ_phận = t2.id bộ_phận group by t2.tên bộ_phận
select mô_tả về lỗi , tình_trạng lỗi from nhật_ký lỗi
select t1.tên nhân_viên , t1.họ nhân_viên from nhân_viên as t1 join nhật_ký lỗi as t2 on t1.id nhân_viên ghi nhật_ký lỗi = t2.được ghi lại bởi nhân_viên có id where t2.mô_tả về lỗi = hardware error or t2.mô_tả về lỗi = network error
select distinct họ from kỹ_sư bảo_trì
select distinct tình_trạng lỗi from nhật_ký lỗi
select tên , họ from kỹ_sư bảo_trì except select t1.tên , t1.họ from kỹ_sư bảo_trì as t1 join chuyến thăm của kỹ_sư as t2 on t1.id kỹ_sư = t2.id kỹ_sư
select id tài_sản , chi_tiết tài_sản , thương_hiệu tài_sản , mẫu_mã tài_sản from tài_sản
select ngày mua tài_sản from tài_sản order by ngày mua tài_sản limit 1
select t1.id bộ_phận bị lỗi , t1.mô_tả lỗi from lỗi bộ_phận as t1 join kỹ_năng cần để sửa_chữa as t2 on t1.id bộ_phận bị lỗi = t2.id bộ_phận bị lỗi group by t1.id bộ_phận bị lỗi order by count (*) desc limit 1
select t1.tên bộ_phận from bộ_phận as t1 join lỗi bộ_phận as t2 on t1.id bộ_phận = t2.id bộ_phận group by t1.tên bộ_phận order by count (*) asc limit 1
select
select t1.tên nhân_viên , t2.tên , t2.họ from nhân_viên as t1 join kỹ_sư bảo_trì as t2 on t1.id nhân_viên = t2.id kỹ_sư bảo_trì
select t1.id mục nhập của nhật_ký lỗi , t1.mô_tả về lỗi from nhật_ký lỗi as t1 join lỗi bộ_phận as t2 on t1.id mục nhập của nhật_ký lỗi = t2.id mục nhập của nhật_ký lỗi group by t1.id mục nhập của nhật_ký lỗi order by count (*) desc limit 1
select t1.id kỹ_năng , t1.mô_tả về kỹ_năng from kỹ_năng as t1 join kỹ_năng cần để sửa_chữa as t2 on t1.id kỹ_năng = t2.id kỹ_năng group by t1.id kỹ_năng order by count (*) desc limit 1
select distinct mẫu_mã tài_sản from tài_sản
select thương_hiệu tài_sản , mẫu_mã tài_sản , chi_tiết về tài_sản from tài_sản order by ngày thanh_lý tài_sản
select id bộ_phận , số tiền phải trả from bộ_phận order by số tiền phải trả limit 1
select t1.tên công_ty from công_ty bên thứ ba as t1 join hợp_đồng bảo_trì as t2 on t1.id công_ty = t2.id hợp_đồng bảo_trì của công_ty order by t2.ngày bắt_đầu hợp_đồng limit 1
select t1.tên công_ty from công_ty bên thứ ba as t1 join hợp_đồng bảo_trì as t2 on t1.id công_ty = t2.id công_ty bên thứ ba order by t2.ngày kết_thúc hợp_đồng desc limit 1
select giới_tính from nhân_viên group by giới_tính order by count (*) desc limit 1
select t1.tên nhân_viên , count (*) from nhân_viên as t1 join kỹ_sư bảo_trì as t2 on t1.id nhân_viên = t2.id nhân_viên liên_lạc group by t1.tên nhân_viên
select mẫu_mã tài_sản from tài_sản where id tài_sản not in (select id tài_sản from nhật_ký lỗi)
select count (*) from sách
select tác_giả from sách order by tác_giả asc
select tiêu_đề from sách order by số_lượng phát_hành asc
select tiêu_đề from sách where tác_giả != elaine lee
select tiêu_đề , số_lượng phát_hành from sách
select ngày xuất_bản from ấn_phẩm order by giá bán desc
select distinct nhà_xuất_bản from ấn_phẩm where giá bán > 5000000
select nhà_xuất_bản from ấn_phẩm order by giá bán desc limit 1
select ngày xuất_bản from ấn_phẩm order by giá bán limit 3
select t1.tiêu_đề , t1.ngày xuất_bản from sách as t1 join ấn_phẩm as t2 on t1.id sách = t2.id sách
select t1.tác_giả from sách as t1 join ấn_phẩm as t2 on t1.id sách = t2.id sách where t2.giá bán > 4000000
select t1.tiêu_đề from sách as t1 join ấn_phẩm as t2 on t1.id sách = t2.id sách order by t2.giá bán desc
select nhà_xuất_bản from ấn_phẩm group by nhà_xuất_bản having count (*) > 1
select nhà_xuất_bản , count (*) from ấn_phẩm group by nhà_xuất_bản
select ngày xuất_bản from ấn_phẩm group by ngày xuất_bản order by count (*) desc limit 1
select tác_giả from sách group by tác_giả having count (*) > 1
select tiêu_đề from sách where id sách not in (select id sách from ấn_phẩm)
select nhà_xuất_bản from ấn_phẩm where giá bán > 10000000 intersect select nhà_xuất_bản from ấn_phẩm where giá bán < 5000000
select count (distinct ngày xuất_bản) from ấn_phẩm
select count (distinct ngày xuất_bản) from ấn_phẩm
select giá bán from ấn_phẩm where nhà_xuất_bản = person or nhà_xuất_bản = wiley
select tên bộ_phận from bộ_phận order by ngày bắt_đầu quản_lý
select tên người phụ_thuộc from người phụ_thuộc where mối quan_hệ = male
select count (*) from người phụ_thuộc where giới_tính = f
select t1.tên bộ_phận from bộ_phận as t1 join địa_điểm của bộ_phận as t2 on t1.mã_số bộ_phận = t2.mã_số bộ_phận where t2.địa_điểm bộ_phận = houston
select tên , họ from nhân_viên where lương > 30000
select count (*) , giới_tính from nhân_viên where lương < 50000 group by giới_tính
select tên , họ , địa_chỉ from nhân_viên order by ngày_sinh
select count (*) from giáo_viên
select count (*) from giáo_viên
select tên from giáo_viên order by tuổi asc
select tên from giáo_viên order by tuổi asc
select tuổi , quê_quán from giáo_viên
select tuổi , quê_quán from giáo_viên
select tên from giáo_viên where quê_quán != little lever town
select tên from giáo_viên where quê_quán != little lever town
select tên from giáo_viên where tuổi = 32 or tuổi = 33
select tên from giáo_viên where tuổi = 32 or tuổi = 33
select quê_quán from giáo_viên order by tuổi asc limit 1
select quê_quán from giáo_viên order by tuổi limit 1
select quê_quán , count (*) from giáo_viên group by quê_quán
select quê_quán , count (*) from giáo_viên group by quê_quán
select quê_quán from giáo_viên group by quê_quán order by count (*) desc limit 1
select quê_quán from giáo_viên group by quê_quán order by count (*) desc limit 1
select quê_quán from giáo_viên group by quê_quán having count (*) >= 2
select quê_quán from giáo_viên group by quê_quán order by count (*) >= 2
select t2.tên , t3.khoá học from sắp_xếp khoá học as t1 join giáo_viên as t2 on t1.id giáo_viên = t2.id giáo_viên join khoá học as t3 on t1.id khoá học = t3.id khoá học
select t2.tên , t3.khoá học from sắp_xếp khoá học as t1 join giáo_viên as t2 on t1.id giáo_viên = t2.id giáo_viên join khoá học as t3 on t1.id khoá học = t3.id khoá học
select t2.tên , t3.khoá học from sắp_xếp khoá học as t1 join giáo_viên as t2 on t1.id giáo_viên = t2.id giáo_viên join khoá học as t3 on t1.id khoá học = t3.id khoá học order by t2.tên
select t2.tên , t3.khoá học from sắp_xếp khoá học as t1 join giáo_viên as t2 on t1.id giáo_viên = t2.id giáo_viên join khoá học as t3 on t1.id khoá học = t3.id khoá học order by t2.tên asc
select t1.tên from giáo_viên as t1 join sắp_xếp khoá học as t2 on t1.id giáo_viên = t2.id giáo_viên join khoá học as t3 on t2.id khoá học = t3.id khoá học where t3.khoá học = math
select t2.tên from sắp_xếp khoá học as t1 join giáo_viên as t2 on t1.id giáo_viên = t2.id giáo_viên join khoá học as t3 on t1.id khoá học = t3.id khoá học where t3.khoá học = math
select t2.tên , count (*) from sắp_xếp khoá học as t1 join giáo_viên as t2 on t1.id giáo_viên = t2.id giáo_viên group by t1.id giáo_viên
select t2.tên , count (*) from sắp_xếp khoá học as t1 join giáo_viên as t2 on t1.id giáo_viên = t2.id giáo_viên group by t2.id giáo_viên
select t2.tên from sắp_xếp khoá học as t1 join giáo_viên as t2 on t1.id giáo_viên = t2.id giáo_viên group by t1.id giáo_viên having count (*) >= 2
select t2.tên from sắp_xếp khoá học as t1 join giáo_viên as t2 on t1.id giáo_viên = t2.id giáo_viên group by t1.id giáo_viên having count (*) >= 2
select tên from giáo_viên where id giáo_viên not in (select id giáo_viên from sắp_xếp khoá học)
select tên from giáo_viên where id giáo_viên not in (select id giáo_viên from sắp_xếp khoá học)
select count (*) from thành_viên
select tên from thành_viên order by tên asc
select tên , quốc_gia from thành_viên
select tên from thành_viên where quốc_gia = united states or quốc_gia = canada
select quốc_gia , count (*) from thành_viên group by quốc_gia
select quốc_gia from thành_viên group by quốc_gia order by count (*) desc limit 1
select quốc_gia from thành_viên group by quốc_gia having count (*) > 2
select tên lãnh_đạo , địa_điểm trường đại_học from trường đại_học
select t2.tên , t1.tên from thành_viên as t1 join trường đại_học as t2 on t1.id đại_học = t2.id đại_học
select t1.tên , t2.địa_điểm trường đại_học from thành_viên as t1 join trường đại_học as t2 on t1.id đại_học = t2.id đại_học order by t1.tên
select t1.tên lãnh_đạo from trường đại_học as t1 join thành_viên as t2 on t1.id đại_học = t2.id đại_học where t2.quốc_gia = canada
select t1.tên , t2.chủ_đề trang_trí from thành_viên as t1 join vòng as t2 on t1.id thành_viên = t2.id thành_viên
select t1.tên from thành_viên as t1 join vòng as t2 on t1.id thành_viên = t2.id thành_viên where t2.xếp_hạng từng vòng > 3
select t2.tên from vòng as t1 join thành_viên as t2 on t1.id thành_viên = t2.id thành_viên order by t1.xếp_hạng từng vòng
select tên from thành_viên where id thành_viên not in (select id thành_viên from vòng)
select count (*) from cuộc bầu_cử
select số_lượng phiếu bầu from cuộc bầu_cử order by số_lượng phiếu bầu desc
select ngày , tỉ_lệ phiếu bầu from cuộc bầu_cử
select min (tỉ_lệ phiếu bầu) , max (tỉ_lệ phiếu bầu) from cuộc bầu_cử
select tên , đảng from đại_diện
select tên from đại_diện where đảng != republican
select tuổi_thọ from đại_diện where tiểu_bang = new york or tiểu_bang = indiana
select t1.tên , t2.ngày from đại_diện as t1 join cuộc bầu_cử as t2 on t1.id đại_diện = t2.id đại_diện
select t1.tên from đại_diện as t1 join cuộc bầu_cử as t2 on t1.id đại_diện = t2.id đại_diện where t2.số_lượng phiếu bầu > 10000
select tên from đại_diện order by số_lượng phiếu bầu desc
select t2.đảng from cuộc bầu_cử as t1 join đại_diện as t2 on t1.id đại_diện = t2.id đại_diện order by t1.số_lượng phiếu bầu limit 1
select tuổi_thọ from đại_diện order by tỷ_lệ phiếu bầu desc
select avg (số_lượng phiếu bầu) from cuộc bầu_cử as t1 join đại_diện as t2 on t1.id đại_diện = t2.id đại_diện where t2.đảng = republican
select đảng , count (*) from đại_diện group by đảng
select đảng from đại_diện group by đảng order by count (*) desc limit 1
select đảng from đại_diện group by đảng having count (*) >= 3
select tiểu_bang from đại_diện group by tiểu_bang having count (*) >= 2
select tên from đại_diện where id đại_diện not in (select id đại_diện from cuộc bầu_cử)
select đảng from đại_diện where tiểu_bang = new york intersect select đảng from đại_diện where tiểu_bang = pennsylvania
select count (distinct đảng) from đại_diện
select count (*) from quốc_gia
select count (*) from quốc_gia
select tên quốc_gia , thủ_đô from quốc_gia
select tên quốc_gia , thủ_đô from quốc_gia
select ngôn_ngữ bản_địa chính_thức from quốc_gia where ngôn_ngữ bản_địa chính_thức like %english%
select ngôn_ngữ bản_địa chính_thức from quốc_gia where tên quốc_gia like %english%
select distinct vị_trí from trận đấu trong mùa giải
select distinct vị_trí from trận đấu trong mùa giải
select cầu_thủ from cầu_thủ where trường đại_học = ucla
select cầu_thủ from cầu_thủ where trường đại_học = ucla
select distinct t2.vị_trí from trận đấu trong mùa giải as t1 join cầu_thủ as t2 on t1.cầu_thủ = t2.id cầu_thủ where t1.trường đại_học = ucla or t1.trường đại_học = duke
select distinct t2.vị_trí from trận đấu trong mùa giải as t1 join cầu_thủ as t2 on t1.cầu_thủ = t2.id cầu_thủ where t1.trường đại_học = ucla or t1.trường đại_học = duke
select mã_số tuyển_chọn tân_binh , mùa tuyển_chọn from trận đấu trong mùa giải where vị_trí = mid
select mã_số tuyển_chọn tân_binh , mùa tuyển_chọn from trận đấu trong mùa giải where vị_trí = mid
select count (distinct đội) from trận đấu trong mùa giải
select count (distinct đội) from trận đấu trong mùa giải
select cầu_thủ , số năm đã chơi from cầu_thủ
select distinct cầu_thủ , số năm đã chơi from cầu_thủ
select tên from đội
select tên from đội
select t1.mùa giải , t1.cầu_thủ , t2.tên quốc_gia from trận đấu trong mùa giải as t1 join quốc_gia as t2 on t1.quốc_gia = t2.id quốc_gia
select
select t1.cầu_thủ from cầu_thủ as t1 join trận đấu trong mùa giải as t2 on t1.id cầu_thủ = t2.cầu_thủ where t2.quốc_gia = (select id quốc_gia from quốc_gia where tên quốc_gia = indonesia)
select t1.cầu_thủ from cầu_thủ as t1 join trận đấu trong mùa giải as t2 on t1.id cầu_thủ = t2.cầu_thủ where t2.quốc_gia = (select id quốc_gia from quốc_gia where tên quốc_gia = indonesia)
select distinct t2.vị_trí from quốc_gia as t1 join trận đấu trong mùa giải as t2 on t1.id quốc_gia = t2.quốc_gia where t1.thủ_đô = dublin
select distinct t2.vị_trí from quốc_gia as t1 join trận đấu trong mùa giải as t2 on t1.id quốc_gia = t2.quốc_gia where t1.thủ_đô = dublin
select t1.ngôn_ngữ bản_địa chính_thức from quốc_gia as t1 join trận đấu trong mùa giải as t2 on t1.id quốc_gia = t2.quốc_gia where t2.trường đại_học = maryland or t2.trường đại_học = duke
select t1.ngôn_ngữ bản_địa chính_thức from quốc_gia as t1 join trận đấu trong mùa giải as t2 on t1.id quốc_gia = t2.quốc_gia where t2.trường đại_học = maryland or t2.trường đại_học = duke
select count (distinct t1.ngôn_ngữ bản_địa chính_thức) from quốc_gia as t1 join trận đấu trong mùa giải as t2 on t1.id quốc_gia = t2.quốc_gia where t2.vị_trí = mid
select count (distinct t1.ngôn_ngữ bản_địa chính_thức) from quốc_gia as t1 join trận đấu trong mùa giải as t2 on t1.id quốc_gia = t2.quốc_gia where t2.vị_trí = mid
select t1.mùa giải , t1.cầu_thủ , t2.tên from trận đấu trong mùa giải as t1 join đội as t2 on t1.đội = t2.id đội
select distinct t1.cầu_thủ , t1.mùa giải , t2.tên from trận đấu trong mùa giải as t1 join đội as t2 on t1.đội = t2.id đội
select t2.vị_trí from đội as t1 join trận đấu trong mùa giải as t2 on t1.id đội = t2.đội where t1.tên = ryley goldner
select
select t1.tên from cầu_thủ as t1 join quốc_gia as t2 on t1.id quốc_gia = t2.id quốc_gia where t2.tên quốc_gia = united states and t1.chiều cao > 180
select count (distinct t1.trường đại_học) from trận đấu trong mùa giải as t1 join đội as t2 on t1.đội = t2.id đội where t2.tên = columbus crew
select t1.cầu_thủ , t1.số năm đã chơi from cầu_thủ as t1 join đội as t2 on t1.đội = t2.id đội where t2.tên = columbus crew
select
select count (*) , vị_trí from trận đấu trong mùa giải group by vị_trí
select count (*) , vị_trí from trận đấu trong mùa giải group by vị_trí
select t1.tên quốc_gia , count (*) from quốc_gia as t1 join cầu_thủ as t2 on t1.id quốc_gia = t2.quốc_gia group by t1.tên quốc_gia
select count (*) , t1.tên quốc_gia from quốc_gia as t1 join cầu_thủ as t2 on t1.id quốc_gia = t2.quốc_gia group by t1.tên quốc_gia
select cầu_thủ from trận đấu trong mùa giải order by trường đại_học
select cầu_thủ from trận đấu trong mùa giải union select cầu_thủ from cầu_thủ order by trường đại_học
select
select vị_trí from trận đấu trong mùa giải group by vị_trí order by count (*) desc limit 1
select trường đại_học from trận đấu trong mùa giải group by trường đại_học order by count (*) desc limit 3
select trường đại_học from trận đấu trong mùa giải group by trường đại_học order by count (*) desc limit 3
select trường đại_học from cầu_thủ group by trường đại_học having count (*) >= 2
select trường đại_học from cầu_thủ group by trường đại_học having count (*) >= 2
select trường đại_học from cầu_thủ group by trường đại_học order by count (*) >= 2
select trường đại_học from trận đấu trong mùa giải group by trường đại_học having count (*) >= 2 order by trường đại_học desc
select tên from đội where id đội not in (select đội from trận đấu trong mùa giải)
select tên from đội where id đội not in (select đội from trận đấu trong mùa giải)
select t1.tên quốc_gia from quốc_gia as t1 join trận đấu trong mùa giải as t2 on t1.id quốc_gia = t2.quốc_gia where t2.vị_trí = striker intersect select t1.tên quốc_gia from quốc_gia as t1 join trận đấu trong mùa giải as t2 on t1.id quốc_gia = t2.quốc_gia where t2.vị_trí = defender
select t1.tên quốc_gia from quốc_gia as t1 join trận đấu trong mùa giải as t2 on t1.id quốc_gia = t2.quốc_gia where t2.vị_trí = striker intersect select t1.tên quốc_gia from quốc_gia as t1 join trận đấu trong mùa giải as t2 on t1.id quốc_gia = t2.quốc_gia where t2.vị_trí = defender
select trường đại_học from trận đấu trong mùa giải where vị_trí = midfielder intersect select trường đại_học from trận đấu trong mùa giải where vị_trí = defender
select trường đại_học from cầu_thủ where vị_trí = mid intersect select trường đại_học from cầu_thủ where vị_trí = back
select count (*) from tội_phạm
select ngày from tội_phạm order by số người bị giết desc
select số người bị_thương from tội_phạm order by số người bị_thương asc
select avg (số người bị_thương) from tội_phạm
select địa_điểm from tội_phạm where số người bị giết = (select max (số người bị giết) from tội_phạm)
select tên from cá_nhân order by chiều cao asc
select t1.tên from cá_nhân as t1 join tội_phạm as t2 on t1.id cá_nhân = t2.id cá_nhân
select t2.tên from tội_phạm as t1 join cá_nhân as t2 on t1.id cá_nhân = t2.id cá_nhân where t1.quốc_gia != china
select t2.tên from cá_nhân as t2 join tội_phạm as t1 on t1.id cá_nhân = t2.id cá_nhân order by t2.cân nặng desc limit 1
select sum (số người bị giết) from tội_phạm as t1 join cá_nhân as t2 on t1.id cá_nhân = t2.id cá_nhân where t2.chiều cao > 1.84
select t2.tên from tội_phạm as t1 join cá_nhân as t2 on t1.id cá_nhân = t2.id cá_nhân where t1.quốc_gia = china or t1.quốc_gia = japan
select t2.tên , t1.chiều cao from cá_nhân as t1 join tội_phạm as t2 on t1.id cá_nhân = t2.id cá_nhân order by t2.số người bị_thương desc
select quốc_gia , count (*) from tội_phạm group by quốc_gia
select quốc_gia from tội_phạm group by quốc_gia order by count (*) desc limit 1
select quốc_gia from tội_phạm group by quốc_gia having count (*) >= 2
select t2.tên from tội_phạm as t1 join cá_nhân as t2 on t1.id cá_nhân = t2.id cá_nhân order by t1.năm desc
select tên from cá_nhân where id cá_nhân not in (select id cá_nhân from tội_phạm)
select quốc_gia from tội_phạm where số người bị_thương > 50 intersect select quốc_gia from tội_phạm where số người bị_thương < 20
select count (distinct địa_điểm) from tội_phạm
select t1.ngày from tội_phạm as t1 join cá_nhân as t2 on t1.id cá_nhân = t2.id cá_nhân order by t2.chiều cao desc limit 1
select năm from tội_phạm order by ngày desc limit 1
select chính_quyền địa_phương , dịch_vụ from nhà_ga
select số_hiệu tàu , tên from tàu_hoả order by thời_gian
select thời_gian , số_hiệu tàu from tàu_hoả where điểm đến = chennai order by thời_gian
select count (*) from tàu_hoả where tên like %express%
select số_hiệu tàu , thời_gian from tàu_hoả where điểm khởi_hành = chennai and điểm đến = guruvayur
select điểm khởi_hành , count (*) from tàu_hoả group by điểm khởi_hành
select t1.tên from tàu_hoả as t1 join lộ_trình as t2 on t1.id = t2.id tàu group by t2.id tàu order by count (*) desc limit 1
select count (*) , t1.tên mạng_lưới , t1.dịch_vụ from nhà_ga as t1 join lộ_trình as t2 on t1.id = t2.id nhà_ga group by t2.id nhà_ga
select avg (nhiệt_độ cao) , ngày trong tuần from thời_tiết hàng tuần group by ngày trong tuần
select avg (t3.lượng mưa) , max (t3.nhiệt_độ thấp) from lộ_trình as t1 join tàu_hoả as t2 on t1.id tàu = t2.id join thời_tiết hàng tuần as t3 on t1.id nhà_ga = t3.id nhà_ga where t2.tên = amersham and t3.ngày trong tuần = trung_bình
select t1.tên , t1.thời_gian from tàu_hoả as t1 join lộ_trình as t2 on t1.id = t2.id tàu join nhà_ga as t3 on t2.id nhà_ga = t3.id where t3.chính_quyền địa_phương = chiltern
select count (distinct dịch_vụ) from nhà_ga
select t1.id , t1.chính_quyền địa_phương from nhà_ga as t1 join thời_tiết hàng tuần as t2 on t1.id = t2.id nhà_ga group by t2.id nhà_ga order by avg (t2.nhiệt_độ cao) desc limit 1
select t2.id , t2.chính_quyền địa_phương from thời_tiết hàng tuần as t1 join nhà_ga as t2 on t1.id nhà_ga = t2.id where t1.lượng mưa > 50
select min (nhiệt_độ thấp) , max (tốc_độ gió mph) from thời_tiết hàng tuần
select điểm khởi_hành from tàu_hoả group by điểm khởi_hành having count (*) > 1
select count (*) from nhà_thờ where ngày mở_cửa < 1850
select tên , ngày mở_cửa , được tổ_chức bởi from nhà_thờ
select tên from nhà_thờ order by ngày mở_cửa desc
select ngày mở_cửa from nhà_thờ group by ngày mở_cửa having count (*) >= 2
select được tổ_chức bởi , tên from nhà_thờ where ngày mở_cửa >= 1830 and ngày mở_cửa <= 1840
select ngày mở_cửa , count (*) from nhà_thờ group by ngày mở_cửa
select tên , ngày mở_cửa from nhà_thờ order by ngày mở_cửa desc limit 3
select count (*) from cá_nhân where tuổi > 30 and là nam hay nữ = female
select quốc_gia from cá_nhân where tuổi > 30 intersect select quốc_gia from cá_nhân where tuổi < 25
select min (tuổi) , max (tuổi) , avg (tuổi) from cá_nhân
select tên , quốc_gia from cá_nhân where tuổi < (select avg (tuổi) from cá_nhân)
select t3.tên , t4.tên from lễ cưới as t1 join nhà_thờ as t2 on t1.id nhà_thờ = t2.id nhà_thờ join cá_nhân as t3 on t1.id nam = t3.id cá_nhân and t1.id nữ = t3.id cá_nhân join cá_nhân as t4 on t1.id nữ = t4.id cá_nhân where t2.ngày mở_cửa > 2014
select tên , tuổi from cá_nhân where là nam hay nữ = male except select t1.tên , t1.tuổi from cá_nhân as t1 join lễ cưới as t2 on t1.id cá_nhân = t2.id nam
select tên from nhà_thờ except select t2.tên from lễ cưới as t1 join nhà_thờ as t2 on t1.id nhà_thờ = t2.id nhà_thờ where t1.năm = 2015
select t1.tên from nhà_thờ as t1 join lễ cưới as t2 on t1.id nhà_thờ = t2.id nhà_thờ group by t2.id nhà_thờ having count (*) >= 2
select t3.tên from lễ cưới as t1 join nhà_thờ as t2 on t1.id nhà_thờ = t2.id nhà_thờ join cá_nhân as t3 on t1.id nữ = t3.id cá_nhân where t3.quốc_gia = canada and t1.năm = 2016 and t3.là nam hay nữ = nữ
select count (*) from lễ cưới where năm = 2016
select t3.tên from lễ cưới as t1 join nhà_thờ as t2 on t1.id nhà_thờ = t2.id nhà_thờ join cá_nhân as t3 on t1.id nam = t3.id cá_nhân where t3.tuổi > 30
select quốc_gia , count (*) from cá_nhân group by quốc_gia
select count (*) from nhà_thờ as t1 join lễ cưới as t2 on t1.id nhà_thờ = t2.id nhà_thờ where t2.năm = 2016
select count (*) from giảng_viên
select count (*) from giảng_viên
select distinct ngạch from giảng_viên
select distinct ngạch from giảng_viên
select toà nhà from giảng_viên
select toà nhà from giảng_viên
select tên , họ , ngạch from giảng_viên
select tên , họ , ngạch from giảng_viên
select tên , họ , số điện_thoại from giảng_viên where giới_tính = f
select tên , họ , số điện_thoại from giảng_viên where giới_tính = f
select id giảng_viên from giảng_viên where giới_tính = m
select id giảng_viên from giảng_viên where giới_tính = m
select count (*) from giảng_viên where giới_tính = f and ngạch = professor
select count (*) from giảng_viên where giới_tính = f and ngạch = professor
select số điện_thoại , số phòng , toà nhà from giảng_viên where tên = prince and họ = jerry
select số điện_thoại , số phòng , toà nhà from giảng_viên where tên = prince and tên = jerry
select count (*) from giảng_viên where toà nhà = neb and ngạch = professor
select count (*) from giảng_viên where ngạch = professor and toà nhà = neb
select tên , họ from giảng_viên
select tên , họ from giảng_viên
select toà nhà , count (*) from giảng_viên group by toà nhà
select toà nhà , count (*) from giảng_viên group by toà nhà
select toà nhà from giảng_viên group by toà nhà order by count (*) desc limit 1
select toà nhà from giảng_viên group by toà nhà order by count (*) desc limit 1
select toà nhà from giảng_viên where ngạch = professor group by toà nhà having count (*) >= 10
select toà nhà from giảng_viên where ngạch = professor group by toà nhà having count (*) >= 10
select ngạch , count (*) from giảng_viên group by ngạch
select ngạch , count (*) from giảng_viên group by ngạch
select ngạch , count (*) from giảng_viên where giới_tính = m group by ngạch union select ngạch , count (*) from giảng_viên where giới_tính = f group by ngạch
select ngạch , giới_tính , count (*) from giảng_viên group by giới_tính , ngạch
select ngạch from giảng_viên group by ngạch order by count (*) limit 1
select ngạch from giảng_viên group by ngạch order by count (*) limit 1
select giới_tính , count (*) from giảng_viên where ngạch = assoc prof group by giới_tính
select count (*) from giảng_viên where giới_tính = m and ngạch = asstprof
select t2.tên , t2.họ from sinh_viên as t1 join giảng_viên as t2 on t1.cố_vấn = t2.id giảng_viên where t1.tên = linda and t1.họ = smith
select t2.họ , t2.tên from sinh_viên as t1 join sinh_viên as t2 on t1.cố_vấn = t2.id sinh_viên where t1.họ = smith and t1.tên = linda
select t1.id sinh_viên from sinh_viên as t1 join giảng_viên as t2 on t1.cố_vấn = t2.id giảng_viên where t2.ngạch = professor
select t1.id sinh_viên from sinh_viên as t1 join giảng_viên as t2 on t1.cố_vấn = t2.id giảng_viên where t2.ngạch = professor
select t2.tên , t2.họ from sinh_viên as t2 join giảng_viên as t1 on t2.cố_vấn = t1.id giảng_viên where t1.tên = micheal and t1.họ = goodrich
select t2.tên , t2.họ from sinh_viên as t2 join tham_gia vào as t1 on t1.id sinh_viên = t2.id sinh_viên where t1.id sinh_viên in (select t1.id sinh_viên from sinh_viên as t2 join tham_gia vào as t1 on t1.id sinh_viên = t2.id sinh_viên where t2.họ = goodrich and t2.tên = micheal)
select t1.id giảng_viên , count (*) from giảng_viên as t1 join sinh_viên as t2 on t1.id giảng_viên = t2.cố_vấn group by t1.id giảng_viên
select t1.id giảng_viên , count (*) from giảng_viên as t1 join sinh_viên as t2 on t1.id giảng_viên = t2.cố_vấn group by t1.id giảng_viên
select t2.ngạch , count (*) from giảng_viên as t1 join sinh_viên as t2 on t1.id giảng_viên = t2.cố_vấn group by t2.ngạch
select t2.ngạch , count (*) from sinh_viên as t1 join giảng_viên as t2 on t1.cố_vấn = t2.id giảng_viên group by t2.ngạch
select t2.tên , t2.họ from sinh_viên as t1 join giảng_viên as t2 on t1.cố_vấn = t2.id giảng_viên group by t1.cố_vấn order by count (*) desc limit 1
select t1.tên , t1.họ from giảng_viên as t1 join tham_gia vào as t2 on t1.id giảng_viên = t2.id giảng_viên group by t1.id giảng_viên order by count (*) desc limit 1
select t1.id giảng_viên from giảng_viên as t1 join sinh_viên as t2 on t1.id giảng_viên = t2.cố_vấn group by t1.id giảng_viên having count (*) >= 2
select t1.id giảng_viên from giảng_viên as t1 join sinh_viên as t2 on t1.id giảng_viên = t2.cố_vấn group by t1.id giảng_viên having count (*) >= 2
select id giảng_viên from giảng_viên where id giảng_viên not in (select cố_vấn from sinh_viên)
select id giảng_viên from giảng_viên except select cố_vấn from sinh_viên
select tên hoạt_động from hoạt_động
select tên hoạt_động from hoạt_động
select count (*) from hoạt_động
select count (*) from hoạt_động
select count (distinct id giảng_viên) from giảng_viên tham_gia vào
select count (*) from giảng_viên tham_gia vào
select id giảng_viên from giảng_viên except select id giảng_viên from giảng_viên tham_gia vào
select id giảng_viên from giảng_viên except select id giảng_viên from giảng_viên tham_gia vào
select id giảng_viên from giảng_viên tham_gia vào intersect select cố_vấn from sinh_viên
select id giảng_viên from giảng_viên tham_gia vào except select cố_vấn from sinh_viên
select count (*) from giảng_viên tham_gia vào as t1 join giảng_viên as t2 on t1.id giảng_viên = t2.id giảng_viên where t2.tên = mark and t2.họ = giuliano
select count (*) from giảng_viên tham_gia vào as t1 join giảng_viên as t2 on t1.id giảng_viên = t2.id giảng_viên where t2.tên = mark and t2.họ = giuliano
select t3.tên hoạt_động from giảng_viên as t1 join giảng_viên tham_gia vào as t2 on t1.id giảng_viên = t2.id giảng_viên join hoạt_động as t3 on t2.id hoạt_động = t3.id hoạt_động where t1.tên = mark and t1.họ = giuliano
select t3.tên hoạt_động from giảng_viên as t1 join giảng_viên tham_gia vào as t2 on t1.id giảng_viên = t2.id giảng_viên join hoạt_động as t3 on t2.id hoạt_động = t3.id hoạt_động where t1.tên = mark and t1.họ = giuliano
select t2.tên , t2.họ , count (*) from giảng_viên tham_gia vào as t1 join giảng_viên as t2 on t1.id giảng_viên = t2.id giảng_viên group by t1.id giảng_viên
select t1.tên , t1.họ , count (*) from giảng_viên as t1 join giảng_viên tham_gia vào as t2 on t1.id giảng_viên = t2.id giảng_viên group by t1.id giảng_viên
select t2.tên hoạt_động , count (*) from giảng_viên tham_gia vào as t1 join hoạt_động as t2 on t1.id hoạt_động = t2.id hoạt_động group by t1.id hoạt_động
select t2.tên hoạt_động , count (*) from giảng_viên tham_gia vào as t1 join hoạt_động as t2 on t1.id hoạt_động = t2.id hoạt_động group by t2.tên hoạt_động
select t1.tên , t1.họ from giảng_viên as t1 join giảng_viên tham_gia vào as t2 on t1.id giảng_viên = t2.id giảng_viên group by t1.id giảng_viên order by count (*) desc limit 1
select t2.tên , t2.họ from giảng_viên tham_gia vào as t1 join giảng_viên as t2 on t1.id giảng_viên = t2.id giảng_viên group by t1.id giảng_viên order by count (*) desc limit 1
select t1.tên hoạt_động from hoạt_động as t1 join giảng_viên tham_gia vào as t2 on t1.id hoạt_động = t2.id hoạt_động group by t1.tên hoạt_động order by count (*) desc limit 1
select t1.tên hoạt_động from hoạt_động as t1 join giảng_viên tham_gia vào as t2 on t1.id hoạt_động = t2.id hoạt_động group by t1.tên hoạt_động order by count (*) desc limit 1
select id sinh_viên from sinh_viên except select id sinh_viên from tham_gia vào
select id sinh_viên from sinh_viên except select id sinh_viên from tham_gia vào
select id sinh_viên from sinh_viên as t1 join tham_gia vào as t2 on t1.id sinh_viên = t2.id sinh_viên where t1.tuổi < 20
select id sinh_viên from tham_gia vào as t1 join hoạt_động as t2 on t1.id hoạt_động = t2.id hoạt_động join sinh_viên as t3 on t1.id sinh_viên = t3.id sinh_viên where t3.tuổi < 20
select t1.tên , t1.họ from sinh_viên as t1 join tham_gia vào as t2 on t1.id sinh_viên = t2.id sinh_viên group by t2.id sinh_viên order by count (*) desc limit 1
select t1.tên , t1.họ from sinh_viên as t1 join tham_gia vào as t2 on t1.id sinh_viên = t2.id sinh_viên group by t1.id sinh_viên order by count (*) desc limit 1
select t1.tên hoạt_động from hoạt_động as t1 join tham_gia vào as t2 on t1.id hoạt_động = t2.id hoạt_động group by t1.tên hoạt_động order by count (*) desc limit 1
select t1.tên hoạt_động from hoạt_động as t1 join tham_gia vào as t2 on t1.id hoạt_động = t2.id hoạt_động group by t1.tên hoạt_động order by count (*) desc limit 1
select t1.tên from giảng_viên as t1 join giảng_viên tham_gia vào as t2 on t1.id giảng_viên = t2.id giảng_viên join hoạt_động as t3 on t2.id hoạt_động = t3.id hoạt_động where t3.tên hoạt_động = swimming or t3.tên hoạt_động = kayaking
select t2.tên from giảng_viên tham_gia vào as t1 join giảng_viên as t2 on t1.id giảng_viên = t2.id giảng_viên join hoạt_động as t3 on t1.id hoạt_động = t3.id hoạt_động where t3.tên hoạt_động = swimming or t3.tên hoạt_động = kayaking
select tên from giảng_viên where ngạch = professor except select t2.tên from giảng_viên tham_gia vào as t1 join hoạt_động as t2 on t1.id hoạt_động = t2.id hoạt_động where t2.tên hoạt_động = rowing or t2.tên hoạt_động = kayaking
select tên from giảng_viên where id giảng_viên not in (select t1.id giảng_viên from giảng_viên tham_gia vào as t1 join hoạt_động as t2 on t1.id hoạt_động = t2.id hoạt_động where t2.tên hoạt_động = rowing intersect select t1.id giảng_viên from giảng_viên tham_gia vào as t1 join hoạt_động as t2 on t1.id hoạt_động = t2.id hoạt_động where t2.tên hoạt_động = kayaking)
select t2.tên from giảng_viên tham_gia vào as t1 join giảng_viên as t2 on t1.id giảng_viên = t2.id giảng_viên join hoạt_động as t3 on t1.id hoạt_động = t3.id hoạt_động where t3.tên hoạt_động = swimming intersect select t2.tên from giảng_viên tham_gia vào as t1 join giảng_viên as t2 on t1.id giảng_viên = t2.id giảng_viên join hoạt_động as t3 on t1.id hoạt_động = t3.id hoạt_động where t3.tên hoạt_động = kayaking
select t1.tên from giảng_viên as t1 join giảng_viên tham_gia vào as t2 on t1.id giảng_viên = t2.id giảng_viên join hoạt_động as t3 on t2.id hoạt_động = t3.id hoạt_động where t3.tên hoạt_động = swimming intersect select t1.tên from giảng_viên as t1 join giảng_viên tham_gia vào as t2 on t1.id giảng_viên = t2.id giảng_viên join hoạt_động as t3 on t2.id hoạt_động = t3.id hoạt_động where t3.tên hoạt_động = kayaking
select t1.id sinh_viên from tham_gia vào as t1 join hoạt_động as t2 on t1.id hoạt_động = t2.id hoạt_động where t2.tên hoạt_động = swim intersect select t1.id sinh_viên from tham_gia vào as t1 join hoạt_động as t2 on t1.id hoạt_động = t2.id hoạt_động where t2.tên hoạt_động = kayaking
select t1.id sinh_viên from tham_gia vào as t1 join hoạt_động as t2 on t1.id hoạt_động = t2.id hoạt_động where t2.tên hoạt_động = swim intersect select t1.id sinh_viên from tham_gia vào as t1 join hoạt_động as t2 on t1.id hoạt_động = t2.id hoạt_động where t2.tên hoạt_động = kayaking
select count (*) from người luyện thể_hình
select tổng from người luyện thể_hình order by tổng asc
select cử giật , cử đẩy from người luyện thể_hình order by cử giật
select avg (cử giật) from người luyện thể_hình
select cử đẩy from người luyện thể_hình order by tổng desc limit 1
select ngày_sinh from cá_nhân order by chiều cao asc
select t2.tên from người luyện thể_hình as t1 join cá_nhân as t2 on t1.id cá_nhân = t2.id cá_nhân
select t2.tên from người luyện thể_hình as t1 join cá_nhân as t2 on t1.id cá_nhân = t2.id cá_nhân where t1.tổng > 300
select t2.tên from người luyện thể_hình as t1 join cá_nhân as t2 on t1.id cá_nhân = t2.id cá_nhân order by t2.cân nặng desc limit 1
select t2.ngày_sinh , t2.nơi sinh from người luyện thể_hình as t1 join cá_nhân as t2 on t1.id cá_nhân = t2.id cá_nhân order by t1.tổng limit 1
select t2.chiều cao from người luyện thể_hình as t1 join cá_nhân as t2 on t1.id cá_nhân = t2.id cá_nhân where t1.tổng < 315
select avg (tổng) from người luyện thể_hình where cá_nhân chiều cao > 200
select t2.tên from người luyện thể_hình as t1 join cá_nhân as t2 on t1.id cá_nhân = t2.id cá_nhân order by t1.tổng desc
select nơi sinh , count (*) from cá_nhân group by nơi sinh
select nơi sinh from cá_nhân group by nơi sinh order by count (*) desc limit 1
select nơi sinh from cá_nhân group by nơi sinh having count (*) >= 2
select chiều cao , cân nặng from cá_nhân order by chiều cao desc
select * from người luyện thể_hình
select
select count (distinct nơi sinh) from cá_nhân
select count (*) from cá_nhân where id cá_nhân not in (select id cá_nhân from người luyện thể_hình)
select tên from người luyện thể_hình where cân nặng > 180 or cân nặng < 170
select tổng from người luyện thể_hình where ngày_sinh like %-1%
select min (cử giật) from người luyện thể_hình
select count (*) from ứng_cử_viên
select count (*) from ứng_cử_viên
select nguồn thăm_dò ý_kiến from ứng_cử_viên group by nguồn thăm_dò ý_kiến order by count (*) desc limit 1
select nguồn thăm_dò ý_kiến from ứng_cử_viên group by nguồn thăm_dò ý_kiến order by count (*) desc limit 1
select tỷ_lệ ủng_hộ from ứng_cử_viên order by tỷ_lệ ủng_hộ desc limit 3
select tỷ_lệ ủng_hộ from ứng_cử_viên order by tỷ_lệ ủng_hộ desc limit 3
select id ứng_cử_viên from ứng_cử_viên order by tỷ_lệ phản_đối limit 1
select id ứng_cử_viên from ứng_cử_viên order by tỷ_lệ phản_đối limit 1
select tỷ_lệ ủng_hộ , tỷ_lệ xem_xét , tỷ_lệ phản_đối from ứng_cử_viên order by tỷ_lệ không chắc_chắn
select tỷ_lệ ủng_hộ , tỷ_lệ xem_xét , tỷ_lệ phản_đối from ứng_cử_viên order by tỷ_lệ không chắc_chắn
select nguồn thăm_dò ý_kiến from ứng_cử_viên order by tỷ_lệ phản_đối desc limit 1
select nguồn thăm_dò ý_kiến from ứng_cử_viên order by tỷ_lệ phản_đối desc limit 1
select tên from cá_nhân order by ngày_sinh
select tên from cá_nhân order by ngày_sinh
select avg (chiều cao) , avg (cân nặng) from cá_nhân where giới_tính = m
select avg (chiều cao) , avg (cân nặng) from cá_nhân where giới_tính = m
select tên from cá_nhân where chiều cao > 200 or chiều cao < 190
select tên from cá_nhân where chiều cao > 200 or chiều cao < 190
select avg (cân nặng) , min (cân nặng) , giới_tính from cá_nhân group by giới_tính
select avg (cân nặng) , min (cân nặng) , giới_tính from cá_nhân group by giới_tính
select t2.tên , t2.giới_tính from ứng_cử_viên as t1 join cá_nhân as t2 on t1.id cá_nhân = t2.id cá_nhân order by t1.tỷ_lệ ủng_hộ desc limit 1
select t2.tên , t2.giới_tính from ứng_cử_viên as t1 join cá_nhân as t2 on t1.id cá_nhân = t2.id cá_nhân order by t1.tỷ_lệ ủng_hộ desc limit 1
select t2.tên , min (t1.tỷ_lệ phản_đối) from ứng_cử_viên as t1 join cá_nhân as t2 on t1.id cá_nhân = t2.id cá_nhân group by t2.giới_tính
select t2.tên , t2.giới_tính from ứng_cử_viên as t1 join cá_nhân as t2 on t1.id cá_nhân = t2.id cá_nhân order by t1.tỷ_lệ phản_đối asc limit 1
select giới_tính from cá_nhân group by giới_tính order by avg (tỷ_lệ không chắc_chắn) desc limit 1
select t2.giới_tính from ứng_cử_viên as t1 join cá_nhân as t2 on t1.id cá_nhân = t2.id cá_nhân group by t1.id cá_nhân order by avg (t1.tỷ_lệ không chắc_chắn) desc limit 1
select tên from cá_nhân where id cá_nhân not in (select id cá_nhân from ứng_cử_viên)
select tên from cá_nhân where id cá_nhân not in (select id cá_nhân from ứng_cử_viên)
select t2.tên from ứng_cử_viên as t1 join cá_nhân as t2 on t1.id cá_nhân = t2.id cá_nhân where t1.tỷ_lệ ủng_hộ < t1.tỷ_lệ phản_đối
select t1.tên from cá_nhân as t1 join ứng_cử_viên as t2 on t1.id cá_nhân = t2.id cá_nhân where t2.tỷ_lệ ủng_hộ < t2.tỷ_lệ phản_đối
select count (*) , giới_tính from cá_nhân where cân nặng > 85 group by giới_tính
select count (*) , giới_tính from cá_nhân where cân nặng > 85 group by giới_tính
select max (tỷ_lệ ủng_hộ) , min (tỷ_lệ xem_xét) , min (tỷ_lệ phản_đối) from ứng_cử_viên
select max (tỷ_lệ ủng_hộ) , min (tỷ_lệ xem_xét) , min (tỷ_lệ phản_đối) from ứng_cử_viên
select tên from cá_nhân where giới_tính = f order by tên
select t2.tên from ứng_cử_viên as t1 join cá_nhân as t2 on t1.id cá_nhân = t2.id cá_nhân where t2.giới_tính = f order by t2.tên
select tên from cá_nhân where chiều cao < (select avg (chiều cao) from cá_nhân)
select tên from cá_nhân where chiều cao < (select avg (chiều cao) from cá_nhân)
select * from cá_nhân
select * from cá_nhân
select thành_phố chủ nhà from thành_phố chủ nhà order by năm desc limit 1
select t1.id thành_phố from thành_phố as t1 join thành_phố chủ nhà as t2 on t1.id thành_phố = t2.thành_phố chủ nhà where t2.năm = (select max (năm) from thành_phố chủ nhà)
select id trận đấu from trận đấu where giải đấu = fifa world cup 1994 qualifier
select id trận đấu from trận đấu where giải đấu = 1994 fifa world cup qualifying
select distinct t1.thành_phố from thành_phố as t1 join thành_phố chủ nhà as t2 on t1.id thành_phố = t2.thành_phố chủ nhà where t2.năm > 2010
select distinct t1.thành_phố from thành_phố as t1 join thành_phố chủ nhà as t2 on t1.id thành_phố = t2.thành_phố chủ nhà where t2.năm > 2010
select t1.thành_phố from thành_phố as t1 join thành_phố chủ nhà as t2 on t1.id thành_phố = t2.thành_phố chủ nhà group by t2.thành_phố chủ nhà order by count (*) desc limit 1
select t1.thành_phố from thành_phố as t1 join thành_phố chủ nhà as t2 on t1.id thành_phố = t2.thành_phố chủ nhà group by t2.thành_phố chủ nhà order by count (*) desc limit 1
select t2.địa_điểm from thành_phố as t1 join trận đấu as t2 on t1.id thành_phố = t2.id trận đấu where t2.giải đấu = fifa world cup 1994 qualification and t2.địa_điểm = nam_kinh(gangcheon)
select địa_điểm from trận đấu where giải đấu = fifa world cup 1994 qualification and id trận đấu in (select t1.id trận đấu from trận đấu as t1 join thành_phố chủ nhà as t2 on t1.id trận đấu = t2.id trận đấu where t2.thành_phố chủ nhà = nam_kinh(gangcheong))
select t2.tháng_một from thành_phố as t1 join nhiệt_độ as t2 on t1.id thành_phố = t2.id thành_phố where t1.thành_phố = tokyo
select t1.tháng_một from nhiệt_độ as t1 join thành_phố as t2 on t1.id thành_phố = t2.id thành_phố where t2.thành_phố = tianjin
select t1.năm from thành_phố chủ nhà as t1 join thành_phố as t2 on t1.thành_phố chủ nhà = t2.id thành_phố where t2.thành_phố = shanghai(shanghai)
select t1.năm from thành_phố as t2 join thành_phố chủ nhà as t1 on t2.id thành_phố = t1.id trận đấu where t2.thành_phố = shanghai(shanghai) and t1.thành_phố chủ nhà = shanghai
select thành_phố from thành_phố order by dân_số khu_vực desc limit 3
select thành_phố from thành_phố order by dân_số khu_vực desc limit 3
select thành_phố , gdp from thành_phố order by gdp asc limit 1
select thành_phố , gdp from thành_phố order by gdp asc limit 1
select t1.thành_phố from thành_phố as t1 join nhiệt_độ as t2 on t1.id thành_phố = t2.id thành_phố order by t2.tháng hai desc limit 1
select t1.thành_phố from thành_phố as t1 join nhiệt_độ as t2 on t1.id thành_phố = t2.id thành_phố where t2.tháng_một > 75
select t1.thành_phố from thành_phố as t1 join nhiệt_độ as t2 on t1.id thành_phố = t2.id thành_phố where t2.tháng 3 < t2.tháng 7 union select t1.thành_phố from thành_phố as t1 join nhiệt_độ as t2 on t1.id thành_phố = t2.id thành_phố where t2.tháng 3 > t2.tháng 10
select t1.thành_phố from thành_phố as t1 join nhiệt_độ as t2 on t1.id thành_phố = t2.id thành_phố where t2.tháng 3 < t2.tháng 7 union select t1.thành_phố from thành_phố as t1 join nhiệt_độ as t2 on t1.id thành_phố = t2.id thành_phố where t2.tháng 3 > t2.tháng 10
select t1.thành_phố from thành_phố as t1 join nhiệt_độ as t2 on t1.id thành_phố = t2.id thành_phố where t2.tháng ba < t2.tháng sáu intersect select t3.thành_phố chủ nhà from thành_phố as t3 join thành_phố chủ nhà as t4 on t3.id thành_phố = t4.id trận đấu
select distinct t1.thành_phố from thành_phố as t1 join nhiệt_độ as t2 on t1.id thành_phố = t2.id thành_phố where t2.tháng 3 < t2.tháng 7 intersect select distinct t3.thành_phố from thành_phố as t3 join thành_phố chủ nhà as t4 on t3.id thành_phố = t4.thành_phố chủ nhà
select t2.thành_phố from nhiệt_độ as t1 join thành_phố as t2 on t1.id thành_phố = t2.id thành_phố where t1.tháng 3 < t1.tháng 12 except select t3.thành_phố from thành_phố as t3 join thành_phố chủ nhà as t4 on t3.id thành_phố = t4.thành_phố chủ nhà
select t1.thành_phố from thành_phố as t1 join nhiệt_độ as t2 on t1.id thành_phố = t2.id thành_phố where t2.tháng một > t2.tháng mười hai except select t3.thành_phố from thành_phố as t3 join thành_phố chủ nhà as t4 on t3.id thành_phố = t4.thành_phố chủ nhà
select t1.thành_phố from thành_phố as t1 join nhiệt_độ as t2 on t1.id thành_phố = t2.id thành_phố where t2.tháng hai > t2.tháng sáu union select t3.thành_phố from thành_phố as t3 join thành_phố chủ nhà as t4 on t3.id thành_phố = t4.thành_phố chủ nhà where t4.năm = 2015
select t1.thành_phố from thành_phố as t1 join nhiệt_độ as t2 on t1.id thành_phố = t2.id thành_phố where t2.tháng_một > t2.tháng sáu union select t3.thành_phố from thành_phố as t3 join thành_phố chủ nhà as t4 on t3.id thành_phố = t4.thành_phố chủ nhà where t4.năm = 2016
select thành_phố from thành_phố where dân_số khu_vực > 10000000
select thành_phố from thành_phố where dân_số khu_vực > 10000000
select thành_phố from thành_phố where dân_số khu_vực > 8000000 or dân_số khu_vực < 5000000
select thành_phố from thành_phố where dân_số khu_vực > 8000000 or dân_số khu_vực < 5000000
select sum (dân_số khu_vực) from thành_phố
select giải đấu , count (*) from trận đấu group by giải đấu
select địa_điểm from trận đấu order by ngày desc
select địa_điểm from trận đấu order by ngày
select gdp from thành_phố order by dân_số khu_vực desc limit 1
select gdp from thành_phố order by dân_số khu_vực desc limit 1
select t1.gdp , t1.dân_số khu_vực from thành_phố as t1 join thành_phố chủ nhà as t2 on t1.id thành_phố = t2.thành_phố chủ nhà group by t2.thành_phố chủ nhà having count (*) > 1
select t1.gdp , t1.dân_số khu_vực from thành_phố as t1 join thành_phố chủ nhà as t2 on t1.id thành_phố = t2.thành_phố chủ nhà group by t2.thành_phố chủ nhà having count (*) > 1
select count (*) from giáo_sư as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa where t2.tên khoa = finance
select count (*) from giáo_sư as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa where tên khoa = accounting
select count (*) from lớp_học as t1 join giáo_sư as t2 on t1.mã_số nhân_viên của giáo_sư = t2.mã số nhân_viên where t1.mã lớp_học = acct-211
select count (distinct mã_số nhân_viên của giáo_sư) from lớp_học where mã khoá học = acct-211
select t1.tên của nhân_viên , t1.họ của nhân_viên from nhân_viên as t1 join giáo_sư as t2 on t1.mã số nhân_viên = t2.mã số nhân_viên where t2.mã khoa = biology
select t1.tên của nhân_viên , t1.họ của nhân_viên from nhân_viên as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa where t2.tên khoa = biology
select t1.tên của nhân_viên , t1.ngày_sinh của nhân_viên from nhân_viên as t1 join lớp_học as t2 on t1.mã số nhân_viên = t2.mã_số nhân_viên của giáo_sư where t2.mã khoá học = acct-211
select t1.tên của nhân_viên , t1.ngày_sinh của nhân_viên from nhân_viên as t1 join giáo_sư as t2 on t1.mã số nhân_viên = t2.mã số nhân_viên join đăng_ký khoá học as t3 on t3.mã lớp = t2.mã lớp học where t3.mã khoá học = acct-211
select count (*) from lớp_học as t1 join giáo_sư as t2 on t1.mã_số nhân_viên của giáo_sư = t2.mã số nhân_viên where t2.họ của nhân_viên = graztevski
select count (*) from lớp_học as t1 join khoá học as t2 on t1.mã khoá học = t2.mã khoá học join nhân_viên as t3 on t2.mã khoa = t3.mã khoa where t3.họ của nhân_viên = graztevski
select mã_trường from khoa where tên khoa = accounting
select mã_trường from khoa where tên khoa = finance
select số_lượng tín_chỉ của khoá học , mô_tả về khoá học from khoá học where mã khoá học = cis-220
select số_lượng tín_chỉ của khoá học , mô_tả về khoá học from khoá học where mã khoá học = cis-220
select địa_chỉ khoa from khoa where tên khoa = history
select địa_chỉ khoa from khoa where tên khoa = history
select count (distinct địa_chỉ khoa) from khoa where mã_trường = bus
select count (distinct mã_trường) from khoa where mã_trường = bus
select count (distinct mã_trường) from khoa
select count (distinct mã_trường) from khoa
select số_lượng tín_chỉ của khoá học , mô_tả về khoá học from khoá học where mã khoá học = qm-261
select số_lượng tín_chỉ của khoá học , mô_tả về khoá học from khoá học where mã khoá học = qm-261
select count (distinct mã khoa) from khoa
select count (distinct mã_trường) from khoa
select count (*) , mã_trường from khoa group by mã_trường having count (*) < 5
select count (*) , mã_trường from khoa group by mã_trường having count (*) < 5
select count (*) , mã khoá học from lớp_học group by mã khoá học
select count (*) , mã khoá học from lớp_học group by mã khoá học
select sum (số_lượng tín_chỉ của khoá học) , mã khoa from khoá học group by mã khoa
select sum (số_lượng tín_chỉ của khoá học) , mã khoa from khoá học group by mã khoa
select count (*) , phòng học from lớp_học group by phòng học having count (*) >= 2
select count (*) , phòng học from lớp_học group by phòng học having count (*) >= 2
select count (*) , mã khoa from lớp_học group by mã khoa
select count (*) , t1.mã khoa from lớp_học as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa group by t1.mã khoa
select count (*) , mã_trường from lớp_học group by mã_trường
select count (*) , mã_trường from lớp_học group by mã_trường
select count (distinct mã_trường) from khoa
select count (distinct mã_số nhân_viên của giáo_sư) from giáo_sư
select mã công_việc của nhân_viên , count (*) from nhân_viên group by mã công_việc của nhân_viên order by count (*) desc limit 1
select mã công_việc của nhân_viên , count (*) from nhân_viên group by mã công_việc của nhân_viên order by count (*) desc limit 1
select mã_trường from khoa group by mã_trường order by count (*) limit 1
select mã_trường from khoa group by mã_trường order by count (*) limit 1
select count (*) , mã khoa from giáo_sư where bằng_cấp cao nhất = doctor group by mã khoa
select count (*) , bằng_cấp cao nhất from giáo_sư group by bằng_cấp cao nhất
select count (*) , mã khoa from sinh_viên group by mã khoa
select count (*) , mã khoa from sinh_viên group by mã khoa
select sum (giờ học của sinh_viên) , mã khoa from sinh_viên group by mã khoa
select sum (giờ học của sinh_viên) , mã khoa from sinh_viên group by mã khoa
select max (gpa của sinh_viên) , avg (gpa của sinh_viên) , min (gpa của sinh_viên) , mã khoa from sinh_viên group by mã khoa
select max (gpa của sinh_viên) , avg (gpa của sinh_viên) , min (gpa của sinh_viên) , mã khoa from sinh_viên group by mã khoa
select t1.tên khoa , avg (t2.gpa của sinh_viên) from khoa as t1 join sinh_viên as t2 on t1.mã khoa = t2.mã khoa group by t1.mã khoa order by avg (t2.gpa của sinh_viên) desc limit 1
select t1.tên khoa , avg (t2.gpa của sinh_viên) from khoa as t1 join sinh_viên as t2 on t1.mã khoa = t2.mã khoa group by t1.mã khoa order by avg (t2.gpa của sinh_viên) desc limit 1
select count (distinct mã_trường) from khoa
select count (distinct mã_trường) from khoa
select count (distinct mã lớp_học) from lớp_học
select count (distinct lớp_học phần) from lớp_học
select count (distinct mã khoá học) from khoá học
select count (distinct mã khoá học) from khoá học
select count (*) from khoa
select count (distinct mã khoa) from khoa
select count (*) from khoá học as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa where t2.tên khoa = computer science
select count (*) from khoa as t1 join khoá học as t2 on t1.mã khoa = t2.mã khoa where t1.tên khoa = computer science
select count (*) from lớp_học where mã khoá học = acct-211
select count (distinct lớp_học phần) from lớp_học where mã khoá học = acct-211
select sum (số_lượng tín_chỉ của khoá học) , mã khoa from khoá học group by mã khoa
select sum (số_lượng tín_chỉ của khoá học) , mã khoa from khoá học group by mã khoa
select t1.tên khoa from khoa as t1 join khoá học as t2 on t1.mã khoa = t2.mã khoa group by t1.mã khoa order by sum (t2.số_lượng tín_chỉ của khoá học) desc limit 1
select t1.tên khoa from khoa as t1 join khoá học as t2 on t1.mã khoa = t2.mã khoa group by t1.mã khoa order by sum (t2.số_lượng tín_chỉ của khoá học) desc limit 1
select count (distinct mã_số sinh_viên) from đăng_ký khoá học where mã khoá học = acct-211
select count (*) from đăng_ký khoá học where mã lớp = acct-211
select distinct t1.tên của sinh_viên from sinh_viên as t1 join đăng_ký khoá học as t2 on t1.mã_số sinh_viên = t2.mã_số sinh_viên where t2.mã khoá học = acct-211
select t1.tên của sinh_viên from sinh_viên as t1 join đăng_ký khoá học as t2 on t1.mã_số sinh_viên = t2.mã_số sinh_viên where t2.mã khoá học = acct-211
select tên của sinh_viên from sinh_viên as t1 join đăng_ký khoá học as t2 on t1.mã_số sinh_viên = t2.mã_số sinh_viên where t2.điểm_số = c and t2.mã khoá học = acct-211
select distinct t1.tên của sinh_viên from sinh_viên as t1 join đăng_ký khoá học as t2 on t1.mã_số sinh_viên = t2.mã_số sinh_viên where t2.mã lớp = acct-211 and t2.điểm_số = c
select count (*) from nhân_viên
select count (*) from nhân_viên
select count (*) from giáo_sư where bằng_cấp cao nhất = doctor
select count (*) from giáo_sư where bằng_cấp cao nhất = doctor
select count (*) from lớp_học as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa where t2.tên khoa = accounting
select count (*) from lớp_học as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa join giáo_sư as t3 on t2.mã khoa = t3.mã khoa where t2.tên khoa = finance
select t1.tên khoa from khoa as t1 join sinh_viên as t2 on t1.mã khoa = t2.mã khoa group by t1.mã khoa order by count (*) desc limit 1
select t1.tên khoa from khoa as t1 join sinh_viên as t2 on t1.mã khoa = t2.mã khoa group by t1.tên khoa order by count (*) desc limit 1
select tên khoa from khoa order by tên khoa
select tên khoa from khoa order by tên khoa
select mã khoá học from lớp_học where phòng học = klr 209
select mã khoá học from lớp_học where phòng học = klr 209
select tên của nhân_viên from nhân_viên where mã công_việc của nhân_viên = prof order by ngày_sinh của nhân_viên
select tên của nhân_viên from nhân_viên where mã công_việc của nhân_viên = prof order by ngày_sinh của nhân_viên
select t2.tên của giáo_sư , t2.văn_phòng giáo_sư from giáo_sư as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa order by t2.tên của giáo_sư asc
select tên của giáo_sư , văn_phòng giáo_sư from giáo_sư order by tên của giáo_sư
select họ của nhân_viên , tên của nhân_viên from nhân_viên order by ngày_sinh của nhân_viên desc limit 1
select tên của nhân_viên , họ của nhân_viên from nhân_viên order by ngày_sinh của nhân_viên limit 1
select tên của sinh_viên , họ của sinh_viên , gpa của sinh_viên from sinh_viên where gpa của sinh_viên > 3 order by gpa của sinh_viên asc limit 1
select tên của sinh_viên , họ của sinh_viên , gpa của sinh_viên from sinh_viên where gpa của sinh_viên > 3 order by ngày_sinh của sinh_viên limit 1
select distinct tên của sinh_viên from sinh_viên as t1 join đăng_ký khoá học as t2 on t1.mã_số sinh_viên = t2.mã_số sinh_viên where điểm_số = c
select distinct tên của sinh_viên from sinh_viên as t1 join đăng_ký khoá học as t2 on t1.mã_số sinh_viên = t2.mã_số sinh_viên where điểm_số = c
select tên khoa from khoa group by mã khoa order by count (mã khoa) limit 1
select tên khoa from khoa group by mã khoa order by count (mã khoa) limit 1
select t1.tên khoa from khoa as t1 join giáo_sư as t2 on t1.mã khoa = t2.mã khoa group by t1.tên khoa order by count (*) desc limit 1
select t1.tên khoa from khoa as t1 join giáo_sư as t2 on t1.mã khoa = t2.mã khoa group by t1.mã khoa order by count (*) desc limit 1
select tên của nhân_viên from nhân_viên except select t1.tên của nhân_viên from nhân_viên as t1 join lớp_học as t2 on t1.mã số nhân_viên = t2.mã_số sinh_viên
select tên của nhân_viên from nhân_viên except select t1.tên của nhân_viên from nhân_viên as t1 join giáo_sư as t2 on t1.mã số nhân_viên = t2.mã số nhân_viên
select tên của nhân_viên from nhân_viên as t1 join giáo_sư as t2 on t1.mã số nhân_viên = t2.mã số nhân_viên join khoa as t3 on t2.mã khoa = t3.mã khoa where t3.tên khoa = history except select tên của nhân_viên from nhân_viên as t1 join lớp_học as t2 on t1.mã số nhân_viên = t2.mã_số sinh_viên join khoá học as t3 on t2.mã khoá học = t3.mã khoá học join giáo_sư as t4 on t4.mã số nhân_viên = t1.mã số nhân_viên where t3.mô_tả về khoá học = history
select tên của nhân_viên from nhân_viên as t1 join giáo_sư as t2 on t1.mã số nhân_viên = t2.mã số nhân_viên where t2.mã khoa = history and t2.mã số nhân_viên not in (select mã số nhân_viên from đăng_ký khoá học)
select t1.mô_tả về khoá học from khoá học as t1 join lớp_học as t2 on t1.mã khoá học = t2.mã khoá học group by t1.mô_tả về khoá học having count (*) > 1
select tên của nhân_viên , văn_phòng giáo_sư from giáo_sư as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa where t2.tên khoa = history
select t2.văn_phòng giáo_sư , t1.mã khoa from giáo_sư as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa where t2.họ của nhân_viên = heffington
select mã khoa , văn_phòng giáo_sư from giáo_sư where họ của nhân_viên = heffington
select tên của nhân_viên , ngày bắt_đầu công_việc của nhân_viên from nhân_viên where mã khoa = dre and văn_phòng giáo_sư = 102
select t1.họ của nhân_viên , t1.ngày bắt_đầu công_việc của nhân_viên from nhân_viên as t1 join giáo_sư as t2 on t1.mã số nhân_viên = t2.mã số nhân_viên where t2.văn_phòng giáo_sư = dre 102
select t1.mã khoá học from khoá học as t1 join đăng_ký khoá học as t2 on t1.mã khoá học = t2.mã khoá học join sinh_viên as t3 on t2.mã_số sinh_viên = t3.mã_số sinh_viên where t3.họ của sinh_viên = smithson
select mã lớp from đăng_ký khoá học as t1 join sinh_viên as t2 on t1.mã_số sinh_viên = t2.mã_số sinh_viên where t2.họ của sinh_viên = smithson
select t1.số_lượng tín_chỉ của khoá học , t2.mô_tả về khoá học from khoá học as t1 join đăng_ký khoá học as t2 on t1.mã khoá học = t2.mã khoá học join sinh_viên as t3 on t3.mã_số sinh_viên = t2.mã_số sinh_viên where t3.họ của sinh_viên = smithson
select t1.số_lượng tín_chỉ của khoá học , t2.mô_tả về khoá học from khoá học as t1 join đăng_ký khoá học as t2 on t1.mã khoá học = t2.mã khoá học join sinh_viên as t3 on t3.mã_số sinh_viên = t2.mã_số sinh_viên where t3.họ của sinh_viên = smithson
select count (*) from giáo_sư where bằng_cấp cao nhất = master or bằng_cấp cao nhất = doctor
select count (*) from giáo_sư where bằng_cấp cao nhất = master or bằng_cấp cao nhất = doctor
select count (*) from giáo_sư as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa where t2.tên khoa = accounting or t2.tên khoa = biology
select count (*) from giáo_sư where mã khoa = finance or mã khoa = biology
select t1.tên của nhân_viên from nhân_viên as t1 join lớp_học as t2 on t1.mã số nhân_viên = t2.mã_số nhân_viên của giáo_sư where mã khoá học = cis-220 intersect select t1.tên của nhân_viên from nhân_viên as t1 join lớp_học as t2 on t1.mã số nhân_viên = t2.mã_số nhân_viên của giáo_sư where mã khoá học = qm-261
select t2.tên của nhân_viên from đăng_ký khoá học as t1 join nhân_viên as t2 on t1.mã_số sinh_viên = t2.mã_số nhân_viên where t1.mã khoá học = cis-220 intersect select t2.tên của nhân_viên from đăng_ký khoá học as t1 join nhân_viên as t2 on t1.mã_số sinh_viên = t2.mã_số nhân_viên where t1.mã khoá học = qm-261
select t1.tên của sinh_viên from sinh_viên as t1 join lớp_học as t2 on t1.lớp của sinh_viên = t2.mã lớp_học join khoá học as t3 on t2.mã khoá học = t3.mã khoá học where t3.mô_tả về khoá học = computer science intersect select t1.tên của sinh_viên from sinh_viên as t1 join lớp_học as t2 on t1.lớp của sinh_viên = t2.mã lớp_học join khoá học as t3 on t2.mã khoá học = t3.mã khoá học where t3.mô_tả về khoá học = accounting
select t1.tên của sinh_viên from sinh_viên as t1 join đăng_ký khoá học as t2 on t1.mã_số sinh_viên = t2.mã_số sinh_viên join khoá học as t3 on t2.mã khoá học = t3.mã khoá học join khoa as t4 on t3.mã khoa = t4.mã khoa where t4.tên khoa = computer science intersect select t1.tên của sinh_viên from sinh_viên as t1 join đăng_ký khoá học as t2 on t1.mã_số sinh_viên = t2.mã_số sinh_viên join khoá học as t3 on t2.mã khoá học = t3.mã khoá học join khoa as t4 on t3.mã khoa = t4.mã khoa where t4.tên khoa = accounting
select avg (t2.gpa của sinh_viên) from đăng_ký khoá học as t1 join sinh_viên as t2 on t1.mã_số sinh_viên = t2.mã_số sinh_viên where t1.mã khoá học = acct-211
select avg (t2.gpa của sinh_viên) from đăng_ký khoá học as t1 join sinh_viên as t2 on t1.mã_số sinh_viên = t2.mã_số sinh_viên where t1.mã khoá học = acct-211
select gpa của sinh_viên , số điện_thoại của sinh_viên , tên của sinh_viên from sinh_viên order by gpa của sinh_viên desc limit 5
select gpa của sinh_viên , số điện_thoại của sinh_viên , tên của sinh_viên from sinh_viên order by gpa của sinh_viên desc limit 5
select t1.tên khoa from khoa as t1 join sinh_viên as t2 on t1.mã khoa = t2.mã khoa where gpa của sinh_viên = (select min (gpa của sinh_viên) from sinh_viên)
select t1.mã khoa from sinh_viên as t1 join đăng_ký khoá học as t2 on t1.mã_số sinh_viên = t2.mã_số sinh_viên order by t1.gpa của sinh_viên limit 1
select tên của sinh_viên , gpa của sinh_viên from sinh_viên where gpa của sinh_viên < (select avg (gpa của sinh_viên) from sinh_viên)
select tên của sinh_viên , gpa của sinh_viên from sinh_viên where gpa của sinh_viên < (select avg (gpa của sinh_viên) from sinh_viên)
select t1.tên khoa , t1.địa_chỉ khoa from khoa as t1 join sinh_viên as t2 on t1.mã khoa = t2.mã khoa group by t2.mã khoa order by count (*) desc limit 1
select t2.tên khoa , t2.địa_chỉ khoa from khoa as t1 join khoa as t2 on t1.mã_trường = t2.mã_trường group by t2.mã_trường order by count (*) desc limit 1
select t2.tên khoa , t1.địa_chỉ khoa , count (*) from khoa as t1 join nhân_viên as t2 on t1.mã khoa = t2.mã khoa group by t2.tên khoa order by count (*) desc limit 3
select t1.tên khoa , t1.số_lượng nhân_viên , t1.địa_chỉ khoa from khoa as t1 join sinh_viên as t2 on t1.mã khoa = t2.mã khoa group by t1.mã khoa order by count (*) desc limit 3
select t2.tên của nhân_viên , t3.địa_chỉ khoa from giáo_sư as t1 join nhân_viên as t2 on t1.mã số nhân_viên = t2.mã số nhân_viên join khoa as t3 on t1.mã khoa = t3.mã khoa where t3.tên khoa = history and t1.bằng_cấp cao nhất = doctor
select tên của nhân_viên , văn_phòng giáo_sư from giáo_sư as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa where t2.tên khoa = history and bằng_cấp cao nhất = ph.d.
select t1.tên của nhân_viên , t2.mã khoá học from nhân_viên as t1 join đăng_ký khoá học as t2 on t1.mã số nhân_viên = t2.mã_số sinh_viên
select t1.tên của nhân_viên , t2.mã khoá học from nhân_viên as t1 join đăng_ký khoá học as t2 on t1.mã số nhân_viên = t2.mã_số sinh_viên
select t1.tên của nhân_viên , t2.mô_tả về khoá học from nhân_viên as t1 join khoá học as t2 on t1.mã số nhân_viên = t2.mã khoá học
select t1.tên của nhân_viên , t3.mô_tả về khoá học from nhân_viên as t1 join đăng_ký khoá học as t2 on t1.mã số nhân_viên = t2.mã_số sinh_viên join khoá học as t3 on t2.mã khoá học = t3.mã khoá học
select t1.tên của nhân_viên , t1.văn_phòng giáo_sư , t2.mô_tả về khoá học from giáo_sư as t1 join khoá học as t2 on t1.mã khoa = t2.mã khoa
select t1.tên của nhân_viên , t1.văn_phòng giáo_sư , t2.mô_tả về khoá học from giáo_sư as t1 join khoá học as t2 on t1.mã khoa = t2.mã khoa
select t1.tên của nhân_viên , t1.văn_phòng giáo_sư , t2.mô_tả về khoá học , t2.mã khoa from giáo_sư as t1 join khoá học as t2 on t1.mã khoa = t2.mã khoa
select t1.tên của nhân_viên , t1.văn_phòng giáo_sư , t2.mô_tả về khoá học from giáo_sư as t1 join khoá học as t2 on t1.mã khoa = t2.mã khoa
select t1.tên của sinh_viên , t2.mô_tả về khoá học from sinh_viên as t1 join đăng_ký khoá học as t2 on t1.mã_số sinh_viên = t2.mã_số sinh_viên
select t1.tên của sinh_viên , t1.họ của sinh_viên , t2.mô_tả về khoá học from sinh_viên as t1 join đăng_ký khoá học as t2 on t1.mã_số sinh_viên = t2.mã_số sinh_viên
select tên của sinh_viên from sinh_viên where mã_số sinh_viên in (select mã_số sinh_viên from đăng_ký khoá học where điểm_số = c or điểm_số = a)
select t1.tên của sinh_viên from sinh_viên as t1 join đăng_ký khoá học as t2 on t1.mã_số sinh_viên = t2.mã_số sinh_viên where t2.điểm_số = c or t2.điểm_số = a
select t2.tên của nhân_viên , t1.phòng học from lớp_học as t1 join nhân_viên as t2 on t1.mã_số nhân_viên của giáo_sư = t2.mã số nhân_viên where t2.mã khoa = finance
select t1.phòng học from lớp_học as t1 join khoá học as t2 on t1.mã khoá học = t2.mã khoá học join giáo_sư as t3 on t2.mã khoa = t3.mã khoa where t3.mã khoa = finance and t3.văn_phòng giáo_sư = y
select t1.tên của nhân_viên , t2.bằng_cấp cao nhất from nhân_viên as t1 join giáo_sư as t2 on t1.mã số nhân_viên = t2.mã số nhân_viên where t2.mã khoa = cis
select t2.tên của nhân_viên , t2.bằng_cấp cao nhất from khoa as t1 join giáo_sư as t2 on t1.mã khoa = t2.mã khoa where t1.tên khoa = computer systems
select t1.họ của sinh_viên from sinh_viên as t1 join đăng_ký khoá học as t2 on t1.mã_số sinh_viên = t2.mã_số sinh_viên where t2.điểm_số = a and t2.mã lớp = 10018
select t1.họ của sinh_viên from sinh_viên as t1 join đăng_ký khoá học as t2 on t1.mã_số sinh_viên = t2.mã_số sinh_viên where t2.điểm_số = a and t2.mã lớp = 10018
select tên của nhân_viên , văn_phòng giáo_sư from giáo_sư where mã khoa = history and bằng_cấp cao nhất != doctor
select tên của nhân_viên , văn_phòng giáo_sư from giáo_sư where mã khoa = history and bằng_cấp cao nhất != doctor
select t1.tên của nhân_viên from nhân_viên as t1 join lớp_học as t2 on t1.mã số nhân_viên = t2.mã_số nhân_viên của giáo_sư group by t1.mã số nhân_viên having count (*) > 1
select t1.tên của nhân_viên from nhân_viên as t1 join lớp_học as t2 on t1.mã số nhân_viên = t2.mã_số nhân_viên group by t2.mã số nhân_viên having count (*) > 1
select t1.tên của sinh_viên from sinh_viên as t1 join lớp_học as t2 on t1.lớp của sinh_viên = t2.mã lớp_học group by t1.tên của sinh_viên having count (*) = 1
select tên của sinh_viên from sinh_viên as t1 join đăng_ký khoá học as t2 on t1.mã_số sinh_viên = t2.mã_số sinh_viên where gpa của sinh_viên = 1
select tên khoa from khoa as t1 join khoá học as t2 on t1.mã khoa = t2.mã khoa where mô_tả về khoá học like %statistics%
select tên khoa from khoa where mã khoa in (select mã khoa from khoá học where mô_tả về khoá học like %statistics%)
select tên của sinh_viên from sinh_viên where chữ_cái bắt_đầu tên sinh_viên = s and mã_số sinh_viên in (select mã_số sinh_viên from đăng_ký khoá học where mã khoá học = acct-211)
select tên của sinh_viên from sinh_viên where chữ_cái đầu của tên sinh_viên = s and mã_số sinh_viên in (select mã_số sinh_viên from đăng_ký khoá học where mã khoá học = acct-211)
select mã trạng_thái tài_liệu from trạng_thái của tài_liệu
select mô_tả về trạng_thái tài_liệu from trạng_thái của tài_liệu where mã trạng_thái tài_liệu = being processed
select mã loại tài_liệu from loại tài_liệu
select mô_tả về loại tài_liệu from loại tài_liệu where mã loại tài_liệu = paper
select tên đại_lý vận_chuyển from đại_lý vận_chuyển tài_liệu
select mã đại_lý vận_chuyển from đại_lý vận_chuyển tài_liệu where tên đại_lý vận_chuyển = ups
select mã vai_trò from vai_trò
select mô_tả về vai_trò from vai_trò where mã vai_trò = ed
select count (*) from nhân_viên
select t1.mô_tả về vai_trò from vai_trò as t1 join nhân_viên as t2 on t1.mã vai_trò = t2.mã vai_trò where t2.tên nhân_viên = koby
select id tài_liệu , ngày lập biên_lai from tài_liệu
select t1.mô_tả về vai_trò , t1.mã vai_trò , count (*) from vai_trò as t1 join nhân_viên as t2 on t1.mã vai_trò = t2.mã vai_trò group by t1.mã vai_trò
select mô_tả về vai_trò , count (*) from nhân_viên as t1 join vai_trò as t2 on t1.mã vai_trò = t2.mã vai_trò group by t1.mã vai_trò having count (*) > 1
select mô_tả về trạng_thái tài_liệu from trạng_thái của tài_liệu where mã trạng_thái tài_liệu = (select mã trạng_thái tài_liệu from tài_liệu where id tài_liệu = 1)
select count (*) from tài_liệu where mã trạng_thái tài_liệu = completed
select mã loại tài_liệu from tài_liệu where id tài_liệu = 2
select id tài_liệu from tài_liệu where mã trạng_thái tài_liệu = completed and mã loại tài_liệu = paper
select t1.tên đại_lý vận_chuyển from đại_lý vận_chuyển tài_liệu as t1 join tài_liệu as t2 on t1.mã đại_lý vận_chuyển = t2.mã đại_lý vận_chuyển where t2.id tài_liệu = 2
select count (*) from tài_liệu as t1 join địa_chỉ as t2 on t1.gửi đến địa_chỉ có id = t2.id địa_chỉ join đại_lý vận_chuyển tài_liệu as t3 on t1.mã đại_lý vận_chuyển = t3.mã đại_lý vận_chuyển where t3.tên đại_lý vận_chuyển = usps
select t1.tên đại_lý vận_chuyển , count (*) from đại_lý vận_chuyển tài_liệu as t1 join tài_liệu as t2 on t1.mã đại_lý vận_chuyển = t2.mã đại_lý vận_chuyển group by t2.mã đại_lý vận_chuyển order by count (*) desc limit 1
select ngày lập biên_lai from tài_liệu where id tài_liệu = 3
select t2.chi_tiết địa_chỉ from tài_liệu được gửi as t1 join địa_chỉ as t2 on t1.gửi đến địa_chỉ có id = t2.id địa_chỉ where t1.id tài_liệu = 4
select ngày gửi from tài_liệu được gửi where id tài_liệu = 7
select id tài_liệu from tài_liệu where mã trạng_thái tài_liệu = completed intersect select id tài_liệu from tài_liệu as t1 join đại_lý vận_chuyển tài_liệu as t2 on t1.mã đại_lý vận_chuyển = t2.mã đại_lý vận_chuyển where t2.tên đại_lý vận_chuyển != usps
select t1.id tài_liệu from tài_liệu as t1 join địa_chỉ as t2 on t1.gửi đến địa_chỉ có id = t2.id địa_chỉ join đại_lý vận_chuyển tài_liệu as t3 on t1.mã đại_lý vận_chuyển = t3.mã đại_lý vận_chuyển where t1.mã trạng_thái tài_liệu = completed and t1.mã loại tài_liệu = paper and t3.tên đại_lý vận_chuyển = usps
select chi_tiết dự_thảo from bản dự_thảo của tài_liệu where id tài_liệu = 7
select count (*) from bản_sao where id tài_liệu = 2
select id tài_liệu , số_lượng bản_sao from bản_sao group by id tài_liệu order by sum (số_lượng bản_sao) desc limit 1
select id tài_liệu , số_lượng bản_sao from bản_sao where số_lượng bản_sao > 1
select t1.tên nhân_viên from nhân_viên as t1 join lịch_sử lưu_hành as t2 on t1.id nhân_viên = t2.id nhân_viên where t2.id tài_liệu = 1
select tên nhân_viên from nhân_viên except select t1.tên nhân_viên from nhân_viên as t1 join lịch_sử lưu_hành as t2 on t1.id nhân_viên = t2.id nhân_viên
select t1.tên nhân_viên , count (*) from nhân_viên as t1 join lịch_sử lưu_hành as t2 on t1.id nhân_viên = t2.id nhân_viên group by t2.id nhân_viên order by count (*) desc limit 1
select id tài_liệu , count (*) from lịch_sử lưu_hành group by id tài_liệu
select count (*) from lượt đặt_hàng
select count (*) from lượt đặt_hàng
select ngày đặt_hàng from lượt đặt_hàng
select ngày đặt_hàng from lượt đặt_hàng của khách_hàng
select ngày đặt_hàng , ngày giao hàng theo kế_hoạch , ngày giao hàng thực_tế from lượt đặt_hàng
select ngày giao hàng theo kế_hoạch , ngày giao hàng thực_tế from lượt đặt_hàng
select count (*) from khách_hàng
select count (*) from khách_hàng
select địa_chỉ email khách_hàng , số điện_thoại khách_hàng from khách_hàng where tên khách_hàng = harold
select địa_chỉ email khách_hàng , số điện_thoại khách_hàng from khách_hàng where tên khách_hàng = harold
select tên cửa_hàng from cửa_hàng
select tên cửa_hàng from cửa_hàng where id cửa_hàng in (select id cửa_hàng from nhóm hội_thảo kịch)
select min (số_lượng đặt_hàng) , avg (số_lượng đặt_hàng) , max (số_lượng đặt_hàng) from mặt_hàng trong hoá_đơn
select min (số_lượng đặt_hàng) , avg (số_lượng đặt_hàng) , max (số_lượng đặt_hàng) from mặt_hàng trong hoá_đơn
select distinct mã phương_thức thanh_toán from hoá_đơn
select distinct mã phương_thức thanh_toán from hoá_đơn
select mô_tả về khu_vực tiếp_thị from khu_vực tiếp_thị where mã khu_vực tiếp_thị = china
select mô_tả về khu_vực tiếp_thị from khu_vực tiếp_thị where mã khu_vực tiếp_thị = china
select distinct tên sản_phẩm from dịch_vụ where giá sản_phẩm > (select avg (giá sản_phẩm) from dịch_vụ)
select tên sản_phẩm from dịch_vụ where giá sản_phẩm > (select avg (giá sản_phẩm) from dịch_vụ)
select tên sản_phẩm from dịch_vụ order by giá sản_phẩm desc limit 1
select tên sản_phẩm from dịch_vụ order by giá sản_phẩm desc limit 1
select tên sản_phẩm from dịch_vụ order by giá sản_phẩm asc
select tên sản_phẩm from dịch_vụ order by giá sản_phẩm asc
select số điện_thoại khách_hàng from người biểu_diễn where tên khách_hàng = ashley
select số điện_thoại khách_hàng from khách_hàng where tên khách_hàng = ashley
select mã phương_thức thanh_toán , count (*) from lượt đặt_hàng của khách_hàng as t1 join lượt đặt_hàng as t2 on t1.id đơn hàng = t2.id đơn hàng join phương_thức thanh_toán as t3 on t2.mã phương_thức thanh_toán = t3.mã phương_thức thanh_toán group by t3.mã phương_thức thanh_toán
select mã phương_thức thanh_toán , count (*) from lượt đặt_hàng group by mã phương_thức thanh_toán
select mã phương_thức thanh_toán from lượt đặt_hàng group by mã phương_thức thanh_toán order by count (*) desc limit 1
select mã phương_thức thanh_toán from hoá_đơn group by mã phương_thức thanh_toán order by count (*) desc limit 1
select t2.thành_phố thị_trấn from cửa_hàng as t1 join địa_chỉ as t2 on t1.id địa_chỉ = t2.id địa_chỉ where t1.tên cửa_hàng = aaron coffey
select t1.thành_phố thị_trấn from địa_chỉ as t1 join cửa_hàng as t2 on t1.id địa_chỉ = t2.id địa_chỉ where t2.tên cửa_hàng = fja filming
select distinct t2.quận hạt from cửa_hàng as t1 join địa_chỉ as t2 on t1.id địa_chỉ = t2.id địa_chỉ where t2.quận hạt != null and t1.mã khu_vực tiếp_thị = ca
select t1.thành_phố , t1.quận from cửa_hàng as t1 join khu_vực tiếp_thị as t2 on t1.mã khu_vực tiếp_thị = t2.mã khu_vực tiếp_thị where t2.mã khu_vực tiếp_thị = ca
select t1.mã khu_vực tiếp_thị from khu_vực tiếp_thị as t1 join cửa_hàng as t2 on t1.mã khu_vực tiếp_thị = t2.mã khu_vực tiếp_thị where t2.tên cửa_hàng = rob dinning
select t1.mã khu_vực tiếp_thị from khu_vực tiếp_thị as t1 join cửa_hàng as t2 on t1.mã khu_vực tiếp_thị = t2.mã khu_vực tiếp_thị where t2.tên cửa_hàng = rob dinning
select t1.mô_tả về sản_phẩm from dịch_vụ as t1 join dịch_vụ đặt_hàng as t2 on t1.id dịch_vụ = t2.id dịch_vụ join các sản_phẩm as t3 on t2.id sản_phẩm = t3.id sản_phẩm where t3.giá sản_phẩm > 100
select mô_tả về sản_phẩm from dịch_vụ where giá sản_phẩm > 100
select mô_tả về sản_phẩm , mã loại dịch_vụ , count (*) from dịch_vụ group by mã loại dịch_vụ
select mô_tả về sản_phẩm , mã loại dịch_vụ , count (*) from dịch_vụ group by mã loại dịch_vụ
select t1.mô_tả về sản_phẩm , t1.mã loại dịch_vụ from dịch_vụ as t1 join dịch_vụ đặt_hàng as t2 on t1.id dịch_vụ = t2.id sản_phẩm group by t1.mã loại dịch_vụ order by count (*) desc limit 1
select sum (số tiền) from hoá_đơn
select t2.số điện_thoại cửa_hàng , t2.địa_chỉ email cửa_hàng from dịch_vụ as t1 join cửa_hàng as t2 on t1.id nhóm hội_thảo kịch = t2.id cửa_hàng
select t1.số điện_thoại cửa_hàng , t1.địa_chỉ email cửa_hàng from cửa_hàng as t1 join dịch_vụ as t2 on t1.id cửa_hàng = t2.id nhóm hội_thảo kịch
select t1.số điện_thoại cửa_hàng , t1.địa_chỉ email cửa_hàng from cửa_hàng as t1 join dịch_vụ as t2 on t1.id cửa_hàng = t2.id cửa_hàng where t2.tên sản_phẩm = film
select distinct t1.id nhóm hội_thảo kịch from dịch_vụ as t1 join sản_phẩm as t2 on t1.id sản_phẩm = t2.id sản_phẩm where t2.tên sản_phẩm = film
select mô_tả về sản_phẩm from dịch_vụ where giá sản_phẩm > (select avg (giá sản_phẩm) from dịch_vụ)
select tên sản_phẩm , avg (giá sản_phẩm) from dịch_vụ group by tên sản_phẩm
select tên sản_phẩm from dịch_vụ where giá sản_phẩm <= (select avg (giá sản_phẩm) from dịch_vụ)
select tên sản_phẩm from dịch_vụ where giá sản_phẩm <= 1000000
select sum (t2.số_lượng đặt_hàng) from dịch_vụ as t1 join mặt_hàng trong hoá_đơn as t2 on t1.id dịch_vụ = t2.id sản_phẩm where t1.mô_tả về sản_phẩm = image
select sum (t2.số_lượng đặt_hàng) from dịch_vụ as t1 join mặt_hàng trong hoá_đơn as t2 on t1.id dịch_vụ = t2.id sản_phẩm where t1.mô_tả về sản_phẩm = photo
select chi_tiết khác về mặt_hàng from mặt_hàng được đặt where id sản_phẩm in (select id sản_phẩm from các sản_phẩm where giá sản_phẩm > 2000)
select t1.chi_tiết khác về mặt_hàng from mặt_hàng được đặt as t1 join hoá_đơn as t2 on t1.id hoá_đơn của mặt_hàng = t2.id hoá_đơn join dịch_vụ đặt_hàng as t3 on t2.id đơn hàng = t3.id đơn hàng join dịch_vụ as t4 on t3.id sản_phẩm = t4.id dịch_vụ where t4.giá sản_phẩm > 2000
select t1.ngày giao hàng thực_tế from lượt đặt_hàng as t1 join mặt_hàng được đặt as t2 on t1.id đơn hàng = t2.id đơn hàng where t2.số_lượng đặt_hàng = 1
select t1.tên sản_phẩm from cửa_hàng as t1 join lượt đặt_hàng as t2 on t1.id cửa_hàng = t2.id cửa_hàng join mặt_hàng được đặt as t3 on t2.id đơn hàng = t3.id đơn hàng join cửa_hàng as t4 on t4.id cửa_hàng = t3.id cửa_hàng join khách_hàng as t5 on t2.id khách_hàng = t5.id khách_hàng group by t1.tên sản_phẩm having count (distinct t5.id khách_hàng) >= 2
select t1.tên khách_hàng , t1.số điện_thoại khách_hàng from khách_hàng as t1 join lượt đặt_hàng của khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng join lượt đặt_hàng as t3 on t2.id đơn hàng = t3.id đơn hàng join mặt_hàng được đặt as t4 on t3.id đơn hàng = t4.id đơn hàng join cửa_hàng as t5 on t3.id cửa_hàng = t5.id cửa_hàng join sản_phẩm as t6 on t4.id sản_phẩm = t6.id sản_phẩm where t6.giá sản_phẩm > 600
select t1.ngày đặt_hàng from lượt đặt_hàng as t1 join mặt_hàng được đặt as t2 on t1.id đơn hàng = t2.id đơn hàng join cửa_hàng as t3 on t1.id cửa_hàng = t3.id cửa_hàng join sản_phẩm as t4 on t2.id sản_phẩm = t4.id sản_phẩm where t4.giá sản_phẩm > 1000
select count (distinct mã_tiền tệ) from nhóm hội_thảo kịch
select count (distinct mã_tiền tệ) from nhóm hội_thảo kịch
select t1.tên cửa_hàng from cửa_hàng as t1 join nhóm hội_thảo kịch as t2 on t1.id cửa_hàng = t2.id cửa_hàng where t1.thành_phố thị_trấn = feliciaberg
select t1.tên cửa_hàng from cửa_hàng as t1 join nhóm hội_thảo kịch as t2 on t1.id cửa_hàng = t2.id cửa_hàng where t1.thành_phố thị_trấn = feliciaberg
select t1.tên khách_hàng from khách_hàng as t1 join lượt đặt_hàng as t2 join mặt_hàng được đặt as t3 join cửa_hàng as t4 on t1.id khách_hàng = t2.id khách_hàng and t2.id đơn hàng = t3.id đơn hàng and t3.id sản_phẩm = (select id sản_phẩm from các sản_phẩm where tên sản_phẩm = fitness equipment) and t4.id cửa_hàng = t2.id cửa_hàng
select t1.địa_chỉ email cửa_hàng from cửa_hàng as t1 join nhóm hội_thảo kịch as t2 on t1.id cửa_hàng = t2.id cửa_hàng where t2.mã khu_vực tiếp_thị = ak
select t2.thành_phố thị_trấn , count (*) from các sản_phẩm as t1 join địa_chỉ as t2 on t1.id địa_chỉ = t2.id địa_chỉ join nhóm hội_thảo kịch as t3 on t3.id địa_chỉ = t2.id địa_chỉ group by t2.id địa_chỉ
select t2.thành_phố thị_trấn , count (*) from các sản_phẩm as t1 join địa_chỉ as t2 on t1.id địa_chỉ = t2.id địa_chỉ join nhóm hội_thảo kịch as t3 on t3.id địa_chỉ = t2.id địa_chỉ group by t2.id địa_chỉ
select mã khu_vực tiếp_thị from nhóm hội_thảo kịch group by mã khu_vực tiếp_thị order by count (*) desc limit 1
select mã khu_vực tiếp_thị from nhóm hội_thảo kịch group by mã khu_vực tiếp_thị order by count (*) desc limit 1
select t2.thành_phố thị_trấn from khách_hàng as t1 join địa_chỉ as t2 on t1.id địa_chỉ = t2.id địa_chỉ where t1.id khách_hàng not in (select t3.id khách_hàng from người biểu_diễn as t3 join địa_chỉ as t4 on t3.id địa_chỉ = t4.id địa_chỉ)
select thành_phố thị_trấn from địa_chỉ where id địa_chỉ not in (select id địa_chỉ from khách_hàng intersect select id địa_chỉ from người biểu_diễn)
select mã trạng_thái from lượt đặt_hàng group by mã trạng_thái order by count (*) desc limit 1
select mã trạng_thái from lượt đặt_hàng group by mã trạng_thái order by count (*) desc limit 1
select t1.tên cửa_hàng from cửa_hàng as t1 join lượt đặt_hàng as t2 on t1.id cửa_hàng = t2.id cửa_hàng where t2.mã trạng_thái = stop
select t1.tên cửa_hàng from cửa_hàng as t1 join lượt đặt_hàng as t2 on t1.id cửa_hàng = t2.id cửa_hàng where t2.mã trạng_thái = stop
select distinct t1.tên khách_hàng from khách_hàng as t1 join lượt đặt_hàng as t2 join lượt đặt_hàng của khách_hàng as t3 join mặt_hàng được đặt as t4 join cửa_hàng as t5 on t1.id khách_hàng = t3.id khách_hàng and t2.id lượt đặt_hàng = t3.id đơn hàng and t2.id cửa_hàng = t5.id cửa_hàng and t4.id đơn hàng = t2.id đơn hàng where t5.tên cửa_hàng = flower and (t4.số_lượng đặt_hàng > 600 or t4.số_lượng đặt_hàng < 400)
select tên khách_hàng from khách_hàng except select t1.tên khách_hàng from khách_hàng as t1 join lượt đặt_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng
select avg (số_lượng đặt_hàng) from hoá_đơn where mã phương_thức thanh_toán = mastercard
select avg (số_lượng đặt_hàng) from hoá_đơn where mã phương_thức thanh_toán = mastercard
select id sản_phẩm from mặt_hàng được đặt group by id sản_phẩm order by count (*) desc limit 1
select mã loại dịch_vụ from dịch_vụ group by mã loại dịch_vụ order by count (*) desc limit 1
select mô_tả về loại dịch_vụ from loại dịch_vụ where mô_tả về loại dịch_vụ not in (select t1.mô_tả về loại dịch_vụ from loại dịch_vụ as t1 join dịch_vụ as t2 on t1.mã loại dịch_vụ = t2.mã loại dịch_vụ where t2.mô_tả về sản_phẩm = pictures intersect select t1.mô_tả về loại dịch_vụ from loại dịch_vụ as t1 join dịch_vụ as t2 on t1.mã loại dịch_vụ = t2.mã loại dịch_vụ where t2.mô_tả về sản_phẩm = movies)
select distinct t1.tên khách_hàng from khách_hàng as t1 join lượt đặt_hàng as t2 join mặt_hàng được đặt as t3 join cửa_hàng as t4 join hoá_đơn as t5 on t1.id khách_hàng = t2.id khách_hàng and t2.id đơn hàng = t3.id đơn hàng and t3.id sản_phẩm = t4.id cửa_hàng and t4.id cửa_hàng = t5.id cửa_hàng where t4.giá sản_phẩm > 600 or t4.giá sản_phẩm < 400
select count (*) from tài_khoản
select count (*) from tài_khoản
select count (distinct id khách_hàng) from tài_khoản
select count (distinct id khách_hàng) from tài_khoản
select id tài_khoản , ngày mở tài_khoản , tên tài_khoản , chi_tiết khác về tài_khoản from tài_khoản
select id tài_khoản , ngày mở tài_khoản , tên tài_khoản , chi_tiết khác về tài_khoản from tài_khoản
select t1.id tài_khoản , t1.ngày mở tài_khoản , t1.tên tài_khoản , t1.chi_tiết khác về tài_khoản from tài_khoản as t1 join khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng where t2.tên khách_hàng = meaghan afghana
select t1.id tài_khoản , t1.ngày mở tài_khoản , t1.tên tài_khoản , t1.chi_tiết khác về tài_khoản from tài_khoản as t1 join khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng where t2.tên khách_hàng = meaghan
select t1.tên tài_khoản , t1.chi_tiết khác về tài_khoản from tài_khoản as t1 join khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng where t2.tên khách_hàng = meaghan and t2.họ của khách_hàng = afghanistan
select t1.tên tài_khoản , t1.chi_tiết khác về tài_khoản from tài_khoản as t1 join khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng where t2.tên khách_hàng = meaghan afghanistan keeling
select t1.tên khách_hàng , t1.họ của khách_hàng from khách_hàng as t1 join tài_khoản as t2 on t1.id khách_hàng = t2.id khách_hàng where t2.tên tài_khoản = 900
select t1.tên khách_hàng , t1.họ của khách_hàng from khách_hàng as t1 join tài_khoản as t2 on t1.id khách_hàng = t2.id khách_hàng where t2.tên tài_khoản = 900
select count (*) from khách_hàng where id khách_hàng not in (select id khách_hàng from tài_khoản)
select count (*) from khách_hàng where id khách_hàng not in (select id khách_hàng from tài_khoản)
select distinct t1.tên khách_hàng , t1.họ của khách_hàng , t1.số điện_thoại from khách_hàng as t1 join tài_khoản as t2 on t1.id khách_hàng = t2.id khách_hàng
select distinct t1.tên khách_hàng , t1.họ của khách_hàng , t1.số điện_thoại from khách_hàng as t1 join tài_khoản as t2 on t1.id khách_hàng = t2.id khách_hàng
select id khách_hàng from khách_hàng except select id khách_hàng from tài_khoản
select id khách_hàng from khách_hàng except select id khách_hàng from tài_khoản
select count (*) , t1.id khách_hàng from tài_khoản as t1 join khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng group by t1.id khách_hàng
select count (*) , id khách_hàng from tài_khoản group by id khách_hàng
select t1.tên khách_hàng , t1.họ của khách_hàng , t1.id khách_hàng from khách_hàng as t1 join tài_khoản as t2 on t1.id khách_hàng = t2.id khách_hàng group by t1.id khách_hàng order by count (*) desc limit 1
select t1.id khách_hàng , t2.tên khách_hàng , t2.họ của khách_hàng from tài_khoản as t1 join khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng group by t1.id khách_hàng order by count (*) desc limit 1
select t1.id khách_hàng , t2.tên khách_hàng , t2.họ của khách_hàng , count (*) from tài_khoản as t1 join khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng group by t1.id khách_hàng
select t1.tên khách_hàng , t1.id khách_hàng , count (*) from khách_hàng as t1 join tài_khoản as t2 on t1.id khách_hàng = t2.id khách_hàng group by t1.id khách_hàng
select t1.tên khách_hàng , t1.id khách_hàng from khách_hàng as t1 join tài_khoản as t2 on t1.id khách_hàng = t2.id khách_hàng group by t1.id khách_hàng having count (*) >= 2
select t1.tên khách_hàng , t1.id khách_hàng from khách_hàng as t1 join tài_khoản as t2 on t1.id khách_hàng = t2.id khách_hàng group by t1.id khách_hàng having count (*) >= 2
select count (*) from khách_hàng
select count (*) from khách_hàng
select giới_tính , count (*) from khách_hàng group by giới_tính
select giới_tính , count (*) from khách_hàng group by giới_tính
select count (*) from giao_dịch tài_chính
select count (*) from giao_dịch tài_chính
select count (*) , id tài_khoản from giao_dịch tài_chính group by id tài_khoản
select count (*) , id tài_khoản from giao_dịch tài_chính group by id tài_khoản
select count (*) from giao_dịch tài_chính as t1 join tài_khoản as t2 on t1.id tài_khoản = t2.id tài_khoản where t2.tên tài_khoản = 337
select count (*) from giao_dịch tài_chính as t1 join tài_khoản as t2 on t1.id tài_khoản = t2.id tài_khoản where t2.tên tài_khoản = 337
select avg (số tiền giao_dịch) , min (số tiền giao_dịch) , max (số tiền giao_dịch) , sum (số tiền giao_dịch) from giao_dịch tài_chính
select avg (số tiền giao_dịch) , min (số tiền giao_dịch) , max (số tiền giao_dịch) , sum (số tiền giao_dịch) from giao_dịch tài_chính
select id giao_dịch from giao_dịch tài_chính where số tiền giao_dịch > (select avg (số tiền giao_dịch) from giao_dịch tài_chính)
select id giao_dịch from giao_dịch tài_chính where số tiền giao_dịch > (select avg (số tiền giao_dịch) from giao_dịch tài_chính)
select loại giao_dịch , sum (số tiền giao_dịch) from giao_dịch tài_chính group by loại giao_dịch
select loại giao_dịch , sum (số tiền giao_dịch) from giao_dịch tài_chính group by loại giao_dịch
select t1.tên tài_khoản , t1.id tài_khoản , count (*) from tài_khoản as t1 join giao_dịch tài_chính as t2 on t1.id tài_khoản = t2.id tài_khoản group by t1.id tài_khoản
select t1.tên tài_khoản , t1.id tài_khoản , count (*) from tài_khoản as t1 join giao_dịch tài_chính as t2 on t1.id tài_khoản = t2.id tài_khoản group by t1.id tài_khoản
select id tài_khoản from giao_dịch tài_chính group by id tài_khoản order by count (*) desc limit 1
select id tài_khoản from giao_dịch tài_chính group by id tài_khoản order by count (*) desc limit 1
select t1.tên tài_khoản , t1.id tài_khoản from tài_khoản as t1 join giao_dịch tài_chính as t2 on t1.id tài_khoản = t2.id tài_khoản group by t1.id tài_khoản having count (*) >= 4
select t1.tên tài_khoản , t1.id tài_khoản from tài_khoản as t1 join giao_dịch tài_chính as t2 on t1.id tài_khoản = t2.id tài_khoản group by t1.id tài_khoản having count (*) >= 4
select distinct kích_thước sản_phẩm from sản_phẩm
select distinct kích_thước sản_phẩm from sản_phẩm
select distinct màu sản_phẩm from sản_phẩm
select distinct màu sản_phẩm from sản_phẩm
select số_hoá đơn , count (*) from giao_dịch tài_chính group by số_hoá đơn
select số_hoá đơn , count (*) from giao_dịch tài_chính group by số_hoá đơn
select t1.số_hoá đơn , t1.ngày lập hoá_đơn from hoá_đơn as t1 join giao_dịch tài_chính as t2 on t1.id đơn hàng = t2.id đơn hàng group by t1.id đơn hàng order by count (*) desc limit 1
select t1.số_hoá đơn , t1.ngày lập hoá_đơn from hoá_đơn as t1 join giao_dịch tài_chính as t2 on t1.id đơn hàng = t2.id đơn hàng group by t1.id đơn hàng order by count (*) desc limit 1
select count (*) from hoá_đơn
select count (*) from hoá_đơn
select t2.ngày lập hoá_đơn , t1.id đơn hàng , t1.chi_tiết đặt hàng from đơn đặt_hàng as t1 join hoá_đơn as t2 on t1.id đơn hàng = t2.id đơn hàng
select t2.ngày lập hoá_đơn , t2.id đơn hàng , t2.chi_tiết đặt hàng from hoá_đơn as t2 join đơn đặt_hàng as t1 on t2.id đơn hàng = t1.id đơn hàng
select id đơn hàng , count (*) from hoá_đơn mặt_hàng group by id đơn hàng
select id đơn hàng , count (*) from hoá_đơn mặt_hàng group by id đơn hàng
select t1.id đơn hàng , t1.chi_tiết đặt_hàng from đơn đặt_hàng as t1 join hoá_đơn as t2 on t1.id đơn hàng = t2.id đơn hàng group by t1.id đơn hàng having count (*) > 2
select t1.id đơn hàng , t1.chi_tiết đặt hàng from đơn đặt_hàng as t1 join hoá_đơn as t2 on t1.id đơn hàng = t2.id đơn hàng group by t1.id đơn hàng having count (*) >= 2
select t1.id khách_hàng , t1.tên khách_hàng , t1.số điện_thoại from khách_hàng as t1 join đơn đặt_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng group by t1.id khách_hàng order by count (*) desc limit 1
select t1.họ của khách_hàng , t1.id khách_hàng , t1.số điện_thoại from khách_hàng as t1 join đơn đặt_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng group by t1.id khách_hàng order by count (*) desc limit 1
select tên sản_phẩm from sản_phẩm except select t1.tên sản_phẩm from sản_phẩm as t1 join mặt_hàng được đặt as t2 on t1.id sản_phẩm = t2.id sản_phẩm
select tên sản_phẩm from sản_phẩm except select t3.tên sản_phẩm from đơn đặt_hàng as t1 join mặt_hàng được đặt as t2 join sản_phẩm as t3 on t1.id đơn hàng = t2.id đơn hàng and t2.id sản_phẩm = t3.id sản_phẩm
select t1.tên sản_phẩm , sum (t2.số_lượng sản_phẩm) from sản_phẩm as t1 join mặt_hàng được đặt as t2 on t1.id sản_phẩm = t2.id sản_phẩm group by t1.tên sản_phẩm
select t1.tên sản_phẩm , sum (t2.số_lượng sản_phẩm) from sản_phẩm as t1 join mặt_hàng được đặt as t2 on t1.id sản_phẩm = t2.id sản_phẩm group by t1.tên sản_phẩm
select id đơn hàng , count (*) from mặt_hàng được đặt group by id đơn hàng
select id đơn hàng , count (*) from mặt_hàng được đặt group by id đơn hàng
select id sản_phẩm , count (*) from mặt_hàng được đặt group by id sản_phẩm
select count (distinct id đơn hàng) from mặt_hàng được đặt
select t1.tên sản_phẩm , count (*) from sản_phẩm as t1 join mặt_hàng được đặt as t2 on t1.id sản_phẩm = t2.id sản_phẩm group by t1.tên sản_phẩm
select distinct t1.tên sản_phẩm , count (*) from sản_phẩm as t1 join mặt_hàng được đặt as t2 on t1.id sản_phẩm = t2.id sản_phẩm group by t1.tên sản_phẩm
select id đơn hàng , count (*) from mặt_hàng được đặt group by id đơn hàng
select id đơn hàng , count (distinct id sản_phẩm) from mặt_hàng được đặt group by id đơn hàng
select id đơn hàng , sum (số_lượng sản_phẩm) from mặt_hàng được đặt group by id đơn hàng
select id đơn hàng , sum (số_lượng sản_phẩm) from mặt_hàng được đặt group by id đơn hàng
select count (*) from sản_phẩm where id sản_phẩm not in (select id sản_phẩm from mặt_hàng được đặt)
select count (*) from sản_phẩm where id sản_phẩm not in (select id sản_phẩm from mặt_hàng được đặt)
select count (*) from địa_chỉ where quốc_gia = usa
select distinct thành_phố from địa_chỉ
select tiểu_bang , count (*) from địa_chỉ group by tiểu_bang
select tên khách_hàng , điện_thoại khách_hàng from khách_hàng where id khách_hàng not in (select id khách_hàng from lịch_sử địa_chỉ khách_hàng)
select t1.tên khách_hàng from khách_hàng as t1 join lượt đặt_hàng của khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng group by t1.id khách_hàng order by count (*) desc limit 1
select mã loại sản_phẩm from sản_phẩm group by mã loại sản_phẩm having count (*) >= 2
select t1.tên khách_hàng from khách_hàng as t1 join lượt đặt_hàng của khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng where t2.mã trạng_thái đơn hàng = completed intersect select t1.tên khách_hàng from khách_hàng as t1 join lượt đặt_hàng của khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng where t2.mã trạng_thái đơn hàng != completed
select tên khách_hàng , điện_thoại khách_hàng , mã phương_thức thanh_toán from khách_hàng order by mã_số khách_hàng desc
select t2.tên sản_phẩm , sum (t1.số_lượng đặt_hàng) from mặt_hàng được đặt as t1 join sản_phẩm as t2 on t1.id sản_phẩm = t2.id sản_phẩm group by t2.tên sản_phẩm
select min (giá sản_phẩm) , max (giá sản_phẩm) , avg (giá sản_phẩm) from sản_phẩm
select count (*) from sản_phẩm where giá sản_phẩm > (select avg (giá sản_phẩm) from sản_phẩm)
select t1.tên khách_hàng , t2.thành_phố , t1.từ ngày , t1.đến ngày from lịch_sử địa_chỉ khách_hàng as t1 join địa_chỉ as t2 on t1.id địa_chỉ = t2.id địa_chỉ join khách_hàng as t3 on t1.id khách_hàng = t3.id khách_hàng
select t1.tên khách_hàng from khách_hàng as t1 join lượt đặt_hàng của khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng where t1.mã phương_thức thanh_toán = credit card group by t1.id khách_hàng having count (*) > 2
select t1.tên khách_hàng , t1.điện_thoại khách_hàng from khách_hàng as t1 join lượt đặt_hàng của khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng join mặt_hàng được đặt as t3 on t2.id đơn hàng = t3.id đơn hàng group by t1.id khách_hàng order by sum (t3.số_lượng đặt_hàng) limit 1
select mã loại sản_phẩm , tên sản_phẩm from sản_phẩm where giá sản_phẩm > 1000 or giá sản_phẩm < 500
select count (*) from bộ_trưởng where tuổi > 56
select tên , sinh ra ở tiểu_bang , tuổi from bộ_trưởng order by tuổi
select năm thành_lập , tên , ngân_sách tính theo tỷ from các bộ
select max (ngân_sách tính theo tỷ) , min (ngân_sách tính theo tỷ) from các bộ
select avg (số_lượng nhân_viên) from các bộ where xếp_hạng between 10 and 15
select tên from bộ_trưởng where sinh ra ở tiểu_bang != california
select distinct t1.năm thành_lập from các bộ as t1 join sự quản_lý as t2 on t1.id các bộ = t2.id các bộ join bộ_trưởng as t3 on t2.id người đứng đầu = t3.id người đứng đầu where t3.sinh ra ở tiểu_bang = alabama
select sinh ra ở tiểu_bang from bộ_trưởng group by sinh ra ở tiểu_bang having count (*) >= 3
select năm thành_lập from các bộ group by năm thành_lập order by count (*) desc limit 1
select t1.tên , t1.số_lượng nhân_viên from các bộ as t1 join sự quản_lý as t2 on t1.id các bộ = t2.id các bộ
select count (distinct vai_trò tạm_thời) from sự quản_lý
select count (*) from các bộ where id các bộ not in (select id các bộ from sự quản_lý)
select distinct tuổi from bộ_trưởng as t1 join sự quản_lý as t2 on t1.id người đứng đầu = t2.id người đứng đầu where vai_trò tạm_thời = acting
select bang sinh ra from bộ_trưởng where tên in (select t1.tên from bộ_trưởng as t1 join sự quản_lý as t2 on t1.id người đứng đầu = t2.id người đứng đầu where t2.id các bộ in (select t3.id các bộ from các bộ as t3 where t3.tên = finance intersect select t3.id các bộ from các bộ as t3 where t3.tên = military))
select t1.id các bộ , t1.tên , count (*) from các bộ as t1 join sự quản_lý as t2 on t1.id các bộ = t2.id các bộ group by t1.id các bộ having count (*) > 1
select id người đứng đầu , tên from bộ_trưởng where tên like %ha%
select id from xe
select id from xe
select count (*) from xe
select count (*) from xe
select chi_tiết về xe from xe where id = 1
select chi_tiết về xe from xe where id = 1
select tên , tên đệm , họ from nhân_viên
select tên , tên đệm , họ from nhân_viên
select ngày_sinh from nhân_viên where tên = janessa and họ = sawayn
select ngày_sinh from nhân_viên where tên = janessa and tên đệm = sawayn
select ngày nhân_viên gia_nhập from nhân_viên where tên = janessa and họ = sawayn
select ngày nhân_viên gia_nhập from nhân_viên where tên = janessa and tên đệm = sawayn
select ngày nhân_viên rời đi from nhân_viên where tên = janessa and họ = sawayn
select ngày nhân_viên rời đi from nhân_viên where tên = janessa and họ = sawayn
select count (*) from nhân_viên where tên = ludie
select count (*) from nhân_viên where tên = ludie
select biệt_danh from nhân_viên where tên = janessa and họ = sawayn
select biệt_danh from nhân_viên where tên = janessa and họ = sawayn
select count (*) from nhân_viên
select count (*) from nhân_viên
select t3.thành_phố from nhân_viên as t1 join địa_chỉ nhân_viên as t2 on t1.id nhân_viên = t2.id nhân_viên join địa_chỉ as t3 on t2.id địa_chỉ nhân_viên = t3.id địa_chỉ where t1.tên = janessa and t1.họ = sawayn
select t3.thành_phố from khách_hàng as t1 join địa_chỉ khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng join địa_chỉ as t3 on t2.id địa_chỉ nhân_viên = t3.id địa_chỉ where t1.tên = janessa and t1.họ = sawayn
select t3.quốc_gia , t3.tiểu_bang from nhân_viên as t1 join địa_chỉ nhân_viên as t2 on t1.id nhân_viên = t2.id nhân_viên join địa_chỉ as t3 on t2.id địa_chỉ nhân_viên = t3.id địa_chỉ where t1.tên = janessa and t1.họ = sawayn
select t2.quốc_gia , t2.tiểu_bang from khách_hàng as t1 join địa_chỉ khách_hàng as t2 on t1.id khách_hàng = t2.id địa_chỉ khách_hàng join địa_chỉ as t3 on t2.id địa_chỉ nhân_viên = t3.id địa_chỉ where t1.tên = janessa and t1.họ = sawayn
select sum (giờ học) from bài giảng as t1 join khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng where t2.tên = rylan and t2.họ = goodwin
select sum (t2.giờ học) from khách_hàng as t1 join bài giảng as t2 on t1.id khách_hàng = t2.id khách_hàng where t1.tên = rylan and t1.họ = goodwin
select t3.mã bưu_điện from nhân_viên as t1 join địa_chỉ as t2 on t1.id địa_chỉ nhân_viên = t2.id địa_chỉ join địa_chỉ as t3 on t1.id địa_chỉ nhân_viên = t3.id địa_chỉ where t1.tên = janessa and t1.họ = sawayn
select t3.mã bưu_điện from nhân_viên as t1 join địa_chỉ nhân_viên as t2 on t1.id nhân_viên = t2.id nhân_viên join địa_chỉ as t3 on t2.id địa_chỉ nhân_viên = t3.id địa_chỉ where t1.tên = janessa and t1.họ = sawayn
select count (*) from nhân_viên as t1 join địa_chỉ nhân_viên as t2 on t1.id nhân_viên = t2.id nhân_viên join địa_chỉ as t3 on t2.id địa_chỉ nhân_viên = t3.id địa_chỉ where t3.tiểu_bang = georgia
select count (*) from nhân_viên as t1 join địa_chỉ nhân_viên as t2 on t1.id nhân_viên = t2.id nhân_viên join địa_chỉ as t3 on t2.id địa_chỉ nhân_viên = t3.id địa_chỉ where t3.tiểu_bang = georgia
select t1.tên , t1.họ from nhân_viên as t1 join địa_chỉ as t2 on t1.id địa_chỉ nhân_viên = t2.id địa_chỉ where t2.thành_phố = damianfort
select t1.tên , t1.họ from nhân_viên as t1 join địa_chỉ as t2 on t1.id địa_chỉ nhân_viên = t2.id địa_chỉ where t2.thành_phố = damianfort
select t3.thành_phố , count (*) from nhân_viên as t1 join địa_chỉ nhân_viên as t2 on t1.id địa_chỉ nhân_viên = t2.id địa_chỉ join địa_chỉ as t3 on t2.id địa_chỉ = t3.id địa_chỉ group by t3.thành_phố order by count (*) desc limit 1
select t3.thành_phố , count (*) from nhân_viên as t1 join địa_chỉ nhân_viên as t2 on t1.id nhân_viên = t2.id nhân_viên join địa_chỉ as t3 on t2.id địa_chỉ nhân_viên = t3.id địa_chỉ group by t3.thành_phố order by count (*) desc limit 1
select t1.tiểu_bang from địa_chỉ as t1 join nhân_viên as t2 on t1.id địa_chỉ = t2.id địa_chỉ nhân_viên group by t1.tiểu_bang having count (*) between 2 and 4
select t2.tiểu_bang from địa_chỉ as t1 join địa_chỉ nhân_viên as t2 on t1.id địa_chỉ = t2.id địa_chỉ nhân_viên group by t2.tiểu_bang having count (*) between 2 and 4
select tên , họ from khách_hàng
select tên , họ from khách_hàng
select địa chỉ email , ngày_sinh from khách_hàng where tên = carole
select địa chỉ email , ngày_sinh from khách_hàng where tên = carole
select số điện_thoại , địa chỉ email from khách_hàng where số tiền còn thiếu > 2000
select số điện_thoại , địa chỉ email from khách_hàng where số tiền còn thiếu > 2000
select mã trạng_thái khách_hàng , số điện_thoại_di_động , địa chỉ email from khách_hàng where tên = marina or họ = kohler
select mã trạng_thái khách_hàng , số điện_thoại_di_động , địa chỉ email from khách_hàng where tên = marina or họ = kohler
select ngày_sinh from khách_hàng where mã trạng_thái khách_hàng = good customer
select ngày_sinh from khách_hàng where mã trạng_thái khách_hàng = good customer
select ngày trở_thành khách_hàng from khách_hàng where tên = carole and họ = bernhard
select ngày trở_thành khách_hàng from khách_hàng where tên = carole and họ = bernhard
select count (*) from khách_hàng
select count (*) from khách_hàng
select mã trạng_thái khách_hàng , count (*) from khách_hàng group by mã trạng_thái khách_hàng
select mã trạng_thái khách_hàng , count (*) from khách_hàng group by mã trạng_thái khách_hàng
select mã trạng_thái khách_hàng from khách_hàng group by mã trạng_thái khách_hàng order by count (*) asc limit 1
select mã trạng_thái khách_hàng from khách_hàng group by mã trạng_thái khách_hàng order by count (*) limit 1
select count (*) from bài giảng as t1 join khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng where t2.tên = rylan and t2.họ = goodwin
select count (*) from bài giảng as t1 join nhân_viên as t2 on t1.id nhân_viên = t2.id nhân_viên join khách_hàng as t3 on t1.id khách_hàng = t3.id khách_hàng where t2.tên = rylan and t2.họ = goodwin
select max (số tiền còn thiếu) , min (số tiền còn thiếu) , avg (số tiền còn thiếu) from khách_hàng
select max (số tiền còn thiếu) , min (số tiền còn thiếu) , avg (số tiền còn thiếu) from khách_hàng
select tên , họ from khách_hàng where số tiền còn thiếu between 1000 and 3000
select tên , họ from khách_hàng where số tiền còn thiếu between 1000 and 3000
select t1.tên , t1.họ from khách_hàng as t1 join địa_chỉ khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng join địa_chỉ as t3 on t2.id địa_chỉ nhân_viên = t3.id địa_chỉ where t3.thành_phố = lockmanfurt
select t1.tên , t1.họ from khách_hàng as t1 join địa_chỉ khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng join địa_chỉ as t3 on t2.id địa_chỉ nhân_viên = t3.id địa_chỉ where t3.thành_phố = lockmanfurt
select t3.quốc_gia from khách_hàng as t1 join địa_chỉ khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng join địa_chỉ as t3 on t2.id địa_chỉ nhân_viên = t3.id địa_chỉ where t1.tên = carole and t1.họ = bernhard
select t3.quốc_gia from khách_hàng as t1 join địa_chỉ khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng join địa_chỉ as t3 on t2.id địa_chỉ nhân_viên = t3.id địa_chỉ where t1.tên = carole and t1.họ = bernhard
select mã bưu_điện from khách_hàng where tên = carole and họ = bernhard
select t2.mã bưu_điện from khách_hàng as t1 join địa_chỉ as t2 on t1.id địa_chỉ khách_hàng = t2.id địa_chỉ where t1.tên = carole and t1.họ = bernhard
select t3.thành_phố from khách_hàng as t1 join địa_chỉ khách_hàng as t2 on t1.id địa_chỉ khách_hàng = t2.id địa_chỉ join địa_chỉ as t3 on t2.id địa_chỉ = t3.id địa_chỉ group by t3.thành_phố order by count (*) desc limit 1
select t3.thành_phố from khách_hàng as t1 join địa_chỉ as t2 on t1.id địa_chỉ khách_hàng = t2.id địa_chỉ join thành_phố as t3 on t2.thành_phố where t1.id khách_hàng = t3.id thành_phố group by t3.thành_phố order by count (*) desc limit 1
select sum (t2.số tiền thanh_toán) from khách_hàng as t1 join khoản thanh_toán của khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng where t1.tên = carole and t1.họ = bernhard
select sum (t2.số tiền thanh_toán) from khách_hàng as t1 join khoản thanh_toán của khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng where t1.tên = carole and t1.họ = bernhard
select count (*) from khách_hàng where id khách_hàng not in (select id khách_hàng from khoản thanh_toán của khách_hàng)
select count (*) from khách_hàng where id khách_hàng not in (select id khách_hàng from khoản thanh_toán của khách_hàng)
select t1.tên , t1.họ from khách_hàng as t1 join khoản thanh_toán của khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng group by t1.id khách_hàng having count (*) > 2
select t1.tên , t1.họ from khách_hàng as t1 join khoản thanh_toán của khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng group by t1.id khách_hàng having count (*) > 2
select mã phương_thức thanh_toán , count (*) from khoản thanh_toán của khách_hàng group by mã phương_thức thanh_toán
select mã phương_thức thanh_toán , count (*) from khoản thanh_toán của khách_hàng group by mã phương_thức thanh_toán
select count (*) from bài giảng where mã trạng_thái bài giảng = cancelled
select count (*) from bài giảng where mã trạng_thái bài giảng = cancelled
select t1.id bài giảng from bài giảng as t1 join nhân_viên as t2 on t1.id nhân_viên = t2.id nhân_viên where t2.tên = janessa and t2.họ = sawayn and biệt_danh like %s%
select t1.id bài giảng from bài giảng as t1 join nhân_viên as t2 on t1.id nhân_viên = t2.id nhân_viên where t2.tên = janessa and t2.họ = sawayn and biệt_danh like %s%
select count (*) from bài giảng as t1 join nhân_viên as t2 on t1.id nhân_viên = t2.id nhân_viên where t2.tên like %a%
select count (*) from bài giảng as t1 join nhân_viên as t2 on t1.id nhân_viên = t2.id nhân_viên where t2.tên like %a%
select sum (t2.giờ học) from nhân_viên as t1 join bài giảng as t2 on t1.id nhân_viên = t2.id nhân_viên where t1.tên = janessa and t1.họ = sawayn
select sum (t2.giờ học) from nhân_viên as t1 join bài giảng as t2 on t1.id nhân_viên = t2.id nhân_viên where t1.tên = janessa and t1.họ = sawayn
select avg (t2.giá) from nhân_viên as t1 join bài giảng as t2 on t1.id nhân_viên = t2.id nhân_viên where t1.tên = janessa and t1.họ = sawayn
select avg (t2.giá) from nhân_viên as t1 join bài giảng as t2 on t1.id nhân_viên = t2.id nhân_viên where t1.tên = janessa and t1.họ = sawayn
select count (*) from khách_hàng as t1 join bài giảng as t2 on t1.id khách_hàng = t2.id khách_hàng where t1.tên = ray
select count (*) from khách_hàng as t1 join bài giảng as t2 on t1.id khách_hàng = t2.id khách_hàng where t1.tên = ray
select họ from khách_hàng intersect select họ from nhân_viên
select họ from khách_hàng intersect select họ from nhân_viên
select tên from nhân_viên except select t1.tên from nhân_viên as t1 join bài giảng as t2 on t1.id nhân_viên = t2.id nhân_viên
select tên from nhân_viên except select t1.tên from nhân_viên as t1 join bài giảng as t2 on t1.id nhân_viên = t2.id nhân_viên
select t1.id , t2.chi_tiết về xe from bài giảng as t1 join xe as t2 on t1.id xe = t2.id group by t1.id xe order by count (*) desc limit 1
select count (*) from nhân_viên
select count (*) from nhân_viên
select tên from nhân_viên order by tuổi
select tên from nhân_viên order by tuổi
select count (*) , thành_phố from nhân_viên group by thành_phố
select count (*) , thành_phố from nhân_viên group by thành_phố
select thành_phố from nhân_viên group by thành_phố having count (*) > 1
select thành_phố from nhân_viên where tuổi < 30 group by thành_phố having count (*) > 1
select count (*) , địa_điểm from cửa_hàng group by địa_điểm
select count (*) , địa_điểm from cửa_hàng group by địa_điểm
select tên người_quản_lý , quận from cửa_hàng order by số_lượng sản_phẩm desc limit 1
select tên người_quản_lý , quận from cửa_hàng order by số_lượng sản_phẩm desc limit 1
select min (số_lượng sản_phẩm) , max (số_lượng sản_phẩm) from cửa_hàng
select min (số_lượng sản_phẩm) , max (số_lượng sản_phẩm) from cửa_hàng
select tên , địa_điểm , quận from cửa_hàng order by số_lượng sản_phẩm desc
select tên , địa_điểm , quận from cửa_hàng order by số_lượng sản_phẩm desc
select tên from cửa_hàng where số_lượng sản_phẩm > (select avg (số_lượng sản_phẩm) from cửa_hàng)
select tên from cửa_hàng where số_lượng sản_phẩm > (select avg (số_lượng sản_phẩm) from cửa_hàng)
select t1.tên from nhân_viên as t1 join đánh_giá as t2 on t1.id nhân_viên = t2.id nhân_viên group by t2.id nhân_viên order by count (*) desc limit 1
select t1.tên from nhân_viên as t1 join đánh_giá as t2 on t1.id nhân_viên = t2.id nhân_viên group by t2.id nhân_viên order by count (*) desc limit 1
select t1.tên from nhân_viên as t1 join đánh_giá as t2 on t1.id nhân_viên = t2.id nhân_viên order by t2.tiền thưởng desc limit 1
select t1.tên from nhân_viên as t1 join đánh_giá as t2 on t1.id nhân_viên = t2.id nhân_viên order by t2.tiền thưởng desc limit 1
select tên from nhân_viên where id nhân_viên not in (select id nhân_viên from đánh_giá)
select tên from nhân_viên where id nhân_viên not in (select id nhân_viên from đánh_giá)
select t3.tên from tuyển_dụng as t1 join cửa_hàng as t2 on t1.id cửa_hàng = t2.id cửa_hàng join nhân_viên as t3 on t1.id nhân_viên = t3.id nhân_viên group by t1.id cửa_hàng order by count (*) desc limit 1
select t1.tên from cửa_hàng as t1 join tuyển_dụng as t2 on t1.id cửa_hàng = t2.id cửa_hàng group by t2.id cửa_hàng order by count (*) desc limit 1
select tên from cửa_hàng where id cửa_hàng not in (select id cửa_hàng from tuyển_dụng)
select tên from cửa_hàng where id cửa_hàng not in (select id cửa_hàng from tuyển_dụng)
select t1.tên , count (*) from cửa_hàng as t1 join tuyển_dụng as t2 on t1.id cửa_hàng = t2.id cửa_hàng group by t1.id cửa_hàng
select count (*) , t2.tên from tuyển_dụng as t1 join cửa_hàng as t2 on t1.id cửa_hàng = t2.id cửa_hàng group by t1.id cửa_hàng
select sum (tiền thưởng) from đánh_giá
select sum (tiền thưởng) from đánh_giá
select * from tuyển_dụng
select * from tuyển_dụng
select quận from cửa_hàng where số_lượng sản_phẩm < 3000 intersect select quận from cửa_hàng where số_lượng sản_phẩm > 10000
select quận from cửa_hàng where số_lượng sản_phẩm < 3000 intersect select quận from cửa_hàng where số_lượng sản_phẩm > 10000
select count (distinct địa_điểm) from cửa_hàng
select count (distinct địa_điểm) from cửa_hàng
select quốc_gia from hãng hàng_không where tên hãng hàng_không = jetblue airways
select quốc_gia from sân_bay where tên sân_bay in (select sân_bay đích from chuyến bay where hãng hàng_không = (select id hãng hàng_không from hãng hàng_không where tên hãng hàng_không = jetblue airways))
select tên viết tắt from hãng hàng_không where tên hãng hàng_không = jetblue airways
select tên viết tắt from hãng hàng_không where tên hãng hàng_không = jetblue airways
select tên hãng hàng_không , tên viết tắt from hãng hàng_không where quốc_gia = united states
select tên hãng hàng_không , tên viết tắt from hãng hàng_không where quốc_gia = united states
select mã sân_bay , tên sân_bay from sân_bay where thành_phố = anthony
select mã sân_bay , tên sân_bay from sân_bay where thành_phố = anthony
select count (*) from hãng hàng_không
select count (*) from hãng hàng_không
select count (*) from sân_bay
select count (*) from sân_bay
select count (*) from chuyến bay
select count (*) from chuyến bay
select tên hãng hàng_không from hãng hàng_không where tên viết tắt = ual
select tên hãng hàng_không from hãng hàng_không where tên viết tắt = ual
select count (*) from hãng hàng_không where quốc_gia = usa
select count (*) from hãng hàng_không where quốc_gia = united states
select thành_phố , quốc_gia from sân_bay where tên sân_bay = alton
select thành_phố , quốc_gia from sân_bay where tên sân_bay = alton
select tên sân_bay from sân_bay where mã sân_bay = ako
select tên sân_bay from sân_bay where mã sân_bay = ako
select tên sân_bay from sân_bay where thành_phố = aberdeen
select tên sân_bay from sân_bay where thành_phố = aberdeen
select count (*) from chuyến bay where sân_bay khởi_hành = apg
select count (*) from chuyến bay where sân_bay khởi_hành = apg
select count (*) from chuyến bay where sân_bay đích = ato
select count (*) from sân_bay where mã sân_bay = ato
select count (*) from sân_bay as t1 join chuyến bay as t2 on t1.mã sân_bay = t2.sân_bay khởi_hành where t1.thành_phố = aberdeen
select count (*) from sân_bay as t1 join chuyến bay as t2 on t1.mã sân_bay = t2.sân_bay khởi_hành where t1.thành_phố = aberdeen
select count (*) from sân_bay as t1 join chuyến bay as t2 on t1.mã sân_bay = t2.sân_bay đích where t1.thành_phố = aberdeen
select count (*) from sân_bay where tên sân_bay = aberdeen
select count (*) from sân_bay as t1 join chuyến bay as t2 on t1.mã sân_bay = t2.sân_bay khởi_hành join chuyến bay as t3 on t1.mã sân_bay = t3.sân_bay đích where t1.thành_phố = ashley and t2.thành_phố = aberdeen
select count (*) from sân_bay as t1 join chuyến bay as t2 on t1.mã sân_bay = t2.sân_bay khởi_hành join chuyến bay as t3 on t1.mã sân_bay = t3.sân_bay đích where t1.thành_phố = aberdeen and t3.thành_phố = ashley
select count (*) from hãng hàng_không as t1 join chuyến bay as t2 on t1.id hãng hàng_không = t2.hãng hàng_không where t1.tên hãng hàng_không = jetblue airways
select count (*) from chuyến bay as t1 join hãng hàng_không as t2 on t1.hãng hàng_không = t2.id hãng hàng_không where t2.tên hãng hàng_không = jetblue airways
select count (*) from chuyến bay as t1 join hãng hàng_không as t2 on t1.hãng hàng_không = t2.id hãng hàng_không join sân_bay as t3 on t1.sân_bay đích = t3.mã sân_bay where t2.tên hãng hàng_không = united airlines and t3.tên sân_bay = asy
select count (*) from chuyến bay as t1 join hãng hàng_không as t2 on t1.hãng hàng_không = t2.id hãng hàng_không join sân_bay as t3 on t1.sân_bay đích = t3.mã sân_bay where t2.tên hãng hàng_không = united airlines and t3.tên sân_bay = asy
select count (*) from chuyến bay as t1 join sân_bay as t2 on t1.sân_bay khởi_hành = t2.mã sân_bay join hãng hàng_không as t3 on t1.hãng hàng_không = t3.id hãng hàng_không where t3.tên hãng hàng_không = united airlines and t2.tên sân_bay = ahd
select count (*) from chuyến bay as t1 join hãng hàng_không as t2 on t1.hãng hàng_không = t2.id hãng hàng_không join sân_bay as t3 on t1.sân_bay khởi_hành = t3.mã sân_bay where t2.tên hãng hàng_không = united airlines and t3.tên sân_bay = ahd
select count (*) from sân_bay as t1 join chuyến bay as t2 on t1.mã sân_bay = t2.sân_bay đích join hãng hàng_không as t3 on t2.hãng hàng_không = t3.id hãng hàng_không where t1.thành_phố = aberdeen and t3.tên hãng hàng_không = united airlines
select count (*) from chuyến bay as t1 join sân_bay as t2 on t1.sân_bay đích = t2.mã sân_bay join hãng hàng_không as t3 on t1.hãng hàng_không = t3.id hãng hàng_không where t2.thành_phố = aberdeen and t3.tên hãng hàng_không = united airlines
select t1.thành_phố from sân_bay as t1 join chuyến bay as t2 on t1.mã sân_bay = t2.sân_bay đích group by t1.thành_phố order by count (*) desc limit 1
select t1.thành_phố from sân_bay as t1 join chuyến bay as t2 on t1.mã sân_bay = t2.sân_bay đích group by t1.thành_phố order by count (*) desc limit 1
select t1.thành_phố from sân_bay as t1 join chuyến bay as t2 on t1.mã sân_bay = t2.sân_bay khởi_hành group by t1.thành_phố order by count (*) desc limit 1
select t1.thành_phố from sân_bay as t1 join chuyến bay as t2 on t1.mã sân_bay = t2.sân_bay khởi_hành group by t1.thành_phố order by count (*) desc limit 1
select t1.mã sân_bay , count (*) from sân_bay as t1 join chuyến bay as t2 on t1.mã sân_bay = t2.sân_bay khởi_hành group by t1.mã sân_bay order by count (*) desc limit 1
select t1.mã sân_bay from sân_bay as t1 join chuyến bay as t2 on t1.mã sân_bay = t2.sân_bay khởi_hành group by t2.sân_bay khởi_hành order by count (*) desc limit 1
select t1.mã sân_bay from sân_bay as t1 join chuyến bay as t2 on t1.mã sân_bay = t2.sân_bay khởi_hành group by t2.sân_bay khởi_hành order by count (*) limit 1
select sân_bay đích from chuyến bay group by sân_bay đích order by count (*) limit 1
select t1.tên hãng hàng_không from hãng hàng_không as t1 join chuyến bay as t2 on t1.id hãng hàng_không = t2.hãng hàng_không group by t1.tên hãng hàng_không order by count (*) desc limit 1
select t1.tên hãng hàng_không from hãng hàng_không as t1 join chuyến bay as t2 on t1.id hãng hàng_không = t2.hãng hàng_không group by t1.tên hãng hàng_không order by count (*) desc limit 1
select t1.tên viết tắt , t1.quốc_gia from hãng hàng_không as t1 join chuyến bay as t2 on t1.id hãng hàng_không = t2.hãng hàng_không group by t2.hãng hàng_không order by count (*) limit 1
select t1.tên viết tắt , t1.quốc_gia from hãng hàng_không as t1 join chuyến bay as t2 on t1.id hãng hàng_không = t2.hãng hàng_không group by t1.tên viết tắt order by count (*) asc limit 1
select t1.tên hãng hàng_không from hãng hàng_không as t1 join chuyến bay as t2 on t1.id hãng hàng_không = t2.hãng hàng_không where t2.sân_bay khởi_hành = ahd
select distinct t1.tên hãng hàng_không from hãng hàng_không as t1 join chuyến bay as t2 on t1.id hãng hàng_không = t2.hãng hàng_không where t2.sân_bay khởi_hành = ahd
select distinct t1.tên hãng hàng_không from hãng hàng_không as t1 join chuyến bay as t2 on t1.id hãng hàng_không = t2.hãng hàng_không where t2.sân_bay khởi_hành = ahd
select distinct t1.tên hãng hàng_không from hãng hàng_không as t1 join chuyến bay as t2 on t1.id hãng hàng_không = t2.hãng hàng_không where t2.sân_bay đích = ahd
select t1.tên hãng hàng_không from hãng hàng_không as t1 join chuyến bay as t2 on t1.id hãng hàng_không = t2.hãng hàng_không where t2.sân_bay khởi_hành = apg intersect select t1.tên hãng hàng_không from hãng hàng_không as t1 join chuyến bay as t2 on t1.id hãng hàng_không = t2.hãng hàng_không where t2.sân_bay khởi_hành = cvo
select t1.tên hãng hàng_không from hãng hàng_không as t1 join chuyến bay as t2 on t1.id hãng hàng_không = t2.hãng hàng_không where t2.sân_bay khởi_hành = apg intersect select t1.tên hãng hàng_không from hãng hàng_không as t1 join chuyến bay as t2 on t1.id hãng hàng_không = t2.hãng hàng_không where t2.sân_bay khởi_hành = cvo
select t1.tên hãng hàng_không from hãng hàng_không as t1 join chuyến bay as t2 on t1.id hãng hàng_không = t2.hãng hàng_không where t2.sân_bay khởi_hành = cvo except select t1.tên hãng hàng_không from hãng hàng_không as t1 join chuyến bay as t2 on t1.id hãng hàng_không = t2.hãng hàng_không where t2.sân_bay khởi_hành = apg
select t1.tên hãng hàng_không from hãng hàng_không as t1 join chuyến bay as t2 on t1.id hãng hàng_không = t2.hãng hàng_không where t2.sân_bay khởi_hành = cvo except select t1.tên hãng hàng_không from hãng hàng_không as t1 join chuyến bay as t2 on t1.id hãng hàng_không = t2.hãng hàng_không where t2.sân_bay khởi_hành = apg
select t1.tên hãng hàng_không from hãng hàng_không as t1 join chuyến bay as t2 on t1.id hãng hàng_không = t2.hãng hàng_không group by t1.tên hãng hàng_không having count (*) > 10
select t1.tên hãng hàng_không from hãng hàng_không as t1 join chuyến bay as t2 on t1.id hãng hàng_không = t2.hãng hàng_không group by t1.tên hãng hàng_không having count (*) > 10
select t1.tên hãng hàng_không from hãng hàng_không as t1 join chuyến bay as t2 on t1.id hãng hàng_không = t2.hãng hàng_không group by t1.tên hãng hàng_không having count (*) < 200
select t1.tên hãng hàng_không from hãng hàng_không as t1 join chuyến bay as t2 on t1.id hãng hàng_không = t2.hãng hàng_không group by t1.tên hãng hàng_không having count (*) < 200
select t2.số_hiệu chuyến bay from hãng hàng_không as t1 join chuyến bay as t2 on t1.id hãng hàng_không = t2.hãng hàng_không where t1.tên hãng hàng_không = united airlines
select t2.số_hiệu chuyến bay from hãng hàng_không as t1 join chuyến bay as t2 on t1.id hãng hàng_không = t2.hãng hàng_không where t1.tên hãng hàng_không = united airlines
select số_hiệu chuyến bay from chuyến bay where sân_bay khởi_hành = apg
select số_hiệu chuyến bay from chuyến bay where sân_bay khởi_hành = apg
select số_hiệu chuyến bay from chuyến bay where sân_bay đích = apg
select số_hiệu chuyến bay from chuyến bay where sân_bay khởi_hành = apg
select số_hiệu chuyến bay from chuyến bay where sân_bay khởi_hành = (select sân_bay from sân_bay where thành_phố = aberdeen)
select số_hiệu chuyến bay from chuyến bay where sân_bay khởi_hành = aberdeen
select số_hiệu chuyến bay from chuyến bay where sân_bay đích = (select mã sân_bay from sân_bay where thành_phố = aberdeen)
select số_hiệu chuyến bay from chuyến bay where sân_bay đích = aberdeen
select count (*) from chuyến bay where sân_bay khởi_hành = abd and sân_bay đích = abe
select count (*) from sân_bay where thành_phố = aberdeen or thành_phố = abilene
select tên sân_bay from sân_bay where tên sân_bay not in (select tên sân_bay from chuyến bay)
select thành_phố from sân_bay where mã sân_bay not in (select sân_bay khởi_hành from chuyến bay union select sân_bay đích from chuyến bay)
select
select ngày from trận đấu order by đội chủ nhà desc
select mùa giải , đội chủ nhà , đội khách from trận đấu
select max (trận đấu sân_nhà) , min (trận đấu sân_nhà) , avg (trận đấu sân_nhà) from sân_vận_động
select avg (số_lượng người tham_dự trung_bình) from sân_vận_động where phần_trăm sức chứa > 100
select cầu_thủ , số_lượng trận đấu , nguồn thông_tin from chấn_thương except select t1.cầu_thủ , t1.số_lượng trận đấu , t1.nguồn thông_tin from chấn_thương as t1 join chấn_thương as t2 on t1.cầu_thủ = t2.cầu_thủ where t1.chấn_thương = head injury
select t1.mùa giải from trận đấu as t1 join chấn_thương as t2 on t1.id = t2.id trận đấu join sân_vận_động as t3 on t1.id sân_vận_động = t3.id where t2.cầu_thủ = walter samuel
select
select t1.id , t1.tên from sân_vận_động as t1 join chấn_thương as t2 on t1.id = t2.id sân_vận_động group by t2.id sân_vận_động order by count (*) desc limit 1
select t1.id , t1.tên from sân_vận_động as t1 join chấn_thương as t2 on t1.id = t2.id sân_vận_động group by t1.id order by count (*) desc limit 1
select t1.mùa giải , t2.tên from trận đấu as t1 join sân_vận_động as t2 on t1.id sân_vận_động = t2.id join chấn_thương as t3 on t1.id = t3.id trận đấu where t3.chấn_thương = knee or t3.chấn_thương = head
select count (distinct nguồn thông_tin) from chấn_thương
select count (*) from trận đấu where id not in (select id trận đấu from chấn_thương)
select count (distinct t1.chấn_thương) from chấn_thương as t1 join trận đấu as t2 on t1.id trận đấu = t2.id where t2.mùa giải > 2010
select t2.tên from chấn_thương as t1 join sân_vận_động as t2 on t1.id sân_vận_động = t2.id join trận đấu as t3 on t1.id trận đấu = t3.id join cầu_thủ as t4 on t1.id = t4.id where t4.cầu_thủ = walter samuel intersect select t2.tên from chấn_thương as t1 join sân_vận_động as t2 on t1.id sân_vận_động = t2.id join trận đấu as t3 on t1.id trận đấu = t3.id join cầu_thủ as t4 on t1.id = t4.id where t4.cầu_thủ = thiago_motta
select tên , số_lượng người tham_dự trung_bình , tổng_số người tham_dự from sân_vận_động where id not in (select id sân_vận_động from chấn_thương)
select tên from sân_vận_động where tên like %bank%
select t2.tên , count (*) from trận đấu as t1 join sân_vận_động as t2 on t1.id sân_vận_động = t2.id group by t1.id sân_vận_động
select
select năm phát_hành from bộ phim where tiêu_đề = game face off
select năm phát_hành from bộ phim where tiêu_đề = game of thrones
select năm sinh from diễn_viên where tên = benedict cumberbatch
select năm sinh from diễn_viên where tên = benedict cumberbatch
select quốc_tịch from diễn_viên where tên = christoph waltz and giới_tính = female
select quốc_tịch from diễn_viên where tên = christoph waltz
select tiêu_đề from bộ phim where năm phát_hành = 2015
select tên from diễn_viên where nơi sinh = tehran
select tên from diễn_viên where nơi sinh = tehran
select tên from diễn_viên where nơi sinh = tehran
select tên from diễn_viên where nơi sinh = afghanistan
select tên from diễn_viên where nơi sinh = afghanistan
select tên from diễn_viên where nơi sinh = afghanistan
select tên from diễn_viên where năm sinh = 1984
select năm sinh from diễn_viên where tên = kevin spacey
select năm sinh from diễn_viên where tên = kevin spacey
select nơi sinh from diễn_viên where tên = kevin spacey
select nơi sinh from diễn_viên where tên = kevin spacey
select quốc_tịch from diễn_viên where tên = kevin spacey
select ngân_sách from bộ phim where tiêu_đề = finding nemo
select t1.tiêu_đề from bộ phim as t1 join đạo_diễn bởi as t2 on t1.id bộ phim = t2.id sê-ri phim join đạo_diễn as t3 on t2.id đạo_diễn = t3.id đạo_diễn where t3.năm sinh > 2006 and t3.tên = steven spielberg
select đạo_diễn bởi . id đạo_diễn from đạo_diễn bởi as t1 join đạo_diễn as t2 on t1.id đạo_diễn = t2.id đạo_diễn join bộ phim as t3 on t1.id sê-ri phim = t3.id bộ phim where t3.tiêu_đề = james bond
select t1.tên from đạo_diễn as t1 join đạo_diễn bởi as t2 on t1.id đạo_diễn = t2.id đạo_diễn join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim where t3.tiêu_đề = james bond
select t1.tên from đạo_diễn as t1 join đạo_diễn bởi as t2 on t1.id đạo_diễn = t2.id đạo_diễn join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim where t3.tiêu_đề = james bond
select t1.tên from diễn_viên as t1 join phân_vai as t2 on t1.id diễn_viên = t2.id diễn_viên join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim where t2.vai diễn = alan turing and t3.tiêu_đề = hunt for the wilderness
select t1.tên from diễn_viên as t1 join phân_vai as t2 on t1.id diễn_viên = t2.id diễn_viên join bộ phim as t3 on t3.id bộ phim = t2.id sê-ri phim where t2.vai diễn = alan turing and t3.tiêu_đề = hunt for the wilderness
select t1.tên from diễn_viên as t1 join phân_vai as t2 on t1.id diễn_viên = t2.id diễn_viên join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim where t2.vai diễn = alan turing and t3.tiêu_đề = hunt for the wilderness
select t1.tên from diễn_viên as t1 join phân_vai as t2 on t1.id diễn_viên = t2.id diễn_viên join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim where t2.vai diễn = alan turing and t3.tiêu_đề = hunt for the wilderness
select t1.tên from diễn_viên as t1 join phân_vai as t2 on t1.id diễn_viên = t2.id diễn_viên join bản_quyền as t3 on t2.id sê-ri phim = t3.id sê-ri phim where t2.vai diễn = alan turing and t3.id bộ phim = (select t4.id bộ phim from bộ phim as t4 where t4.tiêu_đề = game of thrones)
select t1.thể_loại from bộ phim as t1 join phân_loại as t2 on t1.id bộ phim = t2.id bộ phim join thể_loại as t3 on t2.id thể_loại = t3.id thể_loại where t1.tiêu_đề = jura park
select t1.tên from đạo_diễn as t1 join đạo_diễn bởi as t2 on t1.id đạo_diễn = t2.id đạo_diễn join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim where t3.tiêu_đề = a joy and t3.năm phát_hành = 2015
select t1.tiêu_đề from bộ phim as t1 join được làm bởi as t2 on t1.id bộ phim = t2.id bộ phim join viết kịch_bản as t3 on t2.id = t3.id sê-ri phim join nhà viết kịch_bản as t4 on t3.id nhà viết kịch_bản = t4.id nhà viết kịch_bản where t4.tên = matt damon
select t1.tiêu_đề from bộ phim as t1 join đạo_diễn bởi as t2 on t1.id bộ phim = t2.id sê-ri phim join đạo_diễn as t3 on t2.id đạo_diễn = t3.id đạo_diễn where t3.tên = woody allen
select t1.tiêu_đề from bộ phim as t1 join phân_vai as t2 on t1.id bộ phim = t2.id sê-ri phim join diễn_viên as t3 on t2.id diễn_viên = t3.id diễn_viên where t3.tên = robin wright
select t1.tiêu_đề from bộ phim as t1 join phân_vai as t2 on t1.id bộ phim = t2.id sê-ri phim join diễn_viên as t3 on t2.id diễn_viên = t3.id diễn_viên where t3.tên = robin wright
select t1.tiêu_đề from bộ phim as t1 join đạo_diễn bởi as t2 on t1.id bộ phim = t2.id sê-ri phim join đạo_diễn as t3 on t2.id đạo_diễn = t3.id đạo_diễn where t3.tên = robin wright
select ngân_sách from bộ phim where tiêu_đề = juno and năm phát_hành = 2007
select tiêu_đề from bộ phim where năm phát_hành = 2010
select tiêu_đề from bộ phim where năm phát_hành = 2010
select tên from diễn_viên where nơi sinh = austin and năm sinh > 1980
select tên from diễn_viên where nơi sinh like %austin% and năm sinh > 1980
select tên from diễn_viên where nơi sinh like %austin% and năm sinh > 1980
select t1.tiêu_đề from bộ phim as t1 join đạo_diễn bởi as t2 on t1.id bộ phim = t2.id sê-ri phim join đạo_diễn as t3 on t2.id đạo_diễn = t3.id đạo_diễn where t3.nơi sinh = los angeles
select tên from diễn_viên where nơi sinh = new york city and năm sinh = 1984
select tiêu_đề from bộ phim where tiêu_đề khác = weapon of mass destruction
select tiêu_đề from bộ phim where tiêu_đề khác = nuclear weapon
select t1.tiêu_đề from bộ phim as t1 join đạo_diễn bởi as t2 on t1.id bộ phim = t2.id sê-ri phim join đạo_diễn as t3 on t2.id đạo_diễn = t3.id đạo_diễn where t3.tên = alfred hitchcock
select t3.tiêu_đề from đạo_diễn as t1 join đạo_diễn bởi as t2 on t1.id đạo_diễn = t2.id đạo_diễn join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim join viết kịch_bản as t4 on t4.id nhà viết kịch_bản = t3.id nhà viết kịch_bản join phân_vai as t5 on t5.id sê-ri phim = t3.id sê-ri phim join diễn_viên as t6 on t5.id diễn_viên = t6.id diễn_viên where t1.tên = asghar farhadi and t6.tên = taraneh alidoosti
select t3.tiêu_đề from đạo_diễn bởi as t2 join đạo_diễn as t1 on t2.id đạo_diễn = t1.id đạo_diễn join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim join viết kịch_bản as t4 on t4.id sê-ri phim = t3.id bộ phim join viết kịch_bản as t5 on t4.id nhà viết kịch_bản = t5.id nhà viết kịch_bản join diễn_viên as t6 on t6.id diễn_viên = t5.id diễn_viên where t1.tên = asghar farhadi and t6.tên = taraneh alidoosti
select t3.tiêu_đề from đạo_diễn bởi as t1 join đạo_diễn as t2 on t1.id đạo_diễn = t2.id đạo_diễn join bộ phim as t3 on t1.id sê-ri phim = t3.id bộ phim join viết kịch_bản as t4 on t4.id sê-ri phim = t3.id bộ phim join viết kịch_bản as t5 on t4.id nhà viết kịch_bản = t5.id nhà viết kịch_bản join diễn_viên as t6 on t6.id diễn_viên = t5.id diễn_viên where t2.tên = asghar farhadi and t6.tên = taraneh alidoosti
select t3.tiêu_đề from đạo_diễn as t1 join đạo_diễn bởi as t2 on t1.id đạo_diễn = t2.id đạo_diễn join bộ phim as t3 on t2.id sê-ri phim = t3.id sê-ri phim join viết kịch_bản as t4 on t4.id sê-ri phim = t3.id sê-ri phim join nhà viết kịch_bản as t5 on t4.id nhà viết kịch_bản = t5.id nhà viết kịch_bản where t1.tên = asghar farhad and t5.tên = taraneh alidoosti
select t1.tiêu_đề from bộ phim_truyền_hình nhiều tập as t1 join đạo_diễn bởi as t2 on t1.id sê-ri phim = t2.id sê-ri phim join đạo_diễn as t3 on t2.id đạo_diễn = t3.id đạo_diễn where t3.tên = shonda rhimes
select t1.tên from diễn_viên as t1 join phân_vai as t2 on t1.id diễn_viên = t2.id diễn_viên join bộ phim as t3 on t3.id bộ phim = t2.id sê-ri phim where t2.vai diễn = olivia pope and t3.tiêu_đề = scandal
select t1.tên from nhà viết kịch_bản as t1 join được viết bởi as t2 on t1.id nhà viết kịch_bản = t2.id nhà viết kịch_bản join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim where t3.tiêu_đề = truman show
select t1.tên from nhà viết kịch_bản as t1 join được viết bởi as t2 on t1.id nhà viết kịch_bản = t2.id nhà viết kịch_bản join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim where t3.tiêu_đề = truman show
select t3.tiêu_đề from diễn_viên as t1 join phân_vai as t2 on t1.id diễn_viên = t2.id diễn_viên join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim where t1.tên = scott foley
select t1.tiêu_đề from bộ phim as t1 join phân_vai as t2 on t1.id bộ phim = t2.id sê-ri phim join diễn_viên as t3 on t2.id diễn_viên = t3.id diễn_viên where t3.tên = scott foley
select t1.tên from đạo_diễn as t1 join bộ phim as t2 join phân_vai as t3 join diễn_viên as t4 on t1.id đạo_diễn = t2.đã được làm bởi and t2.id bộ phim = t3.id sê-ri phim and t3.id diễn_viên = t4.id diễn_viên where t4.tên = kate winslet
select t1.tên from đạo_diễn as t1 join đạo_diễn bởi as t2 on t1.id đạo_diễn = t2.id đạo_diễn join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim join viết kịch_bản as t4 on t4.id nhà viết kịch_bản = t3.id nhà viết kịch_bản where t4.tên = kate winslet
select t1.tên from đạo_diễn as t1 join đạo_diễn bởi as t2 on t1.id đạo_diễn = t2.id đạo_diễn join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim where t3.tiêu_đề = the political debate show and t3.năm phát_hành = 2013
select tên from diễn_viên where giới_tính = female and nơi sinh = austin
select tên from diễn_viên where nơi sinh = italy and năm sinh > 1980
select tên from diễn_viên where nơi sinh = new york and năm sinh > 1980 and giới_tính = female
select t1.tên from diễn_viên as t1 join phân_vai as t2 on t1.id diễn_viên = t2.id diễn_viên where t1.giới_tính = female and t2.vai diễn = nurse and t2.id sê-ri phim in (select t3.id bộ phim from bộ phim as t3 where t3.tiêu_đề = ryans rescue)
select tên from đạo_diễn where nơi sinh = afghanistan
select t1.tên from diễn_viên as t1 join phân_vai as t2 on t1.id diễn_viên = t2.id diễn_viên join bản_quyền as t3 on t2.id sê-ri phim = t3.id sê-ri phim where t3.tiêu_đề = women warriors
select t1.tên from diễn_viên as t1 join phân_vai as t2 on t1.id diễn_viên = t2.id diễn_viên join bộ phim as t3 on t3.id bộ phim = t2.id sê-ri phim where t3.tiêu_đề = james bond and t1.quốc_tịch = canada
select t2.tiêu_đề from diễn_viên as t1 join phân_vai as t3 on t1.id diễn_viên = t3.id diễn_viên join bộ phim as t2 on t2.id bộ phim = t3.id sê-ri phim where t1.tên = rowan atkinson and t3.vai diễn = ngài bean
select t1.nơi sinh from đạo_diễn as t1 join đạo_diễn bởi as t2 on t1.id đạo_diễn = t2.id đạo_diễn join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim where t3.tiêu_đề = the past
select diễn_viên . tên from diễn_viên , phân_vai where phân_vai . vai diễn = prince bean and phân_vai . id diễn_viên = diễn_viên . id diễn_viên
select t1.thể_loại from phim truyền_hình nhiều tập as t3 join phân_loại as t2 on t3.id sê-ri phim = t2.id sê-ri phim join đạo_diễn bởi as t4 on t4.id sê-ri phim = t3.id sê-ri phim join đạo_diễn as t1 on t4.id đạo_diễn = t1.id đạo_diễn where t1.tên = asghar farhadi
select t2.tiêu_đề from diễn_viên as t1 join phân_vai as t2 on t1.id diễn_viên = t2.id diễn_viên where t1.tên = daffy and t2.vai diễn = piggy
select t1.vai_trò from phân_vai as t1 join bộ phim as t2 on t1.id sê-ri phim = t2.id bộ phim where t2.tiêu_đề = grandpa long legs
select t1.tên from đạo_diễn as t1 join đạo_diễn bởi as t2 on t1.id đạo_diễn = t2.id đạo_diễn join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim where t3.tiêu_đề = star wars
select count (distinct t1.id bộ phim) from bộ phim as t1 join phân_vai as t2 on t1.id bộ phim = t2.id sê-ri phim join diễn_viên as t3 on t2.id diễn_viên = t3.id diễn_viên where t3.tên = jennifer aniston and t1.năm phát_hành > 2010
select count (*) from phân_vai as t1 join bộ phim as t2 on t1.id sê-ri phim = t2.id bộ phim join diễn_viên as t3 on t1.id diễn_viên = t3.id diễn_viên where t2.tiêu_đề = ryans rescue
select count (*) from phân_vai as t1 join bộ phim as t2 on t1.id sê-ri phim = t2.id bộ phim join diễn_viên as t3 on t1.id diễn_viên = t3.id diễn_viên where t2.tiêu_đề = ryans save ryans rescue
select count (*) from đạo_diễn as t1 join đạo_diễn bởi as t2 on t1.id đạo_diễn = t2.id đạo_diễn join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim where t1.tên = steven spielberg
select count (*) from bộ phim where năm phát_hành = 2013
select count (*) from bộ phim where năm phát_hành = 2013
select count (*) , t1.năm phát_hành from bộ phim as t1 join đạo_diễn bởi as t2 on t1.id bộ phim = t2.id sê-ri phim join đạo_diễn as t3 on t2.id đạo_diễn = t3.id đạo_diễn where t3.tên = woody allen group by t1.năm phát_hành
select count (*) from đạo_diễn as t1 join bộ phim as t2 on t1.id đạo_diễn = t2.đạo_diễn bởi join được làm bởi as t3 on t2.id bộ phim = t3.id sê-ri phim
select count (*) from đạo_diễn as t1 join đạo_diễn bởi as t2 on t1.id đạo_diễn = t2.id đạo_diễn join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim where t1.tên = shahab hosseini
select count (*) from đạo_diễn as t1 join đạo_diễn bởi as t2 on t1.id đạo_diễn = t2.id đạo_diễn join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim where t1.tên = shahab hosseini
select count (*) from sê-ri phim where năm phát_hành = 1999
select count (*) from diễn_viên where nơi sinh like %los angeles% and năm sinh > 2000
select count (*) from diễn_viên as t1 join phân_vai as t2 on t1.id diễn_viên = t2.id diễn_viên join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim where t1.tên = humphrey bogart and t3.năm phát_hành < 1942
select count (*) , t1.năm phát_hành from bộ phim as t1 join được làm bởi as t2 on t1.id bộ phim = t2.id sê-ri phim join diễn_viên as t3 on t2.id diễn_viên = t3.id diễn_viên where t3.tên = brad pitt group by t1.năm phát_hành
select count (*) from bộ phim where tiêu_đề = war in iraq and năm phát_hành = 2015
select count (*) from bộ phim where tiêu_đề = three men and a mule and năm phát_hành > 1990
select
select count (*) from đạo_diễn as t1 join bộ phim as t2 on t1.id đạo_diễn = t2.đạo_diễn bởi join bộ phim as t3 on t2.id bộ phim = t3.id bộ phim where t1.tên = quentin tarantino and t2.năm phát_hành < 2010
select count (*) from đạo_diễn as t1 join bộ phim as t2 on t1.id đạo_diễn = t2.đạo_diễn bởi join phân_loại as t3 on t2.id bộ phim = t3.id bộ phim join thể_loại as t4 on t3.id thể_loại = t4.id thể_loại where t1.tên = quentin tarantino and t2.năm phát_hành < 2002 and t2.năm phát_hành > 2010
select count (*) from diễn_viên where nơi sinh = new york and năm sinh > 1980 and giới_tính = female
select count (distinct t1.tên) from diễn_viên as t1 join phân_vai as t2 on t1.id diễn_viên = t2.id diễn_viên join bộ phim as t3 on t3.id bộ phim = t2.id sê-ri phim join đạo_diễn bởi as t4 on t4.id sê-ri phim = t3.id bộ phim join đạo_diễn as t5 on t5.id đạo_diễn = t4.id đạo_diễn where t1.nơi sinh = iran and t5.tên = jim jarmusch
select count (*) from diễn_viên as t1 join phân_vai as t2 on t1.id diễn_viên = t2.id diễn_viên join bộ phim as t3 on t3.id bộ phim = t2.id sê-ri phim where t1.quốc_tịch = china and t3.tiêu_đề = climax 3
select t1.tiêu_đề from bộ phim as t1 join đạo_diễn bởi as t2 on t1.id bộ phim = t2.id sê-ri phim join đạo_diễn as t3 on t2.id đạo_diễn = t3.id đạo_diễn where t3.tên = woody strode intersect select t1.tiêu_đề from bộ phim as t1 join đạo_diễn bởi as t2 on t1.id bộ phim = t2.id sê-ri phim join đạo_diễn as t3 on t2.id đạo_diễn = t3.id đạo_diễn where t3.tên = jason robards
select t3.tiêu_đề from diễn_viên as t1 join phân_vai as t2 on t1.id diễn_viên = t2.id diễn_viên join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim where t1.tên = woody strode intersect select t3.tiêu_đề from diễn_viên as t1 join phân_vai as t2 on t1.id diễn_viên = t2.id diễn_viên join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim where t1.tên = jason robards
select t1.tiêu_đề from bộ phim as t1 join đạo_diễn bởi as t2 on t1.id bộ phim = t2.id sê-ri phim join đạo_diễn as t3 on t2.id đạo_diễn = t3.id đạo_diễn where t3.tên = woody strode intersect select t1.tiêu_đề from bộ phim as t1 join đạo_diễn bởi as t2 on t1.id bộ phim = t2.id sê-ri phim join đạo_diễn as t3 on t2.id đạo_diễn = t3.id đạo_diễn where t3.tên = jason robards
select t1.tiêu_đề from bộ phim as t1 join đạo_diễn bởi as t2 on t1.id bộ phim = t2.id sê-ri phim join đạo_diễn as t3 on t2.id đạo_diễn = t3.id đạo_diễn where t3.tên = woody strode intersect select t1.tiêu_đề from bộ phim as t1 join đạo_diễn bởi as t2 on t1.id bộ phim = t2.id sê-ri phim join đạo_diễn as t3 on t2.id đạo_diễn = t3.id đạo_diễn where t3.tên = jason robards
select distinct t1.tên from diễn_viên as t1 join phân_vai as t2 on t1.id diễn_viên = t2.id diễn_viên join bản_quyền as t3 on t2.id sê-ri phim = t3.id sê-ri phim where t1.tên = tom hanks
select t2.tiêu_đề from đạo_diễn bởi as t1 join bộ phim as t2 on t1.id sê-ri phim = t2.id bộ phim join đạo_diễn as t3 on t1.id đạo_diễn = t3.id đạo_diễn where t3.tên = jerry oconnell
select t1.tiêu_đề from bộ phim as t1 join phân_loại as t2 on t1.id bộ phim = t2.id bộ phim join thể_loại as t3 on t2.id thể_loại = t3.id thể_loại group by t1.tiêu_đề order by count (*) desc limit 1
select t1.tiêu_đề from bộ phim as t1 join phân_vai as t2 on t1.id bộ phim = t2.id sê-ri phim join diễn_viên as t3 on t2.id diễn_viên = t3.id diễn_viên where t3.quốc_tịch = china group by t1.tiêu_đề order by count (*) desc limit 1
select t1.tên from diễn_viên as t1 join phân_vai as t2 on t1.id diễn_viên = t2.id diễn_viên join bộ phim as t3 on t3.id bộ phim = t2.id sê-ri phim join đạo_diễn bởi as t4 on t4.id sê-ri phim = t3.id bộ phim join đạo_diễn as t5 on t5.id đạo_diễn = t4.id đạo_diễn where t5.tên = quentin tarantino order by t3.năm phát_hành desc limit 1
select t1.tiêu_đề , t1.ngân_sách from bộ phim as t1 join đạo_diễn bởi as t2 on t1.id bộ phim = t2.id sê-ri phim join đạo_diễn as t3 on t2.id đạo_diễn = t3.id đạo_diễn where t3.tên = quentin tarantino order by t1.năm phát_hành desc limit 1
select t1.tiêu_đề from bộ phim as t1 join đạo_diễn bởi as t2 on t1.id bộ phim = t2.id sê-ri phim join đạo_diễn as t3 on t2.id đạo_diễn = t3.id đạo_diễn where t3.tên = jim jarmusch order by t1.năm phát_hành desc limit 1
select t1.tên from nhà_sản_xuất as t1 join được làm bởi as t2 on t1.id nhà_sản_xuất = t2.id nhà_sản_xuất join đạo_diễn bởi as t3 on t2.id sê-ri phim = t3.id sê-ri phim group by t1.tên order by count (*) desc limit 1
select t3.tiêu_đề from diễn_viên as t1 join phân_vai as t2 on t1.id diễn_viên = t2.id diễn_viên join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim where t1.tên = gabriele ferzetti order by t3.năm phát_hành desc
select chi_tiết khách_hàng from khách_hàng order by chi_tiết khách_hàng
select chi_tiết khách_hàng from khách_hàng order by chi_tiết khách_hàng
select distinct t3.mã loại chính_sách from khách_hàng as t1 join chính_sách as t2 on t1.id khách_hàng = t2.id khách_hàng join tiêu_đề của yêu_cầu as t3 on t2.id chính_sách = t3.id chính_sách where t1.chi_tiết khách_hàng = dayana robel
select distinct t3.mã loại chính_sách from khách_hàng as t1 join chính_sách as t2 on t1.id khách_hàng = t2.id khách_hàng join tiêu_đề của yêu_cầu as t3 on t2.id chính_sách = t3.id chính_sách where t1.chi_tiết khách_hàng = dayana robel
select mã loại chính_sách from chính_sách group by mã loại chính_sách order by count (*) desc limit 1
select mã loại chính_sách from chính_sách group by mã loại chính_sách order by count (*) desc limit 1
select mã loại chính_sách from chính_sách group by mã loại chính_sách having count (*) > 2
select mã loại chính_sách from chính_sách group by mã loại chính_sách having count (*) > 2
select sum (số tiền được trả) , avg (số tiền được trả) from tiêu_đề của yêu_cầu
select sum (số tiền được trả) , avg (số tiền được trả) from tiêu_đề của yêu_cầu
select sum (số tiền được yêu_cầu) from tài_liệu của yêu_cầu where ngày tạo ra = (select max (ngày tạo ra) from tài_liệu của yêu_cầu)
select sum (số tiền được yêu_cầu) from tài_liệu của yêu_cầu where ngày tạo ra = (select max (ngày tạo ra) from tài_liệu của yêu_cầu)
select t1.chi_tiết khách_hàng from khách_hàng as t1 join chính_sách as t2 on t1.id khách_hàng = t2.id khách_hàng join tiêu_đề của yêu_cầu as t3 on t2.id chính_sách = t3.id chính_sách where t3.số tiền được yêu_cầu = (select max (số tiền được yêu_cầu) from tiêu_đề của yêu_cầu)
select t1.chi_tiết khách_hàng from khách_hàng as t1 join chính_sách as t2 on t1.id khách_hàng = t2.id khách_hàng join tiêu_đề của yêu_cầu as t3 on t2.id chính_sách = t3.id chính_sách where t3.số tiền được yêu_cầu = (select max (số tiền được yêu_cầu) from tiêu_đề của yêu_cầu)
select t1.chi_tiết khách_hàng from khách_hàng as t1 join chính_sách as t2 on t1.id khách_hàng = t2.id khách_hàng join tiêu_đề của yêu_cầu as t3 on t2.id chính_sách = t3.id chính_sách join tài_liệu của yêu_cầu as t4 on t3.id yêu_cầu = t4.id yêu_cầu where t4.mã loại tài_liệu = refund order by t4.số tiền được trả limit 1
select t1.chi_tiết khách_hàng from khách_hàng as t1 join chính_sách as t2 on t1.id khách_hàng = t2.id khách_hàng join tiêu_đề của yêu_cầu as t3 on t2.id chính_sách = t3.id chính_sách where t3.số tiền được trả = (select min (số tiền được trả) from tiêu_đề của yêu_cầu)
select chi_tiết khách_hàng from khách_hàng except select t1.chi_tiết khách_hàng from khách_hàng as t1 join chính_sách as t2 on t1.id khách_hàng = t2.id khách_hàng
select t1.chi_tiết khách_hàng from khách_hàng as t1 left join chính_sách as t2 on t1.id khách_hàng = t2.id khách_hàng where t2.id khách_hàng = 0
select count (*) from giai_đoạn xử_lý yêu_cầu
select count (distinct id giai_đoạn xử_lý yêu_cầu) from xử_lý yêu_cầu
select t1.tên tình_trạng yêu_cầu , t2.mã kết_quả của yêu_cầu from xử_lý yêu_cầu as t1 join giai_đoạn xử_lý yêu_cầu as t2 on t1.id giai_đoạn xử_lý yêu_cầu = t2.id giai_đoạn yêu_cầu tiếp_theo group by t2.id giai_đoạn yêu_cầu tiếp_theo order by count (*) desc limit 1
select t1.tên tình_trạng yêu_cầu from giai_đoạn xử_lý yêu_cầu as t1 join xử_lý yêu_cầu as t2 on t1.id giai_đoạn xử_lý yêu_cầu = t2.id giai_đoạn xử_lý yêu_cầu group by t2.id giai_đoạn xử_lý yêu_cầu order by count (*) desc limit 1
select chi_tiết khách_hàng from khách_hàng where chi_tiết khách_hàng like %diana%
select chi_tiết khách_hàng from khách_hàng where chi_tiết khách_hàng like %diana%
select t1.chi_tiết khách_hàng from khách_hàng as t1 join chính_sách as t2 on t1.id khách_hàng = t2.id khách_hàng where t2.mã loại chính_sách = uỷ_quyền
select t1.chi_tiết khách_hàng from khách_hàng as t1 join chính_sách as t2 on t1.id khách_hàng = t2.id khách_hàng where t2.mã loại chính_sách = medical
select t1.chi_tiết khách_hàng from khách_hàng as t1 join chính_sách as t2 on t1.id khách_hàng = t2.id khách_hàng where t2.mã loại chính_sách = unlimited or t2.mã loại chính_sách = single
select distinct t1.chi_tiết khách_hàng from khách_hàng as t1 join chính_sách as t2 on t1.id khách_hàng = t2.id khách_hàng where t2.mã loại chính_sách = emergency or t2.mã loại chính_sách = unified
select chi_tiết khách_hàng from khách_hàng union select chi_tiết nhân_viên from nhân_viên
select chi_tiết khách_hàng from khách_hàng union select chi_tiết nhân_viên from nhân_viên
select mã loại chính_sách , count (*) from chính_sách group by mã loại chính_sách
select mã loại chính_sách , count (*) from chính_sách group by mã loại chính_sách
select t1.chi_tiết khách_hàng from khách_hàng as t1 join chính_sách as t2 on t1.id khách_hàng = t2.id khách_hàng group by t1.id khách_hàng order by count (*) desc limit 1
select t1.chi_tiết khách_hàng from khách_hàng as t1 join chính_sách as t2 on t1.id khách_hàng = t2.id khách_hàng group by t1.id khách_hàng order by count (*) desc limit 1
select mô_tả về tình_trạng yêu_cầu from giai_đoạn xử_lý yêu_cầu where tên tình_trạng yêu_cầu = open
select mô_tả về tình_trạng yêu_cầu from giai_đoạn xử_lý yêu_cầu where tên tình_trạng yêu_cầu = open
select count (distinct mã kết_quả của yêu_cầu) from xử_lý yêu_cầu
select count (distinct mã kết_quả của yêu_cầu) from xử_lý yêu_cầu
select t1.chi_tiết khách_hàng from khách_hàng as t1 join chính_sách as t2 on t1.id khách_hàng = t2.id khách_hàng order by t2.ngày bắt_đầu desc limit 1
select t1.chi_tiết khách_hàng from khách_hàng as t1 join chính_sách as t2 on t1.id khách_hàng = t2.id khách_hàng order by t2.ngày bắt_đầu desc limit 1
select t1.chi_tiết sự_kiện from sự_kiện as t1 join dịch_vụ as t2 on t1.id dịch_vụ = t2.id dịch_vụ where t2.mã loại dịch_vụ = wedding
select t1.id sự_kiện , t2.chi_tiết sự_kiện from người tham_gia sự_kiện as t1 join sự_kiện as t2 on t1.id sự_kiện = t2.id sự_kiện group by t1.id sự_kiện having count (*) > 1
select t1.id người tham_gia , t1.mã loại người tham_gia , count (*) from người tham_gia as t1 join người tham_gia sự_kiện as t2 on t1.id người tham_gia = t2.id người tham_gia group by t1.id người tham_gia
select id người tham_dự , mã loại người tham_dự , chi_tiết người tham_dự from người tham_dự
select count (*) from người tham_gia where mã loại người tham_gia = organiser
select mã loại dịch_vụ from dịch_vụ order by mã loại dịch_vụ
select id dịch_vụ , chi_tiết sự_kiện from sự_kiện
select count (*) from người tham_gia sự_kiện as t1 join người tham_gia as t2 on t1.id người tham_gia = t2.id người tham_gia join sự_kiện as t3 on t1.id sự_kiện = t3.id sự_kiện where t2.chi_tiết người tham_gia like %dr%
select mã loại người tham_gia from người tham_gia group by mã loại người tham_gia order by count (*) desc limit 1
select t1.id dịch_vụ , t1.mã loại dịch_vụ from dịch_vụ as t1 join người tham_gia sự_kiện as t2 on t1.id dịch_vụ = t2.id dịch_vụ group by t1.id dịch_vụ order by count (*) asc limit 1
select t1.id sự_kiện from người tham_gia sự_kiện as t1 join người tham_gia as t2 on t1.id người tham_gia = t2.id người tham_gia group by t1.id sự_kiện order by count (*) desc limit 1
select t1.id sự_kiện from sự_kiện as t1 join người tham_gia sự_kiện as t2 on t1.id sự_kiện = t2.id sự_kiện except select t2.id sự_kiện from người tham_gia as t1 join người tham_gia sự_kiện as t2 on t1.id người tham_gia = t2.id người tham_gia where t1.chi_tiết người tham_gia = kenyatta kuhn
select t1.mã loại dịch_vụ from dịch_vụ as t1 join sự_kiện as t2 on t1.id dịch_vụ = t2.id dịch_vụ where t2.chi_tiết sự_kiện = success intersect select t1.mã loại dịch_vụ from dịch_vụ as t1 join sự_kiện as t2 on t1.id dịch_vụ = t2.id dịch_vụ where t2.chi_tiết sự_kiện = fail
select count (*) from sự_kiện where id sự_kiện not in (select id sự_kiện from người tham_gia sự_kiện)
select count (*) from người tham_gia sự_kiện
select count (*) from kỹ_thuật_viên
select count (*) from kỹ_thuật_viên
select tên from kỹ_thuật_viên order by tuổi asc
select tên from kỹ_thuật_viên order by tuổi asc
select đội , năm bắt_đầu from kỹ_thuật_viên
select đội , năm bắt_đầu from kỹ_thuật_viên
select tên from kỹ_thuật_viên where đội != nyy
select tên from kỹ_thuật_viên where đội != nyy
select tên from kỹ_thuật_viên where tuổi = 36 or tuổi = 37
select tên from kỹ_thuật_viên where tuổi = 36 or tuổi = 37
select năm bắt_đầu from kỹ_thuật_viên order by tuổi desc limit 1
select năm bắt_đầu from kỹ_thuật_viên order by năm bắt_đầu - năm bắt_đầu desc limit 1
select đội , count (*) from kỹ_thuật_viên group by đội
select đội , count (*) from kỹ_thuật_viên group by đội
select đội from kỹ_thuật_viên group by đội order by count (*) desc limit 1
select đội from kỹ_thuật_viên group by đội order by count (*) desc limit 1
select đội from kỹ_thuật_viên group by đội having count (*) >= 2
select đội from kỹ_thuật_viên group by đội having count (*) >= 2
select t1.tên , t3.loạt máy from kỹ_thuật_viên as t1 join phân_công sửa_chữa as t2 on t1.id kỹ_thuật_viên = t2.id kỹ_thuật_viên join máy_móc as t3 on t2.id máy = t3.id máy
select t1.tên , t3.loạt máy from kỹ_thuật_viên as t1 join phân_công sửa_chữa as t2 on t1.id kỹ_thuật_viên = t2.id kỹ_thuật_viên join máy_móc as t3 on t3.id máy = t2.id máy
select t1.tên from kỹ_thuật_viên as t1 join phân_công sửa_chữa as t2 on t1.id kỹ_thuật_viên = t2.id kỹ_thuật_viên join máy_móc as t3 on t3.id máy = t2.id máy order by t3.xếp_hạng chất_lượng
select t1.tên from kỹ_thuật_viên as t1 join phân_công sửa_chữa as t2 on t1.id kỹ_thuật_viên = t2.id kỹ_thuật_viên join máy_móc as t3 on t2.id máy = t3.id máy order by t3.xếp_hạng chất_lượng
select t3.tên from phân_công sửa_chữa as t1 join lượt sửa_chữa as t2 on t1.id lượt sửa_chữa = t2.id lượt sửa_chữa join máy_móc as t3 on t1.id máy = t3.id máy where t3.điểm giá_trị > 70
select t3.tên from phân_công sửa_chữa as t1 join lượt sửa_chữa as t2 on t1.id lượt sửa_chữa = t2.id lượt sửa_chữa join máy_móc as t3 on t1.id máy = t3.id máy where t3.điểm giá_trị > 70
select t1.tên , count (*) from kỹ_thuật_viên as t1 join phân_công sửa_chữa as t2 on t1.id kỹ_thuật_viên = t2.id kỹ_thuật_viên group by t1.tên
select t1.tên , count (*) from kỹ_thuật_viên as t1 join phân_công sửa_chữa as t2 on t1.id kỹ_thuật_viên = t2.id kỹ_thuật_viên group by t1.tên
select tên from kỹ_thuật_viên where id kỹ_thuật_viên not in (select id kỹ_thuật_viên from phân_công sửa_chữa)
select tên from kỹ_thuật_viên where id kỹ_thuật_viên not in (select id kỹ_thuật_viên from phân_công sửa_chữa)
select năm bắt_đầu from kỹ_thuật_viên where đội = cle intersect select năm bắt_đầu from kỹ_thuật_viên where đội = cws
select năm bắt_đầu from kỹ_thuật_viên where đội = cle intersect select năm bắt_đầu from kỹ_thuật_viên where đội = cws
select count (*) from ống_kính máy_ảnh where độ dài tiêu_cự theo mm > 15
select nhãn_hiệu , tên from ống_kính máy_ảnh order by khẩu_độ tối_đa desc
select id , màu_sắc , tên from ảnh
select max (chiều cao) , avg (chiều cao) from núi
select avg (độ nổi) from núi where quốc_gia = morocco
select tên , chiều cao , độ nổi from núi where dãy núi != aberdare
select t1.id , t1.tên from ảnh as t1 join núi as t2 on t1.id núi = t2.id where t2.chiều cao > 4000
select t1.id , t1.tên from núi as t1 join ảnh as t2 on t1.id = t2.id núi group by t2.id núi having count (*) >= 2
select t1.tên from ống_kính máy_ảnh as t1 join ảnh as t2 on t1.id = t2.id ống_kính máy_ảnh join núi as t3 on t2.id núi = t3.id where t3.chiều cao = (select max (chiều cao) from núi)
select t1.tên from ảnh as t1 join ống_kính máy_ảnh as t2 on t1.id ống_kính máy_ảnh = t2.id where t2.nhãn_hiệu = sigma or t2.nhãn_hiệu = olympus
select count (distinct nhãn_hiệu) from ống_kính máy_ảnh
select count (*) from ống_kính máy_ảnh where id not in (select id ống_kính máy_ảnh from ảnh)
select count (distinct t1.nhãn_hiệu) from ống_kính máy_ảnh as t1 join ảnh as t2 on t1.id = t2.id ống_kính máy_ảnh join núi as t3 on t2.id núi = t3.id where t3.quốc_gia = ethiopia
select t1.nhãn_hiệu from ống_kính máy_ảnh as t1 join ảnh as t2 on t1.id = t2.id ống_kính máy_ảnh join núi as t3 on t2.id núi = t3.id where t3.dãy núi = toubkal_atlas or t3.dãy núi = lasta_massif
select t2.tên , t2.độ nổi from ống_kính máy_ảnh as t1 join núi as t2 on t1.id = t2.id núi where t1.nhãn_hiệu != sigma
select tên from ống_kính máy_ảnh where tên like %digital%
select t1.tên , count (*) from ống_kính máy_ảnh as t1 join ảnh as t2 on t1.id = t2.id ống_kính máy_ảnh group by t1.tên order by count (*)
select count (*) from ban nhạc
select count (*) from ban nhạc
select distinct hãng thu âm from album
select distinct hãng thu âm from album
select tiêu_đề from album where năm = 2012
select tiêu_đề from album where năm = 2012
select t2.vị_trí trên sân_khấu from ban nhạc as t1 join buổi biểu_diễn as t2 on t1.id = t2.nghệ_sĩ trong ban nhạc where t1.tên = solveig
select t2.vị_trí trên sân_khấu from ban nhạc as t1 join buổi biểu_diễn as t2 on t1.id = t2.nghệ_sĩ trong ban nhạc where t1.tên = solveig
select count (*) from bài hát
select count (*) from bài hát
select t3.tiêu_đề from ban nhạc as t1 join giọng hát as t2 on t1.id = t2.nghệ_sĩ trong ban nhạc join bài hát as t3 on t2.id bài hát = t3.id bài hát where t1.họ = heilo
select t3.tiêu_đề from ban nhạc as t1 join buổi biểu_diễn as t2 on t1.id = t2.nghệ_sĩ trong ban nhạc join bài hát as t3 on t3.id bài hát = t2.id bài hát where t1.họ = hello
select count (*) from buổi biểu_diễn as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where t2.tiêu_đề = flash
select count (*) from buổi biểu_diễn as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where t2.tiêu_đề = flash
select t1.tiêu_đề from bài hát as t1 join nhạc cụ as t2 on t1.id bài hát = t2.id bài hát join ban_nhạc as t3 on t2.id nghệ_sĩ trong ban nhạc = t3.id where t3.tên = marianne
select t1.tiêu_đề from bài hát as t1 join nhạc cụ as t2 on t1.id bài hát = t2.id bài hát join giọng hát as t3 on t2.id bài hát = t3.id bài hát join ban nhạc as t4 on t3.nghệ_sĩ trong ban nhạc = t4.id join ban nhạc as t5 on t4.tên = marianne
select t1.tên , t1.họ from ban nhạc as t1 join buổi biểu_diễn as t2 on t1.id = t2.nghệ_sĩ trong ban nhạc join bài hát as t3 on t3.id bài hát = t2.id bài hát where t3.tiêu_đề = badlands
select t1.tên , t1.họ from ban nhạc as t1 join buổi biểu_diễn as t2 on t1.id = t2.nghệ_sĩ trong ban nhạc join bài hát as t3 on t3.id bài hát = t2.id bài hát where t3.tiêu_đề = badlands
select t2.tên , t2.họ from buổi biểu_diễn as t1 join ban nhạc as t2 on t1.nghệ_sĩ trong ban nhạc = t2.id join bài hát as t3 on t3.id bài hát = t1.id bài hát where t3.tiêu_đề = badlands and t1.vị_trí trên sân_khấu = back
select t1.tên , t1.họ from ban_nhạc as t1 join buổi biểu_diễn as t2 on t1.id = t2.nghệ_sĩ trong ban nhạc where t2.vị_trí trên sân_khấu = backline and t2.id bài hát in (select t3.id bài hát from giọng hát as t3 join bài hát as t4 on t3.id bài hát = t4.id bài hát where t4.tiêu_đề = badlands)
select count (distinct hãng thu âm) from album
select count (distinct hãng thu âm) from album
select hãng thu âm from album group by hãng thu âm order by count (*) desc limit 1
select hãng thu âm from album group by hãng thu âm order by count (*) desc limit 1
select t1.họ from ban nhạc as t1 join nhạc_cụ as t2 on t1.id = t2.id nghệ_sĩ trong ban nhạc group by t1.id order by count (*) desc limit 1
select t1.tên from ban nhạc as t1 join giọng hát as t2 on t1.id = t2.nghệ_sĩ trong ban nhạc group by t2.nghệ_sĩ trong ban nhạc order by count (*) desc limit 1
select t2.họ from buổi biểu_diễn as t1 join ban nhạc as t2 on t1.nghệ_sĩ trong ban nhạc = t2.id join bài hát as t3 on t3.id bài hát = t1.id bài hát where vị_trí trên sân_khấu = backline group by t2.họ order by count (*) desc limit 1
select t1.tên , t1.họ from ban nhạc as t1 join buổi biểu_diễn as t2 on t1.id = t2.nghệ_sĩ trong ban nhạc where vị_trí trên sân_khấu = backline group by t1.id order by count (*) desc limit 1
select tiêu_đề from bài hát where tiêu_đề like %the%
select tiêu_đề from bài hát where tiêu_đề like %the%
select distinct nhạc_cụ from nhạc_cụ
select distinct nhạc_cụ from nhạc_cụ
select t3.nhạc_cụ from ban nhạc as t1 join giọng hát as t2 on t1.id = t2.nghệ_sĩ trong ban nhạc join nhạc_cụ as t3 on t2.id bài hát = t3.id bài hát where t1.họ = heilo and t2.loại = vocal and t2.id bài hát in (select t4.id bài hát from bài hát as t4 where t4.tiêu_đề = le_pop)
select t3.nhạc_cụ from ban nhạc as t1 join giọng hát as t2 on t1.id = t2.nghệ_sĩ trong ban nhạc join nhạc_cụ as t3 on t2.id bài hát = t3.id bài hát join buổi biểu_diễn as t4 on t4.nghệ_sĩ trong ban nhạc = t1.id join bài hát as t5 on t5.id bài hát = t3.id bài hát where t1.họ = heilo and t5.tiêu_đề = le pop
select nhạc_cụ from nhạc_cụ group by nhạc_cụ order by count (*) desc limit 1
select nhạc_cụ from nhạc_cụ group by nhạc_cụ order by count (*) desc limit 1
select count (*) from nhạc_cụ where nhạc_cụ = guitar
select count (*) from nhạc_cụ where nhạc_cụ = guitar
select t3.nhạc_cụ from bài hát as t1 join nhạc_cụ as t2 on t1.id bài hát = t2.id bài hát join nhạc as t3 on t2.id nghệ_sĩ trong ban nhạc = t3.id
select t3.nhạc_cụ from bài hát as t1 join nhạc_cụ as t2 on t1.id bài hát = t2.id bài hát join nhạc as t3 on t2.id nghệ_sĩ trong ban nhạc = t3.id where t1.tiêu_đề = le pop
select count (*) from nhạc_cụ as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where t2.tiêu_đề = le pop
select count (distinct nhạc_cụ) from nhạc_cụ as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where tiêu_đề = le pop
select count (distinct t1.nhạc_cụ) from nhạc_cụ as t1 join ban nhạc as t2 on t1.id nghệ_sĩ trong ban nhạc = t2.id join bài hát as t3 on t3.id bài hát = t1.id bài hát where t2.họ = heilo
select count (distinct t1.nhạc_cụ) from nhạc_cụ as t1 join ban nhạc as t2 on t1.id nghệ_sĩ trong ban nhạc = t2.id join ban nhạc as t3 on t2.id = t3.id where t3.họ = hello
select t3.nhạc_cụ from ban nhạc as t1 join nhạc_cụ as t2 on t1.id = t2.id nghệ_sĩ trong ban nhạc join bài hát as t3 on t2.id bài hát = t3.id bài hát where t1.họ = heilo
select t3.nhạc_cụ from ban nhạc as t1 join nhạc_cụ as t2 on t1.id = t2.id nghệ_sĩ trong ban nhạc join bài hát as t3 on t3.id bài hát = t2.id bài hát where t1.họ = hello
select t3.tiêu_đề from giọng hát as t1 join bài hát as t3 on t1.id bài hát = t3.id bài hát group by t1.id bài hát order by count (*) desc limit 1
select t1.tiêu_đề from bài hát as t1 join giọng hát as t2 on t1.id bài hát = t2.id bài hát group by t2.id bài hát order by count (*) desc limit 1
select loại from giọng hát group by loại order by count (*) desc limit 1
select loại from giọng hát group by loại order by count (*) desc limit 1
select t3.loại from ban nhạc as t1 join giọng hát as t2 on t1.id = t2.nghệ_sĩ trong ban nhạc join bài hát as t3 on t2.id bài hát = t3.id bài hát where t1.họ = hello
select t3.loại from ban nhạc as t1 join giọng hát as t2 on t1.id = t2.nghệ_sĩ trong ban nhạc join bài hát as t3 on t2.id bài hát = t3.id bài hát where t1.họ = hello and t2.loại = lead
select t2.loại from bài hát as t1 join giọng hát as t2 on t1.id bài hát = t2.id bài hát where t1.tiêu_đề = le_pop
select t2.loại from bài hát as t1 join giọng hát as t2 on t1.id bài hát = t2.id bài hát where t1.tiêu_đề = le_pop
select count (distinct loại) from giọng hát as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where t2.tiêu_đề = demon kitty rag
select count (distinct t2.loại) from bài hát as t1 join giọng hát as t2 on t1.id bài hát = t2.id bài hát where t1.tiêu_đề = demon kitty rag
select count (*) from giọng hát where loại = lead
select count (*) from giọng hát where loại = lead
select t3.loại from bài hát as t1 join giọng hát as t2 on t1.id bài hát = t2.id bài hát join ban nhạc as t3 on t2.nghệ_sĩ trong ban nhạc = t3.id join buổi biểu_diễn as t4 on t4.nghệ_sĩ trong ban nhạc = t3.id where t3.tên = solveig and t1.tiêu_đề = amsterdam bar and t4.vị_trí trên sân_khấu = vocals
select t3.loại from ban nhạc as t1 join giọng hát as t2 on t1.id = t2.nghệ_sĩ trong ban nhạc join bài hát as t3 on t3.id bài hát = t2.id bài hát where t1.tên = solveig and t3.tiêu_đề = amsterdam bar
select tiêu_đề from bài hát except select t1.tiêu_đề from bài hát as t1 join giọng hát as t2 on t1.id bài hát = t2.id bài hát where t2.loại = lead
select tiêu_đề from bài hát except select t1.tiêu_đề from bài hát as t1 join giọng hát as t2 on t1.id bài hát = t2.id bài hát where t2.loại = lead
select distinct loại from giọng hát
select distinct loại from giọng hát
select * from album where năm = 2010
select * from album where năm = 2010
select t1.tên from ban nhạc as t1 join buổi biểu_diễn as t2 on t1.id = t2.nghệ_sĩ trong ban nhạc join bài hát as t3 on t3.id bài hát = t2.id bài hát where t3.tiêu_đề = le pop
select t1.tên , t1.họ from ban nhạc as t1 join buổi biểu_diễn as t2 on t1.id = t2.nghệ_sĩ trong ban nhạc join bài hát as t3 on t3.id bài hát = t2.id bài hát where t3.tiêu_đề = le pop
select t1.họ from ban nhạc as t1 join giọng hát as t2 on t1.id = t2.nghệ_sĩ trong ban nhạc group by t2.nghệ_sĩ trong ban nhạc order by count (*) desc limit 1
select t1.họ from ban nhạc as t1 join giọng hát as t2 on t1.id = t2.nghệ_sĩ trong ban nhạc group by t2.nghệ_sĩ trong ban nhạc order by count (*) desc limit 1
select t3.nhạc_cụ from ban nhạc as t1 join giọng hát as t2 on t1.id = t2.nghệ_sĩ trong ban nhạc join nhạc_cụ as t3 on t2.id bài hát = t3.id bài hát where t1.họ = heilo and t2.loại = vocals and t3.tiêu_đề = badlands
select t3.nhạc_cụ from ban_nhạc as t1 join buổi biểu_diễn as t2 on t1.id = t2.nghệ_sĩ trong ban nhạc join nhạc_cụ as t3 on t2.id bài hát = t3.id bài hát where t1.họ = hello and t2.vị_trí trên sân_khấu = badlands
select count (*) from nhạc_cụ as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where t2.tiêu_đề = badlands
select count (distinct nhạc_cụ) from nhạc_cụ as t1 join bài hát as t2 on t1.id bài hát = t2.id bài hát where tiêu_đề = badlands
select t2.loại from bài hát as t1 join giọng hát as t2 on t1.id bài hát = t2.id bài hát where t1.tiêu_đề = badlands
select t2.loại from bài hát as t1 join giọng hát as t2 on t1.id bài hát = t2.id bài hát where t1.tiêu_đề = badlands
select count (distinct t2.loại) from bài hát as t1 join giọng hát as t2 on t1.id bài hát = t2.id bài hát where t1.tiêu_đề = le pop
select count (distinct t2.loại) from bài hát as t1 join giọng hát as t2 on t1.id bài hát = t2.id bài hát where t1.tiêu_đề = le_pop
select count (*) from giọng hát where loại = shared group by id bài hát having count (*) > 1
select count (distinct t3.tiêu_đề) from giọng hát as t1 join buổi biểu_diễn as t2 on t1.id bài hát = t2.id bài hát join bài hát as t3 on t3.id bài hát = t1.id bài hát where t1.loại = shared
select tiêu_đề from bài hát except select t1.tiêu_đề from bài hát as t1 join giọng hát as t2 on t1.id bài hát = t2.id bài hát where t2.loại = backing
select tiêu_đề from bài hát where id bài hát not in (select t1.tiêu_đề from bài hát as t1 join giọng hát as t2 on t1.id bài hát = t2.id bài hát where t2.loại = backing)
select t3.loại from ban nhạc as t1 join giọng hát as t2 on t1.id = t2.nghệ_sĩ trong ban nhạc join bài hát as t3 on t2.id bài hát = t3.id bài hát where t1.tên = solveig group by t3.loại order by count (*) desc limit 1
select t3.loại from ban nhạc as t1 join giọng hát as t2 on t1.id = t2.nghệ_sĩ trong ban nhạc join bài hát as t3 on t2.id bài hát = t3.id bài hát where t1.tên = solveig group by t3.loại order by count (*) desc limit 1
select t3.loại from bài hát as t1 join giọng hát as t2 on t1.id bài hát = t2.id bài hát join ban nhạc as t3 on t2.nghệ_sĩ trong ban nhạc = t3.id where t1.tiêu_đề = der kapitan and t3.họ = hello
select t3.loại from ban nhạc as t1 join giọng hát as t2 on t1.id = t2.nghệ_sĩ trong ban nhạc join bài hát as t3 on t3.id bài hát = t2.id bài hát where t1.họ = hello and t3.tiêu_đề = der kapitan
select t1.tên from ban nhạc as t1 join buổi biểu_diễn as t2 on t1.id = t2.nghệ_sĩ trong ban nhạc group by t2.nghệ_sĩ trong ban nhạc order by count (*) desc limit 1
select t1.tên from ban nhạc as t1 join buổi biểu_diễn as t2 on t1.id = t2.nghệ_sĩ trong ban nhạc group by t2.nghệ_sĩ trong ban nhạc order by count (*) desc limit 1
select t3.loại from ban nhạc as t1 join giọng hát as t2 on t1.id = t2.nghệ_sĩ trong ban nhạc join bài hát as t3 on t2.id bài hát = t3.id bài hát where t1.tên = marianne group by t3.loại order by count (*) desc limit 1
select t3.loại from buổi biểu_diễn as t1 join giọng hát as t2 on t1.id bài hát = t2.id bài hát join ban nhạc as t3 on t1.nghệ_sĩ trong ban nhạc = t3.id where t3.tên = marianne group by t2.loại order by count (*) desc limit 1
select t2.tên , t2.họ from buổi biểu_diễn as t1 join ban nhạc as t2 on t1.nghệ_sĩ trong ban nhạc = t2.id join bài hát as t3 on t3.id bài hát = t1.id bài hát where t3.tiêu_đề = der kapitan and t1.vị_trí trên sân_khấu = back
select t3.tên , t3.họ from buổi biểu_diễn as t1 join giọng hát as t2 on t1.id bài hát = t2.id bài hát join ban_nhạc as t3 on t1.nghệ_sĩ trong ban nhạc = t3.id where t1.vị_trí trên sân_khấu = backline and t2.loại = vocals and t2.id bài hát = (select t4.id bài hát from bài hát as t4 where t4.tiêu_đề = der kapitan)
select tiêu_đề from bài hát where id bài hát not in (select t1.tiêu_đề from bài hát as t1 join giọng hát as t2 on t1.id bài hát = t2.id bài hát where t2.loại = backing)
select t1.tiêu_đề from bài hát as t1 join giọng hát as t2 on t1.id bài hát = t2.id bài hát where t2.loại != sub
select t3.tiêu_đề from album as t1 join danh_sách bài hát as t2 on t1.id album = t2.id album join bài hát as t3 on t2.id bài hát = t3.id bài hát where t1.tiêu_đề = a kiss trước khi bạn rời đi a live in hamburg
select t3.tiêu_đề from album as t1 join danh_sách bài hát as t2 on t1.id album = t2.id album join bài hát as t3 on t2.id bài hát = t3.id bài hát where t1.tiêu_đề = a kiss trước khi bạn đi : sống ở hamburg
select t1.tiêu_đề from album as t1 join danh_sách bài hát as t2 on t1.id album = t2.id album join bài hát as t3 on t2.id bài hát = t3.id bài hát where t1.hãng thu âm = universal music group
select t1.tiêu_đề from album as t1 join danh_sách bài hát as t2 on t1.id album = t2.id album join bài hát as t3 on t2.id bài hát = t3.id bài hát where t1.hãng thu âm = universal music group
select count (*) from album as t1 join danh_sách bài hát as t2 on t1.id album = t2.id album where t1.loại = studio
select count (*) from album as t1 join danh_sách bài hát as t2 on t1.id album = t2.id album where t1.loại = studio
select t1.khách_hàng tốt hay xấu from khách_hàng as t1 join phiếu giảm_giá as t2 on t1.id phiếu giảm_giá = t2.id phiếu giảm_giá where t2.số tiền giảm_giá = 500
select t1.id khách_hàng , t1.tên , count (*) from khách_hàng as t1 join lượt đặt mua as t2 on t1.id khách_hàng = t2.id khách_hàng group by t1.id khách_hàng
select id khách_hàng , sum (số tiền phải trả) from thanh_toán group by id khách_hàng order by sum (số tiền phải trả) desc limit 1
select t1.id đặt mua , t1.số tiền hoàn_trả from thanh_toán as t1 join lượt đặt mua as t2 on t1.id đặt mua = t2.id đặt mua group by t1.id đặt mua order by count (*) desc limit 1
select id sản_phẩm from sản_phẩm được đặt group by id sản_phẩm having count (*) = 3
select t1.mô_tả sản_phẩm from sản_phẩm cho thuê as t1 join sản_phẩm được đặt as t2 on t1.id sản_phẩm = t2.id sản_phẩm where t2.số tiền đã đặt = 102.76
select t1.ngày bắt_đầu đặt mua , t1.ngày kết_thúc đặt mua from lượt đặt mua as t1 join sản_phẩm được đặt as t2 on t1.id đặt mua = t2.id đặt mua where t2.tên sản_phẩm = the collectors series
select t1.tên sản_phẩm from sản_phẩm cho thuê as t1 join sản_phẩm có sẵn as t2 on t1.id sản_phẩm = t2.id sản_phẩm where t2.có sẵn hay không = y
select count (distinct mã loại sản_phẩm) from sản_phẩm cho thuê
select tên , họ , giới_tính from khách_hàng where khách_hàng tốt hay xấu = good order by họ
select avg (số tiền nợ) from thanh_toán
select avg (số_lượng đặt_hàng) , max (số_lượng đặt_hàng) , min (số_lượng đặt_hàng) from sản_phẩm được đặt
select distinct mã loại thanh_toán from thanh_toán
select chi_phí thuê hàng ngày from sản_phẩm cho thuê where tên sản_phẩm like %book%
select count (*) from sản_phẩm cho thuê where chi_phí thuê hàng ngày not in (select max (chi_phí thuê hàng ngày) from sản_phẩm cho thuê)
select t1.số tiền giảm_giá from phiếu giảm_giá as t1 join khách_hàng as t2 on t1.id phiếu giảm_giá = t2.id phiếu giảm_giá where t2.khách_hàng tốt hay xấu = good intersect select t1.số tiền giảm_giá from phiếu giảm_giá as t1 join khách_hàng as t2 on t1.id phiếu giảm_giá = t2.id phiếu giảm_giá where t2.khách_hàng tốt hay xấu = bad
select ngày thanh_toán from thanh_toán where số tiền đã trả > 300 or mã loại thanh_toán = cash
select tên sản_phẩm , mô_tả sản_phẩm from sản_phẩm cho thuê where mã loại sản_phẩm = cutlery and chi_phí thuê hàng ngày < 20
select tên nhà_hàng from nhà_hàng
select địa_chỉ from nhà_hàng where tên nhà_hàng = subway
select t2.đánh_giá xếp_hạng from nhà_hàng as t1 join loại của nhà_hàng as t2 on t1.id nhà_hàng = t2.id nhà_hàng where t1.tên nhà_hàng = subway
select tên loại nhà_hàng from loại nhà_hàng
select mô_tả về loại nhà_hàng from loại nhà_hàng where tên loại nhà_hàng = sandwich
select tên nhà_hàng , đánh_giá xếp_hạng from nhà_hàng order by đánh_giá xếp_hạng desc limit 1
select tuổi from sinh_viên where tên = linda and họ = smith
select giới_tính from sinh_viên where tên = linda and họ = smith
select tên , họ from sinh_viên where chuyên_ngành = 600
select mã thành_phố from sinh_viên where tên = linda and họ = smith
select count (*) from sinh_viên where cố_vấn = 1121
select cố_vấn , count (*) from sinh_viên group by cố_vấn order by count (*) desc limit 1
select chuyên_ngành , count (*) from sinh_viên group by chuyên_ngành order by count (*) limit 1
select chuyên_ngành , count (*) from sinh_viên group by chuyên_ngành having count (*) between 2 and 30
select tên , họ from sinh_viên where tuổi > 18 and chuyên_ngành = 600
select tên , họ from sinh_viên where giới_tính = f and tuổi > 18 and chuyên_ngành != 600
select count (*) from nhà_hàng as t1 join loại của nhà_hàng as t2 on t1.id nhà_hàng = t2.id nhà_hàng join loại nhà_hàng as t3 on t2.id loại nhà_hàng = t3.id loại nhà_hàng where t3.tên loại nhà_hàng = sandwich
select sum (t2.thời_gian dành ra) from lượt ghé thăm nhà_hàng as t1 join sinh_viên as t2 on t1.id sinh_viên = t2.id sinh_viên where t2.tên = linda and t2.họ = smith
select count (*) from lượt ghé thăm nhà_hàng as t1 join nhà_hàng as t2 on t1.id nhà_hàng = t2.id nhà_hàng join sinh_viên as t3 on t1.id sinh_viên = t3.id sinh_viên where t3.tên = linda and t3.họ = smith and t2.tên nhà_hàng = subway
select t3.thời_gian from sinh_viên as t1 join lượt ghé thăm nhà_hàng as t2 on t1.id sinh_viên = t2.id sinh_viên join nhà_hàng as t3 on t2.id nhà_hàng = t3.id nhà_hàng where t1.tên = linda and t1.họ = smith and t3.tên nhà_hàng = subway
select t1.tên nhà_hàng , sum (thời_gian dành ra) from lượt ghé thăm nhà_hàng as t2 join nhà_hàng as t1 on t2.id nhà_hàng = t1.id nhà_hàng group by t2.id nhà_hàng order by sum (thời_gian dành ra) asc limit 1
select t1.tên , t1.họ from sinh_viên as t1 join lượt ghé thăm nhà_hàng as t2 on t1.id sinh_viên = t2.id sinh_viên group by t1.id sinh_viên order by count (*) desc limit 1
select count (distinct họ) from diễn_viên where giới_tính = male intersect select count (distinct họ) from diễn_viên where giới_tính = female
select count (distinct họ) from diễn_viên
select tên from diễn_viên group by tên order by count (*) desc limit 1
select tên from diễn_viên group by tên order by count (*) desc limit 1
select t1.tên , t1.họ from diễn_viên as t1 join diễn_viên điện_ảnh as t2 on t1.id diễn_viên = t2.id diễn_viên group by t1.id diễn_viên order by count (*) desc limit 1
select t1.tên , t1.họ from diễn_viên as t1 join diễn_viên điện_ảnh as t2 on t1.id diễn_viên = t2.id diễn_viên group by t1.tên , t1.họ order by count (*) desc limit 1
select quận from địa_chỉ group by quận having count (*) >= 2
select quận from địa_chỉ group by quận having count (*) >= 2
select số điện_thoại , mã bưu_điện from địa_chỉ where id địa_chỉ = 1031
select số điện_thoại , mã bưu_điện from địa_chỉ where địa_chỉ = 1031 daugavpils parkway
select t2.thành_phố , count (*) , t1.id thành_phố from địa_chỉ as t1 join thành_phố as t2 on t1.id thành_phố = t2.id thành_phố group by t1.id thành_phố order by count (*) desc limit 1
select t2.thành_phố , count (*) , t1.id thành_phố from địa_chỉ as t1 join thành_phố as t2 on t1.id thành_phố = t2.id thành_phố group by t1.id thành_phố order by count (*) desc limit 1
select count (*) from địa_chỉ where quận = california
select count (*) from địa_chỉ where quận = california
select t1.tiêu_đề , t1.id phim from phim as t1 join lượt cho thuê as t2 on t1.id phim = t2.id phim where t2.giá thay_thế = 0.99 group by t1.id phim having count (*) < 3
select t1.tiêu_đề , t1.id phim from phim as t1 join hàng tồn_kho as t2 on t1.id phim = t2.id phim where t1.giá thay_thế = 0.99 group by t1.id phim having count (*) < 3
select count (*) from thành_phố as t1 join quốc_gia as t2 on t1.id thành_phố = t2.id quốc_gia where t2.quốc_gia = australia
select count (*) from thành_phố where id quốc_gia = (select id quốc_gia from quốc_gia where quốc_gia = australia)
select t1.quận from thành_phố as t1 join quốc_gia as t2 on t1.id quốc_gia = t2.id quốc_gia group by t2.id quốc_gia having count (*) >= 3
select t1.quốc_gia from thành_phố as t1 join quốc_gia as t2 on t1.id quốc_gia = t2.id quốc_gia group by t2.id quốc_gia having count (*) >= 3
select t1.ngày thanh_toán from khoản thanh_toán as t1 join nhân_viên as t2 on t1.id nhân_viên = t2.id nhân_viên where t2.tên = elsa union select t1.ngày thanh_toán from khoản thanh_toán as t1 join nhân_viên as t2 on t1.id nhân_viên = t2.id nhân_viên where t1.số tiền > 10
select t1.ngày thanh_toán from khoản thanh_toán as t1 join nhân_viên as t2 on t1.id nhân_viên = t2.id nhân_viên where t2.tên = elsa union select t1.ngày thanh_toán from khoản thanh_toán as t1 join nhân_viên as t2 on t1.id nhân_viên = t2.id nhân_viên where t1.số tiền > 10
select count (*) , vùng sản_xuất from rượu group by vùng sản_xuất
select count (*) from khách_hàng where có hoạt_động không = 1
select giá cho thuê from phim order by giá cho thuê desc limit 1
select tiêu_đề , giá cho thuê from phim order by giá cho thuê desc limit 1
select t1.tiêu_đề , t1.mô_tả , t1.id phim from phim as t1 join diễn_viên điện_ảnh as t2 on t1.id phim = t2.id phim group by t1.id phim order by count (*) desc limit 1
select t1.tiêu_đề , t1.id phim , t1.mô_tả from phim as t1 join diễn_viên điện_ảnh as t2 on t1.id phim = t2.id phim group by t1.id phim order by count (*) desc limit 1
select tên from thành_phố where id thành_phố not in (select t1.id thành_phố from thành_phố nơi đặt chính_sách as t1 join chính_sách có sẵn as t2 on t1.id chính_sách = t2.id chính_sách)
select t1.tên , t1.họ , t2.id diễn_viên from diễn_viên as t1 join diễn_viên điện_ảnh as t2 on t1.id diễn_viên = t2.id diễn_viên group by t2.id diễn_viên order by count (*) desc limit 1
select
select t1.tên , t1.họ from diễn_viên as t1 join diễn_viên điện_ảnh as t2 on t1.id diễn_viên = t2.id diễn_viên group by t1.id diễn_viên having count (*) > 30
select id cửa_hàng from hàng tồn_kho group by id cửa_hàng order by count (*) desc limit 1
select id cửa_hàng from hàng tồn_kho group by id cửa_hàng order by count (*) desc limit 1
select sum (số tiền) from khoản thanh_toán
select sum (số tiền) from khoản thanh_toán
select t1.tên , t1.họ , t1.id khách_hàng from khách_hàng as t1 join khoản thanh_toán as t2 on t1.id khách_hàng = t2.id khách_hàng group by t1.id khách_hàng order by count (*) limit 1
select t1.tên , t1.họ , t2.id khách_hàng from khách_hàng as t1 join khoản thanh_toán as t2 on t1.id khách_hàng = t2.id khách_hàng group by t2.id khách_hàng order by sum (t2.số tiền) limit 1
select t1.tên from danh_mục phim as t1 join phim as t2 on t1.id phim = t2.id phim where t2.tiêu_đề = hunger roof
select t1.tên from danh_mục phim as t1 join phim as t2 on t1.id phim = t2.id phim where t2.tiêu_đề = hunger roof
select t1.tên , t1.id danh_mục , count (*) from danh_mục as t1 join danh_mục phim as t2 on t1.id danh_mục = t2.id danh_mục group by t1.id danh_mục
select t1.tên , t1.id danh_mục , count (*) from danh_mục as t1 join danh_mục phim as t2 on t1.id danh_mục = t2.id danh_mục group by t1.id danh_mục
select t1.tiêu_đề , t1.id phim from phim as t1 join hàng tồn_kho as t2 on t1.id phim = t2.id phim group by t1.id phim order by count (*) desc limit 1
select t1.tiêu_đề , t1.id phim from phim as t1 join hàng tồn_kho as t2 on t1.id phim = t2.id phim group by t1.id phim order by count (*) desc limit 1
select t1.tiêu_đề , t2.id hàng tồn_kho from phim as t1 join hàng tồn_kho as t2 on t1.id phim = t2.id phim group by t2.id hàng tồn_kho order by count (*) desc limit 1
select t1.tiêu_đề , t2.id hàng tồn_kho from lượt cho thuê as t1 join hàng tồn_kho as t2 on t1.id hàng tồn_kho = t2.id hàng tồn_kho group by t2.id hàng tồn_kho order by count (*) desc limit 1
select count (distinct id ngôn_ngữ) from phim
select count (distinct id ngôn_ngữ) from danh_mục phim
select tiêu_đề from phim where đánh_giá xếp_hạng = r
select tiêu_đề from phim where đánh_giá xếp_hạng = r
select t2.địa_chỉ from cửa_hàng as t1 join địa_chỉ as t2 on t1.id địa_chỉ = t2.id địa_chỉ where id cửa_hàng = 1
select địa_chỉ from địa_chỉ where id địa_chỉ = 1
select t1.tên , t1.họ from nhân_viên as t1 join khoản thanh_toán as t2 on t1.id nhân_viên = t2.id nhân_viên group by t2.id nhân_viên order by count (*) desc limit 1
select t1.tên , t1.họ , t2.id nhân_viên from nhân_viên as t1 join khoản thanh_toán as t2 on t1.id nhân_viên = t2.id nhân_viên group by t2.id nhân_viên order by count (*) asc limit 1
select t1.tên from ngôn_ngữ as t1 join phim as t2 on t1.id ngôn_ngữ = t2.id ngôn_ngữ gốc where t2.tiêu_đề = airport pollock
select t1.tên from ngôn_ngữ as t1 join phim as t2 on t2.id ngôn_ngữ = t1.id ngôn_ngữ where t2.tiêu_đề = airport pollock
select count (*) from cửa_hàng
select count (*) from cửa_hàng
select count (distinct đánh_giá xếp_hạng) from phim
select count (distinct đánh_giá xếp_hạng) from phim
select tiêu_đề from phim where tính_năng đặc_biệt like %scene%
select tiêu_đề from phim where tính_năng đặc_biệt like %scene shift%
select count (*) from hàng tồn_kho where id cửa_hàng = 1
select count (*) from hàng tồn_kho where id cửa_hàng = 1
select ngày thanh_toán from khoản thanh_toán order by ngày thanh_toán limit 1
select ngày thanh_toán from khoản thanh_toán order by ngày thanh_toán asc limit 1
select t1.email from khách_hàng as t1 join địa_chỉ as t2 on t1.id địa_chỉ = t2.id địa_chỉ where t2.thành_phố = los angeles and t1.tên = linda
select t2.địa_chỉ , t1.email from khách_hàng as t1 join địa_chỉ as t2 on t1.id địa_chỉ = t2.id địa_chỉ where t1.tên = linda
select tiêu_đề from phim where thời_lượng phim > 100 or đánh_giá xếp_hạng = pg except select tiêu_đề from phim where giá thay_thế > 200
select tiêu_đề from phim where thời_lượng phim > 100 or đánh_giá xếp_hạng = pg except select tiêu_đề from phim where giá thay_thế < 200
select t1.tên , t1.họ from khách_hàng as t1 join lượt cho thuê as t2 on t1.id khách_hàng = t2.id khách_hàng order by t2.ngày cho thuê limit 1
select t1.tên , t1.họ from khách_hàng as t1 join lượt cho thuê as t2 on t1.id khách_hàng = t2.id khách_hàng order by t2.ngày cho thuê limit 1
select distinct t1.tên , t1.họ from diễn_viên as t1 join diễn_viên điện_ảnh as t2 on t1.id diễn_viên = t2.id diễn_viên except select distinct t1.tên , t1.họ from diễn_viên as t1 join diễn_viên điện_ảnh as t2 on t1.id diễn_viên = t2.id diễn_viên join phim as t3 on t2.id phim = t3.id phim where t3.tiêu_đề = a clockwork orange
select t3.tên , t3.họ from khách_hàng as t1 join lượt cho thuê as t2 on t1.id khách_hàng = t2.id khách_hàng join nhân_viên as t3 on t2.id nhân_viên = t3.id nhân_viên where t1.tên = april and t1.họ = burns
select id cửa_hàng from khách_hàng group by id cửa_hàng order by count (*) desc limit 1
select id cửa_hàng from khách_hàng group by id cửa_hàng order by count (*) desc limit 1
select max (số tiền) from khoản thanh_toán
select max (số tiền) from khoản thanh_toán
select t2.địa_chỉ from nhân_viên as t1 join địa_chỉ as t2 on t1.id địa_chỉ = t2.id địa_chỉ where t1.tên = elsa
select t2.địa_chỉ from nhân_viên as t1 join địa_chỉ as t2 on t1.id địa_chỉ = t2.id địa_chỉ where t1.tên = elsa
select tên from khách_hàng except select t1.tên from khách_hàng as t1 join lượt thuê as t2 on t1.id khách_hàng = t2.id khách_hàng where t2.ngày cho thuê > 2005-08-23 02:06:01
select tên from khách_hàng where id khách_hàng not in (select id khách_hàng from lượt cho thuê where ngày cho thuê > 2005-08-23 02:06:01)
select count (*) from tài_xế
select tên , thành_phố quê_hương , tuổi from tài_xế
select đảng , count (*) from tài_xế group by đảng
select tên from tài_xế order by tuổi desc
select distinct thành_phố quê_hương from tài_xế
select thành_phố quê_hương from tài_xế group by thành_phố quê_hương order by count (*) desc limit 1
select đảng from tài_xế where thành_phố quê_hương = hartford and tuổi > 40
select thành_phố quê_hương from tài_xế where tuổi > 40 group by thành_phố quê_hương having count (*) >= 2
select thành_phố quê_hương from tài_xế except select thành_phố quê_hương from tài_xế where tuổi > 40
select tên from tài_xế where id tài_xế not in (select id tài_xế from xe_buýt của trường_học)
select loại_hình from trường_học group by loại_hình having count (*) = 2
select t1.trường_học , t2.tên from trường_học as t1 join xe_buýt của trường_học as t2 on t1.id trường_học = t2.id trường_học join tài_xế as t3 on t2.id tài_xế = t3.id tài_xế
select max (số năm làm_việc) , min (số năm làm_việc) , avg (số năm làm_việc) from xe_buýt của trường_học
select trường_học , loại_hình from trường_học where id trường_học not in (select id trường_học from xe_buýt của trường_học)
select loại_hình , count (*) from trường_học group by loại_hình
select count (*) from tài_xế where thành_phố quê_hương = hartford or tuổi < 40
select tên from tài_xế where thành_phố quê_hương = hartford and tuổi < 40
select t1.tên from tài_xế as t1 join xe_buýt của trường_học as t2 on t1.id tài_xế = t2.id tài_xế order by số năm làm_việc desc limit 1
select count (*) from trường_học
select count (*) from trường_học
select địa_điểm from trường_học order by số_lượng nhập_học asc
select địa_điểm from trường_học order by số_lượng nhập_học asc
select địa_điểm from trường_học order by năm thành_lập desc
select địa_điểm from trường_học order by năm thành_lập desc
select số_lượng nhập_học from trường_học where tôn_giáo != christian
select số_lượng nhập_học from trường_học where tôn_giáo != christian
select avg (số_lượng nhập_học) from trường_học
select avg (số_lượng nhập_học) from trường_học
select đội from cầu_thủ order by đội asc
select đội from cầu_thủ order by đội asc
select count (distinct vị_trí) from cầu_thủ
select count (distinct vị_trí) from cầu_thủ
select đội from cầu_thủ order by tuổi desc limit 1
select đội from cầu_thủ where tuổi = (select max (tuổi) from cầu_thủ)
select
select đội from cầu_thủ order by tuổi desc limit 5
select t2.đội , t1.trường_học from trường_học as t1 join cầu_thủ as t2 on t1.id_trường = t2.id_trường
select t1.cầu_thủ , t2.trường_học from cầu_thủ as t1 join trường_học as t2 on t1.id_trường = t2.id_trường
select t2.địa_điểm from chi_tiết trường_học as t1 join trường_học as t2 on t1.id_trường = t2.id_trường join cầu_thủ as t3 on t2.id_trường = t3.id_trường group by t2.id_trường having count (*) > 1
select t2.địa_điểm from chi_tiết trường_học as t1 join trường_học as t2 on t1.id_trường = t2.id_trường join cầu_thủ as t3 on t1.id_trường = t3.id_trường group by t1.id_trường having count (*) > 1
select t2.tôn_giáo from chi_tiết trường_học as t1 join trường_học as t2 on t1.id_trường = t2.id_trường group by t1.id_trường order by count (*) desc limit 1
select t2.tôn_giáo from chi_tiết trường_học as t1 join trường_học as t2 on t1.id_trường = t2.id_trường order by t1.số_lượng nhập_học desc limit 1
select t1.địa_điểm , t2.biệt_danh from trường_học as t1 join chi_tiết trường_học as t2 on t1.id_trường = t2.id_trường
select trường_học , địa_điểm from trường_học
select tôn_giáo , count (*) from trường_học group by tôn_giáo
select tôn_giáo , count (*) from trường_học group by tôn_giáo
select tôn_giáo , count (*) from trường_học group by tôn_giáo order by count (*) desc
select tôn_giáo , count (*) from trường_học group by tôn_giáo order by count (*) desc
select màu của_trường from trường_học order by số_lượng nhập_học desc limit 1
select màu của_trường from trường_học order by số_lượng nhập_học desc limit 1
select địa_điểm from trường_học where id_trường not in (select id_trường from cầu_thủ)
select địa_điểm from trường_học where id_trường not in (select id_trường from cầu_thủ)
select tôn_giáo from trường_học where năm thành_lập < 1890 intersect select tôn_giáo from trường_học where năm thành_lập > 1900
select tôn_giáo from trường_học where năm thành_lập < 1890 intersect select tôn_giáo from trường_học where năm thành_lập > 1900
select biệt_danh from chi_tiết trường_học where phân_hạng != 1
select biệt_danh from trường_học where phân_hạng != 1
select tôn_giáo from trường_học group by tôn_giáo having count (*) > 1
select tôn_giáo from trường_học group by tôn_giáo having count (*) > 1
select t1.tên , t2.tên from quốc_gia as t1 join giải đấu as t2 on t1.id = t2.id quốc_gia
select count (*) from giải đấu as t1 join quốc_gia as t2 on t1.id quốc_gia = t2.id where t2.tên = england
select avg (cân nặng) from cầu_thủ
select max (cân nặng) , min (cân nặng) from cầu_thủ
select tên cầu_thủ from đặc_điểm của cầu_thủ where đánh_giá tổng_thể > (select avg (đánh_giá tổng_thể) from đặc_điểm của cầu_thủ)
select distinct t1.tên cầu_thủ from cầu_thủ as t1 join đặc_điểm của cầu_thủ as t2 on t1.id = t2.id cầu_thủ api của fifa where t2.đánh_giá tổng_thể >= 3000
select t1.tên cầu_thủ from cầu_thủ as t1 join đặc_điểm của cầu_thủ as t2 on t1.id = t2.id cầu_thủ api where t2.tạt bóng > 90 and t2.chân thuận = right
select distinct t1.tên cầu_thủ from cầu_thủ as t1 join đặc_điểm của cầu_thủ as t2 on t1.id = t2.id cầu_thủ api where t2.chân thuận = left and t2.đánh_giá tổng_thể between 85 and 90
select avg (t1.tiềm_năng) from đặc_điểm của cầu_thủ as t1 join cầu_thủ as t2 on t1.id cầu_thủ api = t2.id where t1.chân thuận = right union select avg (t1.tiềm_năng) from đặc_điểm của cầu_thủ as t1 join cầu_thủ as t2 on t1.id cầu_thủ api = t2.id where t1.chân thuận = left
select chân thuận , count (*) from đặc_điểm của cầu_thủ where đánh_giá tổng_thể > 80 group by chân thuận
select id cầu_thủ api from cầu_thủ where chiều cao >= 180 and id cầu_thủ api của fifa in (select id cầu_thủ api của fifa from đặc_điểm của cầu_thủ where đánh giá tổng_thể > 85)
select id cầu_thủ api from cầu_thủ where chiều cao between 180 and 190 and chân thuận = left
select tên cầu_thủ from đặc_điểm của cầu_thủ order by đánh_giá tổng_thể desc limit 3
select t1.tên cầu_thủ , t1.ngày_sinh from cầu_thủ as t1 join đặc_điểm của cầu_thủ as t2 on t1.id = t2.id cầu_thủ api order by t2.tiềm_năng desc limit 5
select distinct tên quận from quận order by diện_tích của các thành_phố desc
select tên quận from quận order by diện_tích của các thành_phố desc
select kích_thước trang tối_đa from sản_phẩm group by kích_thước trang tối_đa having count (*) > 3
select kích_thước trang tối_đa from sản_phẩm group by kích_thước trang tối_đa having count (*) > 3
select tên quận , dân_số thành_phố from quận where dân_số thành_phố between 200000 and 2000000
select tên quận , dân_số thành_phố from quận where dân_số thành_phố between 200000 and 2000000
select tên quận from quận where diện_tích của các thành_phố > 10 or dân_số thành_phố > 100000
select tên quận from quận where diện_tích của các thành_phố > 10 or dân_số thành_phố > 100000
select tên quận from quận order by dân_số thành_phố desc limit 1
select tên quận from quận order by dân_số thành_phố desc limit 1
select tên quận from quận order by diện_tích của các thành_phố limit 1
select tên quận from quận order by diện_tích của các thành_phố asc limit 1
select sum (dân_số thành_phố) from quận order by diện_tích của các thành_phố desc limit 3
select sum (dân_số thành_phố) from quận order by diện_tích của các thành_phố desc limit 3
select loại , count (*) from cửa_hàng group by loại
select loại , count (*) from cửa_hàng group by loại
select t2.tên cửa_hàng from quận của cửa_hàng as t1 join cửa_hàng as t2 on t1.id cửa_hàng = t2.id cửa_hàng join quận as t3 on t3.id quận = t1.id quận where t3.tên quận = khanewal
select t2.tên cửa_hàng from quận của cửa_hàng as t1 join cửa_hàng as t2 on t1.id cửa_hàng = t2.id cửa_hàng join quận as t3 on t3.id quận = t1.id quận where t3.tên quận = khanewal
select t2.tên cửa_hàng from quận của cửa_hàng as t1 join cửa_hàng as t2 on t1.id cửa_hàng = t2.id cửa_hàng join quận as t3 on t3.id quận = t1.id quận where t3.dân_số thành_phố = (select max (dân_số thành_phố) from quận)
select t2.tên quận , t1.tên cửa_hàng from cửa_hàng as t1 join quận của cửa_hàng as t2 on t1.id cửa_hàng = t2.id cửa_hàng join quận as t3 on t2.id quận = t3.id quận order by t3.dân_số thành_phố desc limit 1
select t2.tên quận from cửa_hàng as t1 join quận của cửa_hàng as t2 on t1.id cửa_hàng = t2.id cửa_hàng join quận as t3 on t2.id quận = t3.id quận where t1.tên cửa_hàng = blackville
select t1.tên quận from quận as t1 join quận của cửa_hàng as t2 on t1.id quận = t2.id quận join cửa_hàng as t3 on t2.id cửa_hàng = t3.id cửa_hàng where t3.tên cửa_hàng = blackville
select count (*) , t1.tên quận from quận as t1 join quận của cửa_hàng as t2 on t1.id quận = t2.id quận group by t1.tên quận
select count (*) , t1.tên quận from quận as t1 join quận của cửa_hàng as t2 on t1.id quận = t2.id quận group by t1.tên quận
select t2.tên quận from quận của cửa_hàng as t1 join quận as t2 on t1.id quận = t2.id quận group by t1.id quận order by count (*) desc limit 1
select t2.tên quận from quận của cửa_hàng as t1 join quận as t2 on t1.id quận = t2.id quận group by t1.id quận order by count (*) desc limit 1
select avg (số trang màu trên từng phút) from sản_phẩm
select avg (số trang màu trên từng phút) from sản_phẩm
select t3.sản_phẩm from cửa_hàng as t1 join sản_phẩm của cửa_hàng as t2 on t1.id cửa_hàng = t2.id cửa_hàng join sản_phẩm as t3 on t2.id sản_phẩm = t3.id sản_phẩm where t1.tên cửa_hàng = miramichi
select t2.sản_phẩm from cửa_hàng as t1 join sản_phẩm của cửa_hàng as t2 on t1.id cửa_hàng = t2.id cửa_hàng where t1.tên cửa_hàng = miramichi
select sản_phẩm from sản_phẩm where số trang màu trên từng phút < 5 and kích_thước trang tối_đa = a4
select sản_phẩm from sản_phẩm where số trang màu trên từng phút < 5 and kích_thước trang tối_đa = a4
select sản_phẩm from sản_phẩm where số trang màu trên từng phút < 5 and kích_thước trang tối_đa = a4
select sản_phẩm from sản_phẩm where kích_thước trang tối_đa = a4 union select sản_phẩm from sản_phẩm where số trang màu trên từng phút < 5
select sản_phẩm from sản_phẩm where sản_phẩm like %scanner%
select sản_phẩm from sản_phẩm where sản_phẩm like %scanner%
select kích_thước trang tối_đa from sản_phẩm group by kích_thước trang tối_đa order by count (*) desc limit 1
select kích_thước trang tối_đa from sản_phẩm group by kích_thước trang tối_đa order by count (*) desc limit 1
select sản_phẩm from sản_phẩm where sản_phẩm not in (select sản_phẩm from sản_phẩm as t1 join sản_phẩm của cửa_hàng as t2 on t1.id sản_phẩm = t2.id sản_phẩm where t1.kích_thước trang tối_đa = (select max (kích_thước trang tối_đa) from sản_phẩm as t1 join sản_phẩm của cửa_hàng as t2 on t1.id sản_phẩm = t2.id sản_phẩm))
select sản_phẩm from sản_phẩm where sản_phẩm kích_thước trang tối_đa != (select sản_phẩm kích_thước trang tối_đa from sản_phẩm group by sản_phẩm kích_thước trang tối_đa order by count (*) desc limit 1)
select sum (dân_số thành_phố) from quận where diện_tích của các thành_phố > (select avg (diện_tích của các thành_phố) from quận)
select sum (dân_số thành_phố) from quận where diện_tích của các thành_phố > (select avg (diện_tích của các thành_phố) from quận)
select t1.tên quận from quận as t1 join quận của cửa_hàng as t2 on t1.id quận = t2.id quận join cửa_hàng as t3 on t2.id cửa_hàng = t3.id cửa_hàng where t3.loại = hybrid intersect select t1.tên quận from quận as t1 join quận của cửa_hàng as t2 on t1.id quận = t2.id quận join cửa_hàng as t3 on t2.id cửa_hàng = t3.id cửa_hàng where t3.loại = mall
select t1.tên quận from quận as t1 join quận của cửa_hàng as t2 on t1.id quận = t2.id quận join cửa_hàng as t3 on t2.id cửa_hàng = t3.id cửa_hàng where t3.loại = mall intersect select t1.tên quận from quận as t1 join quận của cửa_hàng as t2 on t1.id quận = t2.id quận join cửa_hàng as t3 on t2.id cửa_hàng = t3.id cửa_hàng where t3.loại = trung_tâm mua_sắm
select count (*) from khu_vực
select count (*) from khu_vực
select mã khu_vực , tên khu_vực from khu_vực order by mã khu_vực
select mã khu_vực , tên khu_vực from khu_vực order by mã khu_vực
select tên khu_vực from khu_vực order by tên khu_vực
select tên khu_vực from khu_vực order by tên khu_vực
select tên khu_vực from khu_vực where tên khu_vực != denmark
select tên khu_vực from khu_vực where tên khu_vực != denmark
select count (*) from bão where số_lượng người chết > 0
select count (*) from bão where số_lượng người chết > 0
select tên , ngày hoạt_động , số_lượng người chết from bão where số_lượng người chết >= 1
select tên , ngày hoạt_động , số_lượng người chết from bão where số_lượng người chết >= 1
select avg (thiệt_hại theo triệu usd) , max (thiệt_hại theo triệu usd) from bão where tốc_độ tối_đa > 1000
select avg (thiệt_hại theo triệu usd) , max (thiệt_hại theo triệu usd) from bão where tốc_độ tối_đa > 1000
select sum (số_lượng người chết) , sum (thiệt_hại theo triệu usd) from bão where tốc_độ tối_đa > (select avg (tốc_độ tối_đa) from bão)
select sum (số_lượng người chết) , sum (thiệt_hại theo triệu usd) from bão where tốc_độ tối_đa > (select avg (tốc_độ tối_đa) from bão)
select tên , thiệt_hại theo triệu usd from bão order by tốc_độ tối_đa desc
select tên , thiệt_hại theo triệu usd from bão order by tốc_độ tối_đa desc
select count (distinct id khu_vực) from khu_vực bị ảnh_hưởng
select count (distinct id khu_vực) from khu_vực bị ảnh_hưởng
select tên khu_vực from khu_vực where id khu_vực not in (select id khu_vực from khu_vực bị ảnh_hưởng)
select tên khu_vực from khu_vực where id khu_vực not in (select t1.id khu_vực from khu_vực as t1 join khu_vực bị ảnh_hưởng as t2 on t1.id khu_vực = t2.id khu_vực)
select t1.tên khu_vực , count (*) from khu_vực as t1 join khu_vực bị ảnh_hưởng as t2 on t1.id khu_vực = t2.id khu_vực group by t1.id khu_vực
select t1.tên khu_vực , count (*) from khu_vực as t1 join khu_vực bị ảnh_hưởng as t2 on t1.id khu_vực = t2.id khu_vực group by t1.tên khu_vực
select t1.tên , count (*) from bão as t1 join khu_vực bị ảnh_hưởng as t2 on t1.id cơn bão = t2.id bão group by t1.id cơn bão
select count (*) , t1.tên from bão as t1 join khu_vực bị ảnh_hưởng as t2 on t1.id cơn bão = t2.id bão group by t1.tên
select t1.tên , t1.tốc_độ tối_đa from bão as t1 join khu_vực bị ảnh_hưởng as t2 on t1.id cơn bão = t2.id bão group by t2.id bão order by count (*) desc limit 1
select t1.tên , t1.tốc_độ tối_đa from bão as t1 join khu_vực bị ảnh_hưởng as t2 on t1.id cơn bão = t2.id bão group by t2.id bão order by count (*) desc limit 1
select tên from bão where id cơn bão not in (select id bão from khu_vực bị ảnh_hưởng)
select tên from bão where id cơn bão not in (select id bão from khu_vực bị ảnh_hưởng)
select t1.tên from bão as t1 join khu_vực bị ảnh_hưởng as t2 on t1.id cơn bão = t2.id bão group by t1.id cơn bão having count (*) >= 2 intersect select t1.tên from bão as t1 join khu_vực bị ảnh_hưởng as t2 on t1.id cơn bão = t2.id bão group by t1.id cơn bão having count (t2.id khu_vực) <= 10
select t1.tên from bão as t1 join khu_vực bị ảnh_hưởng as t2 on t1.id cơn bão = t2.id bão join khu_vực as t3 on t2.id khu_vực = t3.id khu_vực group by t1.id cơn bão having count (*) >= 2 intersect select t1.tên from bão as t1 join khu_vực bị ảnh_hưởng as t2 on t1.id cơn bão = t2.id bão join khu_vực as t3 on t2.id khu_vực = t3.id khu_vực group by t1.id cơn bão having count (t2.id bão) >= 10
select tên from bão except select t1.tên from bão as t1 join khu_vực bị ảnh_hưởng as t2 on t1.id cơn bão = t2.id bão group by t1.id cơn bão having count (*) < 2
select tên from bão except select t1.tên from bão as t1 join khu_vực bị ảnh_hưởng as t2 on t1.id cơn bão = t2.id bão group by t1.id cơn bão having count (*) >= 2
select t1.tên khu_vực from khu_vực as t1 join khu_vực bị ảnh_hưởng as t2 on t1.id khu_vực = t2.id khu_vực join bão as t3 on t2.id bão = t3.id cơn bão where t3.số_lượng người chết >= 10
select t1.tên khu_vực from khu_vực as t1 join khu_vực bị ảnh_hưởng as t2 on t1.id khu_vực = t2.id khu_vực join bão as t3 on t2.id bão = t3.id cơn bão where t3.số_lượng người chết >= 10
select t1.tên from bão as t1 join khu_vực bị ảnh_hưởng as t2 on t1.id cơn bão = t2.id bão join khu_vực as t3 on t2.id khu_vực = t3.id khu_vực where t3.tên khu_vực = denmark
select t1.tên from bão as t1 join khu_vực bị ảnh_hưởng as t2 on t1.id cơn bão = t2.id bão join khu_vực as t3 on t2.id khu_vực = t3.id khu_vực where t3.tên khu_vực = denmark
select t1.tên khu_vực from khu_vực as t1 join khu_vực bị ảnh_hưởng as t2 on t1.id khu_vực = t2.id khu_vực group by t1.tên khu_vực having count (*) >= 2
select t1.tên khu_vực from khu_vực as t1 join khu_vực bị ảnh_hưởng as t2 on t1.id khu_vực = t2.id khu_vực group by t1.tên khu_vực having count (*) >= 2
select t1.tên khu_vực from khu_vực as t1 join khu_vực bị ảnh_hưởng as t2 on t1.id khu_vực = t2.id khu_vực join bão as t3 on t2.id bão = t3.id cơn bão order by t3.số_lượng người chết desc limit 1
select t1.tên khu_vực from khu_vực as t1 join khu_vực bị ảnh_hưởng as t2 on t1.id khu_vực = t2.id khu_vực join bão as t3 on t2.id bão = t3.id cơn bão group by t1.tên khu_vực order by sum (t3.số_lượng người chết) desc limit 1
select t1.tên from bão as t1 join khu_vực bị ảnh_hưởng as t2 on t1.id cơn bão = t2.id bão join khu_vực as t3 on t2.id khu_vực = t3.id khu_vực where t3.tên khu_vực = afghanistan intersect select t1.tên from bão as t1 join khu_vực bị ảnh_hưởng as t2 on t1.id cơn bão = t2.id bão join khu_vực as t3 on t2.id khu_vực = t3.id khu_vực where t3.tên khu_vực = albania
select t1.tên from bão as t1 join khu_vực bị ảnh_hưởng as t2 on t1.id cơn bão = t2.id bão join khu_vực as t3 on t2.id khu_vực = t3.id khu_vực where t3.tên khu_vực = afghanistan intersect select t1.tên from bão as t1 join khu_vực bị ảnh_hưởng as t2 on t1.id cơn bão = t2.id bão join khu_vực as t3 on t2.id khu_vực = t3.id khu_vực where t3.tên khu_vực = albania
select count (*) from danh_sách
select count (*) from danh_sách
select họ from danh_sách where phòng học = 111
select họ from danh_sách where phòng học = 111
select tên from danh_sách where phòng học = 108
select tên from danh_sách where phòng học = 108
select tên from danh_sách where phòng học = 107
select distinct tên from danh_sách where phòng học = 107
select phòng học , khối lớp from danh_sách
select phòng học , khối lớp from danh_sách
select khối lớp from danh_sách where phòng học = 103
select distinct khối lớp from danh_sách where phòng học = 103
select distinct khối lớp from danh_sách where phòng học = 105
select khối lớp from danh_sách where phòng học = 105
select distinct phòng học from danh_sách where khối lớp = 4
select distinct phòng học from danh_sách where khối lớp = 4
select distinct phòng học from danh_sách where khối lớp = 5
select distinct phòng học from danh_sách where khối lớp = 5
select họ from giáo_viên where khối lớp = 5
select họ from giáo_viên where khối lớp = 5
select tên from giáo_viên where khối lớp = 1
select tên from giáo_viên where khối lớp = 1
select tên from giáo_viên where phòng học = 110
select tên from giáo_viên where phòng học = 110
select họ from giáo_viên where phòng học = 109
select họ from giáo_viên where phòng học = 109
select distinct tên , họ from giáo_viên
select distinct tên , họ from giáo_viên
select distinct tên , họ from danh_sách
select distinct tên , họ from danh_sách
select t1.tên , t1.họ from danh_sách as t1 join giáo_viên as t2 on t1.phòng học = t2.phòng học where t2.tên = otha and t2.họ = moyer
select t1.tên , t1.họ from danh_sách as t1 join giáo_viên as t2 on t1.phòng học = t2.phòng học where t2.tên = otha and t2.họ = moyer
select distinct t1.tên , t1.họ from danh_sách as t1 join giáo_viên as t2 on t1.phòng học = t2.phòng học where t2.tên = marrotte and t2.họ = kirk
select t1.tên , t1.họ from danh_sách as t1 join giáo_viên as t2 on t1.phòng học = t2.phòng học where t2.tên = marrotte and t2.họ = kirk
select t1.tên , t1.họ from giáo_viên as t1 join danh_sách as t2 on t1.phòng học = t2.phòng học where t2.tên = evelina and t2.họ = bromley
select t2.tên , t2.họ from danh_sách as t1 join giáo_viên as t2 on t1.phòng học = t2.phòng học where t1.tên = evelina and t1.họ = bromley
select t2.họ from danh_sách as t1 join giáo_viên as t2 on t1.phòng học = t2.phòng học where t1.tên = gell and t1.họ = tami
select t2.họ from danh_sách as t1 join giáo_viên as t2 on t1.phòng học = t2.phòng học where t1.tên = gell and t1.họ = tami
select count (*) from danh_sách as t1 join giáo_viên as t2 on t1.phòng học = t2.phòng học where t2.tên = loria and t2.họ = ondersma
select count (t1.tên) from danh_sách as t1 join giáo_viên as t2 on t1.phòng học = t2.phòng học where t2.tên = loria and t2.họ = ondersma
select count (*) from danh_sách as t1 join giáo_viên as t2 on t1.phòng học = t2.phòng học where t2.tên = kawa and t2.họ = gordon
select count (*) from danh_sách as t1 join giáo_viên as t2 on t1.phòng học = t2.phòng học where t2.tên = kawa and t2.họ = gordon
select count (*) from danh_sách as t1 join giáo_viên as t2 on t1.phòng học = t2.phòng học where t2.tên = tarring and t2.họ = leia
select count (*) from danh_sách as t1 join giáo_viên as t2 on t1.phòng học = t2.phòng học where t2.tên = tarring and t2.họ = leia
select count (distinct t2.tên) from danh_sách as t1 join giáo_viên as t2 on t1.phòng học = t2.phòng học where t1.tên = chrissy and t1.họ = nabozny
select count (*) from danh_sách as t1 join giáo_viên as t2 on t1.phòng học = t2.phòng học where t1.tên = chrissy and t2.tên = nabozny
select count (*) from danh_sách as t1 join giáo_viên as t2 on t1.phòng học = t2.phòng học where t1.tên = madlock and t1.họ = ray
select count (*) from danh_sách as t1 join giáo_viên as t2 on t1.phòng học = t2.phòng học where t1.tên = madlock and t1.họ = ray
select distinct t1.tên , t1.họ from danh_sách as t1 join giáo_viên as t2 on t1.phòng học = t2.phòng học where t1.khối lớp = 1 and t2.tên != otha and t2.họ != moyer
select distinct t1.họ from danh_sách as t1 join giáo_viên as t2 on t1.phòng học = t2.phòng học where t1.khối lớp = 1 and t2.tên != otha and t2.họ != moyer
select họ from danh_sách where khối lớp = 3 except select t1.họ from danh_sách as t1 join giáo_viên as t2 on t1.phòng học = t2.phòng học where t1.khối lớp = 3 and t2.tên = covin and t2.họ = jerome
select distinct t1.họ from danh_sách as t1 join giáo_viên as t2 on t1.phòng học = t2.phòng học where t1.khối lớp = 3 except select distinct họ from giáo_viên where tên = covin and họ = jerome
select khối lớp , count (distinct phòng học) , count (*) from danh_sách group by khối lớp
select khối lớp , count (distinct phòng học) , count (*) from danh_sách group by khối lớp
select phòng học , count (distinct khối lớp) from danh_sách group by phòng học
select phòng học , count (distinct khối lớp) from danh_sách group by phòng học
select phòng học from danh_sách group by phòng học order by count (*) desc limit 1
select phòng học from danh_sách group by phòng học order by count (*) desc limit 1
select phòng học , count (*) from danh_sách group by phòng học
select phòng học , count (*) from danh_sách group by phòng học
select sum (khối lớp) , phòng học from danh_sách where khối lớp = 0
select phòng học , count (*) from danh_sách where khối lớp = 0 group by phòng học
select phòng học , count (*) from danh_sách where khối lớp = 4 group by phòng học
select phòng học , count (*) from danh_sách where khối lớp = 4 group by phòng học
select t1.tên , t1.họ from giáo_viên as t1 join danh_sách as t2 on t1.phòng học = t2.phòng học group by t1.tên order by count (*) desc limit 1
select t2.tên , t2.họ from danh_sách as t1 join giáo_viên as t2 on t1.phòng học = t2.phòng học group by t1.phòng học order by count (*) desc limit 1
select count (*) , phòng học from danh_sách group by phòng học
select count (*) , phòng học from danh_sách group by phòng học
select t1.tên khoá học from khoá học as t1 join lượt đăng_ký khoá học của sinh_viên as t2 on t1.id khoá học = t2.id khoá học group by t1.tên khoá học order by count (*) desc limit 1
select t1.tên khoá học from khoá học as t1 join lượt đăng_ký khoá học của sinh_viên as t2 on t1.id khoá học = t2.id khoá học group by t1.tên khoá học order by count (*) desc limit 1
select id sinh_viên from lượt đăng_ký khoá học của sinh_viên group by id sinh_viên order by count (*) limit 1
select id sinh_viên from lượt đăng_ký khoá học của sinh_viên group by id sinh_viên having count (*) < (select count (*) from lượt đăng_ký khoá học của sinh_viên group by id sinh_viên order by count (*) limit 1)
select tên , họ from cá_nhân as t1 join ứng_cử_viên as t2 on t1.id cá_nhân = t2.id ứng_cử_viên
select tên , họ from cá_nhân as t1 join ứng_cử_viên as t2 on t1.id cá_nhân = t2.id ứng_cử_viên
select id sinh_viên from lượt đăng_ký khoá học của sinh_viên except select id sinh_viên from lần tham_dự khoá học của sinh_viên
select id sinh_viên from lần tham_dự khoá học của sinh_viên except select id sinh_viên from lượt đăng_ký khoá học của sinh_viên
select id sinh_viên from lần tham_dự khoá học của sinh_viên
select id sinh_viên from lần tham_dự khoá học của sinh_viên
select t1.id sinh_viên , t2.tên khoá học from lượt đăng_ký khoá học của sinh_viên as t1 join khoá học as t2 on t1.id khoá học = t2.id khoá học
select t1.chi_tiết sinh_viên from cá_nhân as t1 join lượt đăng_ký khoá học của sinh_viên as t2 on t1.id cá_nhân = t2.id sinh_viên order by t2.ngày đăng_kí desc limit 1
select t1.chi_tiết sinh_viên from cá_nhân as t1 join lượt đăng_ký khoá học của sinh_viên as t2 on t1.id cá_nhân = t2.id sinh_viên order by t2.ngày đăng_kí desc limit 1
select count (*) from lần tham_dự khoá học của sinh_viên as t1 join khoá học as t2 on t1.id khoá học = t2.id khoá học where t2.tên khoá học = english
select count (*) from khoá học as t1 join lượt đăng_ký khoá học của sinh_viên as t2 on t1.id khoá học = t2.id khoá học where t1.tên khoá học = english
select count (*) from lần tham_dự khoá học của sinh_viên where id sinh_viên = 171
select count (*) from lần tham_dự khoá học của sinh_viên where id sinh_viên = 171
select id ứng_cử_viên from ứng_cử_viên as t1 join địa_chỉ cá_nhân as t2 on t1.id cá_nhân = t2.id cá_nhân where t2.địa chỉ email = stanley.monahan@example.org
select t1.id ứng_cử_viên from ứng_cử_viên as t1 join đánh_giá ứng_cử_viên as t2 on t1.id ứng_cử_viên = t2.id ứng_cử_viên where t2.mã kết_quả đánh_giá = người tốt and t1.chi_tiết ứng_cử_viên = stanley.monahan@example.org
select id ứng_cử_viên from đánh_giá ứng_cử_viên order by ngày đánh_giá desc limit 1
select id ứng_cử_viên from đánh_giá ứng_cử_viên order by ngày đánh_giá desc limit 1
select t1.chi_tiết sinh_viên from cá_nhân as t1 join lượt đăng_ký khoá học của sinh_viên as t2 on t1.id cá_nhân = t2.id sinh_viên group by t1.id cá_nhân order by count (*) desc limit 1
select t1.chi_tiết sinh_viên from cá_nhân as t1 join lượt đăng_ký khoá học của sinh_viên as t2 on t1.id cá_nhân = t2.id sinh_viên group by t1.id cá_nhân order by count (*) desc limit 1
select id sinh_viên , count (*) from lượt đăng_ký khoá học của sinh_viên group by id sinh_viên
select count (*) , id sinh_viên from lượt đăng_ký khoá học của sinh_viên group by id sinh_viên
select t1.tên khoá học , count (*) from khoá học as t1 join lượt đăng_ký khoá học của sinh_viên as t2 on t1.id khoá học = t2.id khoá học group by t1.tên khoá học
select t1.id khoá học , count (*) , t2.tên khoá học from lượt đăng_ký khoá học của sinh_viên as t1 join khoá học as t2 on t1.id khoá học = t2.id khoá học group by t1.id khoá học
select id ứng_cử_viên from đánh_giá ứng_cử_viên where mã kết_quả đánh_giá = approved
select id ứng_cử_viên from đánh_giá ứng_cử_viên where mã kết_quả đánh_giá = approved
select t1.số di_động from cá_nhân as t1 join ứng_cử_viên as t2 on t1.id cá_nhân = t2.id ứng_cử_viên where t2.mã kết_quả đánh_giá = fail
select t1.số di_động from cá_nhân as t1 join ứng_cử_viên as t2 on t1.id cá_nhân = t2.id ứng_cử_viên where t2.mã kết_quả đánh_giá = fail
select id sinh_viên from lượt đăng_ký khoá học của sinh_viên where id khoá học = 301
select id sinh_viên from lượt đăng_ký khoá học của sinh_viên where id khoá học = 301
select id sinh_viên from lần tham_dự khoá học của sinh_viên where khoá học = 301 order by ngày tham_dự desc limit 1
select id sinh_viên from lần tham_dự khoá học của sinh_viên where khoá học = 301 order by ngày tham_dự desc limit 1
select distinct t3.thành_phố from địa_chỉ cá_nhân as t1 join cá_nhân as t2 on t1.id cá_nhân = t2.id cá_nhân join địa_chỉ as t3 on t1.id địa_chỉ = t3.id địa_chỉ
select distinct thành_phố from địa_chỉ
select distinct t3.thành_phố from địa_chỉ cá_nhân as t1 join cá_nhân as t2 on t1.id cá_nhân = t2.id cá_nhân join địa_chỉ as t3 on t1.id địa_chỉ = t3.id địa_chỉ
select distinct t3.thành_phố from địa_chỉ as t1 join địa_chỉ cá_nhân as t2 on t1.id địa_chỉ = t2.id địa_chỉ join cá_nhân as t3 on t2.id cá_nhân = t3.id cá_nhân where t3.tên ! = stuart
select tên khoá học from khoá học order by tên khoá học
select tên khoá học from khoá học order by tên khoá học
select tên from cá_nhân order by tên
select tên from cá_nhân order by tên
select id sinh_viên from lượt đăng_ký khoá học của sinh_viên union select id sinh_viên from lần tham_dự khoá học của sinh_viên
select id sinh_viên from lượt đăng_ký khoá học của sinh_viên union select id sinh_viên from lần tham_dự khoá học của sinh_viên
select id khoá học from lượt đăng_ký khoá học của sinh_viên where id sinh_viên = 121 union select id khoá học from lần tham_dự khoá học của sinh_viên where id sinh_viên = 121
select id khoá học from lượt đăng_ký khoá học của sinh_viên where id sinh_viên = 121 union select id khoá học from lần tham_dự khoá học của sinh_viên where id sinh_viên = 121
select * from lượt đăng_ký khoá học của sinh_viên where id sinh_viên not in (select id sinh_viên from lần tham_dự khoá học của sinh_viên)
select chi_tiết sinh_viên from sinh_viên where id sinh_viên not in (select id sinh_viên from lượt đăng_ký khoá học của sinh_viên)
select id sinh_viên from lượt đăng_ký khoá học của sinh_viên where id khoá học = (select id khoá học from khoá học where tên khoá học = statistics) order by ngày đăng_kí
select id sinh_viên from lượt đăng_ký khoá học của sinh_viên as t1 join khoá học as t2 on t1.id khoá học = t2.id khoá học where t2.tên khoá học = statistics order by ngày đăng_kí
select t1.id sinh_viên from lần tham_dự khoá học của sinh_viên as t1 join khoá học as t2 on t1.id khoá học = t2.id khoá học where t2.tên khoá học = statistics order by t1.ngày tham_dự
select t1.id sinh_viên from lượt đăng_ký khoá học của sinh_viên as t1 join lần tham_dự khoá học của sinh_viên as t2 on t1.id sinh_viên = t2.id sinh_viên join khoá học as t3 on t1.id khoá học = t3.id khoá học where t3.tên khoá học = statistics order by t2.ngày tham_dự
select count (*) from lượt nộp bài
select count (*) from lượt nộp bài
select tác_giả from lượt nộp bài order by số điểm asc
select tác_giả from lượt nộp bài order by số điểm asc
select tác_giả , trường đại_học from lượt nộp bài
select tác_giả , trường đại_học from lượt nộp bài
select tác_giả from lượt nộp bài where trường đại_học = florida or trường đại_học = temple
select tác_giả from lượt nộp bài where trường đại_học = florida or trường đại_học = temple
select avg (số điểm) from lượt nộp bài
select avg (số điểm) from lượt nộp bài
select tác_giả from lượt nộp bài order by số điểm desc limit 1
select tác_giả from lượt nộp bài order by số điểm desc limit 1
select trường đại_học , count (*) from lượt nộp bài group by trường đại_học
select trường đại_học , count (*) from lượt nộp bài group by trường đại_học
select trường đại_học from lượt nộp bài group by trường đại_học order by count (*) desc limit 1
select trường đại_học from lượt nộp bài group by trường đại_học order by count (*) desc limit 1
select trường đại_học from lượt nộp bài where số điểm > 90 intersect select trường đại_học from lượt nộp bài where số điểm < 80
select trường đại_học from lượt nộp bài where số điểm > 90 intersect select trường đại_học from lượt nộp bài where số điểm < 80
select t1.tác_giả , t2.kết_quả from lượt nộp bài as t1 join chấp_thuận as t2 on t1.id lượt nộp bài = t2.id lượt nộp bài
select t1.tác_giả , t2.kết_quả from lượt nộp bài as t1 join chấp_thuận as t2 on t1.id lượt nộp bài = t2.id lượt nộp bài
select t2.kết_quả from lượt nộp bài as t1 join chấp_thuận as t2 on t1.id lượt nộp bài = t2.id lượt nộp bài order by t1.số điểm desc limit 1
select t1.kết_quả from chấp_thuận as t1 join lượt nộp bài as t2 on t1.id lượt nộp bài = t2.id lượt nộp bài order by t2.số điểm desc limit 1
select t1.tác_giả , count (*) from lượt nộp bài as t1 join chấp_thuận as t2 on t1.id lượt nộp bài = t2.id lượt nộp bài group by t1.tác_giả
select t1.tác_giả , count (*) from lượt nộp bài as t1 join chấp_thuận as t2 on t1.id lượt nộp bài = t2.id lượt nộp bài group by t1.tác_giả
select t1.tác_giả from lượt nộp bài as t1 join chấp_thuận as t2 on t1.id lượt nộp bài = t2.id lượt nộp bài group by t1.tác_giả having count (*) > 1
select t1.tác_giả from lượt nộp bài as t1 join chấp_thuận as t2 on t1.id lượt nộp bài = t2.id lượt nộp bài group by t1.tác_giả having count (*) >= 2
select ngày , địa_điểm from hội_thảo order by địa_điểm
select ngày , địa_điểm from hội_thảo order by địa_điểm
select tác_giả from lượt nộp bài where tác_giả not in (select tác_giả from chấp_thuận)
select tác_giả from lượt nộp bài where id lượt nộp bài not in (select t1.tác_giả from lượt nộp bài as t1 join chấp_thuận as t2 on t1.id lượt nộp bài = t2.id lượt nộp bài join hội_thảo as t3 on t2.id hội_thảo = t3.id hội_thảo)
select t1.tên from doanh_nghiệp as t1 join đánh_giá as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t2.đánh_giá xếp_hạng > 4.5
select tên from doanh_nghiệp where đánh_giá xếp_hạng = 3.5
select id người tiêu_dùng from người tiêu_dùng where tên = michelle
select tiểu_bang from doanh_nghiệp where tên = whataburger
select t1.thành_phố from doanh_nghiệp as t1 join loại_hình as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t2.tên loại_hình = restaurant and t1.tên = mgm grand restaurant
select thành_phố from doanh_nghiệp where đánh_giá xếp_hạng < 1.5
select thành_phố from doanh_nghiệp where tên = taj mahal
select văn_bản from đánh_giá where đánh_giá xếp_hạng < 1
select t1.tên from doanh_nghiệp as t1 join loại_hình as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t2.tên loại_hình = restaurant and t1.đánh_giá xếp_hạng > 3.5
select distinct thành_phố from doanh_nghiệp where tên = taj mahal
select distinct t3.văn_bản from đánh_giá as t3 join người tiêu_dùng as t2 on t3.id người tiêu_dùng = t2.id người tiêu_dùng join đánh_giá as t1 on t3.id doanh_nghiệp = t1.id doanh_nghiệp where t2.tên = niloofar
select t1.tên from doanh_nghiệp as t1 join đánh_giá as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join người tiêu_dùng as t3 on t2.id người tiêu_dùng = t3.id người tiêu_dùng where t3.tên = niloofar
select t1.tên from doanh_nghiệp as t1 join đánh_giá as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join người tiêu_dùng as t3 on t2.id người tiêu_dùng = t3.id người tiêu_dùng where t3.tên = niloofar and t2.đánh_giá xếp_hạng = 5
select t3.văn_bản from doanh_nghiệp as t1 join loại_hình as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join đánh_giá as t3 on t1.id doanh_nghiệp = t3.id doanh_nghiệp join khu_vực lân_cận as t4 on t4.id doanh_nghiệp = t1.id doanh_nghiệp join người tiêu_dùng as t5 on t5.id người tiêu_dùng = t3.id người tiêu_dùng where t5.tên = michelle and t2.tên loại_hình = italian restaurant
select t1.đánh_giá xếp_hạng from đánh_giá as t1 join doanh_nghiệp as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t2.tên = cafe zinho and t2.tiểu_bang = texas
select t1.tên from doanh_nghiệp as t1 join loại_hình as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join đánh_giá as t3 on t1.id doanh_nghiệp = t3.id doanh_nghiệp where t2.tên loại_hình = restaurant and t3.đánh_giá xếp_hạng = 5
select t1.tên khu_phố lân_cận from khu_vực lân_cận as t1 join doanh_nghiệp as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t2.tên = italian restaurant and t2.tiểu_bang = madison
select t1.tên khu_phố lân_cận from khu_vực lân_cận as t1 join doanh_nghiệp as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t2.đánh_giá xếp_hạng < 2.5 and t2.tiểu_bang = madison and t2.tên = italian restaurant
select t1.tên from doanh_nghiệp as t1 join loại_hình as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t2.tên loại_hình = restaurant and t1.tiểu_bang = pennsylvania
select t1.tên from doanh_nghiệp as t1 join loại_hình as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t2.tên loại_hình = restaurant and t1.tiểu_bang = pennsylvania
select t1.văn_bản from đánh_giá as t1 join loại_hình as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t2.tên loại_hình = pet grooming intersect select t1.văn_bản from đánh_giá as t1 join loại_hình as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t2.tên loại_hình = pet sitting intersect select t1.văn_bản from đánh_giá as t1 join loại_hình as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t2.tên loại_hình = pet walking intersect select t1.văn_bản from đánh_giá as t1 join loại_hình as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t2.tên loại_hình = pet bài tập intersect select t1.văn_bản from đánh_giá as t1 join loại_hình as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t2.tên loại_hình = pet phẫu thuật
select t1.tên from doanh_nghiệp as t1 join loại_hình as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t1.thành_phố = los angeles and t2.tên loại_hình = brewery
select t1.tên from doanh_nghiệp as t1 join loại_hình as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t1.thành_phố = los angeles
select t1.tên from doanh_nghiệp as t1 join loại_hình as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t1.thành_phố = los angeles
select t1.tên from người tiêu_dùng as t1 join đánh_giá as t2 on t1.id người tiêu_dùng = t2.id người tiêu_dùng where t2.văn_bản like %mesa grill%
select địa_chỉ đầy_đủ from doanh_nghiệp where tên = walmart and thành_phố = los angeles
select distinct t1.tên from doanh_nghiệp as t1 join loại_hình as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join đánh_giá as t3 on t1.id doanh_nghiệp = t3.id doanh_nghiệp join người tiêu_dùng as t4 on t3.id người tiêu_dùng = t4.id người tiêu_dùng where t4.tên = patrick and t2.tên loại_hình = restaurant and t1.thành_phố = dallas
select t3.tên from đánh_giá as t1 join doanh_nghiệp as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join người tiêu_dùng as t3 on t1.id người tiêu_dùng = t3.id người tiêu_dùng where t2.thành_phố = dallas and t3.tên = patrick
select distinct t1.tên from doanh_nghiệp as t1 join loại_hình as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join đánh_giá as t3 on t1.id doanh_nghiệp = t3.id doanh_nghiệp join người tiêu_dùng as t4 on t3.id người tiêu_dùng = t4.id người tiêu_dùng where t4.tên = patrick and t2.tên loại_hình = bar
select distinct t3.tên from đánh_giá as t1 join doanh_nghiệp as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join loại_hình as t3 on t3.id doanh_nghiệp = t2.id doanh_nghiệp where t1.đánh_giá xếp_hạng >= 3 and t1.id người tiêu_dùng = patrick
select t1.tên from người tiêu_dùng as t1 join khoản tiền boa as t2 on t1.id người tiêu_dùng = t2.id người tiêu_dùng join doanh_nghiệp as t3 on t2.id doanh_nghiệp = t3.id doanh_nghiệp where t3.tên = barrio cafe and t2.năm = 2015
select tên from doanh_nghiệp where tiểu_bang = texas and đánh_giá xếp_hạng < 2
select t1.tên from doanh_nghiệp as t1 join loại_hình as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t2.tên loại_hình = seafood and t1.thành_phố = los angeles
select t1.tên from doanh_nghiệp as t1 join loại_hình as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t2.tên loại_hình = seafood and t1.thành_phố = los angeles
select t1.tên from doanh_nghiệp as t1 join loại_hình as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join khu_vực lân_cận as t3 on t1.id doanh_nghiệp = t3.id doanh_nghiệp where t2.tên loại_hình = seafood and t3.tên khu_phố lân_cận = los angeles
select t2.văn_bản from người tiêu_dùng as t1 join đánh_giá as t2 on t1.id người tiêu_dùng = t2.id người tiêu_dùng where t1.tên = patrick and t2.đánh_giá xếp_hạng > 4
select tên from doanh_nghiệp where tên = apple store and thành_phố = los angeles
select distinct t1.tên from doanh_nghiệp as t1 join loại_hình as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t2.tên loại_hình = restaurant and t1.xếp_hạng > 4.5 and t1.thành_phố = dallas
select t1.tên khu_phố lân_cận from khu_vực lân_cận as t1 join doanh_nghiệp as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t2.tên = flat top grill
select t1.văn_bản from khoản tiền boa as t1 join doanh_nghiệp as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t2.tên = vintner grill and t1.số lượt thích > 9
select t1.văn_bản from đánh_giá as t1 join doanh_nghiệp as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t2.tên = kabob palace and t1.năm = 2014
select t1.tên from người tiêu_dùng as t1 join khoản tiền boa as t2 on t1.id người tiêu_dùng = t2.id người tiêu_dùng join doanh_nghiệp as t3 on t2.id doanh_nghiệp = t3.id doanh_nghiệp where t3.thành_phố = dallas
select thành_phố from doanh_nghiệp where tiểu_bang = texas and tên = mgm grand restaurant
select t1.tên from người tiêu_dùng as t1 join khoản tiền boa as t2 on t1.id người tiêu_dùng = t2.id người tiêu_dùng join doanh_nghiệp as t3 on t2.id doanh_nghiệp = t3.id doanh_nghiệp where t3.tên = pet grooming
select t1.văn_bản from đánh_giá as t1 join khu_vực lân_cận as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join loại_hình as t3 on t3.id = t2.id where t3.tên loại_hình = restaurant and t2.tên khu_phố lân_cận = cafe_zinho and t1.đánh_giá xếp_hạng = 5 and t1.tiểu_bang = texas
select t1.tên from người tiêu_dùng as t1 join đánh_giá as t2 on t1.id người tiêu_dùng = t2.id người tiêu_dùng join loại_hình as t3 on t2.id doanh_nghiệp = t3.id doanh_nghiệp where t3.tên loại_hình = restaurant
select t1.văn_bản from đánh_giá as t1 join khoản tiền boa as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join loại_hình as t3 on t3.id doanh_nghiệp = t2.id doanh_nghiệp join doanh_nghiệp as t4 on t4.id doanh_nghiệp = t2.id doanh_nghiệp where t4.tên = cafe zinho and t3.tên loại_hình = restaurant and t2.năm = 2010
select t1.tên from người tiêu_dùng as t1 join đánh_giá as t2 on t1.id người tiêu_dùng = t2.id người tiêu_dùng where t2.năm = 2010
select t1.văn_bản from đánh_giá as t1 join khoản tiền boa as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t2.năm = 2012
select văn_bản from đánh_giá where đánh_giá xếp_hạng = 2.5
select count (*) from doanh_nghiệp as t1 join loại_hình as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t1.thành_phố = madison and t2.tên loại_hình = escape room
select count (*) from doanh_nghiệp as t1 join loại_hình as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t1.thành_phố = madison and t2.tên loại_hình = escape room
select count (*) from doanh_nghiệp as t1 join loại_hình as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t1.thành_phố = madison and t2.tên loại_hình = escape room
select count (*) from doanh_nghiệp as t1 join loại_hình as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t2.tên loại_hình = escape room and t1.thành_phố = madison
select count (*) from doanh_nghiệp as t1 join loại_hình as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t2.tên loại_hình = escape room and t1.thành_phố = madison
select count (*) from đánh_giá where đánh_giá xếp_hạng > 3.5
select sum (t2.số_lượng) from doanh_nghiệp as t1 join lượt đăng_ký as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join loại_hình as t3 on t3.id doanh_nghiệp = t1.id doanh_nghiệp where t1.thành_phố = los angeles and t3.tên loại_hình = restaurant and t1.tiểu_bang = california
select sum (t1.số_lượng) from lượt đăng_ký as t1 join doanh_nghiệp as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join loại_hình as t3 on t2.id doanh_nghiệp = t3.id doanh_nghiệp join khu_vực lân_cận as t4 on t2.id doanh_nghiệp = t4.id doanh_nghiệp where t3.tên loại_hình = restaurant and t2.thành_phố = los angeles and t4.tên khu_phố lân_cận = mexico and t1.ngày = friday
select sum (t1.số_lượng) , t2.ngày from lượt đăng_ký as t1 join doanh_nghiệp as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t2.tên = maroccos and t2.thành_phố = los angeles
select sum (t1.số_lượng) , t3.tiểu_bang from lượt đăng_ký as t1 join doanh_nghiệp as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join loại_hình as t3 on t2.id doanh_nghiệp = t3.id doanh_nghiệp where t3.tên loại_hình = italian delis and t1.ngày = sunday group by t3.tiểu_bang
select count (*) from đánh_giá as t1 join người tiêu_dùng as t2 on t1.id người tiêu_dùng = t2.id người tiêu_dùng where t2.tên = niloofar and t1.năm = 2015
select avg (t3.đánh_giá xếp_hạng) from người tiêu_dùng as t1 join đánh_giá as t3 on t1.id người tiêu_dùng = t3.id người tiêu_dùng where t1.tên = michelle
select t1.số_lượng from lượt đăng_ký as t1 join doanh_nghiệp as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t2.tên = cafe_zinho and t1.ngày = friday
select count (*) from người tiêu_dùng as t1 join đánh_giá as t2 on t1.id người tiêu_dùng = t2.id người tiêu_dùng where t2.id doanh_nghiệp in (select t1.id doanh_nghiệp from doanh_nghiệp as t1 join loại_hình as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t2.tên loại_hình = restaurant and t1.tên = sushi too and t1.tiểu_bang = pittsburgh)
select count (*) from doanh_nghiệp where tiểu_bang = pa and đánh_giá xếp_hạng > 4.5
select count (*) from khoản tiền boa where năm = 2015
select sum (t1.số lượt thích) from khoản tiền boa as t1 join đánh_giá as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join người tiêu_dùng as t3 on t1.id người tiêu_dùng = t3.id người tiêu_dùng where t3.tên = niloofar
select sum (t1.số lượt thích) from khoản tiền boa as t1 join doanh_nghiệp as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t2.tên = cafe_zinho
select sum (t1.số lượt thích) from khoản tiền boa as t1 join đánh_giá as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join người tiêu_dùng as t3 on t1.id người tiêu_dùng = t3.id người tiêu_dùng where t3.tên = niloofar and t2.id doanh_nghiệp = cafe_zinho
select count (*) from đánh_giá as t1 join khoản tiền boa as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join người tiêu_dùng as t3 on t1.id người tiêu_dùng = t3.id người tiêu_dùng where t3.tên = michelle and t2.năm = 2010
select count (*) from khoản tiền boa as t1 join đánh_giá as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join người tiêu_dùng as t3 on t2.id người tiêu_dùng = t3.id người tiêu_dùng where t3.tên = michelle and t2.năm = 2010
select count (*) from đánh_giá as t1 join khoản tiền boa as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join người tiêu_dùng as t3 on t1.id người tiêu_dùng = t3.id người tiêu_dùng where t3.tên = michelle and t2.tháng = april
select count (*) from doanh_nghiệp where tiểu_bang = texas
select count (*) from doanh_nghiệp as t1 join loại_hình as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t2.tên loại_hình = bar and t1.thành_phố = dallas and t1.đánh_giá xếp_hạng > 3.5
select count (*) from doanh_nghiệp as t1 join loại_hình as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join đánh_giá as t3 on t1.id doanh_nghiệp = t3.id doanh_nghiệp where t2.tên loại_hình = bar and t3.đánh_giá xếp_hạng > 3.5 and t1.thành_phố = dallas
select count (distinct t1.id người tiêu_dùng) from đánh_giá as t1 join loại_hình as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join doanh_nghiệp as t3 on t1.id doanh_nghiệp = t3.id doanh_nghiệp where t3.tên = texas de brazil and t2.tên loại_hình = restaurant
select count (distinct t1.id người tiêu_dùng) from đánh_giá as t1 join loại_hình as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join doanh_nghiệp as t3 on t1.id doanh_nghiệp = t3.id doanh_nghiệp where t3.tên = bistro di napoli and t1.năm = 2015
select count (*) from doanh_nghiệp where tiểu_bang = texas and thành_phố = dallas and tên like %hazelwood%
select count (*) from doanh_nghiệp where tiểu_bang = texas and tên = starbucks
select số_lượng đánh_giá from doanh_nghiệp where tên = acacia cafe
select avg (t1.số_lượng) from lượt đăng_ký as t1 join doanh_nghiệp as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t2.tên = barrio cafe
select
select count (*) from đánh_giá as t1 join người tiêu_dùng as t2 on t1.id người tiêu_dùng = t2.id người tiêu_dùng where t2.tên = adrienne
select count (*) from đánh_giá as t1 join người tiêu_dùng as t2 on t1.id người tiêu_dùng = t2.id người tiêu_dùng where t2.tên = michelle and t1.năm = 2014 and t1.tháng = march
select count (distinct t3.id doanh_nghiệp) from đánh_giá as t1 join người tiêu_dùng as t2 on t1.id người tiêu_dùng = t2.id người tiêu_dùng join doanh_nghiệp as t3 on t1.id doanh_nghiệp = t3.id doanh_nghiệp where t2.tên = michelle and t1.năm = 2010
select count (distinct t1.tên) from doanh_nghiệp as t1 join đánh_giá as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join người tiêu_dùng as t3 on t2.id người tiêu_dùng = t3.id người tiêu_dùng where t3.tên = christine and t2.năm = 2010 and t1.thành_phố = san diego
select count (*) from doanh_nghiệp where tên = target and thành_phố = los angeles
select count (distinct t1.id người tiêu_dùng) from đánh_giá as t1 join loại_hình as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join người tiêu_dùng as t3 on t1.id người tiêu_dùng = t3.id người tiêu_dùng where t2.tên loại_hình = wine bar and t3.tên = dallas
select avg (đánh_giá xếp_hạng) from đánh_giá where năm = 2014
select count (*) from đánh_giá as t1 join người tiêu_dùng as t2 on t1.id người tiêu_dùng = t2.id người tiêu_dùng where t2.tên = sam wonslow and t1.năm = 2010
select t1.số_lượng đánh_giá from doanh_nghiệp as t1 join khu_vực lân_cận as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t2.tên khu_phố lân_cận = south summmerlin
select count (*) from người tiêu_dùng where tên = michelle
select count (*) from loại_hình as t1 join doanh_nghiệp as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t1.tên loại_hình = restaurant
select count (*) from doanh_nghiệp where tên = pandaexpress
select count (*) from khoản tiền boa as t1 join đánh_giá as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join người tiêu_dùng as t3 on t2.id người tiêu_dùng = t3.id người tiêu_dùng where t3.tên = michelle
select sum (t2.số_lượng) from khu_vực lân_cận as t1 join lượt đăng_ký as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t1.tên khu_phố lân_cận = brighton heights
select count (*) from đánh_giá where tháng = march
select count (*) , tháng from khoản tiền boa group by tháng
select count (*) from khu_vực lân_cận as t1 join doanh_nghiệp as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t2.đánh_giá xếp_hạng = 5 and t2.thành_phố = madison
select t1.tên from doanh_nghiệp as t1 join loại_hình as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join khu_vực lân_cận as t3 on t1.id doanh_nghiệp = t3.id doanh_nghiệp where t2.tên loại_hình = restaurant and t3.tên khu_phố lân_cận = mexico and t1.tiểu_bang = texas
select t1.tên from doanh_nghiệp as t1 join lượt đăng_ký as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp group by t1.id doanh_nghiệp order by sum (t2.số_lượng) desc limit 1
select t1.tên khu_phố lân_cận from khu_vực lân_cận as t1 join doanh_nghiệp as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t2.thành_phố = madison group by t1.tên khu_phố lân_cận order by count (*) desc limit 1
select t1.tên from doanh_nghiệp as t1 join loại_hình as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join đánh_giá as t3 on t1.id doanh_nghiệp = t3.id doanh_nghiệp where t2.tên loại_hình = restaurant and t3.đánh_giá xếp_hạng >= 3.5 and t1.thành_phố = dallas and t1.tiểu_bang = mexico
select t1.tên from doanh_nghiệp as t1 join loại_hình as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join khu_vực lân_cận as t3 on t1.id doanh_nghiệp = t3.id doanh_nghiệp where t2.tên loại_hình = mexican and t1.đánh_giá xếp_hạng >= 3.5 and t3.tên khu_phố lân_cận = dallas
select t1.tên from doanh_nghiệp as t1 join loại_hình as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t2.tên loại_hình = parking services and t1.thành_phố = dallas and t1.tiểu_bang = texas
select t1.tên from doanh_nghiệp as t1 join khu_vực lân_cận as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp join loại_hình as t3 on t3.id doanh_nghiệp = t1.id doanh_nghiệp where t2.tên khu_phố lân_cận = meadowood and t3.tên loại_hình = restaurant and t1.tiểu_bang = madison
select t1.tên from doanh_nghiệp as t1 join loại_hình as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t2.tên loại_hình = bar and t1.số_lượng đánh_giá >= 30 and t1.đánh_giá xếp_hạng >= 3
select count (*) from doanh_nghiệp as t1 join loại_hình as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t1.tên = edinburgh and t2.tên loại_hình = arabic
select t1.tên from người tiêu_dùng as t1 join đánh_giá as t2 on t1.id người tiêu_dùng = t2.id người tiêu_dùng group by t1.id người tiêu_dùng having avg (t2.đánh_giá xếp_hạng) < 3
select t1.tên from doanh_nghiệp as t1 join đánh_giá as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp where t2.tháng = april group by t2.id doanh_nghiệp order by count (*) desc limit 1
select t1.tên from doanh_nghiệp as t1 join loại_hình as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp group by t1.tên order by count (*) desc limit 1