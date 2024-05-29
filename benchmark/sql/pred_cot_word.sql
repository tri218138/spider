select t1."id tài_sản", t1."chi_tiết tài_sản"  from "tài_sản" as t1  join "bộ_phận của tài_sản" as t2 on t1."id tài_sản" = t2."id tài_sản"  join "nhật_ký lỗi" as t3 on t1."id tài_sản" = t3."id tài_sản"  group by t1."id tài_sản"  having count(*) = 2 and count(*) < 2
select t1."id hợp_đồng bảo_trì", count(*)  from "tài_sản" as t1  join "hợp_đồng bảo_trì" as t2 on t1."id hợp_đồng bảo_trì" = t2."id hợp_đồng bảo_trì"  group by t1."id hợp_đồng bảo_trì"
select count(*), "id công_ty" from "công_ty bên thứ ba" as t1 join "tài_sản" as t2 on t1."id công_ty" = t2."id công_ty cung_cấp" group by t1."id công_ty"
select t1."tên công_ty", t1."id công_ty"  from "công_ty bên thứ ba" as t1  join "kỹ_sư bảo_trì" as t2 on t1."id công_ty" = t2."id công_ty"  group by t1."id công_ty"  having count(*) >= 2
select t1.tên nhân_viên, t1.id nhân_viên  from nhân_viên as t1  join nhật_ký lỗi as t2 on t1.id nhân_viên = t2.được ghi lại bởi nhân_viên có id  except  select t3.tên nhân_viên, t3.id nhân_viên  from nhân_viên as t3  join chuyến thăm của kỹ_sư as t4 on t3.id nhân_viên = t4.id kỹ_sư ghé thăm
select t1.id kỹ_sư ghé thăm , t2.tên , t2.họ  from chuyến thăm của kỹ_sư as t1  join nhân_viên as t2  on t1.id nhân_viên liên_lạc = t2.id nhân_viên  group by t1.id kỹ_sư ghé thăm  order by count ( * ) desc  limit 1
select t1."id bộ_phận", t1."tên bộ_phận"  from "lỗi bộ_phận" as t2  join "bộ_phận" as t1 on t2."id bộ_phận bị lỗi" = t1."id bộ_phận"  group by t1."id bộ_phận"  having count(*) > 2
select t1.tên , t1.họ , t1.chi_tiết khác về kỹ_sư , t2.mô_tả về kỹ_năng  from kỹ_sư bảo_trì as t1  join kỹ_năng as t2  on t1.id kỹ_sư = t2.id kỹ_sư
select t1.tên viết tắt của lỗi, t2.mô_tả về kỹ_năng  from lỗi bộ_phận as t1  join kỹ_năng cần để sửa_chữa as t2  on t1.id bộ_phận bị lỗi = t2.id bộ_phận bị lỗi
select t1."tên bộ_phận", count(*)  from "bộ_phận" as t1  join "bộ_phận của tài_sản" as t2  on t1."id bộ_phận" = t2."id bộ_phận"  group by t1."id bộ_phận"
select mô_tả về lỗi , tình_trạng lỗi from nhật_ký lỗi
select t1."id mục nhập của nhật_ký lỗi", count(*)  from "nhật_ký lỗi" as t1  join "chuyến thăm của kỹ_sư" as t2  on t1."id mục nhập của nhật_ký lỗi" = t2."id mục nhập của nhật_ký lỗi"  group by t1."id mục nhập của nhật_ký lỗi"  order by count(*) desc  limit 1
select distinct họ from "kỹ_sư bảo_trì"
select distinct tình_trạng lỗi from nhật_ký lỗi
select tên , họ from nhân_viên where id nhân_viên not in ( select id kỹ_sư ghé thăm from chuyến thăm của kỹ_sư )
select id tài_sản , chi_tiết tài_sản , thương_hiệu tài_sản , mẫu_mã tài_sản from tài_sản
select "ngày mua tài_sản" from "tài_sản" order by "ngày mua tài_sản" limit 1
select t1."id bộ_phận bị lỗi", t1."tên viết tắt của lỗi"  from "lỗi bộ_phận" as t1  join "kỹ_năng cần để sửa_chữa" as t2  on t1."id bộ_phận bị lỗi" = t2."id bộ_phận bị lỗi"  group by t1."id bộ_phận bị lỗi"  order by count(*) desc  limit 1
select t1."tên bộ_phận" from "lỗi bộ_phận" as t2 join "bộ_phận" as t1 on t2."id bộ_phận bị lỗi" = t1."id bộ_phận" group by t2."id bộ_phận bị lỗi" order by count(*) asc limit 1
select t1.id kỹ_sư ghé thăm , t2.tên , t2.họ  from chuyến thăm của kỹ_sư as t1  join nhân_viên as t2  on t1.id nhân_viên liên_lạc = t2.id nhân_viên  group by t1.id kỹ_sư ghé thăm  order by count ( * ) desc  limit 1
select t1.tên nhân_viên, t2.tên, t2.họ  from nhân_viên as t1  join kỹ_sư bảo_trì as t2  on t1.id nhân_viên liên_lạc = t2.id công_ty
select t1."id mục nhập của nhật_ký lỗi", t1."mô_tả về lỗi", t1."thời_gian mục nhập của nhật_ký lỗi"  from "nhật_ký lỗi" as t1  join "lỗi bộ_phận" as t2 on t1."id mục nhập của nhật_ký lỗi" = t2."id mục nhập của nhật_ký lỗi"  group by t2."id bộ_phận bị lỗi"  order by count(*) desc  limit 1
select t1."id kỹ_năng", t1."mô_tả về kỹ_năng"  from "kỹ_năng" as t1  join "kỹ_năng cần để sửa_chữa" as t2  on t1."id kỹ_năng" = t2."id kỹ_năng"  group by t1."id kỹ_năng"  order by count(*) desc  limit 1
select distinct mẫu_mã tài_sản from tài_sản
select thương_hiệu tài_sản , mẫu_mã tài_sản , chi_tiết tài_sản from tài_sản order by ngày thanh_lý tài_sản
select "id bộ_phận", "số tiền phải trả" from "bộ_phận" order by "số tiền phải trả" asc limit 1
select t1."tên công_ty" from "công_ty bên thứ ba" as t1  join "hợp_đồng bảo_trì" as t2 on t1."id công_ty" = t2."id công_ty của công_ty"  order by t2."ngày bắt_đầu hợp_đồng"  limit 1
select t1."tên công_ty" from "công_ty bên thứ ba" as t1  join "hợp_đồng bảo_trì" as t2 on t1."id công_ty" = t2."id công_ty"  where t2."ngày kết_thúc hợp_đồng" = (select max("ngày kết_thúc hợp_đồng") from "hợp_đồng bảo_trì")
select giới_tính from nhân_viên group by giới_tính order by count(*) desc limit 1
select t1.tên nhân_viên , count(*) from nhân_viên as t1 join kỹ_sư bảo_trì as t2 on t1.id nhân_viên = t2.id nhân_viên liên_lạc group by t1.tên nhân_viên
select "mẫu_mã tài_sản" from "tài_sản" except select "mẫu_mã tài_sản" from "tài_sản" where "id tài_sản" in (select "id tài_sản" from "nhật_ký lỗi")
select count(*) from sách
select tác_giả from sách order by tác_giả asc
select tiêu_đề from sách order by số_lượng phát_hành asc
select tiêu_đề from sách where tác_giả != "Elaine_Lee"
select tiêu_đề , số_lượng phát_hành from sách
select ngày xuất_bản from ấn_phẩm order by giá bán desc
select distinct nhà_xuất_bản from ấn_phẩm where giá bán > 5000000
select nhà_xuất_bản from ấn_phẩm order by giá bán desc limit 1
select ngày xuất_bản from ấn_phẩm order by giá bán limit 3
select tiêu_đề , ngày xuất_bản from sách
select t1.tác_giả from ấn_phẩm as t2 join sách as t1 on t2."id sách" = t1."id sách" where t2."giá bán" > 4000000
select t1.tiêu_đề from sách as t1 join ấn_phẩm as t2 on t1."id sách" = t2."id sách" order by t2."giá bán" desc
select nhà_xuất_bản from ấn_phẩm group by nhà_xuất_bản having count(*) > 1
select nhà_xuất_bản, count(*) from ấn_phẩm group by nhà_xuất_bản
select "ngày xuất_bản" from "ấn_phẩm" group by "ngày xuất_bản" order by count(*) desc limit 1
select t1.tác_giả from sách as t1 join ấn_phẩm as t2 on t1."id sách" = t2."id sách" group by t1.tác_giả having count(*) > 1
select tiêu_đề from sách except select t1.tiêu_đề from sách as t1 join ấn_phẩm as t2 on t1."id sách" = t2."id sách"
select distinct t1."nhà_xuất_bản" from "ấn_phẩm" as t1 join "sách" as t2 on t1."id sách" = t2."id sách" where t1."giá bán" > 10000000 and t1."giá bán" < 5000000
select count(distinct "ngày xuất_bản") from "ấn_phẩm"
select count(distinct "ngày xuất_bản") from "ấn_phẩm"
select giá bán from ấn_phẩm where nhà_xuất_bản = 'Person' or nhà_xuất_bản = 'Wiley'
select "tên bộ_phận" from "bộ_phận" order by "ngày bắt_đầu quản_lý" asc
select t1.tên người phụ_thuộc  from người phụ_thuộc as t1  join nhân_viên as t2 on t1.ssn của nhân_viên = t2.ssn  where t1.mối quan_hệ = "MẶT_CHÂN"
select count(*) from nhân_viên where giới_tính = "F"
select "tên bộ_phận" from "bộ_phận" where "địa_điểm bộ_phận" = 'Houston'
select tên , họ from nhân_viên where lương > 30000
select giới_tính, count(*) from nhân_viên where lương < 50000 group by giới_tính
select tên , họ , địa_chỉ from nhân_viên order by ngày_sinh
select count(*) from "giáo_viên"
select count(*) from giáo_viên
select t1.tên from giáo_viên as t1 join sắp_xếp khoá học as t2 on t1."id giáo_viên" = t2."id giáo_viên" order by t1."tuổi"
select tên from giáo_viên order by tuổi asc limit 1
select tuổi, quê_quán from giáo_viên
select tuổi, quê_quán from giáo_viên
select tên from giáo_viên where quê_quán <> "Khu đô_thị Little_Lever"
select tên from giáo_viên where quê_quán != "Khu đô_thị Little_Lever"
select tên from giáo_viên where tuổi = 32 or tuổi = 33
select tên from giáo_viên where tuổi = 32 or tuổi = 33
select quê_quán from giáo_viên order by tuổi limit 1
select quê_quán from giáo_viên order by tuổi asc limit 1
select quê_quán, count(*) from giáo_viên group by quê_quán
select quê_quán, count(*) from giáo_viên group by quê_quán
select quê_quán from giáo_viên group by quê_quán order by count(*) desc limit 1
select quê_quán from giáo_viên group by quê_quán order by count(*) desc limit 1
select "quê_quán" from "giáo_viên" group by "quê_quán" having count(*) >= 2
select "quê_quán" from "giáo_viên" group by "quê_quán" having count(*) >= 2
select t1.tên , t2.khoá học  from giáo_viên as t1  join sắp_xếp khoá học as t2  on t1."id giáo_viên" = t2."id giáo_viên"  group by t1.tên
select t1.tên , t2.khoá học  from giáo_viên as t1  join sắp_xếp khoá học as t2  on t1.id giáo_viên = t2.id giáo_viên
select t1.tên , t2.khoá học  from giáo_viên as t1  join sắp_xếp khoá học as t2  on t1."id giáo_viên" = t2."id giáo_viên"  order by t1.tên
select t1.tên , t2.khoá học  from giáo_viên as t1  join sắp_xếp khoá học as t2  on t1."id giáo_viên" = t2."id giáo_viên"  order by t1.tên , t2.khoá học
select t1.tên from giáo_viên as t1 join sắp_xếp khoá học as t2 on t1."id giáo_viên" = t2."id giáo_viên" where t2."khối lớp" = (select "id khoá học" from "khoá học" where "khoá học" = 'Toán')
select t1.tên from giáo_viên as t1 join sắp_xếp khoá học as t2 on t1."id giáo_viên" = t2."id giáo_viên" where t2."id khoá học" in (select "id khoá học" from "khoá học" where "khoá học" = 'Toán')
select t1.tên , count(*)  from giáo_viên as t1  join sắp_xếp khoá học as t2  on t1."id giáo_viên" = t2."id giáo_viên"  group by t1."id giáo_viên"
select t1.tên , count(*)  from giáo_viên as t1  join sắp xếp khoá học as t2  on t1."id giáo_viên" = t2."id giáo_viên"  group by t1."id giáo_viên"
select t1.tên from giáo_viên as t1 join sắp_xếp khoá học as t2 on t1."id giáo_viên" = t2."id giáo_viên" group by t2."id giáo_viên" having count(*) >= 2
select t1.tên from giáo_viên as t1 join sắp_xếp khoá học as t2 on t1."id giáo_viên" = t2."id giáo_viên" group by t1."id giáo_viên" having count(*) >= 2
select tên from giáo_viên except select t2.tên from sắp_xếp khoá học as t1 join giáo_viên as t2 on t1.id giáo_viên = t2.id giáo_viên
select tên from giáo_viên except select t2.tên from sắp_xếp khoá học as t1 join giáo_viên as t2 on t1.id giáo_viên = t2.id giáo_viên
select count(*) from "thành_viên"
select tên from thành_viên order by tên asc
select tên, quốc_gia from thành_viên
select tên from thành_viên where quốc_gia = 'Hoa_Kỳ' or quốc_gia = 'Canada'
select quốc_gia, count(*) from thành_viên group by quốc_gia order by count(*) desc
select distinct quốc_gia from thành_viên group by quốc_gia order by count(*) desc limit 1
select "quốc_gia" from "thành_viên" group by "quốc_gia" having count(*) > 2
select "tên lãnh_đạo", "địa_điểm trường đại_học" from "trường đại_học"
select t1.tên , t2.tên  from thành_viên as t1  join trường đại_học as t2  on t1.id đại_học = t2.id đại_học
select t1.tên , t2.địa_điểm trường đại_học  from thành_viên as t1  join trường đại_học as t2  on t1.id đại_học = t2.id đại_học  order by t1.tên
select t1."tên lãnh_đạo"  from "trường đại_học" as t1  join "thành_viên" as t2 on t1."id đại_học" = t2."id đại_học"  where t2."quốc_gia" = 'Canada'
select t1.tên , t2.chủ_đề trang_trí from thành_viên as t1 join vòng as t2 on t1.id thành_viên = t2.id thành_viên
select t1.tên from thành_viên as t1 join vòng as t2 on t1."id thành_viên" = t2."id thành_viên" where t2."xếp hạng từng vòng" > 3
select tên from thành_viên order by xếp_hạng từng vòng
select tên from thành_viên except select t1.tên from thành_viên as t1 join vòng as t2 on t1."id thành_viên" = t2."id thành_viên"
select count(*) from "cuộc bầu_cử"
select "số_lượng phiếu bầu" from "cuộc bầu_cử" order by "số_lượng phiếu bầu" desc
select ngày , tỉ_lệ phiếu bầu from cuộc bầu_cử
select min("tỉ_lệ phiếu bầu"), max("tỉ_lệ phiếu bầu") from "cuộc bầu_cử"
select tên , đảng from đại_diện
select tên from đại_diện where đảng != "Republican"
select tuổi_thọ from đại_diện where tiểu_bang = "New_York" or tiểu_bang = "Indiana"
select t1.tên , t2.ngày  from đại_diện as t1  join cuộc bầu_cử as t2  on t1.id đại_diện = t2.id đại_diện
select t1.tên from đại_diện as t1 join cuộc bầu_cử as t2 on t1."id đại_diện" = t2."id đại_diện" where t2."số lượng phiếu bầu" > 10000
select t1.tên from đại_diện as t1 join cuộc bầu_cử as t2 on t1."id đại_diện" = t2."id đại_diện" order by t2."số_lượng phiếu bầu" desc
select t2.đảng from cuộc bầu_cử as t1 join đại_diện as t2 on t1.id đại_diện = t2.id đại_diện order by t1.số_lượng phiếu bầu desc limit 1
select tuổi_thọ from đại_diện order by tỷ_lệ phiếu bầu desc
select avg("số phiếu bầu") from "cuộc bầu_cử" where "đảng" = 'Republican'
select đảng, count(*) from đại_diện group by đảng
select t2.đảng from đại_diện as t2 join cuộc bầu_cử as t1 on t2."id đại_diện" = t1."id đại_diện" group by t2."id đại_diện" order by count(*) desc limit 1
select đảng from đại_diện group by đảng having count(*) >= 3
select tiểu_bang from đại_diện group by tiểu_bang having count(*) >= 2
select tên from đại_diện except select t2.tên from cuộc bầu_cử as t1 join đại_diện as t2 on t1.id đại_diện = t2.id đại_diện
select t2.đảng from đại_diện as t1 join cuộc bầu_cử as t2 on t1."id đại_diện" = t2."id đại_diện" where t1."tiểu_bang" = 'New_York' intersect select t2.đảng from đại_diện as t1 join cuộc bầu_cử as t2 on t1."id đại_diện" = t2."id đại_diện" where t1."tiểu_bang" = 'Pennsylvania'
select count(distinct đảng) from đại_diện
select count(*) from "quốc_gia"
select count(*) from "quốc_gia"
select "tên quốc_gia", "thủ_đô" from "quốc_gia"
select "tên quốc_gia", "thủ_đô" from "quốc_gia"
select "ngôn_ngữ bản_địa chính_thức" from "quốc_gia" where "ngôn_ngữ bản_địa chính_thức" like "%English%"
select distinct "ngôn_ngữ bản_địa chính_thức" from "quốc_gia" where "ngôn_ngữ bản_địa chính_thức" like "%English%"
select distinct vị_trí from trận đấu trong mùa giải
select distinct vị_trí from trận đấu trong mùa giải
select t1."cầu_thủ"  from "cầu_thủ" as t1  join "trận đấu trong mùa giải" as t2  on t1."id cầu_thủ" = t2."id cầu_thủ"  where t2."trường đại_học" = 'UCLA'
select t1.cầu_thủ from cầu_thủ as t1 join trận đấu trong mùa giải as t2 on t1.id cầu_thủ = t2.id cầu_thủ where t2.đội = (select id đội from đội where tên = "UCLA")
select distinct vị_trí from trận đấu trong mùa giải where trường đại_học = "UCLA" or trường đại_học = "Duke"
select distinct t2."vị_trí"  from "trận đấu trong mùa giải" as t1  join "cầu_thủ" as t2 on t1."cầu_thủ" = t2."id cầu_thủ"  where t1."trường đại_học" = 'UCLA' or t1."trường đại_học" = 'Duke'
select "mã_số tuyển_chọn tân_binh", "mùa tuyển_chọn" from "trận đấu trong mùa giải" where "vị_trí" = 'hậu_vệ'
select "mã_số tuyển_chọn tân_binh", "mùa tuyển_chọn"  from "trận đấu trong mùa giải"  where "vị_trí" = 'hậu_vệ'
select count(distinct "id đội") from "đội"
select count ( distinct t1."id đội") from "đội" as t1 join "trận đấu trong mùa giải" as t2 on t1."id đội" = t2."đội"
select cầu_thủ, số năm đã chơi from cầu_thủ
select distinct cầu_thủ, số năm đã chơi from cầu_thủ
select tên from đội
select tên from đội
select t1."mùa giải", t2."cầu_thủ", t3."tên quốc_gia"  from "trận đấu trong mùa giải" as t1  join "cầu_thủ" as t2 on t1."cầu_thủ" = t2."id cầu_thủ"  join "quốc_gia" as t3 on t1."quốc_gia" = t3."id quốc_gia"
select t1.cầu_thủ, t2.mùa giải, t3.tên quốc_gia  from cầu_thủ as t1  join trận đấu trong mùa giải as t2 on t1.id cầu_thủ = t2.id cầu_thủ  join quốc_gia as t3 on t2.quốc_gia = t3.id quốc_gia
select t1.cầu_thủ from cầu_thủ as t1 join quốc_gia as t2 on t1."id quốc_gia" = t2."id quốc_gia" where t2."tên quốc_gia" = 'Indonesia'
select t1."cầu_thủ" from "cầu_thủ" as t1 join "quốc_gia" as t2 on t1."id quốc_gia" = t2."id quốc_gia" where t2."tên quốc_gia" = 'Indonesia'
select distinct t2."vị_trí"  from "quốc_gia" as t1  join "trận đấu trong mùa giải" as t2  on t1."id quốc_gia" = t2."quốc_gia"  where t1."thủ_đô" = 'Dublin'
select distinct t2."vị_trí"  from "quốc_gia" as t1  join "trận đấu trong mùa giải" as t2  on t1."id quốc_gia" = t2."quốc_gia"  where t1."thủ_đô" = 'Dublin'
select t1."ngôn_ngữ bản_địa chính_thức"  from "quốc_gia" as t1  join "trận đấu trong mùa giải" as t2 on t1."id quốc_gia" = t2."quốc_gia"  join "cầu_thủ" as t3 on t2."đội" = t3."id đội"  where t3."trường đại_học" = 'Maryland' or t3."trường đại_học" = 'Duke'
select t1."ngôn_ngữ bản_địa chính_thức"  from "quốc_gia" as t1  join "trận đấu trong mùa giải" as t2  on t1."id quốc_gia" = t2."quốc_gia"  where t2."trường đại_học" = 'Maryland' or t2."trường đại_học" = 'Duke'
select count(distinct t1."ngôn_ngữ bản_địa chính_thức")  from "quốc_gia" as t1  join "trận đấu trong mùa giải" as t2  on t1."id quốc_gia" = t2."quốc_gia"  where t2."vị_trí" = 'hậu_vệ'
select count(t1."ngôn_ngữ bản_địa chính_thức")  from "quốc_gia" as t1  join "trận đấu trong mùa giải" as t2  on t1."id quốc_gia" = t2."quốc_gia"  where t2."vị_trí" = 'hậu_vệ'
select t1."mùa giải", t2."cầu_thủ", t3."tên"  from "trận đấu trong mùa giải" as t1  join "cầu_thủ" as t2 on t1."cầu_thủ" = t2."id cầu_thủ"  join "đội" as t3 on t1."đội" = t3."id đội"  group by t3."tên"
select t1.cầu_thủ, t2.mùa giải, t2.đội  from cầu_thủ as t1  join trận đấu trong mùa giải as t2  on t1.id cầu_thủ = t2.id cầu_thủ  group by t1.cầu_thủ, t2.mùa giải
select t2.vị_trí from trận đấu trong mùa giải as t1 join cầu_thủ as t2 on t1.cầu_thủ = t2.id cầu_thủ join đội as t3 on t3.id đội = t1.đội where t3.tên = 'Ryley_Goldner'
select t2."vị_trí"  from "cầu_thủ" as t1  join "trận đấu trong mùa giải" as t2 on t1."id cầu_thủ" = t2."cầu_thủ"  join "đội" as t3 on t3."id đội" = t2."đội"  where t3."tên" = 'Ryley_Goldner'
select count ( distinct trường đại_học ) from trận đấu trong mùa giải as t1 join cầu_thủ as t2 on t1.cầu_thủ = t2.id cầu_thủ join đội as t3 on t3.id đội = t1.đội where t3.tên = "Columbus_Crew"
select count(distinct t3."trường đại_học")  from "trận đấu trong mùa giải" as t1  join "cầu_thủ" as t2 on t1."cầu_thủ" = t2."id cầu_thủ"  join "đội" as t3 on t2."đội" = t3."id đội"  where t3."tên" = 'Columbus_Crew'
select t1.cầu_thủ, t1.số năm đã chơi  from cầu_thủ as t1  join đội as t2 on t1.id đội = t2.id đội  where t2.tên = 'Columbus_Crew'
select t1."cầu_thủ", count(t1."số năm đã chơi")  from "cầu_thủ" as t1  join "đội" as t2 on t1."id đội" = t2."id đội"  where t2."tên" = 'Columbus_Crew'  group by t1."cầu_thủ"
select vị_trí, count(*) from trận đấu trong mùa giải group by vị_trí
select vị_trí, count(*) from trận đấu trong mùa giải group by vị_trí
select t1."tên quốc_gia", count(*)  from "quốc_gia" as t1  join "cầu_thủ" as t2 on t1."id quốc_gia" = t2."quốc_gia"  group by t1."id quốc_gia"
select count(*), t1."id quốc_gia"  from "quốc_gia" as t1  join "cầu_thủ" as t2 on t1."id quốc_gia" = t2."id quốc_gia"  group by t1."id quốc_gia"
select cầu_thủ from cầu_thủ order by trường đại_học asc
select t1."cầu_thủ", t1."trường đại_học"  from "cầu_thủ" as t1  join "trận đấu trong mùa giải" as t2  on t1."id cầu_thủ" = t2."cầu_thủ"  order by t1."trường đại_học"
select "vị_trí" from "trận đấu trong mùa giải" group by "vị_trí" order by count(*) desc limit 1
select vị_trí from trận đấu trong mùa giải group by vị_trí order by count(*) desc limit 1
select trường đại_học , count(*)  from trận đấu trong mùa giải as t1  join cầu_thủ as t2 on t1.cầu_thủ = t2.id cầu_thủ  group by t1.mùa giải  order by count(*) desc  limit 3
select t1."trường đại_học" from "trận đấu trong mùa giải" as t2 join "cầu_thủ" as t1 on t2."cầu_thủ" = t1."id cầu_thủ" group by t1."trường đại_học" order by count(*) desc limit 3
select t1."trường đại_học" from "trận đấu trong mùa giải" as t1 join "cầu_thủ" as t2 on t1."đội" = t2."đội" group by t1."trường đại_học" having count(*) >= 2
select t1."trường đại_học"  from "trận đấu trong mùa giải" as t2  join "cầu_thủ" as t1 on t2."cầu_thủ" = t1."id cầu_thủ"  group by t1."trường đại_học"  having count(*) >= 2
select t1."trường đại_học" from "trận đấu trong mùa giải" as t2 join "cầu_thủ" as t1 on t2."cầu_thủ" = t1."id cầu_thủ" group by t1."trường đại_học" having count(*) >= 2 order by t1."trường đại_học" desc
select trường đại_học from trận đấu trong mùa giải group by trường đại_học having count(*) >= 2 order by trường đại_học desc
select tên from đội where id đội not in (select đội from trận đấu trong mùa giải)
select tên from đội where id đội not in (select đội from trận đấu trong mùa giải)
select t1."tên quốc_gia"  from "quốc_gia" as t1  join "trận đấu trong mùa giải" as t2  on t1."id quốc_gia" = t2."quốc_gia"  where t2."vị_trí" = 'tiền_đạo'  intersect  select t1."tên quốc_gia"  from "quốc_gia" as t1  join "trận đấu trong mùa giải" as t2  on t1."id quốc_gia" = t2."quốc_gia"  where t2."vị_trí" = 'hậu_vệ'
select t3."tên quốc_gia"  from "trận đấu trong mùa giải" as t1  join "cầu_thủ" as t2 on t1."cầu_thủ" = t2."id cầu_thủ"  join "quốc_gia" as t3 on t1."quốc_gia" = t3."id quốc_gia"  where t2."vị_trí" = 'tiền_đạo'  intersect  select t3."tên quốc_gia"  from "trận đấu trong mùa giải" as t1  join "cầu_thủ" as t2 on t1."cầu_thủ" = t2."id cầu_thủ"  join "quốc_gia" as t3 on t1."quốc_gia" = t3."id quốc_gia"  where t2."vị_trí" = 'hậu_vệ'
select distinct t2."trường đại_học"  from "trận đấu trong mùa giải" as t1  join "cầu_thủ" as t2 on t1."cầu_thủ" = t2."id cầu_thủ"  where t1."vị_trí" = 'tiền_vệ' and t1."vị_trí" = 'hậu_vệ'
select t1."trường đại_học"  from "trận đấu trong mùa giải" as t2  join "cầu_thủ" as t1 on t2."cầu_thủ" = t1."id cầu_thủ"  where t2."vị_trí" = 'tiền_vệ'  intersect  select t1."trường đại_học"  from "trận đấu trong mùa giải" as t2  join "cầu_thủ" as t1 on t2."cầu_thủ" = t1."id cầu_thủ"  where t2."vị_trí" = 'hậu_vệ'
select count(*) from "tội_phạm"
select ngày from tội_phạm order by số người bị giết desc
select "số người bị_thương" from "tội_phạm" order by "số người bị_thương" asc
select avg("số người bị_thương") from "tội_phạm"
select t1."địa_điểm" from "tội_phạm" as t1 join "cá_nhân" as t2 on t1."id cá_nhân" = t2."id cá_nhân" order by t1."số người bị giết" desc limit 1
select tên from cá_nhân order by chiều cao asc
select tên from tội_phạm
select t2.tên from tội_phạm as t1 join cá_nhân as t2 on t1."id cá_nhân" = t2."id cá_nhân" where t1."quốc_gia" != 'China'
select t1.tên from cá_nhân as t1 join tội_phạm as t2 on t1."id cá_nhân" = t2."id cá_nhân" order by t1.cân nặng desc limit 1
select sum("số người bị giết") from "tội_phạm" as t1 join "cá_nhân" as t2 on t1."id cá_nhân" = t2."id cá_nhân" where t1."chiều cao" > 1,84
select t2.tên  from tội_phạm as t1  join cá_nhân as t2 on t1."id cá_nhân" = t2."id cá_nhân"  where t1."quốc_gia" = 'China' or t1."quốc_gia" = 'Japan'
select t1.chiều cao from cá_nhân as t1 join tội_phạm as t2 on t1.id cá_nhân = t2.id cá_nhân order by t2.số người bị_thương desc
select "quốc_gia", count(*) from "tội_phạm" group by "quốc_gia"
select t1.quốc_gia  from tội_phạm as t1  join cá_nhân as t2 on t1.id cá_nhân = t2.id cá_nhân  group by t1.quốc_gia  order by count(*) desc  limit 1
select distinct quốc_gia from tội_phạm group by quốc_gia having count(*) >= 2
select t2.tên from tội_phạm as t1 join cá_nhân as t2 on t1."id cá_nhân" = t2."id cá_nhân" order by t1."năm" desc
select tên from cá_nhân where id cá_nhân not in ( select id cá_nhân from tội_phạm )
select "quốc_gia" from "tội_phạm" where "số người bị_thương" > 50 and "số người bị_thương" < 20
select count(distinct địa_điểm) from "tội_phạm"
select t1."ngày" from "tội_phạm" as t1 join "cá_nhân" as t2 on t1."id cá_nhân" = t2."id cá_nhân" order by t2."chiều cao" desc limit 1
select "năm" from "tội_phạm" order by "ngày" desc , "năm" desc limit 1
select chính_quyền địa_phương, group_concat(dịch_vụ) from nhà_ga group by chính_quyền địa_phương
select "số_hiệu tàu", "tên" from "tàu_hoả" order by "thời_gian" limit 10
select thời_gian , số_hiệu tàu from tàu_hoả where điểm đến = "Chennai" order by thời_gian
select count(*) from "tàu_hoả" where "tên" like "%Express%"
select số_hiệu tàu , thời_gian from tàu_hoả where điểm khởi_hành = "Chennai" and điểm đến = "Guruvayur"
select điểm khởi_hành, count(*) from tàu_hoả group by điểm khởi_hành
select t1.tên from tàu_hoả as t1 join lộ_trình as t2 on t1.id = t2.id tàu_hoả join nhà_ga as t3 on t2.id nhà_ga = t3.id group by t1.id order by count(*) desc limit 1
select count("số_lượng tàu"), "tên mạng_lưới", "dịch_vụ"  from "nhà_ga" as t1  join "lộ_trình" as t2 on t1."id" = t2."id nhà_ga"
select "ngày trong tuần", avg("nhiệt_độ cao") from "thời_tiết hàng tuần" group by "ngày trong tuần"
select max(nhiệt_độ thấp), avg(lượng mưa) from thời_tiết hàng tuần where "tên mạng_lưới" = 'Amersham'
select t1.tên , t1.thời_gian  from tàu_hoả as t1  join lộ_trình as t2 on t1.id = t2.id tàu  join nhà_ga as t3 on t2.id nhà_ga = t3.id  where t3.chính_quyền địa_phương = "Chiltern"
select count(distinct "dịch_vụ") from "nhà_ga"
select t1.id , t1.chính_quyền địa_phương  from nhà_ga as t1  join thời_tiết hàng tuần as t2  on t1.id = t2.id nhà_ga  group by t1.id  order by avg ( t2.nhiệt_độ cao ) desc  limit 1
select id nhà_ga , chính_quyền địa_phương from thời_tiết hàng tuần where lượng mưa > 50 group by id nhà_ga having lượng mưa = max ( lượng mưa )
select min(nhiệt_độ thấp), max(tốc_độ gió mph) from thời_tiết hàng tuần
select "điểm khởi_hành" from "tàu_hoả" group by "điểm khởi_hành" having count(*) > 1
select count("tên") from "nhà_thờ" where "ngày mở_cửa" < 1850
select tên, ngày mở_cửa, được tổ_chức bởi from nhà_thờ
select tên from nhà_thờ order by ngày mở_cửa desc
select "ngày mở_cửa" from "nhà_thờ" group by "ngày mở_cửa" having count(*) >= 2
select "được tổ_chức bởi", "tên" from "nhà_thờ" where "ngày mở_cửa" between 1830 and 1840
select "ngày mở_cửa", count(*) from "nhà_thờ" group by "ngày mở_cửa"
select tên , ngày mở_cửa from nhà_thờ order by ngày mở_cửa desc limit 3
select count(tên) from cá_nhân where là nam hay nữ = "nữ" and tuổi > 30
select distinct "quốc_gia" from "cá_nhân" where "tuổi" > 30 or "tuổi" < 25
select min(tuổi), max(tuổi), avg(tuổi) from "cá_nhân"
select tên , quốc_gia from cá_nhân where tuổi < ( select avg ( tuổi ) from cá_nhân )
select t1.tên , t2.tên  from cá_nhân as t1  join lễ cưới as t2 on t1."id cá_nhân" = t2."id nam"  where t2."năm" > 2014  union  select t1.tên , t2.tên  from cá_nhân as t1  join lễ cưới as t2 on t1."id cá_nhân" = t2."id nữ"  where t2."năm" > 2014
select tên , tuổi from cá_nhân where "id cá_nhân" not in ( select "id nam" from lễ cưới )
select tên from nhà_thờ where id nhà_thờ not in (select id nhà_thờ from lễ cưới where năm = 2015)
select distinct t1.tên from nhà_thờ as t1 join lễ cưới as t2 on t1."id nhà_thờ" = t2."id nhà_thờ" group by t1."id nhà_thờ" having count(*) >= 2
select t1.tên  from "cá_nhân" as t1  join "lễ cưới" as t2 on t1."id cá_nhân" = t2."id nữ"  where t1."là nam hay nữ" = 'nữ' and t1."quốc_gia" = 'Canada' and t2."năm" = 2016
select count(*) from "lễ cưới" where "năm" = 2016
select t1.tên  from nhà_thờ as t1  join lễ cưới as t2 on t1."id nhà_thờ" = t2."id nhà_thờ"  join cá_nhân as t3 on t2."id nam" = t3."id cá_nhân"  where t3."tuổi" > 30
select "quốc_gia", count(*) from "cá_nhân" group by "quốc_gia"
select count(*) from "nhà_thờ" as t1 join "lễ cưới" as t2 on t1."id nhà_thờ" = t2."id nhà_thờ" where t2."năm" = 2016
select count(*) from giảng_viên
select count(*) from giảng_viên
select ngạch from giảng_viên
select ngạch from giảng_viên
select toà nhà from giảng_viên
select toà nhà from giảng_viên where toà nhà is not null
select tên, họ, ngạch from giảng_viên
select tên, họ, ngạch from giảng_viên
select tên , số điện_thoại from giảng_viên where giới_tính = "F"
select tên , họ , số điện_thoại from giảng_viên where giới_tính = "F"
select "id giảng_viên" from "giảng_viên" where "giới_tính" = 'M'
select "id giảng_viên" from "giảng_viên" where "giới tính" = 'M'
select count(*) from giảng_viên where giới_tính = "F"
select count(*) from giảng_viên where giới_tính = "F"
select số điện_thoại , số phòng , toà nhà from giảng_viên where tên = "Prince_Jerry"
select số phòng , toà nhà from giảng_viên where tên = "Prince_Jerry"
select count(*) from giảng_viên where toà nhà = "NEB"
select count(*) from giảng_viên where toà nhà = "NEB"
select tên , họ from giảng_viên
select t1.tên , t1.họ from giảng_viên as t1 join giảng_viên tham_gia vào as t2 on t1.id giảng_viên = t2.id giảng_viên
select toà nhà, count(*) from giảng_viên group by toà nhà
select toà nhà, count(*) from giảng_viên group by toà nhà order by count(*) desc
select toà nhà from giảng_viên group by toà nhà order by count(*) desc limit 1
select toà nhà from giảng_viên group by toà nhà order by count(*) desc limit 1
select toà nhà from giảng_viên group by toà nhà having count(*) >= 10
select toà nhà from giảng_viên group by toà nhà having count(*) >= 10
select ngạch, count(*) from giảng_viên group by ngạch
select ngạch, count(*) from giảng_viên group by ngạch
select ngạch, count(*) from giảng_viên group by ngạch
select ngạch, count(*) from giảng_viên where giới_tính = "M" group by ngạch union select ngạch, count(*) from giảng_viên where giới_tính = "F" group by ngạch
select ngạch from giảng_viên group by ngạch order by count(*) limit 1
select ngạch from giảng_viên group by ngạch order by count(*) limit 1
select giới_tính, count(*)  from giảng_viên  where ngạch = "AsstProf"  group by giới_tính
select (select count(*) from giảng_viên where ngạch = "AsstProf" and giới_tính = "M") , (select count(*) from giảng_viên where ngạch = "AsstProf" and giới_tính = "F")
select t2.tên , t2.họ  from giảng_viên as t1  join sinh_viên as t2 on t1.id giảng_viên = t2.cố_vấn  where t2.tên = "Linda" and t2.họ = "Smith"
select tên , họ from sinh_viên where tên = "Linda" and họ = "Smith"
select id sinh_viên from sinh_viên where cố_vấn = 'Giáo_sư'
select t1."id sinh_viên" from "sinh_viên" as t1 join "giảng_viên" as t2 on t1."cố_vấn" = t2."id giảng_viên" where t2."ngạch" = 'Giáo_sư'
select t1.tên , t1.họ  from giảng_viên as t2  join sinh_viên as t1 on t2.id giảng_viên = t1.cố_vấn  where t2.tên = "Micheal" and t2.họ = "Goodrich"
select t1.tên , t1.họ  from giảng_viên as t2  join sinh_viên as t1  on t2.id giảng_viên = t1.cố_vấn  where t2.tên = "Micheal" and t2.họ = "Goodrich"
select "id giảng_viên", count(*)  from "giảng_viên" as t1  join "sinh_viên" as t2 on t1."id giảng_viên" = t2."cố_vấn"  group by t1."id giảng_viên"
select t1."id giảng_viên", count(*)  from "giảng_viên" as t1  join "sinh_viên" as t2 on t1."id giảng_viên" = t2."cố_vấn"  group by t1."id giảng_viên"
select t1.ngạch, count(*)  from giảng_viên as t1  join sinh_viên as t2 on t1.id giảng_viên = t2.cố_vấn  group by t1.ngạch
select count(*), t2.ngạch  from giảng_viên as t1  join sinh_viên as t2 on t1.id giảng_viên = t2.cố_vấn  group by t2.ngạch
select t1.họ , t1.tên  from giảng_viên as t1  join sinh_viên as t2 on t1.id giảng_viên = t2.cố_vấn  group by t2.cố_vấn  order by count(*) desc  limit 1
select t1.tên , t1.họ  from giảng_viên as t1  join sinh_viên as t2 on t1.id giảng_viên = t2.cố_vấn  group by t2.cố_vấn  order by count(*) desc  limit 1
select t1."id giảng_viên"  from "giảng_viên" as t1  join "tham_gia vào" as t2 on t1."id giảng_viên" = t2."id giảng_viên"  group by t1."id giảng_viên"  having count(*) >= 2
select t1."id giảng_viên"  from "giảng_viên" as t1  join "sinh_viên" as t2 on t1."id giảng_viên" = t2."cố_vấn"  group by t1."id giảng_viên"  having count(*) >= 2
select distinct "id giảng_viên" from "giảng_viên" where "id giảng_viên" not in (select "cố_vấn" from "sinh_viên")
select "id giảng_viên" from "giảng_viên" where "id giảng_viên" not in (select "cố_vấn" from "sinh_viên")
select "tên hoạt_động" from "hoạt_động"
select "tên hoạt_động" from "hoạt_động"
select count(*) from "hoạt_động"
select count(*) from hoạt_động
select count(distinct t1."id giảng_viên")  from "giảng_viên tham_gia vào" as t2  join "giảng_viên" as t1 on t2."id giảng_viên" = t1."id giảng_viên"
select count(distinct t1."id giảng_viên")  from "giảng_viên tham_gia vào" as t2  join "giảng_viên" as t1 on t2."id giảng_viên" = t1."id giảng_viên"  group by t1."id giảng_viên"  having count(*) > 0
select "id giảng_viên" from "giảng_viên" except select "id giảng_viên" from "giảng_viên" where "id giảng_viên" in ( select "id giảng_viên" from "tham_gia vào" ) intersect select "id giảng_viên" from "giảng_viên" where "id giảng_viên" in ( select "id giảng_viên" from "tham_gia vào" )
select "id giảng_viên" from "giảng_viên" except select "id giảng_viên" from "giảng_viên tham_gia vào"
select t1."id giảng_viên"  from "giảng_viên tham_gia vào" as t2  join "giảng_viên" as t1 on t2."id giảng_viên" = t1."id giảng_viên"  join "tham_gia vào" as t3 on t2."id hoạt_động" = t3."id hoạt_động"  join "sinh_viên" as t4 on t3."id sinh_viên" = t4."id sinh_viên"
select t1."id giảng_viên"  from "giảng_viên tham_gia vào" as t2  join "giảng_viên" as t1 on t2."id giảng_viên" = t1."id giảng_viên"  where t1."id giảng_viên" not in (select "cố_vấn" from "sinh_viên")
select count(*)  from giảng_viên as t1  join giảng_viên tham_gia vào as t2 on t1.id giảng_viên = t2.id giảng_viên  where t1.tên = "Mark" and t1.họ = "Giuliano"
select count(*) from giảng_viên as t1 join giảng_viên tham_gia vào as t2 on t1."id giảng_viên" = t2."id giảng_viên" where t1."tên" = 'Mark' and t1."họ" = 'Giuliano'
select t3."tên hoạt_động"  from "giảng_viên" as t1  join "tham_gia vào" as t2 on t1."id giảng_viên" = t2."id giảng_viên"  join "hoạt_động" as t3 on t2."id hoạt_động" = t3."id hoạt_động"  where t1."tên" = 'Mark' and t1."họ" = 'Giuliano'
select t1."tên hoạt_động"  from "giảng_viên" as t2  join "tham_gia vào" as t3 on t2."id giảng_viên" = t3."id giảng_viên"  join "hoạt_động" as t1 on t3."id hoạt_động" = t1."id hoạt_động"  where t2."tên" = 'Mark' and t2."họ" = 'Giuliano'
select t1.tên , t1.họ , count(*)  from giảng_viên as t1  join giảng_viên tham_gia vào as t2  on t1.id giảng_viên = t2.id giảng_viên  group by t1.id giảng_viên
select t1.tên , count(*)  from giảng_viên tham_gia vào as t2  join giảng_viên as t1 on t2.id giảng_viên = t1.id giảng_viên  join hoạt_động as t3 on t2.id hoạt_động = t3.id hoạt_động  group by t1.tên
select t1."tên hoạt_động", count(*)  from "hoạt_động" as t1  join "giảng_viên tham_gia vào" as t2  on t1."id hoạt_động" = t2."id hoạt_động"  group by t1."tên hoạt_động"
select t1."tên hoạt_động", count(*)  from "giảng_viên tham_gia vào" as t2  join "hoạt_động" as t1 on t2."id hoạt_động" = t1."id hoạt_động"  group by t2."id hoạt_động"
select t1.tên , t1.họ  from giảng_viên as t1  join giảng_viên tham_gia vào as t2  on t1.id giảng_viên = t2.id giảng_viên  group by t2.id giảng_viên  order by count(*) desc  limit 1
select t1.tên , t1.họ  from giảng_viên tham_gia vào as t2  join giảng_viên as t1 on t2.id giảng_viên = t1.id giảng_viên  group by t2.id giảng_viên  order by count(*) desc  limit 1
select t1."tên hoạt_động"  from "hoạt_động" as t1  join "giảng_viên tham_gia vào" as t2 on t1."id hoạt_động" = t2."id hoạt_động"  group by t2."id hoạt_động"  order by count(*) desc  limit 1
select t1."tên hoạt_động" from "hoạt_động" as t1  join "giảng_viên tham_gia vào" as t2 on t1."id hoạt_động" = t2."id hoạt_động"  group by t2."id hoạt_động"  order by count(*) desc  limit 1
select "id sinh_viên" from "sinh_viên" except select "id sinh_viên" from "tham_gia vào"
select "id sinh_viên" from "sinh_viên" except select "id sinh_viên" from "tham_gia vào"
select t1."id sinh_viên"  from "sinh_viên" as t1  join "tham_gia vào" as t2 on t1."id sinh_viên" = t2."id sinh_viên"  where t1."tuổi" < 20
select t1."id sinh_viên" from "sinh_viên" as t1 join "tham_gia vào" as t2 on t1."id sinh_viên" = t2."id sinh_viên" join "hoạt_động" as t3 on t2."id hoạt_động" = t3."id hoạt_động" where t1."tuổi" < 20
select t1.tên , t1.họ  from sinh_viên as t1  join tham_gia vào as t2 on t1.id sinh_viên = t2.id sinh_viên  group by t1.id sinh_viên  order by count(*) desc  limit 1
select t1.tên , t1.họ  from sinh_viên as t1  join tham_gia vào as t2 on t1.id sinh_viên = t2.id sinh_viên  group by t2.id sinh_viên  order by count(*) desc  limit 1
select t1."tên hoạt_động"  from "hoạt_động" as t1  join "tham_gia vào" as t2 on t1."id hoạt_động" = t2."id hoạt_động"  group by t1."tên hoạt_động"  order by count(*) desc  limit 1
select t1."tên hoạt_động"  from "hoạt_động" as t1  join "tham_gia vào" as t2 on t1."id hoạt_động" = t2."id hoạt_động"  group by t1."tên hoạt_động"  order by count(*) desc  limit 1
select t1.tên  from giảng_viên as t1  join giảng_viên tham_gia vào as t2 on t1.id giảng_viên = t2.id giảng_viên  join hoạt_động as t3 on t2.id hoạt_động = t3.id hoạt_động  where t3.tên hoạt_động = "Swimming" or t3.tên hoạt_động = "Kayaking"
select t1.tên  from giảng_viên as t1  join giảng_viên tham_gia vào as t2 on t1.id giảng_viên = t2.id giảng_viên  join hoạt_động as t3 on t2.id hoạt_động = t3.id hoạt_động  where t3.tên hoạt_động = "Swimming" or t3.tên hoạt_động = "Kayaking"
select tên from giảng_viên where id giảng_viên not in (select t1.id giảng_viên from giảng_viên tham_gia vào as t1 join hoạt_động as t2 on t1.id hoạt_động = t2.id hoạt_động where t2.tên hoạt_động = "Swim" or t2.tên hoạt_động = "Kayaking")
select tên from giảng_viên where id giảng_viên not in (select id giảng_viên from giảng_viên tham_gia vào where id hoạt_động in (select id hoạt_động from hoạt_động where tên hoạt_động = "Swim" or tên hoạt_động = "Kayaking"))
select t1.tên  from giảng_viên tham_gia vào as t2  join hoạt_động as t1 on t2."id hoạt_động" = t1."id hoạt_động"  where t1."tên hoạt_động" = 'Bơi xuồng'  intersect  select t1.tên  from giảng_viên tham_gia vào as t2  join hoạt_động as t1 on t2."id hoạt_động" = t1."id hoạt_động"  where t1."tên hoạt_động" = 'Chèo thuyền Kayak'
select t1.tên  from giảng_viên tham_gia vào as t2  join hoạt_động as t1 on t2."id hoạt_động" = t1."id hoạt_động"  where t1."tên hoạt_động" = 'Bơi xuồng'  intersect  select t1.tên  from giảng_viên tham_gia vào as t2  join hoạt_động as t1 on t2."id hoạt_động" = t1."id hoạt_động"  where t1."tên hoạt_động" = 'Chèo thuyền Kayak'
select t1."id sinh_viên"  from "tham_gia vào" as t2  join "hoạt_động" as t1 on t2."id hoạt_động" = t1."id hoạt_động"  where t1."tên hoạt_động" = 'Bơi xuồng'  intersect  select t1."id sinh_viên"  from "tham_gia vào" as t2  join "hoạt_động" as t1 on t2."id hoạt_động" = t1."id hoạt_động"  where t1."tên hoạt_động" = 'Chèo thuyền Kayak'
select t1."id sinh_viên"  from "tham_gia vào" as t1  join "hoạt_động" as t2 on t1."id hoạt_động" = t2."id hoạt_động"  where t2."tên hoạt_động" = 'Bơi xuồng'  intersect  select t1."id sinh_viên"  from "tham_gia vào" as t1  join "hoạt_động" as t2 on t1."id hoạt_động" = t2."id hoạt_động"  where t2."tên hoạt_động" = 'Chèo thuyền Kayak'
select count(*) from "người luyện thể_hình"
select "tổng" from "người luyện thể_hình" order by "tổng" asc
select cử giật , cử đẩy from người luyện thể_hình order by cử giật
select avg("cử giật") from "người luyện thể_hình"
select cử đẩy from người luyện thể_hình where tổng = ( select max ( tổng ) from người luyện thể_hình )
select ngày_sinh from cá_nhân order by chiều cao
select tên from cá_nhân
select t2.tên from người luyện thể_hình as t1 join cá_nhân as t2 on t1."id cá_nhân" = t2."id cá_nhân" where t1."tổng" > 300
select t1.tên from cá_nhân as t1 join người luyện thể_hình as t2 on t1.id cá_nhân = t2.id cá_nhân order by t1.cân nặng desc limit 1
select t1.ngày_sinh , t1.nơi sinh  from cá_nhân as t1  join người luyện thể_hình as t2 on t1.id cá_nhân = t2.id cá_nhân  order by t2.tổng desc  limit 1
select t2.chiều cao from người luyện thể_hình as t1 join cá_nhân as t2 on t1.id cá_nhân = t2.id cá_nhân where t1.tổng < 315
select avg("tổng") from "người luyện thể_hình" where "chiều cao" > 200
select t1.tên from cá_nhân as t1 join người luyện thể_hình as t2 on t1.id cá_nhân = t2.id cá_nhân order by t2.tổng desc
select nơi sinh, count(*) from cá_nhân group by nơi sinh
select nơi sinh from cá_nhân group by nơi sinh order by count(*) desc limit 1
select nơi sinh from cá_nhân group by nơi sinh having count(*) >= 2
select chiều cao , cân nặng from cá_nhân order by chiều cao desc
select * from "người luyện thể_hình" as t1 join "cá_nhân" as t2 on t1."id cá_nhân" = t2."id cá_nhân"
select tên , nơi sinh from cá_nhân except select t2.tên , t2.nơi sinh from người luyện thể_hình as t1 join cá_nhân as t2 on t1.id cá_nhân = t2.id cá_nhân
select count ( distinct nơi sinh ) from cá_nhân
select count("id cá_nhân") from "cá_nhân" except select "id cá_nhân" from "người luyện thể_hình"
select t1.cân nặng from cá_nhân as t1 join người luyện thể_hình as t2 on t1."id cá_nhân" = t2."id cá_nhân" where t2."cử giật" > 140 or t1."chiều cao" > 200
select sum(tổng) from "người luyện thể_hình" where "ngày_sinh" = 'January'
select min("cử giật") from "người luyện thể_hình"
select count(*) from "ứng_cử_viên"
select count(*) from "ứng_cử_viên"
select "nguồn thăm_dò ý_kiến" from "ứng_cử_viên" group by "nguồn thăm_dò ý_kiến" order by count(*) desc limit 1
select t1."nguồn thăm_dò ý_kiến"  from "ứng_cử_viên" as t1  join "cá_nhân" as t2 on t1."id cá_nhân" = t2."id cá_nhân"  group by t1."nguồn thăm_dò ý_kiến"  order by count(*) desc  limit 1
select "tỷ_lệ ủng_hộ" from "ứng_cử_viên" order by "tỷ_lệ ủng_hộ" desc limit 3
select "tỷ_lệ ủng_hộ" from "ứng_cử_viên" order by "tỷ_lệ ủng_hộ" desc limit 3
select "id ứng_cử_viên" from "ứng_cử_viên" order by "tỷ_lệ phản_đối" asc limit 1
select "id ứng_cử_viên" from "ứng_cử_viên" order by "tỷ_lệ phản_đối" asc limit 1
select "tỷ_lệ ủng_hộ", "tỷ_lệ xem_xét", "tỷ_lệ phản_đối" from "ứng_cử_viên" order by "tỷ_lệ không chắc_chắn" asc
select "tỷ_lệ ủng_hộ", "tỷ_lệ xem_xét", "tỷ_lệ phản_đối" from "ứng_cử_viên" order by "tỷ_lệ không chắc_chắn" asc
select "nguồn thăm_dò ý_kiến" from "ứng_cử_viên" order by "tỷ_lệ phản_đối" desc limit 1
select "nguồn thăm_dò ý_kiến" from "ứng_cử_viên" order by "tỷ_lệ phản_đối" desc limit 1
select tên from cá_nhân order by ngày_sinh
select tên , ngày_sinh from cá_nhân order by ngày_sinh
select avg(chiều cao), avg(cân nặng) from cá_nhân where giới_tính = "M"
select avg(chiều cao), avg(cân nặng) from cá_nhân where giới_tính = "M"
select tên from cá_nhân where chiều cao > 200 or chiều cao < 190
select tên from cá_nhân where chiều cao > 200 or chiều cao < 190
select giới_tính, avg(cân nặng), min(cân nặng) from cá_nhân group by giới_tính
select avg(cân nặng), min(cân nặng) from cá_nhân group by giới_tính
select tên , giới_tính from ứng_cử_viên order by tỷ_lệ ủng_hộ desc limit 1
select tên , giới_tính from ứng_cử_viên order by tỷ_lệ ủng_hộ desc limit 1
select tên from ứng_cử_viên group by giới_tính order by tỷ_lệ phản_đối limit 1
select tên , giới_tính from ứng_cử_viên order by tỷ_lệ phản_đối asc limit 1
select giới_tính from ứng_cử_viên group by giới_tính order by avg(tỷ_lệ không chắc_chắn) desc limit 1
select giới_tính from ứng_cử_viên group by giới_tính order by avg(tỷ_lệ không chắc_chắn) desc limit 1
select tên from cá_nhân where id cá_nhân not in (select id cá_nhân from ứng_cử_viên)
select tên from cá_nhân where id cá_nhân not in ( select id cá_nhân from ứng_cử_viên )
select tên from ứng_cử_viên where tỷ_lệ ủng_hộ < ( select tỷ_lệ phản_đối from ứng_cử_viên )
select tên from ứng_cử_viên where tỷ_lệ ủng_hộ < tỷ_lệ phản_đối
select giới_tính, count(*) from cá_nhân where cân nặng > 85 group by giới_tính
select giới_tính, count(*) from cá_nhân where cân nặng > 85 group by giới_tính
select max("tỷ_lệ ủng_hộ"), min("tỷ_lệ xem_xét"), min("tỷ_lệ phản_đối") from "ứng_cử_viên" group by "tỷ_lệ ủng_hộ", "tỷ_lệ xem_xét", "tỷ_lệ phản_đối"
select max("tỷ_lệ ủng_hộ"), min("tỷ_lệ xem_xét"), min("tỷ_lệ phản_đối") from "ứng_cử_viên" group by "tỷ_lệ ủng_hộ", "tỷ_lệ xem_xét", "tỷ_lệ phản_đối"
select t1.tên from "cá_nhân" as t1 join "ứng_cử_viên" as t2 on t1."id cá_nhân" = t2."id cá_nhân" where t1.giới_tính = "F" order by t1.tên
select t1.tên from cá_nhân as t1 join ứng_cử_viên as t2 on t1."id cá_nhân" = t2."id cá_nhân" where t1."giới_tính" = 'F' order by t1."tên"
select tên from cá_nhân where chiều cao < (select avg(chiều cao) from cá_nhân) group by tên
select tên from cá_nhân where chiều cao < (select avg(chiều cao) from cá_nhân)
select * from "cá_nhân"
select * from "cá_nhân"
select t1."id thành_phố"  from "thành_phố chủ nhà" as t1  join "trận đấu" as t2 on t1."id trận đấu" = t2."id trận đấu"  order by t1."năm" desc  limit 1
select t1."id thành_phố"  from "thành_phố chủ nhà" as t1  join "trận đấu" as t2 on t1."id trận đấu" = t2."id trận đấu"  where t1."năm" = (select max("năm") from "thành_phố chủ nhà")
select "id trận đấu" from "trận đấu" where "giải đấu" = 'vòng_loại FIFA World_Cup 1994'
select "id trận đấu" from "trận đấu" where "giải đấu" = 'vòng_loại FIFA World_Cup 1994'
select distinct t1.thành_phố chủ nhà  from thành_phố chủ nhà as t1  join trận đấu as t2 on t1.id trận đấu = t2.id trận đấu  where t2.năm > 2010
select t2."thành_phố chủ nhà"  from "thành_phố chủ nhà" as t1  join "trận đấu" as t2 on t1."id trận đấu" = t2."id trận đấu"  where t1."năm" > 2010
select t1.thành_phố from thành_phố as t1 join thành_phố chủ nhà as t2 on t1."id thành_phố" = t2."id thành_phố" group by t2."id thành_phố" order by count(*) desc limit 1
select t1.thành_phố chủ nhà from thành_phố chủ nhà as t1 join trận đấu as t2 on t1.id trận đấu = t2.id trận đấu group by t1.thành_phố chủ nhà order by count(*) desc limit 1
select distinct t1."địa_điểm"  from "trận đấu" as t1  join "thành_phố chủ nhà" as t2 on t1."id trận đấu" = t2."id trận đấu"  join "thành_phố" as t3 on t2."thành_phố chủ nhà" = t3."id thành_phố"  where t3."thành_phố" = 'Nam_Kinh ( Giang_Tô )' and t1."giải đấu" = 'Vòng_loại FIFA World_Cup 1994'
select distinct t1."địa_điểm"  from "trận đấu" as t1  join "thành_phố chủ nhà" as t2 on t1."id trận đấu" = t2."id trận đấu"  join "thành_phố" as t3 on t2."thành_phố chủ nhà" = t3."id thành_phố"  where t3."thành_phố" = 'Nam_Kinh ( Giang_Tô )' and t1."giải đấu" = 'Vòng_loại FIFA World_Cup 1994'
select t1."tháng một" from "nhiệt_độ" as t1 join "thành_phố" as t2 on t1."id thành_phố" = t2."id thành_phố" where t2."thành_phố" = 'Thượng_Hải'
select t1."tháng một" from "nhiệt_độ" as t1  join "thành_phố" as t2 on t1."id thành_phố" = t2."id thành_phố"  where t2."thành_phố" = 'Thượng_Hải'
select t1."năm"  from "thành_phố chủ nhà" as t1  join "thành_phố" as t2 on t1."id thành_phố" = t2."id thành_phố"  where t2."thành_phố" = 'Thái_Châu (Chiết_Giang)'
select t1.năm  from thành_phố chủ nhà as t1  join thành_phố as t2 on t1."id thành_phố" = t2."id thành_phố"  where t2."thành_phố" = 'Thái_Châu (Chiết_Giang)'
select "thành_phố" from "thành_phố" order by "dân_số khu_vực" desc limit 3
select "thành_phố" from "thành_phố" order by "dân_số khu_vực" desc limit 3
select "thành_phố", "gdp" from "thành_phố" order by "gdp" asc limit 1
select "thành_phố", "gdp" from "thành_phố" order by "gdp" asc limit 1
select "thành_phố" from "nhiệt_độ" where "tháng hai" = ( select max("tháng hai") from "nhiệt_độ" ) order by "tháng hai" desc limit 1
select "thành_phố" from "nhiệt_độ" where "tháng hai" > 0 group by "id thành_phố" order by "tháng hai" desc
select "thành_phố" from "nhiệt_độ" where "tháng 3" < "tháng 7" or "tháng 3" > "tháng 10" group by "thành_phố"
select t1."thành_phố" from "nhiệt_độ" as t1 join "thành_phố" as t2 on t1."id thành_phố" = t2."id thành_phố" where t1."tháng ba" < t1."tháng sáu" or t1."tháng ba" > t1."tháng mười"
select t1."thành_phố", t1."id thành_phố"  from "thành_phố" as t1  join "nhiệt_độ" as t2 on t1."id thành_phố" = t2."id thành_phố"  join "thành_phố chủ nhà" as t3 on t1."id thành_phố" = t3."thành_phố chủ nhà"  where t2."tháng ba" < t2."tháng sáu"  and t3."năm" = 2019
select t3.thành_phố  from nhiệt_độ as t1  join thành_phố chủ nhà as t2 on t1."id thành_phố" = t2."id thành_phố"  join thành_phố as t3 on t2."id thành_phố" = t3."id thành_phố"  where t1."tháng ba" < t1."tháng sáu" and t2."năm" = 2019
select t1.thành_phố from thành_phố as t1 join nhiệt_độ as t2 on t1."id thành_phố" = t2."id thành_phố" where t2."tháng mười hai" < t2."tháng ba" and t1."id thành_phố" not in (select "thành_phố chủ nhà" from thành_phố chủ nhà)
select "thành_phố" from "nhiệt_độ" where "tháng mười hai" < "tháng mười hai" and "thành_phố" not in (select "thành_phố chủ nhà" from "thành_phố chủ nhà")
select t1.thành_phố from thành_phố as t1  join nhiệt_độ as t2 on t1."id thành_phố" = t2."id thành_phố"  join thành_phố chủ nhà as t3 on t1."id thành_phố" = t3."id trận đấu"  where t2."tháng hai" > t2."tháng sáu" or t3."năm" = 2019
select t1."thành_phố" from "nhiệt_độ" as t1  join "thành_phố chủ nhà" as t2 on t1."id thành_phố" = t2."id thành_phố"  where t1."tháng hai" > t1."tháng sáu" or t2."năm" = 2019
select "thành_phố" from "thành_phố" where "dân_số khu_vực" > 10000000
select "thành_phố" from "thành_phố" where "dân_số khu_vực" > 10000000 group by "thành_phố" having count(*) > 1
select "thành_phố" from "thành_phố" where "dân_số khu_vực" > 8000000 or "dân_số khu_vực" < 5000000
select "thành_phố" from "thành_phố" where "dân_số khu_vực" > 8000000 or "dân_số khu_vực" < 5000000 group by "thành_phố" having count(*) > 1
select giải đấu, count(*) from trận đấu group by giải đấu
select count(*), "giải đấu" from "trận đấu" group by "giải đấu"
select địa_điểm from trận đấu order by ngày desc
select địa_điểm from trận đấu order by ngày desc
select gdp from thành_phố where "id thành_phố" = (select "id thành_phố" from thành_phố order by "dân_số khu_vực" desc limit 1)
select gdp from thành_phố order by dân_số khu_vực desc limit 1
select t1.gdp , t1.dân_số khu_vực  from "thành_phố" as t1  join "thành_phố chủ nhà" as t2  on t1."id thành_phố" = t2."thành_phố chủ nhà"  group by t2."thành_phố chủ nhà"  having count(*) > 1
select t1.gdp , t1.dân_số khu_vực  from "thành_phố" as t1  join "thành_phố chủ nhà" as t2  on t1."id thành_phố" = t2."thành_phố chủ nhà"  group by t2."id thành_phố"  having count(*) > 1
select count(*) from giáo_sư as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa where t2.tên khoa = "Finance"
select count(*) from giáo_sư as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa where t2.tên khoa = "Finance"
select count(distinct t1."mã số nhân_viên của giáo_sư")  from "lớp_học" as t2  join "giáo_sư" as t1 on t2."mã số nhân_viên của giáo_sư" = t1."mã số nhân_viên của giáo_sư"  where t2."mã lớp_học" = 'ACCT-211'
select count(*) from "lớp_học" as t1 join "giáo_sư" as t2 on t1."mã số nhân_viên của giáo_sư" = t2."mã số nhân_viên" where t1."mã lớp_học" = 'ACCT-211'
select tên của giáo_sư , họ của giáo_sư from giáo_sư where mã khoa = "Sinh_học"
select t1.tên của giáo_sư , t1.họ của giáo_sư  from giáo_sư as t1  join khoa as t2 on t1.mã khoa = t2.mã khoa  where t2.tên khoa = "Sinh_học"
select t1.tên của giáo_sư , t1.ngày_sinh của giáo_sư  from giáo_sư as t1  join lớp_học as t2 on t1.mã số nhân_viên của giáo_sư = t2.mã số nhân_viên của giáo_sư  where t2.mã khoá học = 'ACCT-211'
select t1.tên của nhân_viên , t1.ngày_sinh của nhân_viên  from giáo_sư as t1  join lớp_học as t2 on t1.mã số nhân_viên của giáo_sư = t2.mã số nhân_viên của giáo_sư  where t2.mã khoá học = "ACCT-211"
select count(*) from lớp_học as t1 join giáo_sư as t2 on t1.mã số giáo_sư = t2.mã số nhân_viên where t2.họ của giáo_sư = "Graztevski"
select count(*) from giáo_sư as t1 join lớp_học as t2 on t1.mã số giáo_sư = t2.mã số giáo_sư where t1.họ của giáo_sư = "Graztevski"
select t1."mã trường_học"  from "khoa" as t1  join "nhân_viên" as t2 on t1."mã khoa" = t2."mã khoa"  where t2."tên khoa" = 'Finance'
select "mã trường_học" from "khoa" where "tên khoa" = 'Finance'
select "số_lượng tín_chỉ của khoá học", "mô_tả về khoá học" from "khoá học" where "mã khoá học" = 'CIS-220'
select "mô_tả về khoá học", "số_lượng tín_chỉ của khoá học" from "khoá học" where "mã khoá học" = 'CIS-220'
select địa_chỉ khoa from khoa where tên khoa = "Lịch_sử"
select địa_chỉ khoa from khoa where tên khoa = "History"
select count(distinct "địa_chỉ khoa") from "khoa" where "mã trường" = 'BUS'
select count(distinct "địa_chỉ khoa") from "khoa" where "mã_trường" = 'BUS'
select count(distinct địa_chỉ khoa) from khoa group by mã_trường
select count(distinct "mã_trường"), "mã_trường" from "khoa" group by "mã_trường"
select "mô_tả về khoá học", "số_lượng tín_chỉ của khoá học" from "khoá học" where "mã khoá học" = 'QM-261'
select "số_lượng tín_chỉ của khoá học", "mô_tả về khoá học" from "khoá học" where "mã khoá học" = 'QM-261'
select count(*), "mã trường_học" from "khoa" as t1 join "trường_học" as t2 on t1."mã trường_học" = t2."mã trường_học" group by t1."mã trường_học"
select mã_trường, count(*) from khoa group by mã_trường
select count(*), "mã trường_học" from "khoa" group by "mã trường_học" having count(*) < 5
select count(*), "mã trường_học" from "khoa" group by "mã trường_học" having count(*) < 5
select "mã khoá học", count(*) from "lớp_học" as t1 join "khoá học" as t2 on t1."mã khoá học" = t2."mã khoá học" group by t1."mã khoá học"
select count(*), "mã khoá học" from "lớp_học" as t1 join "khoá học" as t2 on t1."mã khoá học" = t2."mã khoá học" group by t1."mã khoá học"
select sum("số_lượng tín_chỉ của khoá học") from "khoá học" group by "mã khoa"
select sum("số_lượng tín_chỉ của khoá học"), "mã khoa" from "khoá học" join "khoa" on "khoá học"."mã khoa" = "khoa"."mã khoa" group by "mã khoa"
select count(*) from lớp_học group by phòng học having count(*) >= 2
select phòng học, count(*)  from lớp_học  group by phòng học  having count(*) >= 2
select count(*), t1."mã khoa"  from "lớp_học" as t1  join "khoa" as t2 on t1."mã khoa" = t2."mã khoa"  group by t1."mã khoa"
select count(*), "mã khoa" from "lớp_học" as t1 join "khoa" as t2 on t1."mã khoa" = t2."mã khoa" group by t1."mã khoa"
select count(*), "mã trường" from "lớp_học" as t1 join "khoa" as t2 on t1."mã khoa" = t2."mã khoa" group by t2."mã trường"
select count(*), "mã trường" from "lớp_học" as t1 join "khoa" as t2 on t1."mã khoa" = t2."mã khoa" group by t2."mã trường"
select count(distinct t1."mã số nhân_viên"), t2."mã_trường"  from "nhân_viên" as t1  join "khoa" as t2 on t1."mã khoa" = t2."mã khoa"  group by t2."mã_trường"
select t1."mã_trường", count(distinct t2."mã số nhân_viên")  from "khoa" as t1  join "giáo_sư" as t2 on t1."mã khoa" = t2."mã khoa"  group by t1."mã_trường"
select "mã công_việc của nhân_viên", count(*)  from "nhân_viên"  group by "mã công_việc của nhân_viên"  order by count(*) desc  limit 1
select mã công_việc của nhân_viên, count(*)  from nhân_viên  group by mã công_việc của nhân_viên  order by count(*) desc  limit 1
select t1."mã trường" from "khoa" as t1 join "giáo_sư" as t2 on t1."mã trường" = t2."mã trường" group by t1."mã trường" order by count(*) desc limit 1
select t1."mã trường" from "khoa" as t1 join "giáo_sư" as t2 on t1."mã trường" = t2."mã trường" group by t1."mã trường" order by count(*) asc limit 1
select count(*), t1."mã khoa"  from "giáo_sư" as t1  join "khoa" as t2 on t1."mã khoa" = t2."mã khoa"  where t1."bằng_cấp cao nhất" = 'Tiến_sĩ'  group by t1."mã khoa"
select count(*), t1."mã khoa"  from "giáo_sư" as t1  join "khoa" as t2 on t1."mã khoa" = t2."mã khoa"  where t1."bằng_cấp cao nhất" = 'Tiến_sĩ'  group by t1."mã khoa"
select count(*), "mã khoa" from "sinh_viên" group by "mã khoa"
select count(*), "mã khoa" from "sinh_viên" group by "mã khoa"
select sum(t1."giờ học của sinh_viên"), t2."mã khoa"  from "sinh_viên" as t1  join "khoa" as t2 on t1."mã khoa" = t2."mã khoa"  group by t2."mã khoa"
select sum(t1."giờ học của sinh_viên"), t2."mã khoa"  from "sinh_viên" as t1  join "khoa" as t2 on t1."mã khoa" = t2."mã khoa"  group by t2."mã khoa"
select t1.mã khoa , avg ( t1.gpa của sinh_viên ) , max ( t1.gpa của sinh_viên ) , min ( t1.gpa của sinh_viên )  from sinh_viên as t1  join khoa as t2 on t1.mã khoa = t2.mã khoa  group by t1.mã khoa  order by max ( t1.gpa của sinh_viên ) , min ( t1.gpa của sinh_viên )
select t1."mã khoa", max(t2."gpa của sinh_viên"), min(t2."gpa của sinh_viên"), avg(t2."gpa của sinh_viên")  from "sinh_viên" as t1  join "đăng_ký khoá học" as t2 on t1."mã_số sinh_viên" = t2."mã_số sinh_viên"  group by t1."mã khoa"
select tên khoa , avg ( gpa của sinh_viên ) from sinh_viên group by tên khoa order by avg ( gpa của sinh_viên ) desc limit 1
select t1."mã khoa", avg(t2."điểm_số")  from "sinh_viên" as t1  join "đăng_ký khoá học" as t2  on t1."mã khoa" = t2."mã khoa"  group by t1."mã khoa"  order by avg(t2."điểm_số") desc  limit 1
select count(distinct "mã trường") from "khoa"
select count(distinct "mã_trường") from "khoa"
select count ( distinct "mã lớp_học" ) from "lớp_học"
select count(distinct "mã lớp_học") from "lớp_học"
select count(*) from khoá học
select count ( distinct "mã khoá học" ) from "khoá học"
select count(*) from khoa
select count(distinct "mã khoa") from "khoa"
select count(*) from khoá học as t1 join khoa as t2 on t1.mã khoá học = t2.mã khoa where t2.tên khoa = "Hệ_thống thông_tin máy_tính"
select count(*) from khoa as t1 join khoá học as t2 on t1.mã khoa = t2.mã khoa where t1.tên khoa = "Hệ_thống thông_tin máy_tính"
select count(*) from "lớp_học" where "mã khoá học" = 'ACCT-211'
select count(distinct "lớp_học phần") from "lớp_học" where "mã khoá học" = 'ACCT-211'
select sum(t1."số_lượng tín_chỉ của khoá học"), t2."mã khoa"  from "khoá học" as t1  join "khoa" as t2 on t1."mã khoa" = t2."mã khoa"  group by t2."mã khoa"
select sum("số_lượng tín_chỉ của khoá học"), "mã khoa" from "khoá học" join "khoa" on "khoá học"."mã khoa" = "khoa"."mã khoa" group by "mã khoa"
select "tên khoa" from "khoá học" group by "mã khoá học" order by sum("số_lượng tín_chỉ của khoá học") desc limit 1
select "mã khoá học" from "khoá học" group by "mã khoá học" order by sum("số_lượng tín_chỉ của khoá học") desc limit 1
select count(distinct t1."mã_số sinh_viên")  from "sinh_viên" as t1  join "đăng_ký khoá học" as t2  on t1."mã_số sinh_viên" = t2."mã_số sinh_viên"  where t2."mã lớp" = 'ACCT-211'
select count(distinct t1."mã_số sinh_viên")  from "sinh_viên" as t1  join "đăng_ký khoá học" as t2  on t1."mã_số sinh_viên" = t2."mã_số sinh_viên"  where t2."mã lớp" = 'ACCT-211'
select t1.tên của sinh_viên from sinh_viên as t1 join đăng_ký khoá học as t2 on t1.mã_số sinh_viên = t2.mã_số sinh_viên where t2.mã khoá học = "ACCT-211"
select t1.tên của sinh_viên from sinh_viên as t1 join đăng_ký khoá học as t2 on t1.mã_số sinh_viên = t2.mã_số sinh_viên where t2.mã lớp = "ACCT-211"
select t1.tên của sinh_viên  from sinh_viên as t1  join đăng_ký khoá học as t2 on t1.mã_số sinh_viên = t2.mã_số sinh_viên  where t2.mã khoá học = "ACCT-211" and t2.điểm_số = "C"
select t1.tên của sinh_viên  from sinh_viên as t1  join đăng_ký khoá học as t2 on t1.mã_số sinh_viên = t2.mã_số sinh_viên  where t2.mã khoá học = "ACCT-211" and t2.điểm_số = "C"
select count(*) from nhân_viên
select count(*) from nhân_viên
select count(*) from giáo_sư where bằng_cấp cao nhất = "Tiến_sĩ"
select count(*) from giáo_sư where bằng_cấp cao nhất = "Tiến_sĩ"
select count(*)  from lớp_học as t1  join nhân_viên as t2 on t1."mã số nhân_viên của giáo_sư" = t2."mã số nhân_viên"  join khoa as t3 on t2."mã khoa" = t3."mã khoa"  join sinh_viên as t4 on t1."mã lớp" = t4."mã lớp"  where t3."tên khoa" = 'Finance'
select count(*)  from lớp_học as t1  join nhân_viên as t2 on t1."mã số nhân_viên của giáo_sư" = t2."mã số nhân_viên"  join khoa as t3 on t2."mã khoa" = t3."mã khoa"  where t3."tên khoa" = 'Finance'
select t1.tên khoa  from khoa as t1  join sinh_viên as t2 on t1.mã khoa = t2.mã khoa  group by t1.tên khoa  order by count(*) desc  limit 1
select t1."mã khoa", count(*)  from "khoa" as t1  join "sinh_viên" as t2 on t1."mã khoa" = t2."mã khoa"  group by t1."mã khoa"  order by count(*) desc  limit 1
select tên khoa from khoa order by tên khoa asc
select "tên khoa" from "khoa" order by "tên khoa"
select "mã khoá học" from "lớp_học" where "phòng học" = 'KLR 209'
select t1."mã khoá học"  from "lớp_học" as t2  join "khoá học" as t1 on t2."mã khoá học" = t1."mã khoá học"  where t2."phòng học" = 'KLR 209'
select tên của nhân_viên , ngày_sinh của nhân_viên from nhân_viên where mã công_việc của nhân_viên = "Giáo_sư" order by ngày_sinh của nhân_viên
select tên của nhân_viên , ngày_sinh của nhân_viên from nhân_viên where mã công_việc của nhân_viên = "Giáo_sư" order by ngày_sinh của nhân_viên
select tên của giáo_sư , văn_phòng giáo_sư from giáo_sư order by tên của giáo_sư asc
select tên giáo_sư , văn_phòng giáo_sư from giáo_sư order by tên giáo_sư
select tên của nhân_viên , họ của nhân_viên from nhân_viên order by ngày_sinh của nhân_viên desc limit 1
select tên của nhân_viên, họ của nhân_viên from nhân_viên order by ngày_sinh của nhân_viên limit 1
select tên của sinh_viên , họ của sinh_viên , gpa của sinh_viên from sinh_viên where gpa của sinh_viên > 3 order by gpa của sinh_viên desc limit 1
select tên của sinh_viên , họ của sinh_viên , gpa của sinh_viên from sinh_viên where gpa của sinh_viên > 3 order by gpa của sinh_viên desc limit 1
select t1.tên của sinh_viên from sinh_viên as t1 join đăng_ký khoá học as t2 on t1.mã_số sinh_viên = t2.mã_số sinh_viên where t2.điểm_số = "C"
select t1.tên của sinh_viên from sinh_viên as t1 join đăng_ký khoá học as t2 on t1.mã_số sinh_viên = t2.mã_số sinh_viên where t2.điểm_số = "C"
select t1."tên khoa" from "khoa" as t1 join "giáo_sư" as t2 on t1."mã khoa" = t2."mã khoa" group by t1."mã khoa" having count(*) = ( select min ( count ( * ) ) from "khoa" as t1 join "giáo_sư" as t2 on t1."mã khoa" = t2."mã khoa" )
select t1.tên khoa  from khoa as t1  join giáo_sư as t2 on t1.mã khoa = t2.mã khoa  group by t1.mã khoa  order by count(*)  limit 1
select t1."mã khoa"  from "khoa" as t1  join "giáo_sư" as t2 on t1."mã khoa" = t2."mã khoa"  group by t1."mã khoa"  order by count(*) desc  limit 1
select t1.tên khoa  from giáo_sư as t1  join khoa as t2 on t1.mã khoa = t2.mã khoa  group by t1.mã khoa  order by count(*) desc  limit 1
select tên của giáo_sư from giáo_sư except select t1.tên của giáo_sư from giáo_sư as t1 join lớp_học as t2 on t1.mã số giáo_sư = t2.mã số giáo_sư
select tên của giáo_sư from giáo_sư where mã số nhân_viên của giáo_sư not in ( select mã số giáo_sư from đăng_ký khoá học )
select tên của giáo_sư from giáo_sư where mã khoa = "History" and mã lớp_học not in (select mã lớp_học from đăng_ký khoá học)
select tên của giáo_sư from giáo_sư where mã khoa != "Lịch_sử"
select t1.họ của giáo_sư , t1.văn_phòng giáo_sư  from giáo_sư as t1  join khoa as t2 on t1.mã khoa = t2.mã khoa  where t2.tên khoa = "Lịch_sử"
select t1.họ của giáo_sư , t2.văn_phòng giáo_sư  from giáo_sư as t1  join khoa as t2 on t1.mã khoa = t2.mã khoa  where t2.tên khoa = "History"
select văn_phòng giáo_sư , khoa mở_rộng from giáo_sư where họ của giáo_sư = "Heffington"
select t1."tên khoa", t1."văn_phòng giáo_sư"  from "giáo_sư" as t2  join "khoa" as t1 on t2."mã khoa" = t1."mã khoa"  where t2."họ của giáo_sư" = 'Heffington'
select họ của giáo_sư , ngày bắt_đầu công_việc của giáo_sư from giáo_sư where văn_phòng giáo_sư = "DRE 102"
select họ của giáo_sư, ngày bắt_đầu công_việc của giáo_sư from giáo_sư where văn_phòng giáo_sư = 'DRE 102'
select t1."mã khoá học" from "sinh_viên" as t2 join "đăng_ký khoá học" as t1 on t2."mã_số sinh_viên" = t1."mã lớp" where t2."họ của sinh_viên" = 'Smithson'
select t1."mã khoá học" from "đăng_ký khoá học" as t1 join "sinh_viên" as t2 on t1."mã_số sinh_viên" = t2."mã_số sinh_viên" where t2."họ của sinh_viên" = 'Smithson'
select t1."mô_tả về khoá học", t2."số_lượng tín_chỉ của khoá học"  from "khoá học" as t1  join "đăng_ký khoá học" as t2 on t1."mã khoá học" = t2."mã khoá học"  join "sinh_viên" as t3 on t2."mã_số sinh_viên" = t3."mã_số sinh_viên"  where t3."họ của sinh_viên" = 'Smithson'
select t1."mô_tả về khoá học", count(t1."số_lượng tín_chỉ của khoá học")  from "khoá học" as t1  join "đăng_ký khoá học" as t2 on t1."mã khoá học" = t2."mã khoá học"  join "sinh_viên" as t3 on t3."mã_số sinh_viên" = t2."mã_số sinh_viên"  where t3."họ của sinh_viên" = 'Smithson'  group by t1."mã khoá học"
select count(*) from giáo_sư where bằng_cấp cao nhất = "Tiến_sĩ" or bằng_cấp cao nhất = "Thạc_sĩ"
select count("mã số nhân_viên") from "giáo_sư" where "bằng_cấp cao nhất" = 'Tiến_sĩ' or "bằng_cấp cao nhất" = 'Thạc_sĩ'
select count(*) from giáo_sư as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa where t2.tên khoa = "Kế_toán" or t2.tên khoa = "Sinh_học"
select count(*)  from giáo_sư as t1  join khoa as t2 on t1.mã khoa = t2.mã khoa  where t2.tên khoa = 'Kế_toán' or t2.tên khoa = 'Sinh_học'
select t3.tên của giáo_sư  from lớp_học as t1  join khoá học as t2 on t1."mã khoá học" = t2."mã khoá học"  join giáo_sư as t3 on t1."mã_số nhân_viên của giáo_sư" = t3."mã số nhân_viên"  where t2."mã khoá học" = 'CIS-220' and t1."mã khoá học" = 'QM-261'
select t3.tên của nhân_viên  from lớp_học as t1  join khoá học as t2 on t1."mã khoá học" = t2."mã khoá học"  join giáo_sư as t3 on t1."mã_số nhân_viên của giáo_sư" = t3."mã số nhân_viên"  where t2."mã khoá học" = 'CIS-220' and t1."mã khoá học" = 'QM-261'
select t1.tên của sinh_viên  from lớp_học as t2  join khoa as t3 on t2.mã khoa = t3.mã khoa  join sinh_viên as t1 on t2.mã lớp = t1.mã lớp  where t3.tên khoa = "Kế_toán"  intersect  select t1.tên của sinh_viên  from lớp_học as t2  join khoa as t3 on t2.mã khoa = t3.mã khoa  join sinh_viên as t1 on t2.mã lớp = t1.mã lớp  where t3.tên khoa = "Hệ_thống thông_tin máy_tính"
select t1.tên của sinh_viên  from sinh_viên as t1  join đăng_ký khoá học as t2 on t1.mã_số sinh_viên = t2.mã_số sinh_viên  join khoa as t3 on t3.mã khoa = t2.mã khoá học  where t3.tên khoa = "Kế_toán"  intersect  select t1.tên của sinh_viên  from sinh_viên as t1  join đăng_ký khoá học as t2 on t1.mã_số sinh_viên = t2.mã_số sinh_viên  join khoa as t3 on t3.mã khoa = t2.mã khoá học  where t3.tên khoa = "Hệ_thống thông_tin máy_tính"
select avg(t1.gpa của sinh_viên) from sinh_viên as t1 join đăng_ký khoá học as t2 on t1.mã_số sinh_viên = t2.mã_số sinh_viên where t2.mã khoá học = "ACCT-211"
select avg(t1.gpa của sinh_viên) from sinh_viên as t1 join đăng_ký khoá học as t2 on t1.mã_số sinh_viên = t2.mã_số sinh_viên where t2.mã khoá học = "ACCT-211"
select tên của sinh_viên , gpa của sinh_viên , số điện_thoại của sinh_viên from sinh_viên order by gpa của sinh_viên desc limit 5
select tên của sinh_viên , gpa của sinh_viên , số điện_thoại của sinh_viên from sinh_viên order by gpa của sinh_viên desc limit 5
select t1."tên khoa"  from "khoa" as t1  join "sinh_viên" as t2 on t1."mã khoa" = t2."mã khoa"  group by t2."mã khoa"  order by avg(t2."gpa của sinh_viên") desc  limit 1
select t1."mã khoa"  from "sinh_viên" as t1  join "đăng_ký khoá học" as t2 on t1."mã_số sinh_viên" = t2."mã_số sinh_viên"  order by t1."gpa của sinh_viên" asc  limit 1
select tên của sinh_viên , gpa của sinh_viên from "sinh_viên" where gpa của sinh_viên < ( select avg( gpa của sinh_viên ) from "sinh_viên" )
select tên của sinh_viên , gpa của sinh_viên from sinh_viên where gpa của sinh_viên < ( select avg ( gpa của sinh_viên ) from sinh_viên ) group by tên của sinh_viên , gpa của sinh_viên
select t1.tên khoa , t1.địa_chỉ khoa from khoa as t1 join sinh_viên as t2 on t1.mã khoa = t2.mã khoa group by t1.mã khoa order by count ( * ) desc limit 1
select t1.tên khoa , t1.địa_chỉ khoa from khoa as t1 join sinh_viên as t2 on t1.mã khoa = t2.mã khoa group by t2.mã khoa order by count ( * ) desc limit 1
select t1.tên khoa , t1.địa_chỉ khoa , count ( * ) from khoa as t1 join sinh_viên as t2 on t1.mã khoa = t2.mã khoa group by t1.mã khoa order by count ( * ) desc limit 3
select t1.tên khoa , t1.địa_chỉ khoa , count ( * ) from khoa as t1 join sinh_viên as t2 on t1.mã khoa = t2.mã khoa group by t1.mã khoa order by count ( * ) desc limit 3
select t1.tên giáo_sư , t1.địa_chỉ văn_phòng  from giáo_sư as t1  join khoa as t2 on t1.mã khoa = t2.mã khoa  where t2.tên khoa = "Lịch_sử" and t1.bằng_cấp cao nhất = "Tiến_sĩ"
select tên giáo_sư , văn_phòng giáo_sư from giáo_sư as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa where t2.tên khoa = "History" and t1.bằng_cấp cao nhất = "Ph.D."
select t1.tên của nhân_viên , t2.mã khoá học  from nhân_viên as t1  join lớp_học as t2  on t1.mã số nhân_viên của giáo_sư = t2.mã số nhân_viên của giáo_sư
select t1.tên của giảng_viên , t2.mã khoá học  from giáo_sư as t1  join đăng_ký khoá học as t2  on t1.mã số nhân_viên của giáo_sư = t2.mã_số nhân_viên của giáo_sư
select t1.tên của giáo_sư , t2.mô_tả về khoá học  from giáo_sư as t1  join lớp_học as t2  on t1.mã số nhân_viên của giáo_sư = t2.mã số nhân_viên của giáo_sư
select t1.tên của giáo_sư , t2.mô_tả về khoá học  from giáo_sư as t1  join lớp_học as t2  on t1.mã số nhân_viên của giáo_sư = t2.mã số nhân_viên của giáo_sư
select t1.tên giáo_sư , t1.văn_phòng giáo_sư , t2.mô_tả về khoá học  from giáo_sư as t1  join khoá học as t2  on t1.mã khoa = t2.mã khoá học  where t1.mã khoa = t2.mã khoá học
select t2.văn_phòng giáo_sư , t1.mô_tả về khoá học , t2.tên của giảng_viên  from khoá học as t1  join giáo_sư as t2 on t1.mã khoa = t2.mã khoa  group by t2.văn_phòng giáo_sư , t1.mô_tả về khoá học
select t1.văn_phòng giáo_sư, t2.mô_tả về khoá học, t3.tên khoa, t1.văn_phòng giáo_sư  from giáo_sư as t1  join khoa as t3 on t1.mã khoa = t3.mã khoa  join khoá học as t2 on t1.mã khoa = t2.mã khoa  group by t1.văn_phòng giáo_sư
select t1.tên của giáo_sư , t2.tên khoa , t2.mô_tả về khoá học  from giáo_sư as t1  join khoa as t2 on t1.mã khoa = t2.mã khoa  join khoá học as t3 on t2.mã khoa = t3.mã khoa
select t1.tên của sinh_viên , t2.mô_tả về khoá học  from sinh_viên as t1  join đăng_ký khoá học as t2  on t1.mã_số sinh_viên = t2.mã_số sinh_viên
select t1.tên của sinh_viên , t1.họ của sinh_viên , t3.mô_tả về khoá học  from sinh_viên as t1  join đăng_ký khoá học as t2 on t1.mã_số sinh_viên = t2.mã_số sinh_viên  join khoá học as t3 on t2.mã khoá học = t3.mã khoá học
select t1.tên của sinh_viên  from sinh_viên as t1  join đăng_ký khoá học as t2 on t1.mã_số sinh_viên = t2.mã_số sinh_viên  where t2.điểm_số = "A" or t2.điểm_số = "C"
select t1.tên của sinh_viên  from sinh_viên as t1  join đăng_ký khoá học as t2 on t1.mã_số sinh_viên = t2.mã_số sinh_viên  where t2.điểm_số = "A" or t2.điểm_số = "C"
select t1.tên của giáo_sư , t3.phòng học  from giáo_sư as t1  join khoa as t2 on t1.mã khoa = t2.mã khoa  join lớp_học as t3 on t1.mã số nhân_viên của giáo_sư = t3.mã số nhân_viên của giáo_sư  where t2.tên khoa = "Finance"
select t1.tên của giáo_sư , t2.tên khoa , t3.phòng học , t3.mã khoá học  from giáo_sư as t1  join khoa as t2 on t1.mã khoa = t2.mã khoa  join lớp_học as t3 on t3.mã lớp học = t1.mã số nhân_viên của giáo_sư  where t2.tên khoa = "Finance"
select t1.tên của giáo_sư , t2.bằng_cấp cao nhất  from giáo_sư as t1  join lớp_học as t2 on t1.mã số nhân_viên của giáo_sư = t2.mã số nhân_viên của giáo_sư  where t2.mã khoa = "CS"
select tên của giáo_sư , bằng_cấp cao nhất from giáo_sư where mã khoa = "CS"
select t1.họ của sinh_viên  from sinh_viên as t1  join đăng_ký khoá học as t2 on t1.mã_số sinh_viên = t2.mã_số sinh_viên  where t2.điểm_số = "A" and t2.mã lớp = "10018"
select t1.họ của sinh_viên  from sinh_viên as t1  join đăng_ký khoá học as t2 on t1.mã_số sinh_viên = t2.mã_số sinh_viên  where t2.điểm_số = "A" and t2.mã lớp = "10018"
select tên giáo_sư , văn_phòng giáo_sư from giáo_sư as t1 join khoa as t2 on t1.mã khoa = t2.mã khoa where t2.tên khoa = "History" and t1.bằng_cấp cao nhất != "Ph.D."
select tên giáo_sư , văn_phòng giáo_sư from giáo_sư where mã khoa = "History" and bằng_cấp cao nhất != "Ph.D."
select t1.tên của giáo_sư from giáo_sư as t1 join lớp_học as t2 on t1.mã số nhân_viên của giáo_sư = t2.mã số nhân_viên của giáo_sư group by t1.mã số nhân_viên của giáo_sư having count(*) > 1
select t1.tên của giáo_sư from giáo_sư as t1 join lớp_học as t2 on t1.mã số nhân_viên của giáo_sư = t2.mã số nhân_viên của giáo_sư group by t1.mã số nhân_viên của giáo_sư having count(*) > 1
select t1.tên của sinh_viên from sinh_viên as t1 join đăng_ký khoá học as t2 on t1.mã_số sinh_viên = t2.mã_số sinh_viên group by t1.mã_số sinh_viên having count(*) = 1
select t1.tên của sinh_viên from sinh_viên as t1 join đăng_ký khoá học as t2 on t1.mã_số sinh_viên = t2.mã_số sinh_viên group by t1.mã_số sinh_viên having count(*) = 1
select t1.tên khoa from khoa as t1 join khoá học as t2 on t1.mã khoa = t2.mã khoa where t2.mô_tả về khoá học like "%Thống_kê%"
select t1."tên khoa" from "khoa" as t1 join "khoá học" as t2 on t1."mã khoa" = t2."mã khoa" where t2."mô_tả về khoá học" like '%Statistics%'
select tên của sinh_viên from sinh_viên where tên của sinh_viên like 'S%' and mã khoá học in (select mã khoá học from đăng_ký khoá học where mã khoá học = 'ACCT-211')
select t1.tên của sinh_viên  from sinh_viên as t1  join đăng_ký khoá học as t2 on t1.mã_số sinh_viên = t2.mã_số sinh_viên  where t1.chữ_cái đầu của tên sinh_viên = 'S' and t2.mã khoá học = 'ACCT-211'
select "mã trạng_thái tài_liệu" from "trạng_thái của tài_liệu"
select t2."mô_tả về trạng_thái tài_liệu"  from "trạng_thái của tài_liệu" as t1  join "tài_liệu" as t2 on t1."mã trạng_thái tài_liệu" = t2."mã trạng_thái tài_liệu"  where t1."mã trạng_thái tài_liệu" = 'đang được xử_lý'
select "mã loại tài_liệu" from "loại tài_liệu"
select "mô_tả về loại tài_liệu" from "loại tài_liệu" where "mã loại tài_liệu" = 'Giấy'
select "tên đại_lý vận_chuyển" from "đại_lý vận_chuyển tài_liệu"
select "mã đại_lý vận_chuyển" from "đại_lý vận_chuyển tài_liệu" where "tên đại_lý vận_chuyển" = 'UPS'
select "mã vai_trò" from "vai_trò"
select "mô_tả về vai_trò" from "vai_trò" where "mã vai_trò" = 'ED'
select count(*) from nhân_viên
select "mã vai_trò" from "nhân_viên" where "tên nhân_viên" = 'Koby'
select id tài_liệu , ngày lập biên_lai from tài_liệu
select t1."mô_tả về vai_trò", t1."id vai_trò", count(*)  from "vai_trò" as t1  join "nhân_viên" as t2 on t1."mã vai_trò" = t2."mã vai_trò"  group by t1."mã vai_trò"
select t1."mô_tả về vai_trò", count(*)  from "vai_trò" as t1  join "nhân_viên" as t2 on t1."mã vai_trò" = t2."mã vai_trò"  group by t1."mã vai_trò"  having count(*) > 1
select "mô_tả về trạng_thái tài_liệu" from "trạng_thái của tài_liệu" where "id tài_liệu" = 1
select count(id tài_liệu) from tài_liệu where mã trạng_thái tài_liệu = "Đã được hoàn_thành"
select "mã loại tài_liệu" from "tài_liệu" where "id tài_liệu" = 2
select id tài_liệu from tài_liệu where mã trạng_thái tài_liệu = "Đã được hoàn_thành" and mã loại tài_liệu = "Giấy"
select t2."tên đại_lý vận_chuyển"  from "tài_liệu" as t1  join "đại_lý vận_chuyển tài_liệu" as t2  on t1."mã đại_lý vận_chuyển" = t2."mã đại_lý vận_chuyển"  where t1."id tài_liệu" = 2
select count(*) from tài_liệu as t1 join đại_lý vận_chuyển tài_liệu as t2 on t1.mã đại_lý vận_chuyển = t2.mã đại_lý vận_chuyển where t2.tên đại_lý vận_chuyển = "usps"
select t1."tên đại_lý vận_chuyển", count(*)  from "đại_lý vận_chuyển tài_liệu" as t1  join "tài_liệu" as t2 on t1."mã đại_lý vận_chuyển" = t2."mã đại_lý vận_chuyển"  group by t1."mã đại_lý vận_chuyển"  order by count(*) desc  limit 1
select ngày lập biên_lai from tài_liệu where id tài_liệu = 3
select t2.chi_tiết địa_chỉ  from tài_liệu được gửi as t1  join địa_chỉ as t2 on t1.gửi đến địa_chỉ có id = t2.id địa_chỉ  where t1.id tài_liệu = 4
select ngày gửi from tài_liệu được gửi where id tài_liệu = 7
select t1."id tài_liệu"  from "tài_liệu" as t1  join "loại tài_liệu" as t2 on t1."mã loại tài_liệu" = t2."mã loại tài_liệu"  join "đại_lý vận_chuyển tài_liệu" as t3 on t1."mã đại_lý vận_chuyển" = t3."mã đại_lý vận_chuyển"  where t1."mã trạng_thái tài_liệu" = 'Đã được hoàn_thành'  and t2."mô_tả về loại tài_liệu" = 'Giấy'  and t3."tên đại_lý vận_chuyển" != 'USPS'
select t1."id tài_liệu"  from "tài_liệu" as t1  join "đại_lý vận_chuyển tài_liệu" as t2 on t1."mã đại_lý vận_chuyển" = t2."mã đại_lý vận_chuyển"  join "loại tài_liệu" as t3 on t1."mã loại tài_liệu" = t3."mã loại tài_liệu"  where t1."mã trạng_thái tài_liệu" = 'Đã được hoàn_thành' and t3."mô_tả về loại tài_liệu" = 'Giấy' and t2."tên đại_lý vận_chuyển" = 'USPS'
select chi_tiết dự_thảo from bản dự_thảo của tài_liệu where id tài_liệu = 7
select count(*) from bản_sao as t1 join tài_liệu as t2 on t1.id tài_liệu = t2.id tài_liệu where t2.id tài_liệu = 2
select t1.id tài_liệu , count ( * ) from bản_sao as t1 join tài_liệu as t2 on t1.id tài_liệu = t2.id tài_liệu group by t1.id tài_liệu order by count ( * ) desc limit 1
select t1."id tài_liệu", count(*)  from "tài_liệu" as t1  join "bản_sao" as t2 on t1."id tài_liệu" = t2."id tài_liệu"  group by t1."id tài_liệu"  having count(*) > 1
select t1.tên nhân_viên from nhân_viên as t1 join lịch_sử lưu_hành as t2 on t1.id nhân_viên = t2.id nhân_viên where t2.id tài_liệu = 1
select tên nhân_viên from nhân_viên where id nhân_viên not in (select id nhân_viên from lịch_sử lưu_hành)
select t1.tên nhân_viên , count(*)  from nhân_viên as t1  join lịch_sử lưu_hành as t2  on t1.id nhân_viên = t2.id nhân_viên  group by t1.id nhân_viên  order by count(*) desc  limit 1
select t1."id tài_liệu", count(t2."id nhân_viên")  from "tài_liệu" as t1  join "lịch_sử lưu_hành" as t2  on t1."id tài_liệu" = t2."id tài_liệu"  group by t1."id tài_liệu"
select count(*) from "lượt đặt_hàng"
select count(*) from lượt đặt_hàng
select ngày đặt_hàng from lượt đặt_hàng
select ngày đặt_hàng from lượt đặt_hàng
select ngày giao hàng theo kế_hoạch, ngày giao hàng thực_tế from lượt đặt_hàng
select ngày giao hàng theo kế_hoạch , ngày giao hàng thực_tế from lượt đặt_hàng
select count(*) from khách_hàng
select count(*) from khách_hàng
select số điện_thoại khách_hàng , địa_chỉ email khách_hàng from khách_hàng where tên khách_hàng = "Harold"
select địa_chỉ email khách_hàng , số điện_thoại khách_hàng from khách_hàng where tên khách_hàng = "Harold"
select t1.tên cửa_hàng from cửa_hàng as t1 join nhóm hội_thảo kịch as t2 on t1.id cửa_hàng = t2.id cửa_hàng
select t1.tên cửa_hàng from cửa_hàng as t1 join nhóm hội_thảo kịch as t2 on t1.id cửa_hàng = t2.id cửa_hàng
select min(số_lượng đặt_hàng), avg(số_lượng đặt_hàng), max(số_lượng đặt_hàng) from hoá_đơn
select min(số_lượng đặt_hàng), avg(số_lượng đặt_hàng), max(số_lượng đặt_hàng) from hoá_đơn group by tên sản_phẩm
select t1."mã phương_thức thanh_toán"  from "hoá_đơn" as t2  join "phương_thức thanh_toán" as t1  on t2."mã phương_thức thanh_toán" = t1."mã phương_thức thanh_toán"  group by t1."mã phương_thức thanh_toán"  having count(*) > 1
select t1."mã phương_thức thanh_toán"  from "hoá_đơn" as t2  join "phương_thức thanh_toán" as t1  on t2."mã phương_thức thanh_toán" = t1."mã phương_thức thanh_toán"  group by t1."mã phương_thức thanh_toán"  having count(*) > 0
select "mô_tả về khu_vực tiếp_thị" from "khu_vực tiếp_thị" where "mã khu_vực tiếp_thị" = 'Trung_Quốc'
select "mô_tả về khu_vực tiếp_thị" from "khu_vực tiếp_thị" where "mã khu_vực tiếp_thị" = 'China'
select distinct tên sản_phẩm from các sản_phẩm where giá sản_phẩm > ( select avg ( giá sản_phẩm ) from các sản_phẩm )
select tên sản_phẩm from các sản_phẩm where giá sản_phẩm > ( select avg(giá sản_phẩm) from các sản_phẩm )
select tên sản_phẩm from các sản_phẩm order by giá sản_phẩm desc limit 1
select tên sản_phẩm from các sản_phẩm order by giá sản_phẩm desc limit 1
select tên sản_phẩm from các sản_phẩm order by giá sản_phẩm asc
select tên sản_phẩm from các sản_phẩm order by giá sản_phẩm asc
select số điện_thoại khách_hàng from người biểu_diễn where tên khách_hàng = "Ashley"
select số điện_thoại khách_hàng from người biểu_diễn where tên khách_hàng = "Ashley"
select t1."mã phương_thức thanh_toán", count(*)  from "phương_thức thanh_toán" as t1  join "lượt đặt_hàng" as t2 on t1."mã phương_thức thanh_toán" = t2."mã phương_thức thanh_toán"  group by t1."mã phương_thức thanh_toán"
select t1."mã phương_thức thanh_toán", count(*)  from "phương_thức thanh_toán" as t1  join "lượt đặt_hàng" as t2  on t1."mã phương_thức thanh_toán" = t2."mã phương_thức thanh_toán"  group by t1."mã phương_thức thanh_toán"
select t1."mã phương_thức thanh_toán"  from "lượt đặt_hàng" as t2  join "phương_thức thanh_toán" as t1  on t2."mã phương_thức thanh_toán" = t1."mã phương_thức thanh_toán"  group by t2."mã phương_thức thanh_toán"  order by count(*) desc  limit 1
select t1."mã phương_thức thanh_toán"  from "hoá_đơn" as t2  join "phương_thức thanh_toán" as t1  on t2."mã phương_thức thanh_toán" = t1."mã phương_thức thanh_toán"  group by t2."mã phương_thức thanh_toán"  order by count(*) desc  limit 1
select distinct t2.thành_phố thị_trấn from cửa_hàng as t1 join địa_chỉ as t2 on t1.id địa_chỉ = t2.id địa_chỉ where t1.tên cửa_hàng = "FJM Filming"
select t2."thành_phố thị_trấn"  from "cửa_hàng" as t1  join "địa_chỉ" as t2 on t1."id địa_chỉ" = t2."id địa_chỉ"  where t1."tên cửa_hàng" = 'FJA Filming'
select t2.quận hạt from cửa_hàng as t1 join địa_chỉ as t2 on t1.id địa_chỉ = t2.id địa_chỉ where t1.mã khu_vực tiếp_thị = "CA"
select t2.những chi_tiết khác from cửa_hàng as t1 join khu_vực tiếp_thị as t2 on t1.mã khu_vực tiếp_thị = t2.mã khu_vực tiếp_thị where t2.mã khu_vực tiếp_thị = 'CA'
select mã khu_vực tiếp_thị from cửa_hàng where tên cửa_hàng = "Rob_Dinning"
select mã khu_vực tiếp_thị from cửa_hàng where tên cửa_hàng = "Rob_Dinning"
select t2."mô_tả về loại dịch_vụ"  from "loại dịch_vụ" as t1  join "dịch_vụ" as t2 on t1."mã loại dịch_vụ" = t2."mã loại dịch_vụ"  where t2."giá sản_phẩm" > 100
select "mô_tả về loại dịch_vụ" from "loại dịch_vụ" where "giá sản_phẩm" > 100
select "mô_tả về loại dịch_vụ", "mã loại dịch_vụ", count(*)  from "loại dịch_vụ"  group by "mã loại dịch_vụ"
select "mô_tả về loại dịch_vụ", "mã loại dịch_vụ", count(*) from "loại dịch_vụ" group by "mã loại dịch_vụ"
select t1."mô_tả về loại dịch_vụ", t1."mã loại dịch_vụ"  from "loại dịch_vụ" as t1  join "dịch_vụ" as t2 on t1."mã loại dịch_vụ" = t2."mã loại dịch_vụ"  group by t1."mã loại dịch_vụ"  order by count(*) desc  limit 1
select t1."mã loại dịch_vụ", t1."mô_tả về loại dịch_vụ"  from "loại dịch_vụ" as t1  join "dịch_vụ" as t2 on t1."mã loại dịch_vụ" = t2."mã loại dịch_vụ"  join "lượt đặt_hàng của khách_hàng" as t3 on t2."id dịch_vụ" = t3."id dịch_vụ"  group by t1."mã loại dịch_vụ"  order by count(*) desc  limit 1
select t1.số điện_thoại cửa_hàng , t1.địa_chỉ email cửa_hàng from nhóm hội_thảo kịch as t1 join dịch_vụ as t2 on t1.id nhóm hội_thảo kịch = t2.id nhóm hội_thảo kịch group by t1.id nhóm hội_thảo kịch
select t1.địa_chỉ email cửa_hàng , t1.số điện_thoại cửa_hàng from nhóm hội_thảo kịch as t1 join dịch_vụ as t2 on t1.id nhóm hội_thảo kịch = t2.id nhóm hội_thảo kịch group by t1.id nhóm hội_thảo kịch having count ( * ) > = 1
select t1.số điện_thoại cửa_hàng , t1.địa_chỉ email cửa_hàng  from nhóm hội_thảo kịch as t1  join dịch_vụ as t2 on t1.id nhóm hội_thảo kịch = t2.id nhóm hội_thảo kịch  where t2.tên sản_phẩm = "phim"
select distinct t1."id nhóm hội_thảo kịch"  from "dịch_vụ" as t2  join "cửa_hàng" as t1 on t2."id nhóm hội_thảo kịch" = t1."id nhóm hội_thảo kịch"  where t2."tên sản_phẩm" = 'phim'
select tên sản_phẩm , avg ( giá sản_phẩm ) from các sản_phẩm group by tên sản_phẩm
select tên sản_phẩm, avg(giá sản_phẩm) from các sản_phẩm group by tên sản_phẩm
select tên sản_phẩm from các sản_phẩm group by tên sản_phẩm having avg(giá sản_phẩm) < 1000000
select tên sản_phẩm from các sản_phẩm where giá sản_phẩm in (select avg(giá sản_phẩm) from các sản_phẩm) and giá sản_phẩm < 1000000
select sum(t2.số_lượng đặt_hàng)  from dịch_vụ as t1  join lượt đặt_hàng as t2  on t1.id dịch_vụ = t2.id dịch_vụ  where t1.mã loại dịch_vụ = "Pic"
select sum(t2.số_lượng đặt_hàng)  from dịch_vụ as t1  join lượt đặt_hàng as t2 on t1.id sản_phẩm = t2.id sản_phẩm  where t1.mã loại dịch_vụ = 'Pic'
select t2.chi_tiết khác về mặt_hàng  from các sản_phẩm as t1  join mặt_hàng được đặt as t2  on t1.id sản_phẩm = t2.id sản_phẩm  where t1.giá sản_phẩm > 2000
select t1.chi_tiết đặt_hàng from các sản_phẩm as t1 join lượt đặt_hàng của khách_hàng as t2 on t1.id sản_phẩm = t2.id sản_phẩm where t1.giá sản_phẩm > 2000
select t1."ngày giao hàng thực_tế"  from "lượt đặt_hàng" as t1  join "mặt_hàng được đặt" as t2  on t1."id đơn hàng" = t2."id đơn hàng"  where t2."số_lượng đặt_hàng" = 1
select t1."ngày giao hàng thực_tế"  from "lượt đặt_hàng" as t1  join "mặt_hàng được đặt" as t2 on t1."id đơn hàng" = t2."id đơn hàng"  where t2."số_lượng đặt_hàng" = 1
select t1.ngày đặt_hàng from lượt đặt_hàng as t1 join dịch_vụ as t2 on t1.id đơn hàng = t2.id đơn hàng where t2.giá sản_phẩm > 1000
select t1."ngày đặt_hàng"  from "lượt đặt_hàng" as t1  join "cửa_hàng" as t2 on t1."id cửa_hàng" = t2."id cửa_hàng"  join "khách_hàng" as t3 on t1."id khách_hàng" = t3."id khách_hàng"  where t2."giá sản_phẩm" > 1000
select count(distinct "mã_tiền tệ") from "nhóm hội_thảo kịch"
select count(distinct "mã_tiền tệ") from "nhóm hội_thảo kịch"
select t1."tên cửa_hàng"  from "nhóm hội_thảo kịch" as t1  join "địa_chỉ" as t2 on t1."id địa_chỉ" = t2."id địa_chỉ"  where t2."thành_phố thị_trấn" = 'Feliciaberg'
select t1."tên cửa_hàng"  from "nhóm hội_thảo kịch" as t1  join "địa_chỉ" as t2 on t1."id địa_chỉ" = t2."id địa_chỉ"  where t2."thành_phố thị_trấn" = 'Feliciaberg'
select t2."địa_chỉ email cửa_hàng"  from "nhóm hội_thảo kịch" as t1  join "địa_chỉ" as t2 on t1."id địa_chỉ" = t2."id địa_chỉ"  where t2."quận hạt" = 'Alaska'
select t2."địa_chỉ email cửa_hàng"  from "nhóm hội_thảo kịch" as t1  join "địa_chỉ" as t2 on t1."id địa_chỉ" = t2."id địa_chỉ"  where t2."quận hạt" = 'Alaska'
select t1."thành_phố thị_trấn", count(*)  from "địa_chỉ" as t1  join "nhóm hội_thảo kịch" as t2  on t1."id địa_chỉ" = t2."id địa_chỉ"  group by t1."thành_phố thị_trấn"
select t2."thành_phố thị_trấn", count(*)  from "cửa_hàng" as t1  join "địa_chỉ" as t2 on t1."id địa_chỉ" = t2."id địa_chỉ"  group by t2."thành_phố thị_trấn"
select t1."mã khu_vực tiếp_thị"  from "khu_vực tiếp_thị" as t1  join "nhóm hội_thảo kịch" as t2  on t1."mã khu_vực tiếp_thị" = t2."mã khu_vực tiếp_thị"  group by t1."mã khu_vực tiếp_thị"  order by count(*) desc  limit 1
select t1."mã khu_vực tiếp_thị"  from "khu_vực tiếp_thị" as t1  join "nhóm hội_thảo kịch" as t2  on t1."mã khu_vực tiếp_thị" = t2."mã khu_vực tiếp_thị"  group by t1."mã khu_vực tiếp_thị"  order by count(*) desc  limit 1
select t1."thành_phố thị_trấn" from "địa_chỉ" as t1 join "khách_hàng" as t2 on t1."id địa_chỉ" = t2."id địa_chỉ" where t2."id khách_hàng" not in ( select t3."id khách_hàng" from "khách_hàng" as t3 join "người biểu_diễn trong các lượt đặt_hàng" as t4 on t3."id khách_hàng" = t4."id khách_hàng" ) group by t1."thành_phố thị_trấn" having count ( * ) > = 1
select distinct t1."thành_phố thị_trấn"  from "địa_chỉ" as t1  join "khách_hàng" as t2 on t1."id địa_chỉ" = t2."id địa_chỉ"  where t2."id khách_hàng" not in (      select "id khách_hàng"      from "người biểu_diễn trong các lượt đặt_hàng"  )
select mã trạng_thái from lượt đặt_hàng group by mã trạng_thái order by count(*) desc limit 1
select mã trạng_thái from lượt đặt_hàng group by mã trạng_thái order by count(*) desc limit 1
select t2.tên cửa_hàng from lượt đặt_hàng as t1 join nhóm hội_thảo kịch as t2 on t1.id nhóm hội_thảo kịch = t2.id nhóm hội_thảo kịch where t1.mã trạng_thái = "stop"
select distinct t2.tên cửa_hàng from lượt đặt_hàng as t1 join nhóm hội_thảo kịch as t2 on t1.id nhóm hội_thảo kịch = t2.id nhóm hội_thảo kịch where t1.mã trạng_thái = "stop"
select tên khách_hàng from khách_hàng except select t1.id khách_hàng from lượt đặt_hàng của khách_hàng as t1 join khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng
select tên khách_hàng from khách_hàng where id khách_hàng not in ( select id khách_hàng from lượt đặt_hàng của khách_hàng ) group by id khách_hàng having count ( * ) = 0
select avg(t1."số_lượng đặt_hàng")  from "hoá_đơn" as t1  join "lượt đặt_hàng" as t2 on t1."id đơn hàng" = t2."id đơn hàng"  join "phương_thức thanh_toán" as t3 on t2."mã phương_thức thanh_toán" = t3."mã phương_thức thanh_toán"  where t3."mã phương_thức thanh_toán" = 'Mastercard'
select avg(t1."số_lượng đặt_hàng"), t2."mã phương_thức thanh_toán"  from "hoá_đơn" as t1  join "phương_thức thanh_toán" as t2  on t1."mã phương_thức thanh_toán" = t2."mã phương_thức thanh_toán"  where t2."mã phương_thức thanh_toán" = 'Mastercard'  group by t2."mã phương_thức thanh_toán"
select t3.id sản_phẩm from mặt_hàng được đặt as t1 join hoá_đơn as t2 on t1.id hoá_đơn của mặt_hàng = t2.id hoá_đơn join dịch_vụ đặt_hàng as t3 on t2.id đơn hàng = t3.id đơn hàng group by t3.id sản_phẩm order by count(*) desc limit 1
select t1.id sản_phẩm from mặt_hàng được đặt as t1 join hoá_đơn as t2 on t1.id hoá_đơn của mặt_hàng = t2.id hoá_đơn join dịch_vụ đặt_hàng as t3 on t2.id đơn hàng = t3.id đơn hàng group by t1.id sản_phẩm order by count(*) desc limit 1
select t2."mô_tả về loại dịch_vụ"  from "loại dịch_vụ" as t1  join "dịch_vụ" as t2 on t1."mã loại dịch_vụ" = t2."mã loại dịch_vụ"  where t2."mô_tả về sản_phẩm" != 'Phim' and t2."mô_tả về sản_phẩm" != 'Ảnh'
select t2."mô_tả về loại dịch_vụ"  from "loại dịch_vụ" as t1  join "dịch_vụ" as t2 on t1."mã loại dịch_vụ" = t2."mã loại dịch_vụ"  where t2."mô_tả về sản_phẩm" = 'ảnh' or t2."mô_tả về sản_phẩm" = 'phim'
select count(*) from tài_khoản
select count(*) from tài_khoản
select count(distinct t1."id khách_hàng") from "khách_hàng" as t1 join "tài_khoản" as t2 on t1."id khách_hàng" = t2."id khách_hàng"
select count(distinct t1."id khách_hàng")  from "khách_hàng" as t1  join "tài_khoản" as t2  on t1."id khách_hàng" = t2."id khách_hàng"
select "id tài_khoản", "ngày mở tài_khoản", "tên tài_khoản", "chi_tiết khác về tài_khoản" from "tài_khoản"
select "id tài_khoản", "ngày mở tài_khoản", "tên tài_khoản", "chi_tiết khác về tài_khoản" from "tài_khoản"
select t1."id tài_khoản", t1."tên tài_khoản", t1."ngày mở tài_khoản", t1."chi_tiết khác về tài_khoản"  from "tài_khoản" as t1  join "khách_hàng" as t2 on t1."id khách_hàng" = t2."id khách_hàng"  where t2."tên khách_hàng" = 'Mea_Afghanistan'
select t1."id tài_khoản", t1."tên tài_khoản", t1."ngày mở tài_khoản", t1."chi_tiết khác về tài_khoản"  from "tài_khoản" as t1  join "khách_hàng" as t2 on t1."id khách_hàng" = t2."id khách_hàng"  where t2."tên khách_hàng" = 'Mea_Afghanistan'
select t1."tên tài_khoản", t1."chi_tiết khác về tài_khoản"  from "khách_hàng" as t2  join "tài_khoản" as t1 on t2."id khách_hàng" = t1."id khách_hàng"  where t2."tên khách_hàng" = 'Mea_Afghanistan' and t2."họ của khách_hàng" = 'Keeling'
select t1."tên tài_khoản", t1."chi_tiết khác về tài_khoản"  from "tài_khoản" as t1  join "khách_hàng" as t2 on t1."id khách_hàng" = t2."id khách_hàng"  where t2."tên khách_hàng" = 'Mea_Afghanistan_Keeling'
select t1."tên khách_hàng", t1."họ của khách_hàng"  from "khách_hàng" as t1  join "tài_khoản" as t2 on t1."id khách_hàng" = t2."id khách_hàng"  where t2."tên tài_khoản" = 900
select t1."tên khách_hàng", t1."chữ_cái đầu của tên đệm khách_hàng"  from "khách_hàng" as t1  join "tài_khoản" as t2 on t1."id khách_hàng" = t2."id khách_hàng"  where t2."tên tài_khoản" = '900'
select "id khách_hàng" from "khách_hàng" except select "id khách_hàng" from "tài_khoản"
select count(*) from khách_hàng where id khách_hàng not in (select id khách_hàng from tài_khoản)
select distinct t1."tên khách_hàng", t1."họ của khách_hàng", t1."số điện_thoại"  from "khách_hàng" as t1  join "tài_khoản" as t2 on t1."id khách_hàng" = t2."id khách_hàng"  where t2."id tài_khoản" is not null
select distinct t1."tên khách_hàng", t1."họ của khách_hàng", t1."số điện_thoại"  from "khách_hàng" as t1  join "tài_khoản" as t2 on t1."id khách_hàng" = t2."id khách_hàng"
select "id khách_hàng" from "khách_hàng" except select "id khách_hàng" from "tài_khoản"
select "tên khách_hàng" from "khách_hàng" except select "tên khách_hàng" from "khách_hàng" where "id khách_hàng" in (select "id khách_hàng" from "tài_khoản")
select count(*), "id khách_hàng" from "tài_khoản" as t1 join "khách_hàng" as t2 on t1."id khách_hàng" = t2."id khách_hàng" group by t1."id khách_hàng"
select "id khách_hàng", count(*) from "tài_khoản" group by "id khách_hàng"
select t1."tên khách_hàng", t1."họ của khách_hàng", t1."id khách_hàng"  from "khách_hàng" as t1  join "tài_khoản" as t2 on t1."id khách_hàng" = t2."id khách_hàng"  group by t1."id khách_hàng"  order by count(*) desc  limit 1
select t1."id khách_hàng", t1."tên khách_hàng", t1."chữ_cái đầu của tên đệm khách_hàng", t1."họ của khách_hàng"  from "khách_hàng" as t1  join "tài_khoản" as t2 on t1."id khách_hàng" = t2."id khách_hàng"  group by t1."id khách_hàng"  order by count(*) desc  limit 1
select t1."id khách_hàng", t1."tên khách_hàng", t1."họ của khách_hàng", count(*)  from "khách_hàng" as t1  join "tài_khoản" as t2 on t1."id khách_hàng" = t2."id khách_hàng"  group by t1."id khách_hàng"
select t1."tên khách_hàng", t1."chữ_cái đầu của tên đệm khách_hàng", t1."họ của khách_hàng", t1."id khách_hàng", count(*)  from "khách_hàng" as t1  join "tài_khoản" as t2 on t1."id khách_hàng" = t2."id khách_hàng"  group by t1."id khách_hàng"
select t1."tên khách_hàng", t1."id khách_hàng"  from "khách_hàng" as t1  join "tài_khoản" as t2 on t1."id khách_hàng" = t2."id khách_hàng"  group by t1."id khách_hàng"  having count(*) >= 2
select t1."tên khách_hàng", t1."id khách_hàng"  from "khách_hàng" as t1  join "tài_khoản" as t2 on t1."id khách_hàng" = t2."id khách_hàng"  group by t1."id khách_hàng"  having count(*) >= 2
select count(*) from "khách_hàng"
select count(*) from "khách_hàng"
select giới_tính, count(*) from khách_hàng group by giới_tính
select giới_tính, count(*) from khách_hàng group by giới_tính
select count(*) from giao_dịch tài_chính
select count(*) from giao_dịch tài_chính
select t1."id tài_khoản", count(*)  from "giao_dịch tài_chính" as t1  join "tài_khoản" as t2 on t1."id tài_khoản" = t2."id tài_khoản"  group by t1."id tài_khoản"
select count(*), distinct t1."id tài_khoản"  from "giao_dịch tài_chính" as t1  join "tài_khoản" as t2  on t1."id tài_khoản" = t2."id tài_khoản"
select count(*) from giao_dịch tài_chính as t1 join tài_khoản as t2 on t1.id tài_khoản = t2.id tài_khoản where t2.tên tài_khoản = "337"
select count(*) from giao_dịch tài_chính as t1 join tài_khoản as t2 on t1.id tài_khoản = t2.id tài_khoản where t2.tên tài_khoản = "337"
select avg("số tiền giao_dịch"), min("số tiền giao_dịch"), max("số tiền giao_dịch"), sum("số tiền giao_dịch") from "giao_dịch tài_chính"
select avg(số tiền giao_dịch), min(số tiền giao_dịch), max(số tiền giao_dịch), sum(số tiền giao_dịch) from giao_dịch tài_chính group by id giao_dịch
select "id giao_dịch" from "giao_dịch tài_chính" where "số tiền giao_dịch" > ( select avg("số tiền giao_dịch") from "giao_dịch tài_chính" )
select "id giao_dịch" from "giao_dịch tài_chính" where "số tiền giao_dịch" > ( select avg("số tiền giao_dịch") from "giao_dịch tài_chính" ) group by "id giao_dịch" having count(*) > 1
select loại giao_dịch, sum(số tiền giao_dịch) from giao_dịch tài_chính group by loại giao_dịch order by sum(số tiền giao_dịch) desc
select loại giao_dịch, sum(số tiền giao_dịch) from giao_dịch tài_chính group by loại giao_dịch
select t1."tên tài_khoản", t1."id tài_khoản", count(*)  from "tài_khoản" as t1  join "giao_dịch tài_chính" as t2 on t1."id tài_khoản" = t2."id tài_khoản"  group by t1."id tài_khoản"
select t1."tên tài_khoản", t1."id tài_khoản", count(*)  from "tài_khoản" as t1  join "giao_dịch tài_chính" as t2 on t1."id tài_khoản" = t2."id tài_khoản"  group by t1."id tài_khoản"
select t1."id tài_khoản" from "tài_khoản" as t1 join "giao_dịch tài_chính" as t2 on t1."id tài_khoản" = t2."id tài_khoản" group by t1."id tài_khoản" order by count(*) desc limit 1
select t1."id tài_khoản" from "tài_khoản" as t1 join "giao_dịch tài_chính" as t2 on t1."id tài_khoản" = t2."id tài_khoản" group by t1."id tài_khoản" order by count(*) desc limit 1
select t1."tên tài_khoản", t1."id tài_khoản"  from "tài_khoản" as t1  join "giao_dịch tài_chính" as t2 on t1."id tài_khoản" = t2."id tài_khoản"  group by t1."id tài_khoản"  having count(*) >= 4
select t1."tên tài_khoản", t1."id tài_khoản"  from "tài_khoản" as t1  join "giao_dịch tài_chính" as t2 on t1."id tài_khoản" = t2."id tài_khoản"  group by t1."id tài_khoản"  having count(*) >= 4
select distinct kích_thước sản_phẩm from sản_phẩm
select distinct kích_thước sản_phẩm from sản_phẩm
select distinct màu sắc from sản_phẩm
select distinct màu sản_phẩm from sản_phẩm
select t1."số_hoá đơn", count(*)  from "hoá_đơn" as t1  join "giao_dịch tài_chính" as t2  on t1."số_hoá đơn" = t2."số_hoá đơn"  group by t1."số_hoá đơn"
select count(*), t1."số_hoá đơn"  from "giao_dịch tài_chính" as t1  join "hoá_đơn" as t2 on t1."số_hoá đơn" = t2."số_hoá đơn"  group by t1."số_hoá đơn"
select t1."số_hoá đơn", t1."ngày lập hoá_đơn"  from "hoá_đơn" as t1  join "giao_dịch tài_chính" as t2 on t1."số_hoá đơn" = t2."số_hoá đơn"  group by t1."số_hoá đơn"  order by count(*) desc  limit 1
select t1."số_hoá đơn", t1."ngày lập hoá_đơn"  from "hoá_đơn" as t1  join "giao_dịch tài_chính" as t2 on t1."số_hoá đơn" = t2."số_hoá đơn"  order by t2."số tiền giao_dịch" desc  limit 1
select count(*) from "hoá_đơn"
select count(*) from "hoá_đơn"
select ngày lập hoá_đơn , id đơn hàng , chi_tiết đặt_hàng from hoá_đơn
select * from hoá_đơn
select t1."id đơn hàng", count(*) from "đơn đặt_hàng" as t1 join "hoá_đơn" as t2 on t1."id đơn hàng" = t2."id đơn hàng" group by t1."id đơn hàng"
select count(*), "id đơn hàng" from "hoá_đơn" as t1 join "đơn đặt_hàng" as t2 on t1."id đơn hàng" = t2."id đơn hàng" group by t1."id đơn hàng"
select t1."id đơn hàng", t1."chi_tiết đặt_hàng"  from "đơn đặt_hàng" as t1  join "hoá_đơn" as t2 on t1."id đơn hàng" = t2."id đơn hàng"  group by t1."id đơn hàng"  having count(*) > 2
select t1."id đơn hàng", t1."chi_tiết đặt_hàng"  from "đơn đặt_hàng" as t1  join "hoá_đơn" as t2 on t1."id đơn hàng" = t2."id đơn hàng"  group by t1."id đơn hàng"  having count(*) >= 2
select t1."id khách_hàng", t1."họ của khách_hàng", t1."số điện_thoại"  from "khách_hàng" as t1  join "đơn đặt_hàng" as t2 on t1."id khách_hàng" = t2."id khách_hàng"  group by t1."id khách_hàng"  order by count(*) desc  limit 1
select t1.họ của khách_hàng , t1.id khách_hàng , t1.số điện_thoại  from khách_hàng as t1  join đơn đặt_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng  group by t1.id khách_hàng  order by count(*) desc  limit 1
select "tên sản_phẩm" from "sản_phẩm" except select "tiêu_đề sản_phẩm" from "mặt_hàng được đặt"
select "tên sản_phẩm" from "sản_phẩm" except select "tiêu_đề sản_phẩm" from "mặt_hàng được đặt"
select t1.tên sản_phẩm , sum ( t1.số_lượng sản_phẩm )  from sản_phẩm as t1  join mặt_hàng được đặt as t2 on t1.id sản_phẩm = t2.id sản_phẩm  group by t1.id sản_phẩm
select t1.tên sản_phẩm , sum ( t1.số_lượng sản_phẩm )  from sản_phẩm as t1  join mặt_hàng được đặt as t2 on t1.id sản_phẩm = t2.id sản_phẩm  group by t1.tên sản_phẩm
select t1."id đơn hàng", count(*)  from "mặt_hàng được đặt" as t1  join "đơn đặt_hàng" as t2 on t1."id đơn hàng" = t2."id đơn hàng"  group by t1."id đơn hàng"
select count(*), "id đơn hàng" from "mặt_hàng được đặt" as t1 join "đơn đặt_hàng" as t2 on t1."id đơn hàng" = t2."id đơn hàng" group by t1."id đơn hàng"
select t1."id sản_phẩm", count(distinct t2."id đơn hàng")  from "mặt_hàng được đặt" as t1  join "đơn đặt_hàng" as t2 on t1."id đơn hàng" = t2."id đơn hàng"  group by t1."id sản_phẩm"
select distinct t1."id đơn hàng", count(t1."id đơn hàng")  from "đơn đặt_hàng" as t1  join "mặt_hàng được đặt" as t2  on t1."id đơn hàng" = t2."id đơn hàng"  group by t2."id sản_phẩm"
select t1.tên sản_phẩm , count ( * ) from sản_phẩm as t1 join mặt_hàng được đặt as t2 on t1.id sản_phẩm = t2.id sản_phẩm group by t1.tên sản_phẩm
select t1."tên sản_phẩm", count(distinct t2."id khách_hàng")  from "sản_phẩm" as t1  join "mặt_hàng được đặt" as t2  on t1."id sản_phẩm" = t2."id sản_phẩm"  group by t1."tên sản_phẩm"
select t1."id đơn hàng", count(*)  from "mặt_hàng được đặt" as t1  join "đơn đặt_hàng" as t2 on t1."id đơn hàng" = t2."id đơn hàng"  group by t1."id đơn hàng"
select count(distinct t1."id sản_phẩm") from "mặt_hàng được đặt" as t2  join "sản_phẩm" as t1 on t2."id sản_phẩm" = t1."id sản_phẩm"  group by t2."id đơn hàng"
select t1."id đơn hàng", sum(t2."số_lượng sản_phẩm")  from "đơn đặt_hàng" as t1  join "mặt_hàng được đặt" as t2  on t1."id đơn hàng" = t2."id đơn hàng"  group by t1."id đơn hàng"
select t1."id đơn hàng", sum(t2."số_lượng sản_phẩm")  from "đơn đặt_hàng" as t1  join "mặt_hàng được đặt" as t2  on t1."id đơn hàng" = t2."id đơn hàng"  group by t1."id đơn hàng"
select count(*) from sản_phẩm where "id sản_phẩm" not in (select "id sản_phẩm" from mặt_hàng được đặt)
select count(*) from "sản_phẩm" except select "id sản_phẩm" from "mặt_hàng được đặt"
select count(*) from "địa_chỉ" where "quốc_gia" = 'United_States'
select distinct thành_phố from địa_chỉ
select tiểu_bang, count(*) from địa_chỉ group by tiểu_bang
select tên khách_hàng , điện_thoại khách_hàng from khách_hàng where "địa_chỉ của khách_hàng" not in ( select "địa_chỉ dòng 1 toà nhà" from địa_chỉ )
select t1."tên khách_hàng" from "khách_hàng" as t1 join "lượt đặt_hàng của khách_hàng" as t2 on t1."id khách_hàng" = t2."id khách_hàng" group by t1."id khách_hàng" order by count(*) desc limit 1
select "mã loại sản_phẩm" from "sản_phẩm" group by "mã loại sản_phẩm" having count(*) >= 2
select t1."tên khách_hàng"  from "khách_hàng" as t1  join "lượt đặt_hàng của khách_hàng" as t2  on t1."id khách_hàng" = t2."id khách_hàng"  where t2."mã trạng_thái đơn hàng" = 'Đã hoàn_thành'  intersect  select t1."tên khách_hàng"  from "khách_hàng" as t1  join "lượt đặt_hàng của khách_hàng" as t2  on t1."id khách_hàng" = t2."id khách_hàng"  where t2."mã trạng_thái đơn hàng" = 'Đang hoàn_thành'
select tên khách_hàng , số điện_thoại khách_hàng , mã phương_thức thanh_toán from khách_hàng order by mã khách_hàng desc
select t1."tên sản_phẩm", sum(t2."số_lượng đặt_hàng")  from "sản_phẩm" as t1  join "mặt_hàng được đặt" as t2  on t1."id sản_phẩm" = t2."id sản_phẩm"  group by t1."tên sản_phẩm"
select max(giá sản_phẩm), min(giá sản_phẩm), avg(giá sản_phẩm) from sản_phẩm
select count("id sản_phẩm") from "sản_phẩm" where "giá sản_phẩm" > (select avg("giá sản_phẩm") from "sản_phẩm")
select t1."tên khách_hàng", t1."thành_phố", t2."từ ngày", t2."đến ngày"  from "khách_hàng" as t1  join "lịch_sử địa_chỉ khách_hàng" as t2  on t1."id khách_hàng" = t2."id khách_hàng"
select t1.tên khách_hàng  from khách_hàng as t1  join lượt đặt_hàng của khách_hàng as t2  on t1.id khách_hàng = t2.id khách_hàng  where t1.mã phương_thức thanh_toán = "Credit Card"  group by t1.tên khách_hàng  having count(*) > 2
select t1.tên khách_hàng , t1.điện_thoại khách_hàng  from khách_hàng as t1  join lượt đặt_hàng của khách_hàng as t2 on t1.id khách_hàng = t2.id khách_hàng  join mặt_hàng được đặt as t3 on t2.id đơn hàng = t3.id đơn hàng  group by t1.id khách_hàng  order by sum ( t3.số_lượng đặt_hàng ) desc  limit 1
select mã loại sản_phẩm , tên sản_phẩm from sản_phẩm where giá sản_phẩm > 1000 or giá sản_phẩm < 500
select count(tên) from bộ_trưởng where tuổi > 56
select tên , sinh ra ở tiểu_bang , tuổi from bộ_trưởng order by tuổi
select "năm thành_lập", "tên", "ngân_sách tính theo tỷ" from "các bộ"
select max("ngân_sách tính theo tỷ"), min("ngân_sách tính theo tỷ") from "các bộ"
select avg("số_lượng nhân_viên") from "các bộ" where "xếp_hạng" between 10 and 15
select tên from bộ_trưởng where sinh ra ở tiểu_bang <> 'California'
select distinct t1."năm thành_lập"  from "các bộ" as t1  join "bộ_trưởng" as t2 on t1."id các bộ" = t2."id người đứng đầu"  where t2."sinh ra ở tiểu_bang" = 'Alabama'
select "sinh ra ở tiểu_bang" from "bộ_trưởng" group by "sinh ra ở tiểu_bang" having count(*) >= 3
select "năm thành_lập" from "các bộ" group by "năm thành_lập" order by count(*) desc limit 1
select t1.tên , t1.số_lượng nhân_viên  from các bộ as t1  join sự quản_lý as t2 on t1.id các bộ = t2.id các bộ  where t2.vai_trò tạm_thời = "T1"
select count ( distinct vai_trò tạm_thời ) from sự quản_lý
select count(*) from "các bộ" where "id các bộ" not in (select "id các bộ" from "sự quản_lý")
select distinct tuổi from bộ_trưởng
select t2.sinh ra ở tiểu_bang from sự quản_lý as t1 join bộ_trưởng as t2 on t1.id người đứng đầu = t2.id người đứng đầu where t1.vai_trò tạm_thời = "Bộ tài_chính" intersect select t2.sinh ra ở tiểu_bang from sự quản_lý as t1 join bộ_trưởng as t2 on t1.id người đứng đầu = t2.id người đứng đầu where t1.vai_trò tạm_thời = "Bộ An_ninh nội_địa"
select t1."id các bộ", t1."tên", count(*)  from "các bộ" as t1  join "bộ_trưởng" as t2 on t1."id các bộ" = t2."id các bộ"  group by t1."id các bộ"  having count(*) > 1
select "id người đứng đầu", "tên" from "bộ_trưởng" where "tên" like "%Ha%"
select id from xe
select id from xe
select count(*) from "xe"
select count(*) from "xe"
select "chi_tiết về xe" from "xe" where "id" = 1
select chi_tiết về xe from xe where id = 1
select tên , tên đệm , họ from nhân_viên
select tên , tên đệm , họ from nhân_viên
select ngày_sinh from nhân_viên where tên = "Janessa" and họ = "Sawayn"
select ngày_sinh from nhân_viên where tên = "Janessa_Sawayn"
select "ngày nhân_viên gia_nhập" from "nhân_viên" where "tên" = 'Janessa' and "họ" = 'Sawayn'
select "ngày nhân_viên gia_nhập" from "nhân_viên" where "tên" = 'Janessa_Sawayn'
select "ngày nhân_viên rời đi" from "nhân_viên" where "tên" = 'Janessa' and "họ" = 'Sawayn'
select "ngày nhân_viên rời đi" from "nhân_viên" where "tên" = 'Janessa' and "họ" = 'Sawayn'
select count(*) from nhân_viên where tên = "Ludie"
select count("id nhân_viên") from "nhân_viên" where "tên" = 'Ludie'
select biệt_danh from nhân_viên where tên = "Janessa" and họ = "Sawayn"
select biệt_danh from nhân_viên where tên = "Janessa" and họ = "Sawayn"
select count(*) from nhân_viên
select count(*) from nhân_viên
select t2.thành_phố  from nhân_viên as t1  join địa_chỉ as t2 on t1.id địa_chỉ nhân_viên = t2.id địa_chỉ  where t1.tên = "Janessa" and t1.họ = "Sawayn"
select thành_phố from khách_hàng where tên = "Janessa_Sawayn"
select quốc_gia , tiểu_bang from nhân_viên where tên = "Janessa" and họ = "Sawayn"
select t1.quốc_gia , t1.tiểu_bang  from địa_chỉ as t1  join khách_hàng as t2 on t1."id địa_chỉ khách_hàng" = t2."id địa_chỉ khách_hàng"  where t2.tên = "Janessa" and t2.họ = "Sawayn"
select sum(t2.giờ học)  from khách_hàng as t1  join bài giảng as t2 on t1.id khách_hàng = t2.id khách_hàng  where t1.tên = "Rylan" and t1.họ = "Goodwin"
select sum(t1."giờ học")  from "bài giảng" as t1  join "khách_hàng" as t2 on t1."id khách_hàng" = t2."id khách_hàng"  where t2."tên" = 'Rylan' and t2."họ" = 'Goodwin'
select t1."mã bưu_điện"  from "địa_chỉ" as t1  join "nhân_viên" as t2 on t1."id địa_chỉ nhân_viên" = t2."id địa_chỉ nhân_viên"  where t2."tên" = 'Janessa' and t2."họ" = 'Sawayn'
select t2."mã bưu_điện"  from "nhân_viên" as t1  join "địa_chỉ" as t2 on t1."id địa_chỉ nhân_viên" = t2."id địa_chỉ"  where t1."tên" = 'Janessa' and t1."họ" = 'Sawayn'
select count(*) from nhân_viên where tiểu_bang = "Georgia"
select count(*) from nhân_viên where thành phố = "Georgia"
select t1.tên , t1.họ  from nhân_viên as t1  join địa_chỉ as t2 on t1."id địa_chỉ nhân_viên" = t2."id địa_chỉ"  where t2."thành_phố" = 'Damianfort'
select t1.tên , t1.họ  from nhân_viên as t1  join địa_chỉ nhân_viên as t2 on t1."id nhân_viên" = t2."id địa_chỉ nhân_viên"  where t2."thành_phố" = 'Damianfort'
select t1.thành_phố , count(*)  from địa_chỉ as t1  join nhân_viên as t2 on t1."id địa_chỉ" = t2."id địa_chỉ nhân_viên"  group by t1.thành_phố  order by count(*) desc  limit 1
select t1.thành_phố , count(*)  from địa_chỉ as t1  join nhân_viên as t2 on t1."id địa_chỉ nhân_viên" = t2."id địa_chỉ nhân_viên"  group by t1.thành_phố  order by count(*) desc  limit 1
select t1."tiểu_bang" from "địa_chỉ nhân_viên" as t2 join "nhân_viên" as t1 on t2."id địa_chỉ nhân_viên" = t1."id địa_chỉ nhân_viên" group by t1."tiểu_bang" having count(*) >= 2 and count(*) <= 4
select t1."tiểu_bang"  from "nhân_viên" as t2  join "địa_chỉ" as t1 on t2."id địa_chỉ nhân_viên" = t1."id địa_chỉ"  group by t1."tiểu_bang"  having count(*) >= 2 and count(*) <= 4
select tên , họ from khách_hàng
select tên , họ from khách_hàng
select địa chỉ email , ngày_sinh from khách_hàng where tên = "Carole"
select địa chỉ email , ngày_sinh from khách_hàng where tên = "Carole"
select t1.số điện_thoại , t1.địa chỉ email  from khách_hàng as t1  join khoản thanh_toán của khách_hàng as t2  on t1.id khách_hàng = t2.id khách_hàng  where t2.số tiền thanh_toán - t2.số tiền thanh_toán > 2000
select t1.số điện_thoại , t1.địa chỉ email  from khách_hàng as t1  join khoản thanh_toán của khách_hàng as t2  on t1.id khách_hàng = t2.id khách_hàng  where t2.số tiền thanh_toán - t2.số tiền thanh_toán > 2000
select "mã trạng_thái khách_hàng", "số điện_thoại_di_động", "địa chỉ email" from "khách_hàng" where "tên" = 'Marina' or "họ" = 'Kohler'
select "mã trạng_thái khách_hàng", "số điện_thoại_di_động", "địa chỉ email" from "khách_hàng" where "tên" = 'Marina' or "họ" = 'Kohler'
select ngày_sinh from khách_hàng where mã trạng_thái khách_hàng = 'Khách_hàng tốt'
select ngày_sinh from khách_hàng where mã trạng_thái khách_hàng = 'Khách_hàng tốt'
select ngày trở_thành khách_hàng from khách_hàng where tên = "Carole" and họ = "Bernhard"
select "ngày trở_thành khách_hàng" from "khách_hàng" where "tên" = 'Carole' and "họ" = 'Bernhard'
select count(*) from khách_hàng
select count(*) from khách_hàng
select "mã trạng_thái khách_hàng", count(*)  from "khách_hàng"  group by "mã trạng_thái khách_hàng"
select "mã trạng_thái khách_hàng", count(*)  from "khách_hàng"  group by "mã trạng_thái khách_hàng"
select "mã trạng_thái khách_hàng" from "khách_hàng" group by "mã trạng_thái khách_hàng" order by count(*) limit 1
select "mã trạng_thái khách_hàng" from "khách_hàng" group by "mã trạng_thái khách_hàng" order by count(*) limit 1
select count(*)  from khách_hàng as t1  join bài giảng as t2 on t1."id khách_hàng" = t2."id khách_hàng"  where t1."tên" = 'Rylan' and t1."họ" = 'Goodwin' and t2."mã trạng_thái bài giảng" = 'Đã hoàn_thành'
select count(*) from nhân_viên as t1 join bài giảng as t2 on t1."id nhân_viên" = t2."id nhân_viên" where t1."tên" = 'Rylan' and t1."họ" = 'Goodwin'
select max(số tiền còn thiếu), min(số tiền còn thiếu), avg(số tiền còn thiếu) from khách_hàng
select max(số tiền còn thiếu), min(số tiền còn thiếu), avg(số tiền còn thiếu) from khách_hàng
select tên , họ from khách_hàng where số tiền còn thiếu between 1000 and 3000
select tên , họ from khách_hàng where số tiền còn thiếu between 1000 and 3000
select t1.tên , t1.họ  from khách_hàng as t1  join địa_chỉ as t2 on t1."id địa_chỉ khách_hàng" = t2."id địa_chỉ"  where t2.thành_phố = 'Lockmanfurt'
select t1.tên , t1.họ  from khách_hàng as t1  join địa_chỉ khách_hàng as t2 on t1."id khách_hàng" = t2."id địa_chỉ khách_hàng"  where t2."thành_phố" = 'Lockmanfurt' and t1."mã trạng_thái khách_hàng" = 'Đang sống'
select t1."quốc_gia"  from "khách_hàng" as t1  join "địa_chỉ khách_hàng" as t2 on t1."id địa_chỉ khách_hàng" = t2."id địa_chỉ"  where t1."tên" = 'Carole' and t1."họ" = 'Bernhard'
select t2.quốc_gia  from khách_hàng as t1  join địa_chỉ khách_hàng as t2 on t1.id địa_chỉ khách_hàng = t2.id địa_chỉ khách_hàng  where t1.tên = "Carole" and t1.họ = "Bernhard"
select "mã bưu_điện" from "khách_hàng" where "tên" = 'Carole' and "họ" = 'Bernhard'
select t1."mã bưu_điện"  from "khách_hàng" as t2  join "địa_chỉ khách_hàng" as t1  on t2."id địa_chỉ khách_hàng" = t1."id địa_chỉ khách_hàng"  where t2."tên" = 'Carole' and t2."họ" = 'Bernhard'
select distinct t1.thành_phố  from địa_chỉ as t1  join khách_hàng as t2 on t1."id địa_chỉ" = t2."id địa_chỉ khách_hàng"  group by t1.thành_phố  order by count(*) desc  limit 1
select t1.thành_phố  from địa_chỉ as t1  join khách_hàng as t2 on t1."id địa_chỉ" = t2."id địa_chỉ khách_hàng"  group by t1.thành_phố  order by count(*) desc  limit 1
select sum(t2.số tiền thanh_toán)  from khách_hàng as t1  join khoản thanh_toán của khách_hàng as t2  on t1.id khách_hàng = t2.id khách_hàng  where t1.tên = "Carole" and t1.họ = "Bernhard"
select sum(t2.số tiền thanh_toán)  from khách_hàng as t1  join khoản thanh_toán của khách_hàng as t2  on t1.id khách_hàng = t2.id khách_hàng  where t1.tên = "Carole" and t1.họ = "Bernhard"
select count(*) from "khách_hàng" except select "id khách_hàng" from "khoản thanh_toán của khách_hàng"
select count(*) from khách_hàng where id khách_hàng not in (select id khách_hàng from khoản thanh_toán của khách_hàng)
select t1.tên , t1.họ  from khách_hàng as t1  join khoản thanh_toán của khách_hàng as t2  on t1.id khách_hàng = t2.id khách_hàng  group by t1.id khách_hàng  having count(*) > 2
select t1.tên , t1.họ  from khách_hàng as t1  join khoản thanh_toán của khách_hàng as t2  on t1.id khách_hàng = t2.id khách_hàng  group by t1.id khách_hàng  having count(*) > 2
select "mã phương_thức thanh_toán", count(*) from "khoản thanh_toán của khách_hàng" group by "mã phương_thức thanh_toán"
select "mã phương_thức thanh_toán", count(*)  from "khoản thanh_toán của khách_hàng"  group by "mã phương_thức thanh_toán"
select count("id bài giảng") from "bài giảng" where "mã trạng_thái bài giảng" = 'Đã huỷ_bỏ'
select count(*) from bài giảng where mã trạng_thái bài giảng = "Đã huỷ"
select t2."id bài giảng"  from "nhân_viên" as t1  join "bài giảng" as t2 on t1."id nhân_viên" = t2."id nhân_viên"  where t1."tên" = 'Janessa' and t1."họ" = 'Sawayn' and t1."biệt_danh" like '%s%'
select t1."id bài giảng"  from "nhân_viên" as t2  join "bài giảng" as t1 on t2."id nhân_viên" = t1."id nhân_viên"  where t2."tên" = 'Janessa' and t2."họ" = 'Sawayn' and t2."biệt_danh" like '%s%'
select count(*) from nhân_viên as t1 join bài giảng as t2 on t1."id nhân_viên" = t2."id nhân_viên" where t1."tên" like "%a%"
select count(*) from nhân_viên where tên like "%a%"
select sum(t2."giờ học")  from "nhân_viên" as t1  join "bài giảng" as t2 on t1."id nhân_viên" = t2."id nhân_viên"  where t1."tên" = 'Janessa' and t1."họ" = 'Sawayn'
select sum(t2."giờ học")  from "nhân_viên" as t1  join "bài giảng" as t2 on t1."id nhân_viên" = t2."id nhân_viên"  where t1."tên" = 'Janessa_Sawayn'
select avg(t1.giá)  from bài giảng as t1  join nhân_viên as t2 on t1.id nhân_viên = t2.id nhân_viên  where t2.tên = "Janessa" and t2.họ = "Sawayn"
select avg(giá) from bài giảng where tên = "Janessa_Sawayn"
select count(*)  from khách_hàng as t1  join bài giảng as t2 on t1."id khách_hàng" = t2."id khách_hàng"  where t1."tên" = 'Ray'
select count(*)  from khách_hàng as t1  join bài giảng as t2 on t1."id khách_hàng" = t2."id khách_hàng"  where t1."tên" = 'Ray'
select distinct họ from khách_hàng as t1 join nhân_viên as t2 on t1."id khách_hàng" = t2."id nhân_viên"
select distinct t1.họ from khách_hàng as t1 join nhân_viên as t2 on t1.họ = t2.họ
select tên from nhân_viên except select t2.tên from bài giảng as t1 join nhân_viên as t2 on t1.id nhân_viên = t2.id nhân_viên
select tên from nhân_viên where id nhân_viên not in (select id nhân_viên from bài giảng)
select t1."id", t1."chi_tiết về xe"  from "xe" as t1  join "bài giảng" as t2 on t1."id" = t2."id xe"  group by t1."id"  order by count(*) desc  limit 1
select count(*) from "nhân_viên"
select count(*) from "nhân_viên"
select tên from nhân_viên order by tuổi
select tên , tuổi from nhân_viên order by tuổi
select thành_phố, count(*) from nhân_viên group by thành_phố
select thành_phố, count(*) from nhân_viên group by thành_phố
select "thành_phố" from "nhân_viên" group by "thành_phố" having count(*) > 1
select "thành_phố" from "nhân_viên" group by "thành_phố" having count(*) > 1 and "tuổi" < 30
select địa_điểm, count(*) from cửa_hàng group by địa_điểm
select địa_điểm, count(*) from cửa_hàng group by địa_điểm
select "tên người_quản_lý", "quận" from "cửa_hàng" where "id cửa_hàng" = (select "id cửa_hàng" from "cửa_hàng" order by "số_lượng sản_phẩm" desc limit 1)
select "tên người_quản_lý", "quận" from "cửa_hàng" order by "số_lượng sản_phẩm" desc limit 1
select "số_lượng sản_phẩm" from "cửa_hàng" order by "số_lượng sản_phẩm" desc limit 1 select "số_lượng sản_phẩm" from "cửa_hàng" order by "số_lượng sản_phẩm" asc limit 1
select "số_lượng sản_phẩm" from "cửa_hàng" order by "số_lượng sản_phẩm" desc limit 2
select tên , địa_điểm , quận from cửa_hàng order by số_lượng sản_phẩm desc
select "tên", "địa_điểm", "quận" from "cửa_hàng" order by "số_lượng sản_phẩm" desc
select tên from cửa_hàng where số_lượng sản_phẩm > ( select avg( số_lượng sản_phẩm ) from cửa_hàng ) group by tên having count ( * ) > 1
select tên from cửa_hàng where số_lượng sản_phẩm > ( select avg( số_lượng sản_phẩm ) from cửa_hàng )
select t1.tên from nhân_viên as t1 join đánh_giá as t2 on t1."id nhân_viên" = t2."id nhân_viên" group by t2."id nhân_viên" order by count(*) desc limit 1
select t1.tên from nhân_viên as t1 join đánh_giá as t2 on t1."id nhân_viên" = t2."id nhân_viên" group by t2."id nhân_viên" order by count(*) desc limit 1
select t1.tên from nhân_viên as t1 join đánh_giá as t2 on t1."id nhân_viên" = t2."id nhân_viên" order by t2."tiền thưởng" desc limit 1
select t1.tên from nhân_viên as t1 join đánh_giá as t2 on t1."id nhân_viên" = t2."id nhân_viên" order by t2."tiền thưởng" desc limit 1
select tên from nhân_viên except select tên nhân_viên from đánh_giá
select tên from nhân_viên except select tên nhân_viên from đánh_giá
select t1.tên  from cửa_hàng as t1  join tuyển_dụng as t2 on t1."id cửa_hàng" = t2."id cửa_hàng"  group by t1."id cửa_hàng"  order by count(*) desc  limit 1
select t1.tên  from cửa_hàng as t1  join tuyển_dụng as t2 on t1."id cửa_hàng" = t2."id cửa_hàng"  group by t2."id cửa_hàng"  order by count(*) desc  limit 1
select tên from cửa_hàng where id cửa_hàng not in (select id cửa_hàng from tuyển_dụng)
select tên from cửa_hàng where "số_lượng sản_phẩm" = ( select count(*) from tuyển_dụng where "id cửa_hàng" = "id cửa_hàng" )
select t1.tên , count ( * ) as "số_lượng nhân_viên" from cửa_hàng as t1 join tuyển_dụng as t2 on t1."id cửa_hàng" = t2."id cửa_hàng" group by t1."id cửa_hàng"
select t1.tên , count ( * ) as "số_lượng nhân_viên" from cửa_hàng as t1 join tuyển_dụng as t2 on t1."id cửa_hàng" = t2."id cửa_hàng" group by t1."id cửa_hàng"
select sum(tiền thưởng) from đánh_giá
select sum(tiền thưởng) from đánh_giá
select * from "tuyển_dụng"
select t1."id cửa_hàng", t1."tên", t1."địa_điểm", t1."quận", t1."số_lượng sản_phẩm", t1."tên người_quản_lý", t2."id nhân_viên", t2."id cửa_hàng", t2."bắt_đầu từ", t2."có phải nhân_viên toàn thời_gian không" others, t3."id nhân_viên", t3."năm nhận giải_thưởng", t3."tiền thưởng"  from "cửa_hàng" as t1  join "tuyển_dụng" as t2 on t1."id cửa_hàng" = t2."id cửa_hàng"  join "đánh_giá" as t3 on t2."id nhân_viên" = t3."id nhân_viên"
select "quận" from "cửa_hàng" where "số_lượng sản_phẩm" < 3000 and "số_lượng sản_phẩm" > 10000 group by "quận" having count(*) = 2
select "quận" from "cửa_hàng" where "số_lượng sản_phẩm" < 3000 group by "quận" having count(*) > 1
select count(distinct địa_điểm) from cửa_hàng
select count(distinct địa_điểm) from cửa_hàng
select quốc_gia from hãng hàng_không where tên hãng hàng_không = "JetBlue_Airways"
select distinct t1."quốc_gia"  from "hãng hàng_không" as t2  join "sân_bay" as t1 on t2."id hãng hàng_không" = t1."id hãng hàng_không"  where t2."tên hãng hàng_không" = 'Jetblue_Airways'
select "tên viết tắt" from "hãng hàng_không" where "tên hãng hàng_không" = 'JetBlue_Airways'
select "tên viết tắt" from "hãng hàng_không" where "tên hãng hàng_không" = 'Jetblue_Airways'
select "tên hãng hàng_không", "tên viết tắt" from "hãng hàng_không" where "quốc_gia" = 'United States'
select "tên hãng hàng_không", "tên viết tắt" from "hãng hàng_không" where "quốc_gia" = 'United States'
select "mã sân_bay", "tên sân_bay" from "sân_bay" where "thành_phố" = 'Anthony'
select "mã sân_bay", "tên sân_bay" from "sân_bay" where "thành_phố" = 'Anthony'
select count(*) from "hãng hàng_không"
select count(*) from "hãng hàng_không"
select count(*) from "sân_bay"
select count(thành_phố) from sân_bay
select count(*) from "chuyến bay"
select count(*) from "chuyến bay"
select "tên hãng hàng_không" from "hãng hàng_không" where "tên viết tắt" = 'UAL'
select "tên hãng hàng_không" from "hãng hàng_không" where "tên viết tắt" = 'UAL'
select count("tên hãng hàng_không") from "hãng hàng_không" where "quốc_gia" = 'United States'
select count(*) from "hãng hàng_không" where "quốc_gia" = 'United States'
select thành_phố , quốc_gia from sân_bay where tên sân_bay = "Alton"
select thành_phố , quốc_gia from sân_bay where tên sân_bay = "Alton"
select "tên sân_bay" from "sân_bay" where "mã sân_bay" = 'AKO'
select "tên sân_bay" from "sân_bay" where "mã sân_bay" = 'AKO'
select "tên sân_bay" from "sân_bay" where "thành_phố" = 'Aberdeen'
select "tên sân_bay" from "sân_bay" where "thành_phố" = 'Aberdeen'
select count("số_hiệu chuyến bay") from "chuyến bay" where "sân_bay khởi_hành" = 'APG'
select count(*) from "chuyến bay" where "sân_bay khởi_hành" = 'APG'
select count(*) from "chuyến bay" where "sân_bay đích" = 'ATO'
select count(*) from chuyến bay as t1 join sân_bay as t2 on t1.sân_bay đích = t2.mã sân_bay where t2.mã sân_bay = 'ATO'
select count(*) from "sân_bay" as t1 join "chuyến bay" as t2 on t1."mã sân_bay" = t2."sân_bay khởi_hành" where t1."thành_phố" = 'Aberdeen'
select count(*) from chuyến bay as t1 join sân_bay as t2 on t1.sân_bay khởi_hành = t2.mã sân_bay where t2.thành_phố = "Aberdeen"
select count(*) from "sân_bay" as t1 join "chuyến bay" as t2 on t1."mã sân_bay" = t2."sân_bay khởi_hành" where t1."thành_phố" = 'Aberdeen'
select count(*) from "chuyến bay" as t1 join "sân_bay" as t2 on t1."sân_bay đích" = t2."mã sân_bay" where t2."thành_phố" = 'Aberdeen'
select count(*)  from "chuyến bay" as t1  join "sân_bay" as t2 on t1."sân_bay khởi_hành" = t2."mã sân_bay"  join "sân_bay" as t3 on t1."sân_bay đích" = t3."mã sân_bay"  where t2."thành_phố" = 'Aberdeen' and t3."thành_phố" = 'Ashley'
select count(*) from "chuyến bay" as t1  join "sân_bay" as t2 on t1."sân_bay khởi_hành" = t2."mã sân_bay"  join "sân_bay" as t3 on t1."sân_bay đích" = t3."mã sân_bay"  where t2."thành_phố" = 'Aberdeen' and t3."thành_phố" = 'Ashley'
select count(*) from "chuyến bay" as t1 join "hãng hàng_không" as t2 on t1."hãng hàng_không" = t2."id hãng hàng_không" where t2."tên hãng hàng_không" = 'JetBlue_Airways'
select count(*) from chuyến bay as t1 join hãng hàng_không as t2 on t1."hãng hàng_không" = t2."id hãng hàng_không" where t2."tên hãng hàng_không" = 'Jetblue_Airways'
select count(*)  from "chuyến bay" as t1  join "sân_bay" as t2 on t1."sân_bay đích" = t2."mã sân_bay"  join "hãng hàng_không" as t3 on t1."hãng hàng_không" = t3."id hãng hàng_không"  where t2."tên sân_bay" = 'ASY' and t3."tên hãng hàng_không" = 'United_Airlines'
select count(*)  from "chuyến bay" as t1  join "sân_bay" as t2 on t1."sân_bay đích" = t2."mã sân_bay"  join "hãng hàng_không" as t3 on t1."hãng hàng_không" = t3."id hãng hàng_không"  where t2."tên sân_bay" = 'ASY' and t3."tên hãng hàng_không" = 'United_Airlines'
select count(*)  from "chuyến bay" as t1  join "sân_bay" as t2 on t1."sân_bay khởi_hành" = t2."mã sân_bay"  join "hãng hàng_không" as t3 on t1."hãng hàng_không" = t3."id hãng hàng_không"  where t2."thành_phố" = 'AHD' and t3."tên hãng hàng_không" = 'United_Airlines'
select count(*)  from "chuyến bay" as t1  join "sân_bay" as t2 on t1."sân_bay khởi_hành" = t2."mã sân_bay"  join "hãng hàng_không" as t3 on t1."hãng hàng_không" = t3."id hãng hàng_không"  where t2."tên sân_bay" = 'AHD' and t3."tên hãng hàng_không" = 'United_Airlines'
select count(*)  from "chuyến bay" as t1  join "sân_bay" as t2 on t1."sân_bay đích" = t2."mã sân_bay"  join "hãng hàng_không" as t3 on t1."hãng hàng_không" = t3."id hãng hàng_không"  where t2."thành_phố" = 'Aberdeen' and t3."tên hãng hàng_không" = 'United_Airlines'
select count(*)  from "chuyến bay" as t1  join "sân_bay" as t2 on t1."sân_bay đích" = t2."mã sân_bay"  join "hãng hàng_không" as t3 on t1."hãng hàng_không" = t3."id hãng hàng_không"  where t2."thành_phố" = 'Aberdeen' and t3."tên hãng hàng_không" = 'United_Airlines'
select distinct t1."thành_phố"  from "sân_bay" as t1  join "chuyến bay" as t2 on t1."mã sân_bay" = t2."sân_bay khởi_hành"  group by t1."thành_phố"  order by count(*) desc  limit 1
select distinct t1."thành_phố"  from "sân_bay" as t1  join "chuyến bay" as t2 on t1."mã sân_bay" = t2."sân_bay đích"  group by t1."thành_phố"  order by count(*) desc  limit 1
select distinct t1."thành_phố"  from "sân_bay" as t1  join "chuyến bay" as t2 on t1."mã sân_bay" = t2."sân_bay khởi_hành"  group by t1."thành_phố"  order by count(*) desc  limit 1
select t1."thành_phố"  from "sân_bay" as t1  join "chuyến bay" as t2 on t1."mã sân_bay" = t2."sân_bay khởi_hành"  group by t1."thành_phố"  order by count(*) desc  limit 1
select t1."mã sân_bay", count(*)  from "sân_bay" as t1  join "chuyến bay" as t2 on t1."thành_phố" = t2."sân_bay khởi_hành"  group by t1."mã sân_bay"  order by count(*) desc  limit 1
select "mã sân_bay" from "sân_bay" as t1 join "chuyến bay" as t2 on t1."mã sân_bay" = t2."sân_bay khởi_hành" group by t1."mã sân_bay" order by count(*) desc limit 1
select t1."mã sân_bay" from "sân_bay" as t1 join "chuyến bay" as t2 on t1."thành_phố" = t2."sân_bay khởi_hành" group by t2."sân_bay khởi_hành" order by count(*) desc limit 1
select "mã sân_bay" from "sân_bay" as t1 join "chuyến bay" as t2 on t1."mã sân_bay" = t2."sân_bay khởi_hành" group by t1."mã sân_bay" order by count(*) limit 1
select t1."tên hãng hàng_không" from "chuyến bay" as t2 join "hãng hàng_không" as t1 on t2."hãng hàng_không" = t1."id hãng hàng_không" group by t2."hãng hàng_không" order by count(*) desc limit 1
select t1."tên hãng hàng_không" from "hãng hàng_không" as t1 join "chuyến bay" as t2 on t1."id hãng hàng_không" = t2."hãng hàng_không" group by t1."id hãng hàng_không" order by count(*) desc limit 1
select t1."tên viết tắt", t1."quốc_gia"  from "hãng hàng_không" as t1  join "chuyến bay" as t2 on t1."id hãng hàng_không" = t2."hãng hàng_không"  group by t2."hãng hàng_không"  order by count(*) desc  limit 1
select t1."tên viết tắt", t1."quốc_gia"  from "hãng hàng_không" as t1  join "chuyến bay" as t2 on t1."id hãng hàng_không" = t2."hãng hàng_không"  group by t2."hãng hàng_không"  order by count(*) desc  limit 1
select t1."tên hãng hàng_không"  from "chuyến bay" as t2  join "sân_bay" as t3 on t2."sân_bay khởi_hành" = t3."mã sân_bay"  join "hãng hàng_không" as t1 on t2."hãng hàng_không" = t1."id hãng hàng_không"  where t3."tên sân_bay" = 'AHD'
select t1."tên hãng hàng_không"  from "chuyến bay" as t2  join "sân_bay" as t1 on t2."sân_bay khởi_hành" = t1."mã sân_bay"  where t1."tên sân_bay" = 'AHD'
select t1."tên hãng hàng_không"  from "hãng hàng_không" as t1  join "chuyến bay" as t2 on t1."id hãng hàng_không" = t2."hãng hàng_không"  join "sân_bay" as t3 on t2."sân_bay khởi_hành" = t3."mã sân_bay"  where t3."tên sân_bay" = 'AHD'
select t1."tên hãng hàng_không"  from "hãng hàng_không" as t1  join "chuyến bay" as t2 on t1."id hãng hàng_không" = t2."hãng hàng_không"  where t2."sân_bay đích" = 'AHD'
select distinct t1."id hãng hàng_không"  from "chuyến bay" as t2  join "sân_bay" as t3 on t2."sân_bay khởi_hành" = t3."mã sân_bay"  join "hãng hàng_không" as t1 on t2."hãng hàng_không" = t1."id hãng hàng_không"  where t3."tên sân_bay" = 'APG'  intersect  select distinct t1."id hãng hàng_không"  from "chuyến bay" as t2  join "sân_bay" as t3 on t2."sân_bay khởi_hành" = t3."mã sân_bay"  join "hãng hàng_không" as t1 on t2."hãng hàng_không" = t1."id hãng hàng_không"  where t3."tên sân_bay" = 'CVO'
select "hãng hàng_không" from "chuyến bay" where "sân_bay khởi_hành" in (select "mã sân_bay" from "sân_bay" where "tên sân_bay" = 'APG') intersect select "hãng hàng_không" from "chuyến bay" where "sân_bay khởi_hành" in (select "mã sân_bay" from "sân_bay" where "tên sân_bay" = 'CVO')
select "tên hãng hàng_không" from "hãng hàng_không" where "id hãng hàng_không" in ( select "hãng hàng_không" from "chuyến bay" where "sân_bay khởi_hành" = 'CVO' ) except select "tên hãng hàng_không" from "hãng hàng_không" where "id hãng hàng_không" in ( select "hãng hàng_không" from "chuyến bay" where "sân_bay khởi_hành" = 'APG' )
select "tên hãng hàng_không" from "chuyến bay" where "sân_bay khởi_hành" = 'CVO' except select "tên hãng hàng_không" from "chuyến bay" where "sân_bay khởi_hành" = 'APG'
select t1."tên hãng hàng_không" from "hãng hàng_không" as t1 join "chuyến bay" as t2 on t1."id hãng hàng_không" = t2."hãng hàng_không" group by t1."id hãng hàng_không" having count(*) >= 10
select t1."tên hãng hàng_không" from "hãng hàng_không" as t1 join "chuyến bay" as t2 on t1."id hãng hàng_không" = t2."hãng hàng_không" group by t1."id hãng hàng_không" having count(*) >= 10
select "tên hãng hàng_không" from "hãng hàng_không" as t1 join "chuyến bay" as t2 on t1."id hãng hàng_không" = t2."hãng hàng_không" group by t1."id hãng hàng_không" having count(*) < 200
select t1."tên hãng hàng_không" from "hãng hàng_không" as t1 join "chuyến bay" as t2 on t1."id hãng hàng_không" = t2."hãng hàng_không" group by t1."id hãng hàng_không" having count(*) < 200
select số_hiệu chuyến bay from chuyến bay where hãng hàng_không = (select "id hãng hàng_không" from "hãng hàng_không" where "tên hãng hàng_không" = 'United_Airlines')
select "số_hiệu chuyến bay" from "chuyến bay" where "hãng hàng_không" = 1
select "số_hiệu chuyến bay" from "chuyến bay" where "sân_bay khởi_hành" = 'APG'
select "số_hiệu chuyến bay" from "chuyến bay" where "sân_bay khởi_hành" = 'APG'
select số_hiệu chuyến bay from chuyến bay where sân_bay đích = "APG"
select số_hiệu chuyến bay from chuyến bay where sân_bay khởi_hành = 'APG'
select số_hiệu chuyến bay from chuyến bay where sân_bay khởi_hành in (select mã sân_bay from sân_bay where thành_phố = 'Aberdeen')
select t1."số_hiệu chuyến bay"  from "chuyến bay" as t1  join "sân_bay" as t2 on t1."sân_bay khởi_hành" = t2."mã sân_bay"  where t2."thành_phố" = 'Aberdeen'
select t1."số_hiệu chuyến bay"  from "sân_bay" as t2  join "chuyến bay" as t1 on t2."mã sân_bay" = t1."sân_bay đích"  where t2."thành_phố" = 'Aberdeen'
select t1."số_hiệu chuyến bay"  from "sân_bay" as t2  join "chuyến bay" as t1 on t2."mã sân_bay" = t1."sân_bay đích"  where t2."thành_phố" = 'Aberdeen'
select count(*)  from "sân_bay" as t1  join "chuyến bay" as t2 on t1."mã sân_bay" = t2."sân_bay khởi_hành"  where t1."thành_phố" = 'Aberdeen' or t1."thành_phố" = 'Abilene'
select count(*) from chuyến bay as t1  join sân_bay as t2 on t1.sân_bay khởi_hành = t2.mã sân_bay  where t2.thành_phố = "Aberdeen" or t2.thành_phố = "Abilene"
select "tên sân_bay" from "sân_bay" except select "sân_bay khởi_hành" from "chuyến bay"
select "thành_phố" from "sân_bay" where "mã sân_bay" not in (select "sân_bay khởi_hành" from "chuyến bay")
select count(*) from trận đấu where mùa giải > 2007
select ngày from trận đấu order by đội chủ nhà desc
select mùa giải , đội chủ nhà , đội khách from trận đấu
select avg("trận đấu sân_nhà"), max("trận đấu sân_nhà"), min("trận đấu sân_nhà") from "sân_vận_động"
select "số_lượng khán_giả trung_bình" from "sân_vận_động" where "phần_trăm sức chứa" > 100 group by "tên"
select t1.cầu_thủ , t1.số_lượng trận đấu , t1.nguồn thông_tin  from trận đấu as t1  join chấn_thương as t2 on t1.id = t2.id trận đấu  where t2.chấn_thương != "đầu_gối"
select t1."mùa giải"  from "trận đấu" as t1  join "chấn thương" as t2 on t1."id" = t2."id trận đấu"  where t2."cầu_thủ" = 'Walter_Samuel'
select t1.id , t1.tỉ_số , t1.ngày  from trận đấu as t1  join chấn_thương as t2 on t1.id = t2.id trận đấu  group by t1.id  having count ( * ) >= 2
select t1.id , t1.tên  from "sân_vận_động" as t1  join "chấn_thương" as t2 on t1.id = t2."id sân_vận_động"  group by t2."id sân_vận_động"  order by count(*) desc  limit 1
select t1.id , t1.tên  from "sân_vận_động" as t1  join "chấn_thương" as t2 on t1.id = t2."id sân_vận_động"  group by t2."id sân_vận_động"  order by count(*) desc  limit 1
select t1."mùa giải", t2."tên"  from "trận đấu" as t1  join "sân_vận_động" as t2 on t1."id sân_vận_động" = t2."id"  join "chấn_thương" as t3 on t1."id" = t3."id trận đấu"  where t3."chấn_thương" = 'chân' or t3."chấn_thương" = 'đầu_gối'
select count(distinct "nguồn thông_tích") from "chấn_thương"
select count(*) from trận đấu where id not in (select id trận đấu from chấn_thương)
select count(distinct "chấn_thương") from "chấn_thương" where "mùa giải" > 2010
select distinct t3.tên  from chấn_thương as t1  join trận đấu as t2 on t1.id trận đấu = t2.id  join sân_vận_động as t3 on t2.id sân_vận_động = t3.id  where t1.cầu_thủ = "Walter_Samuel"  intersect  select distinct t3.tên  from chấn_thương as t1  join trận đấu as t2 on t1.id trận đấu = t2.id  join sân_vận_động as t3 on t2.id sân_vận_động = t3.id  where t1.cầu_thủ = "Thiago_Motta"
select tên , số_lượng khán_giả trung_bình , tổng số_lượng khán_giả  from sân_vận_động  where id not in ( select id sân_vận_động from chấn_thương )
select tên from sân_vận_động where tên like "%bank%"
select t1.tên , count(*)  from "sân_vận_động" as t1  join "trận đấu" as t2  on t1.id = t2."id sân_vận_động"  group by t1.tên
select t2.tên , t1.ngày  from trận đấu as t1  join chấn_thương as t2  on t1.id = t2.id trận đấu  order by t1.mùa giải desc
select năm phát_hành from bộ phim where tiêu_đề = "Trò_chơi bắt_chước"
select năm phát_hành from bộ phim where tiêu_đề = "Trò_chơi bắt_chước"
select năm sinh from diễn_viên where tên = "Benedict_Cumberbatch"
select năm sinh from diễn_viên where tên = "Benedict_Cumberbatch"
select quốc_tịch from diễn_viên where tên = "Christoph_Waltz"
select quốc_tịch from diễn_viên where tên = "Christoph_Waltz"
select tiêu_đề from bộ phim where năm phát_hành = 2015
select tên from diễn_viên where nơi sinh = 'Tehran'
select tên from diễn_viên where nơi sinh = "Tehran"
select tên from diễn_viên where nơi sinh = "Tehran"
select tên from diễn_viên where quốc_tịch = 'Afghanistan'
select tên from diễn_viên where quốc_tịch = "Afghanistan"
select tên from diễn_viên where quốc_tịch = 'Afghanistan'
select tên from diễn_viên where năm sinh = 1984
select năm sinh from diễn_viên where tên = "Kevin_Spacey"
select năm sinh from diễn_viên where tên = "Kevin_Spacey"
select nơi sinh from diễn_viên where tên = "Kevin_Spacey"
select nơi sinh from diễn_viên where tên = "Kevin_Spacey"
select quốc_tịch from diễn_viên where tên = "Kevin_Spacey"
select ngân_sách from bộ phim where tiêu_đề = "Finding Nemo"
select t3.tiêu_đề  from đạo_diễn bởi as t1  join đạo_diễn as t2 on t1.id đạo_diễn = t2.id đạo_diễn  join bộ phim as t3 on t1.id sê-ri phim = t3.id bộ phim  where t2.tên = "Steven_Spielberg" and t3.năm phát_hành > 2006
select t2.tên  from đạo_diễn bởi as t1  join đạo_diễn as t2 on t1.id đạo_diễn = t2.id đạo_diễn  join bộ phim as t3 on t1.id sê-ri phim = t3.id bộ phim  where t3.tiêu_đề = "James_Bond"
select t2.tên  from đạo_diễn bởi as t1  join đạo_diễn as t2 on t1.id đạo_diễn = t2.id đạo_diễn  join bộ phim as t3 on t1.id sê-ri phim = t3.id bộ phim  where t3.tiêu_đề = "James_Bond"
select t2.tên  from đạo_diễn bởi as t1  join đạo_diễn as t2 on t1.id đạo_diễn = t2.id đạo_diễn  join bộ phim as t3 on t1.id sê-ri phim = t3.id bộ phim  where t3.tiêu_đề = "James_Bond"
select t1.tên  from diễn_viên as t1  join phân_vai as t2 on t1."id diễn_viên" = t2."id diễn_viên"  where t2."vai diễn" = 'Alan_Turing' and t2."id sê-ri phim" in (select "id sê-ri phim" from bộ phim where "tiêu_đề" = 'Trò_chơi bắt_chước')
select t2.tên  from phân_vai as t1  join diễn_viên as t2 on t1.id diễn_viên = t2.id diễn_viên  where t1.vai diễn = "Alan_Turing" and t1.id sê-ri phim = (select id sê-ri phim from bộ phim where tiêu_đề = "Trò_chơi bắt_chước")
select t1.tên  from diễn_viên as t1  join phân_vai as t2 on t1."id diễn_viên" = t2."id diễn_viên"  where t2."vai diễn" = 'Alan_Turing'  and t2."id sê-ri phim" in (select "id sê-ri phim" from bộ phim where "tiêu_đề" = 'Trò_chơi bắt_chước')
select t2.tên  from phân_vai as t1  join diễn_viên as t2 on t1.id diễn_viên = t2.id diễn_viên  join bộ phim as t3 on t1.id sê-ri phim = t3.id bộ phim  where t3.tiêu_đề = "Trò_chơi bắt_chước" and t1.vai diễn = "Alan_Turing"
select t2.tên  from phân_vai as t1  join diễn_viên as t2 on t1.id diễn_viên = t2.id diễn_viên  where t1.vai diễn = "Alan_Turing" and t1.id sê-ri phim = (select id sê-ri phim from bộ phim where tiêu_đề = "Trò_chơi bắt_chước")
select t2.thể_loại  from phim as t1  join phân_loại as t2 on t1.id bộ phim = t2.id sê-ri phim  where t1.tiêu_đề = "Công_viên kỷ Jura"
select t2.tên  from đạo_diễn bởi as t1  join đạo_diễn as t2 on t1.id đạo_diễn = t2.id đạo_diễn  join bộ phim as t3 on t1.id sê-ri phim = t3.id bộ phim  where t3.tiêu_đề = "Niềm vui" and t3.năm phát_hành = 2015
select t2.tiêu_đề  from đạo_diễn as t1  join đạo_diễn bởi as t3 on t1.id đạo_diễn = t3.id đạo_diễn  join được viết bởi as t4 on t3.id sê-ri phim = t4.id sê-ri phim  join bộ phim as t2 on t4.id sê-ri phim = t2.id bộ phim  where t1.tên = "Matt_Damon"
select t2.tiêu_đề  from đạo_diễn as t1  join đạo_diễn bởi as t3 on t1.id đạo_diễn = t3.id đạo_diễn  join được làm bởi as t4 on t3.id sê-ri phim = t4.id sê-ri phim  join nhà_sản_xuất as t5 on t4.id nhà_sản_xuất = t5.id nhà_sản_xuất  join được viết bởi as t6 on t6.id sê-ri phim = t4.id sê-ri phim  join bộ phim as t2 on t6.id sê-ri phim = t2.id bộ phim  where t1.tên = "Woody_Allen"
select t3.tiêu_đề  from diễn_viên as t1  join phân_vai as t2 on t1.id diễn_viên = t2.id diễn_viên  join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim  join đạo_diễn bởi as t4 on t4.id sê-ri phim = t3.id bộ phim  join đạo_diễn as t5 on t4.id đạo_diễn = t5.id đạo_diễn  where t5.tên = "Robin_Wright"
select t3.tiêu_đề  from diễn_viên as t2  join phân_vai as t1 on t2."id diễn_viên" = t1."id diễn_viên"  join bộ phim as t3 on t1."id sê-ri phim" = t3."id bộ phim"  where t2."tên" = 'Robin_Wright'
select t3.tiêu_đề  from diễn_viên as t1  join phân_vai as t2 on t1.id diễn_viên = t2.id diễn_viên  join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim  where t1.tên = "Robin_Wright"
select ngân_sách from bộ phim where tiêu_đề = "Juno" and năm phát_hành = 2007
select t1.tiêu_đề  from bộ phim as t1  join phim_truyền_hình nhiều tập as t2  on t1.id bộ phim = t2.id sê-ri phim  where t2.tiêu_đề = "Khoa_học_viễn_tưởng" and t2.năm phát_hành = 2010
select t1.tiêu_đề  from bộ phim as t1  join phân loại as t2 on t1.id bộ phim = t2.id sê-ri phim  where t2.id thể_loại = (select id thể_loại from thể_loại where thể_loại = "Khoa_học_viễn_tưởng")  and t1.năm phát_hành = 2010
select tên from diễn_viên where nơi sinh = "Austin" and năm sinh > 1980
select tên from diễn_viên where nơi sinh = "Austin" and năm sinh > 1980
select tên from diễn_viên where nơi sinh = 'Austin' and năm sinh > 1980
select t2.tiêu_đề  from đạo_diễn as t1  join đạo_diễn bởi as t3 on t1.id đạo_diễn = t3.id đạo_diễn  join bộ phim as t2 on t3.id sê-ri phim = t2.id bộ phim  where t1.nơi sinh = "Los_Angeles"
select tên from diễn_viên where nơi sinh = 'New York' and năm sinh = 1984
select tiêu_đề from bộ phim where tiêu_đề like "%Vũ_khí_hạt_nhân%"
select t1.tiêu_đề from bộ phim as t1 join nhãn as t2 on t1.id sê-ri phim = t2.id sê-ri phim where t2.id từ_khoá in (select id from từ_khoá where từ_khoá = "Vũ_khí_hạt_nhân")
select t3.tiêu_đề  from đạo_diễn bởi as t1  join đạo_diễn as t2 on t1.id đạo_diễn = t2.id đạo_diễn  join bộ phim as t3 on t1.id sê-ri phim = t3.id bộ phim  where t2.tên = "Alfred_Hitchcock"
select t2.tiêu_đề  from đạo_diễn bởi as t1  join đạo_diễn as t2 on t1.id đạo_diễn = t2.id đạo_diễn  join phân_vai as t3 on t1.id sê-ri phim = t3.id sê-ri phim  join diễn_viên as t4 on t3.id diễn_viên = t4.id diễn_viên  where t4.tên = "Taraneh_Alidoosti" and t2.tên = "Asghar_Farhadi"
select t3.tiêu_đề  from đạo_diễn bởi as t1  join đạo_diễn as t2 on t1.id đạo_diễn = t2.id đạo_diễn  join phân_vai as t3 on t1.id sê-ri phim = t3.id sê-ri phim  join diễn_viên as t4 on t3.id diễn_viên = t4.id diễn_viên  where t2.tên = "Asghar_Farhadi" and t4.tên = "Taraneh_Alidoosti"
select t3.tiêu_đề  from đạo_diễn bởi as t1  join đạo_diễn as t2 on t1.id đạo_diễn = t2.id đạo_diễn  join phân_vai as t3 on t1.id sê-ri phim = t3.id sê-ri phim  join diễn_viên as t4 on t3.id diễn_viên = t4.id diễn_viên  where t2.tên = "Asghar_Farhadi" and t4.tên = "Taraneh_Alidoosti"
select t2.tiêu_đề  from đạo_diễn bởi as t1  join đạo_diễn as t3 on t1.id đạo_diễn = t3.id đạo_diễn  join phân_vai as t4 on t1.id sê-ri phim = t4.id sê-ri phim  join diễn_viên as t2 on t4.id diễn_viên = t2.id diễn_viên  where t3.tên = "Asghar_Farhad" and t2.tên = "Taraneh_Alidoosti"
select t3.tiêu_đề  from đạo_diễn as t2  join đạo_diễn bởi as t1 on t2.id đạo_diễn = t1.id đạo_diễn  join phân_vai as t4 on t1.id = t4.id  join bộ phim as t3 on t4.id sê-ri phim = t3.id bộ phim  where t2.tên = "Shonda_Rhimes"
select t3.tên  from phân_vai as t1  join diễn_viên as t3 on t1.id diễn_viên = t3.id diễn_viên  join bộ phim as t2 on t1.id sê-ri phim = t2.id bộ phim  where t2.tiêu_đề = "Scandal" and t1.vai diễn = "Olivia_Pope"
select t3.tên  from đạo diễn bởi as t2  join đạo diễn as t1 on t2.id đạo diễn = t1.id đạo diễn  join được viết bởi as t3 on t2.id sê-ri phim = t3.id sê-ri phim  where t1.tên = "Truman" and t3.tiêu đề = "Truman Show"
select t3.tên  from đạo diễn bởi as t1  join đạo diễn as t2 on t1.id đạo diễn = t2.id đạo diễn  join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim  join được viết bởi as t4 on t4.id sê-ri phim = t3.id bộ phim  join nhà viết kịch_bản as t5 on t4.id = t5.id  where t3.tiêu_đề = "Truman Show"
select t3.tiêu_đề  from diễn_viên as t1  join phân_vai as t2 on t1."id diễn_viên" = t2."id diễn_viên"  join bộ phim as t3 on t2."id sê-ri phim" = t3."id bộ phim"  where t1."tên" = 'Scott_Foley'
select t3.tiêu_đề  from diễn_viên as t1  join phân_vai as t2 on t1."id diễn_viên" = t2."id diễn_viên"  join bộ phim as t3 on t2."id sê-ri phim" = t3."id bộ phim"  where t1."tên" = 'Scott_Foley'
select distinct t3."id đạo_diễn"  from "diễn_viên" as t1  join "phân_vai" as t2 on t1."id diễn_viên" = t2."id diễn_viên"  join "bộ phim" as t3 on t2."id sê-ri phim" = t3."id bộ phim"  where t1."tên" = 'Kate_Winslet'
select distinct t2.id đạo_diễn from diễn_viên as t1 join phân_vai as t3 on t1.id diễn_viên = t3.id diễn_viên join đạo_diễn bởi as t2 on t2.id sê-ri phim = t3.id sê-ri phim where t1.tên = "Kate_Winslet"
select t2.tên  from đạo_diễn bởi as t1  join đạo_diễn as t2 on t1.id đạo_diễn = t2.id đạo_diễn  join phim_truyền_hình nhiều tập as t3 on t1.id sê-ri phim = t3.id sê-ri phim  where t3.tiêu_đề = "Ván bài chính_trị" and t3.năm phát_hành = 2013
select tên from diễn_viên where giới_tính = "F" and nơi sinh = "Austin"
select tên from diễn_viên where quốc_tịch = 'Italy' and năm sinh > 1980
select tên from diễn_viên where giới_tính = "f" and nơi sinh = "New_York" and năm sinh > 1980
select t1.tên  from diễn_viên as t1  join phân_vai as t2 on t1."id diễn_viên" = t2."id diễn_viên"  where t1."giới tính" = 'F'  and t2."vai diễn" = 'Ryan''s Dying_Girl'
select tên from đạo_diễn where quốc_tịch = "Afghanistan"
select t2.tên from phân_vai as t1 join diễn_viên as t2 on t1.id diễn_viên = t2.id diễn_viên join bộ phim as t3 on t3.id bộ phim = t1.id sê-ri phim where t3.tiêu_đề = "Nữ binh_sĩ"
select t2.tên  from diễn_viên as t1  join phân_vai as t2 on t1."id diễn_viên" = t2."id diễn_viên"  join bộ phim as t3 on t2."id sê-ri phim" = t3."id bộ phim"  where t1."quốc_tịch" = 'Canada' and t3."tiêu_đề" = 'James_Bond'
select t3.tiêu_đề  from diễn_viên as t1  join phân_vai as t2 on t1.id diễn_viên = t2.id diễn_viên  join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim  join đạo_diễn bởi as t4 on t4.id sê-ri phim = t3.id bộ phim  join đạo_diễn as t5 on t4.id đạo_diễn = t5.id đạo_diễn  where t5.tên = "Rowan_Atkinson" and t2.vai diễn = "Ngài_Bean"
select t2.nơi sinh  from đạo_diễn bởi as t1  join đạo_diễn as t2 on t1.id đạo_diễn = t2.id đạo_diễn  join bộ phim as t3 on t1.id sê-ri phim = t3.id bộ phim  where t3.tiêu_đề = "Quá_khứ"
select t2.tên  from phân_vai as t1  join diễn_viên as t2 on t1.id diễn_viên = t2.id diễn_viên  where t1.vai diễn = "Ngài_Bean"
select t3.thể_loại  from đạo_diễn bởi as t1  join đạo_diễn as t2 on t1.id đạo_diễn = t2.id đạo_diễn  join phân_loại as t3 on t1.id sê-ri phim = t3.id sê-ri phim  join bộ phim as t4 on t3.id thể_loại = t4.id bộ phim  where t2.tên = "Asghar_Farhadi"
select t2.tiêu_đề  from phân_vai as t1  join diễn_viên as t3 on t1.id diễn_viên = t3.id diễn_viên  join bộ phim as t2 on t1.id sê-ri phim = t2.id bộ phim  where t3.tên = "Daffy_Pig"
select distinct t2.vai_diễn  from phân_vai as t1  join bộ phim as t2 on t1.id sê-ri phim = t2.id bộ phim  where t2.tiêu_đề = "Grandpa's Long Legs"
select t2.id đạo_diễn from đạo_diễn bởi as t1 join đạo_diễn as t2 on t1.id đạo_diễn = t2.id đạo_diễn join bộ phim as t3 on t1.id sê-ri phim = t3.id bộ phim where t3.tiêu_đề like "%Vũ_khí_hạt_nhân%" group by t2.id đạo_diễn
select count(*)  from diễn_viên as t1  join phân_vai as t2 on t1."id diễn_viên" = t2."id diễn_viên"  join bộ phim as t3 on t2."id sê-ri phim" = t3."id bộ phim"  where t1."tên" = 'Jennifer_Aniston' and t3."năm phát_hành" > 2010
select count(distinct t2."id diễn_viên")  from "phân_vai" as t1  join "diễn_viên" as t2 on t1."id diễn_viên" = t2."id diễn_viên"  where t1."id sê-ri phim" in (select "id bộ phim" from "bộ phim" where "tiêu_đề" = 'Ryan''s Save Binh_nhì')
select count(*) from "diễn_viên" as t1  join "phân_vai" as t2 on t1."id diễn_viên" = t2."id diễn_viên"  where t2."id sê-ri phim" = (select "id bộ phim" from "bộ phim" where "tiêu_đề" = 'Ryan''s Save Binh_nhì')
select count(*) from đạo_diễn as t1 join đạo_diễn bởi as t2 on t1."id đạo_diễn" = t2."id đạo_diễn" join bộ phim as t3 on t2."id sê-ri phim" = t3."id bộ phim" where t1."tên" = 'Steven_Spielberg'
select count("id bộ phim") from "bộ phim" where "năm phát_hành" = 2013
select count(tiêu_đề) from bộ phim where năm phát_hành = 2013
select t2.năm phát_hành, count(t2.năm phát_hành)  from đạo_diễn as t1  join đạo_diễn bởi as t3 on t1.id đạo_diễn = t3.id đạo_diễn  join bộ phim as t2 on t3.id sê-ri phim = t2.id bộ phim  where t1.tên = "Woody_Allen"  group by t2.năm phát_hành  order by t2.năm phát_hành desc
select count(*)  from đạo_diễn as t1  join đạo_diễn bởi as t2 on t1.id đạo_diễn = t2.id  where t1.tên = "Shahab_Hosseini"
select count(*) from đạo_diễn as t1 join đạo_diễn bởi as t2 on t1.id đạo_diễn = t2.id đạo_diễn where t1.tên = "Shahab_Hosseini"
select count(t2.id sê-ri phim)  from đạo_diễn as t1  join đạo_diễn bởi as t2 on t1.id đạo_diễn = t2.id đạo_diễn  where t1.tên = "Shahab_Hosseini"
select count(t3.tiêu_đề)  from diễn_viên as t1  join phân_vai as t2 on t1.id diễn_viên = t2.id diễn_viên  join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim  where t1.tên = "Shahab_Hosseini"
select count(*) from diễn_viên where nơi sinh = "Los_Angeles" and năm sinh > 2000
select count(*)  from diễn_viên as t1  join phân_vai as t2 on t1."id diễn_viên" = t2."id diễn_viên"  join bộ phim as t3 on t2."id sê-ri phim" = t3."id bộ phim"  where t1."tên" = 'Humphrey_Bogart' and t3."năm phát_hành" < 1942
select t3.năm phát_hành, count(t3.năm phát_hành)  from diễn_viên as t1  join phân_vai as t2 on t1.id diễn_viên = t2.id diễn_viên  join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim  where t1.tên = "Brad_Pitt"  group by t3.năm phát_hành  order by t3.năm phát_hành desc
select count(*) from "bộ phim" as t1  join "được làm bởi" as t2 on t1."id bộ phim" = t2."id sê-ri phim"  join "nhà sản_xuất" as t3 on t2."id nhà_sản_xuất" = t3."id nhà_sản_xuất"  where t1."tiêu_đề" = 'Chiến_tranh Iraq' and t1."năm phát_hành" = 2015
select count(*) from "bộ phim" as t1 join "phân loại" as t2 on t1."id bộ phim" = t2."id sê-ri phim" join "thể loại" as t3 on t2."id thể loại" = t3."id thể loại" where t3."thể loại" = 'Ba Tư' and t1."năm phát_hành" > 1990
select count(*)  from đạo_diễn as t1  join đạo_diễn bởi as t2 on t1.id đạo_diễn = t2.id đạo_diễn  join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim  where t3.năm phát_hành > 2010 and t1.tên = "Quentin_Tarantino"
select count(*)  from đạo_diễn as t1  join đạo_diễn bởi as t2 on t1."id đạo_diễn" = t2."id đạo_diễn"  join bộ phim as t3 on t2."id sê-ri phim" = t3."id bộ phim"  where t1."tên" = 'Quentin_Tarantino' and t3."năm phát_hành" < 2010
select count(*)  from đạo_diễn as t1  join đạo_diễn bởi as t2 on t1.id đạo_diễn = t2.id đạo_diễn  join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim  where t1.tên = "Quentin_Tarantino" and t3.năm phát_hành < 2002 or t3.năm phát_hành > 2010
select count(*)  from diễn_viên  where giới_tính = 'F'    and năm sinh > 1980    and nơi sinh = 'New_York'    and id diễn_viên in (select id diễn_viên from phân_vai)
select count(t3.id diễn_viên)  from diễn_viên as t3  join đạo_diễn bởi as t2 on t3.id diễn_viên = t2.id diễn_viên  join đạo_diễn as t1 on t2.id đạo_diễn = t1.id đạo_diễn  join bộ phim as t4 on t4.id bộ phim = t2.id sê-ri phim  where t3.quốc_tịch = "Iran" and t1.tên = "Jim_Jarmusch"
select count(*)  from diễn_viên as t1  join phân_vai as t2 on t1."id diễn_viên" = t2."id diễn_viên"  where t1."quốc_tịch" = 'China'  and t2."id sê-ri phim" in (select "id bộ phim" from bộ phim where "tiêu_đề" = 'The 3 O''Clock_High')
select t3.tiêu_đề  from diễn_viên as t1  join phân_vai as t2 on t1.id diễn_viên = t2.id diễn_viên  join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim  where t1.tên = "Woody_Strode" or t1.tên = "Jason_Robards"
select t3.tiêu_đề  from diễn_viên as t1  join phân_vai as t2 on t1.id diễn_viên = t2.id diễn_viên  join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim  where t1.tên = "Woody_Strode" or t1.tên = "Jason_Robards"
select t3.tiêu_đề  from diễn_viên as t1  join phân_vai as t2 on t1."id diễn_viên" = t2."id diễn_viên"  join bộ phim as t3 on t2."id sê-ri phim" = t3."id bộ phim"  where t1."tên" = 'Woody_Strode'  intersect  select t3.tiêu_đề  from diễn_viên as t1  join phân_vai as t2 on t1."id diễn_viên" = t2."id diễn_viên"  join bộ phim as t3 on t2."id sê-ri phim" = t3."id bộ phim"  where t1."tên" = 'Jason_Robards'
select t3.tiêu_đề  from diễn_viên as t1  join phân_vai as t2 on t1."id diễn_viên" = t2."id diễn_viên"  join bộ phim as t3 on t2."id sê-ri phim" = t3."id bộ phim"  where t1."tên" = 'Woody_Strode'  intersect  select t3.tiêu_đề  from diễn_viên as t1  join phân_vai as t2 on t1."id diễn_viên" = t2."id diễn_viên"  join bộ phim as t3 on t2."id sê-ri phim" = t3."id bộ phim"  where t1."tên" = 'Jason_Robards'
select t2.tên  from diễn_viên as t1  join được làm bởi as t3 on t1."id diễn_viên" = t3."id diễn_viên"  join phân_vai as t2 on t3."id" = t2."id"  where t1."tên" = 'Tom_Hanks'
select t2.tiêu_đề  from đạo_diễn bởi as t1  join đạo_diễn as t2 on t1.id đạo_diễn = t2.id đạo_diễn  join bộ phim as t3 on t1.id sê-ri phim = t3.id bộ phim  where t3.tiêu_đề = "Con đường cách_mạng"
select t1.tiêu_đề  from phân_loại as t2  join thể_loại as t1  on t2."id thể_loại" = t1."id thể_loại"  group by t2."id sê-ri phim"  order by count(*) desc  limit 1
select t2.tiêu_đề  from diễn_viên as t1  join phân_vai as t2 on t1."id diễn_viên" = t2."id diễn_viên"  where t1."quốc_tịch" = 'Trung Quốc'  group by t2."id sê-ri phim"  order by count(*) desc  limit 1
select t2.tên  from diễn_viên as t2  join phân_vai as t3 on t2."id diễn_viên" = t3."id diễn_viên"  join đạo_diễn bởi as t4 on t3."id sê-ri phim" = t4."id sê-ri phim"  join đạo_diễn as t5 on t4."id đạo_diễn" = t5."id đạo_diễn"  join bộ phim as t6 on t6."id bộ phim" = t3."id sê-ri phim"  join được làm bởi as t7 on t7."id sê-ri phim" = t6."id bộ phim"  where t5."tên" = 'Quentin_Tarantino'  and t6."năm phát_hành" = (      select max("năm phát_hành")      from bộ phim  )
select t2.tiêu_đề , t1.ngân_sách  from đạo_diễn bởi as t3  join đạo_diễn as t2 on t3.id đạo_diễn = t2.id đạo_diễn  join bộ phim as t1 on t3.id sê-ri phim = t1.id bộ phim  where t2.tên = "Quentin_Tarantino"  order by t1.năm phát_hành desc  limit 1
select t3.tiêu_đề  from đạo_diễn as t1  join đạo_diễn bởi as t2 on t1.id đạo_diễn = t2.id đạo_diễn  join bộ phim as t3 on t2.id sê-ri phim = t3.id bộ phim  where t1.tên = "Jim_Jarmusch"  order by t3.năm phát_hành desc  limit 1
select t3.id nhà_sản_xuất  from đạo_diễn bởi as t1  join đạo_diễn as t2 on t1.id đạo_diễn = t2.id đạo_diễn  join được làm bởi as t3 on t3.id sê-ri phim = t1.id sê-ri phim  group by t3.id nhà_sản_xuất  order by count(*) desc  limit 1
select t3.tiêu_đề  from diễn_viên as t1  join phân_vai as t2 on t1."id diễn_viên" = t2."id diễn_viên"  join bộ phim as t3 on t2."id sê-ri phim" = t3."id bộ phim"  join đạo_diễn bởi as t4 on t4."id sê-ri phim" = t3."id bộ phim"  where t4."id đạo_diễn" = (      select "id đạo_diễn"      from đạo_diễn      where "tên" = 'Gabriele_Ferzetti' )  order by t3."năm phát_hành" desc  limit 1
select "chi_tiết khách_hàng" from "khách_hàng" order by "chi_tiết khách_hàng"
select "chi_tiết khách_hàng" from "khách_hàng" order by "chi_tiết khách_hàng"
select t2."mã loại chính_sách"  from "khách_hàng" as t1  join "chính_sách" as t2 on t1."id khách_hàng" = t2."id khách_hàng"  where t1."chi tiết khách_hàng" = 'Dayana_Robel'
select t2."mã loại chính_sách"  from "khách_hàng" as t1  join "chính_sách" as t2 on t1."id khách_hàng" = t2."id khách_hàng"  where t1."chi_tiết khách_hàng" = 'Dayana_Robel'
select t1."mã loại chính_sách"  from "chính_sách" as t1  join "tiêu đề của yêu_cầu" as t2  on t1."id chính_sách" = t2."id chính_sách"  group by t1."mã loại chính_sách"  order by count(*) desc  limit 1
select t1."mã loại chính_sách"  from "chính_sách" as t1  join "tiêu_đề của yêu_cầu" as t2  on t1."id chính_sách" = t2."id chính_sách"  group by t1."mã loại chính_sách"  order by count(*) desc  limit 1
select t1."mã loại chính_sách"  from "chính_sách" as t1  join "khách_hàng" as t2 on t1."id khách_hàng" = t2."id khách_hàng"  group by t1."mã loại chính_sách"  having count(*) > 2
select t1."mã loại chính_sách"  from "chính_sách" as t1  join "khách_hàng" as t2 on t1."id khách_hàng" = t2."id khách_hàng"  group by t1."mã loại chính_sách"  having count(*) > 2
select sum(số tiền được trả), avg(số tiền được trả) from tiêu_đề của yêu_cầu
select sum(số tiền được trả), avg(số tiền được trả) from tiêu_đề của yêu_cầu
select "số tiền được yêu_cầu" from "tài_liệu của yêu_cầu" order by "ngày tạo ra" desc limit 1
select "số tiền được yêu_cầu" from "tài_liệu của yêu_cầu" order by "ngày tạo ra" desc limit 1
select t1."chi tiết khách_hàng", t2."số tiền được yêu_cầu"  from "khách_hàng" as t1  join "tiêu_đề của yêu_cầu" as t2  on t1."id khách_hàng" = t2."id khách_hàng"  where t2."số tiền được yêu_cầu" = (select max("số tiền được yêu_cầu") from "tiêu_đề của yêu_cầu")
select t1."chi tiết khách_hàng"  from "khách_hàng" as t1  join "tiêu đề của yêu_cầu" as t2  on t1."id khách_hàng" = t2."id khách_hàng"  where t2."số tiền được yêu_cầu" = (select max("số tiền được yêu_cầu") from "tiêu đề của yêu_cầu")
select t1."chi tiết khách_hàng"  from "khách_hàng" as t1  join "tiêu_đề của yêu_cầu" as t2 on t1."id khách_hàng" = t2."id khách_hàng"  where t2."số tiền được trả" = (select min("số tiền được trả") from "tiêu_đề của yêu_cầu")
select t1."id khách_hàng", t1."chi_tiết khách_hàng"  from "chính_sách" as t2  join "tiêu_đề của yêu_cầu" as t1 on t2."id chính_sách" = t1."id chính_sách"  where t1."số tiền được trả" = (select min("số tiền được trả") from "tiêu_đề của yêu_cầu")  group by t1."id khách_hàng"
select "chi_tiết khách_hàng" from "khách_hàng" where "id khách_hàng" not in (select "id khách_hàng" from "chính_sách")
select "chi_tiết khách_hàng" from "khách_hàng" where "id khách_hàng" not in (select "id khách_hàng" from "chính_sách")
select count(*) from "giai_đoạn xử_lý yêu_cầu"
select count(distinct "id giai_đoạn yêu_cầu") from "giai_đoạn xử_lý yêu_cầu"
select t1."tên tình_trạng yêu_cầu"  from "giai_đoạn xử_lý yêu_cầu" as t1  join "xử_lý yêu_cầu" as t2 on t1."id giai_đoạn xử_lý yêu_cầu" = t2."id giai_đoạn xử_lý yêu_cầu"  group by t2."id giai_đoạn xử_lý yêu_cầu"  order by count(*) desc  limit 1
select t1."tên tình_trạng yêu_cầu"  from "giai_đoạn xử_lý yêu_cầu" as t1  join "xử_lý yêu_cầu" as t2 on t1."id giai_đoạn xử_lý yêu_cầu" = t2."id giai_đoạn xử_lý yêu_cầu"  group by t1."id giai_đoạn xử_lý yêu_cầu"  order by count(*) desc  limit 1
select "chi_tiết khách_hàng" from "khách_hàng" where "chi_tiết khách_hàng" like "%Diana%"
select "chi_tiết khách_hàng" from "khách_hàng" where "chi_tiết khách_hàng" like "%Diana%"
select t1."chi tiết khách_hàng"  from "khách_hàng" as t1  join "chính_sách" as t2 on t1."id khách_hàng" = t2."id khách_hàng"  where t2."mã loại chính_sách" = 'Uỷ_quyền'
select t1."chi tiết khách_hàng" from "khách_hàng" as t1 join "chính_sách" as t2 on t1."id khách_hàng" = t2."id khách_hàng" where t2."mã loại chính_sách" = 'Uỷ_quyền'
select t1."chi tiết khách_hàng"  from "khách_hàng" as t1  join "chính_sách" as t2 on t1."id khách_hàng" = t2."id khách_hàng"  where t2."mã loại chính_sách" = 'Uỷ_quyền' or t2."mã loại chính_sách" = 'Thống_nhất'
select t1."chi_tiết khách_hàng"  from "khách_hàng" as t1  join "chính_sách" as t2 on t1."id khách_hàng" = t2."id khách_hàng"  where t2."mã loại chính_sách" = 'Uỷ_quyền' or t2."mã loại chính_sách" = 'Thống_nhất'
select * from khách_hàng union select * from nhân_viên
select * from khách_hàng join nhân_viên on khách_hàng."id khách_hàng" = nhân_viên."id nhân_viên"
select "mã loại chính_sách", count(*) from "chính_sách" group by "mã loại chính_sách"
select "mã loại chính_sách", count(*)  from "chính_sách"  group by "mã loại chính_sách"
select t1."chi_tiết khách_hàng"  from "khách_hàng" as t1  join "chính_sách" as t2 on t1."id khách_hàng" = t2."id khách_hàng"  group by t1."id khách_hàng"  order by count(*) desc  limit 1
select t1."chi tiết khách_hàng" from "khách_hàng" as t1 join "chính_sách" as t2 on t1."id khách_hàng" = t2."id khách_hàng" group by t1."id khách_hàng" order by count(*) desc limit 1
select "mô_tả về tình_trạng yêu_cầu" from "tiêu đề của yêu_cầu" where "mã tình_trạng yêu_cầu" = 'Mở'
select "mô_tả về tình_trạng yêu_cầu" from "tiêu đề của yêu_cầu" where "mã tình_trạng yêu_cầu" = 'Mở'
select count(distinct t1."mã kết_quả của yêu_cầu")  from "xử_lý yêu_cầu" as t1  join "tiêu_đề của yêu_cầu" as t2  on t1."id yêu_cầu" = t2."id tiêu_đề của yêu_cầu"
select count(distinct "mã kết_quả của yêu_cầu") from "xử_lý yêu_cầu"
select t1."chi_tiết khách_hàng"  from "khách_hàng" as t1  join "chính_sách" as t2 on t1."id khách_hàng" = t2."id khách_hàng"  order by t2."ngày bắt_đầu" desc  limit 1
select t1."chi tiết khách_hàng"  from "khách_hàng" as t1  join "chính_sách" as t2 on t1."id khách_hàng" = t2."id khách_hàng"  order by t2."ngày bắt_đầu" desc  limit 1
select t2.chi_tiết sự_kiện  from dịch_vụ as t1  join sự_kiện as t2 on t1."id dịch_vụ" = t2."id dịch_vụ"  where t1."mã loại dịch_vụ" = 'Đám_cưới'
select t1."id sự_kiện", t1."chi_tiết sự_kiện"  from "sự_kiện" as t1  join "người tham_gia sự_kiện" as t2 on t1."id sự_kiện" = t2."id sự_kiện"  group by t1."id sự_kiện"  having count(*) > 1
select t1."id người tham_gia", t1."mã loại người tham_gia", count(*)  from "người tham_gia" as t1  join "người tham_gia sự_kiện" as t2 on t1."id người tham_gia" = t2."id người tham_gia"  group by t1."id người tham_gia"
select "id người tham_gia", "mã loại người tham_gia", "chi_tiết người tham_gia" from "người tham_gia"
select count(*) from "người tham_gia" where "mã loại người tham_gia" = 'Người tổ_chức'
select "mã loại dịch_vụ" from "dịch_vụ" order by "mã loại dịch_vụ"
select t1."id dịch_vụ", t2."chi_tiết sự_kiện"  from "dịch_vụ" as t1  join "sự_kiện" as t2  on t1."id dịch_vụ" = t2."id dịch_vụ"
select count(*)  from sự_kiện as t1  join người tham_gia sự_kiện as t2 on t1."id sự_kiện" = t2."id sự_kiện"  join người tham_gia as t3 on t2."id người tham_gia" = t3."id người tham_gia"  where t3."chi_tiết người tham_gia" like "%Dr%"
select "mã loại người tham_gia" from "người tham_gia" group by "mã loại người tham_gia" order by count(*) desc limit 1
select t1."id dịch_vụ", t1."mã loại dịch_vụ"  from "dịch_vụ" as t1  join "người tham_gia sự_kiện" as t2 on t1."id dịch_vụ" = t2."id dịch_vụ"  group by t1."id dịch_vụ"  order by count(*)  limit 1
select t1."id sự_kiện"  from "sự_kiện" as t1  join "người tham_gia sự_kiện" as t2 on t1."id sự_kiện" = t2."id sự_kiện"  group by t1."id sự_kiện"  order by count(*) desc  limit 1
select t1."id sự_kiện"  from "sự_kiện" as t1  left join "người tham_gia sự_kiện" as t2 on t1."id sự_kiện" = t2."id sự_kiện"  where t2."id người tham_gia" is null
select t1."mã loại dịch_vụ"  from "dịch_vụ" as t1  join "sự_kiện" as t2 on t1."id dịch_vụ" = t2."id dịch_vụ"  where t2."chi_tiết sự_kiện" = 'Thành_công'  intersect  select t1."mã loại dịch_vụ"  from "dịch_vụ" as t1  join "sự_kiện" as t2 on t1."id dịch_vụ" = t2."id dịch_vụ"  where t2."chi_tiết sự_kiện" = 'Thất_bại'
select count(*) from sự_kiện where "id sự_kiện" not in (select "id sự_kiện" from người tham_gia sự_kiện)
select count(distinct t1."id người tham_gia") from "người tham_gia sự_kiện" as t1 join "người tham_gia" as t2 on t1."id người tham_gia" = t2."id người tham_gia"
select count(*) from kỹ_thuật_viên
select count(*) from "kỹ_thuật_viên"
select tên from kỹ_thuật_viên order by tuổi asc
select tên from kỹ_thuật_viên order by tuổi asc
select đội , năm bắt_đầu làm_việc from kỹ_thuật_viên
select đội, năm bắt_đầu làm_việc from kỹ_thuật_viên group by đội
select tên from kỹ_thuật_viên where đội != 'NYY'
select tên from kỹ_thuật_viên where đội <> "NYY" except select tên from kỹ_thuật_viên where đội = "NYY"
select tên from kỹ_thuật_viên where tuổi = 36 or tuổi = 37
select tên from kỹ_thuật_viên where tuổi = 36 or tuổi = 37
select năm bắt_đầu làm_việc from kỹ_thuật_viên order by tuổi desc limit 1
select "năm bắt_đầu" from "kỹ_thuật_viên" order by "năm bắt_đầu" desc limit 1
select đội, count(*) from kỹ_thuật_viên group by đội
select đội, count(*) from kỹ_thuật_viên group by đội
select đội from kỹ_thuật_viên group by đội order by count(*) desc limit 1
select t1.đội, count(*)  from kỹ_thuật_viên as t1  join phân_công sửa_chữa as t2 on t1.id kỹ_thuật_viên = t2.id kỹ_thuật_viên  group by t1.đội  order by count(*) desc
select distinct đội from kỹ_thuật_viên group by đội having count(*) >= 2
select distinct t2."đội" from "kỹ_thuật_viên" as t1 join "máy_móc" as t2 on t1."id đội" = t2."id đội" group by t2."đội" having count(*) >= 2
select t1.tên , t2.loạt máy  from kỹ_thuật_viên as t1  join phân công sửa_chữa as t2  on t1.id kỹ_thuật_viên = t2.id kỹ_thuật_viên
select t1.tên , t2.loạt máy  from kỹ_thuật_viên as t1  join phân công sửa_chữa as t2  on t1.id kỹ_thuật_viên = t2.id kỹ_thuật_viên
select t1.tên  from kỹ_thuật_viên as t1  join phân công sửa chữa as t2 on t1."id kỹ_thuật_viên" = t2."id kỹ_thuật_viên"  join máy móc as t3 on t2."id máy" = t3."id máy"  group by t1."id kỹ_thuật_viên"  order by t3."xếp hạng chất_lượng"
select t1.tên  from kỹ_thuật_viên as t1  join phân công sửa chữa as t2 on t1.id kỹ_thuật_viên = t2.id kỹ_thuật_viên  join máy móc as t3 on t2.id máy = t3.id máy  order by t3.xếp hạng chất_lượng
select t1.tên  from kỹ_thuật_viên as t1  join phân công sửa_chữa as t2 on t1."id kỹ_thuật_viên" = t2."id kỹ_thuật_viên"  join máy_móc as t3 on t2."id máy" = t3."id máy"  where t3."điểm giá_trị" > 70
select t1.tên  from kỹ_thuật_viên as t1  join phân công sửa_chữa as t2 on t1."id kỹ_thuật_viên" = t2."id kỹ_thuật_viên"  join máy_móc as t3 on t2."id máy" = t3."id máy"  where t3."điểm giá_trị" > 70
select t1.tên , count ( * ) from kỹ_thuật_viên as t1 join phân công sửa_chữa as t2 on t1.id kỹ_thuật_viên = t2.id kỹ_thuật_viên group by t1.tên
select t1.tên , count(*)  from kỹ_thuật_viên as t1  join phân công sửa_chữa as t2  on t1.id kỹ_thuật_viên = t2.id kỹ_thuật_viên  group by t1.tên
select tên from kỹ_thuật_viên where "id kỹ_thuật_viên" not in (select "id kỹ_thuật_viên" from phân công sửa_chữa)
select tên from kỹ_thuật_viên except select t3.tên from phân công sửa_chữa as t2 join lượt sửa_chữa as t3 on t2.id lượt sửa_chữa = t3.id lượt sửa_chữa join máy móc as t1 on t2.id máy = t1.id máy
select năm bắt_đầu làm_việc from kỹ_thuật_viên where đội = "CLE" union select năm bắt_đầu làm_việc from kỹ_thuật_viên where đội = "CWS"
select distinct năm bắt_đầu làm_việc  from kỹ_thuật_viên  where đội = 'CLE' or đội = 'CWS'  group by năm bắt_đầu làm_việc  having count(*) < 2
select count(nhãn_hiệu) from ống_kính máy_ảnh where độ dài tiêu_cự theo mm > 15
select nhãn_hiệu , tên from ống_kính máy_ảnh order by khẩu_độ tối_đa desc
select id, màu_sắc, tên from ảnh
select max("chiều cao"), avg("chiều cao") from "núi"
select avg("độ nổi") from "núi" where "quốc_gia" = 'Morocco'
select tên , chiều cao , độ nổi from núi where dãy núi != "Aberdare"
select t1.id , t1.tên  from ảnh as t1  join núi as t2 on t1.id núi = t2.id  where t2.độ cao > 4000
select t1.tên , t1.id  from núi as t1  join ảnh as t2 on t1.id = t2.id núi  group by t2.id núi  having count(*) >= 2
select t2.tên  from núi as t1  join ảnh as t2 on t1.id = t2.id núi  where t1.chiều cao = (select max(chiều cao) from núi)  order by t1.chiều cao desc
select t1.tên  from ảnh as t1  join ống_kính máy_ảnh as t2 on t1.id ống_kính máy_ảnh = t2.id  where t2.nhãn_hiệu = "Sigma" or t2.nhãn_hiệu = "Olympus"
select count(distinct nhãn_hiệu) from ống_kính máy_ảnh
select count(*) from "ống_kính máy_ảnh" except select "id ống_kính máy_ảnh" from "ảnh"
select count(distinct t1."nhãn hiệu")  from "ống_kính máy_ảnh" as t1  join "ảnh" as t2 on t1."id" = t2."id ống_kính máy_ảnh"  where t2."quốc_gia" = 'Ethiopia'
select t1."nhãn_hiệu"  from "ống_kính máy_ảnh" as t1  join "ảnh" as t2 on t1."id" = t2."id ống_kính máy_ảnh"  join "núi" as t3 on t2."id núi" = t3."id"  where t3."dãy núi" = 'Toubkal_Atlas' or t3."dãy núi" = 'Lasta_Massif'
select tên , độ nổi from núi where id not in ( select t1.id núi from ảnh as t1 join ống_kính máy_ảnh as t2 on t1.id ống_kính máy_ảnh = t2.id where t2.nhãn_hiệu = "Sigma" )
select tên from ống_kính máy_ảnh where tên like "%Kỹ_Thuật_Số%"
select t1.nhãn_hiệu, count(*)  from ống_kính máy_ảnh as t1  join ảnh as t2 on t1.id = t2.id ống_kính máy_ảnh  group by t1.nhãn_hiệu  order by count(*) desc
select count(*) from "ban nhạc"
select count(*) from "ban nhạc"
select "hãng thu âm" from "album"
select distinct "hãng thu âm" from "album"
select "tiêu_đề" from "album" where "năm" = 2012
select tiêu_đề from album where năm = 2012
select t2."vị_trí trên sân_khấu"  from "buổi biểu_diễn" as t1  join "ban nhạc" as t2 on t1."nghệ_sĩ trong ban nhạc" = t2."id"  where t2."tên" = 'Solveig'
select t2."vị_trí trên sân_khấu"  from "buổi biểu_diễn" as t1  join "ban nhạc" as t2 on t1."nghệ_sĩ trong ban nhạc" = t2."id"  where t2."tên" = 'Solveig'
select count(*) from "bài hát"
select count(*) from "bài hát"
select t1."id bài hát"  from "buổi biểu_diễn" as t2  join "ban nhạc" as t1 on t2."nghệ_sĩ trong ban nhạc" = t1."id"  where t1."họ" = 'Heilo'
select t2.tiêu_đề  from buổi biểu_diễn as t1  join ban nhạc as t2 on t1.nghệ_sĩ trong ban nhạc = t2.id  where t2.họ = "Hello"
select count(distinct t3."tên")  from "buổi biểu_diễn" as t1  join "bài hát" as t2 on t1."id bài hát" = t2."id bài hát"  join "ban nhạc" as t3 on t1."nghệ_sĩ trong ban nhạc" = t3."id"  where t2."tiêu_đề" = 'Flash'
select count(distinct t3."tên")  from "buổi biểu_diễn" as t1  join "bài hát" as t2 on t1."id bài hát" = t2."id bài hát"  join "ban nhạc" as t3 on t1."nghệ_sĩ trong ban nhạc" = t3."id"  where t2."tiêu_đề" = 'Flash'
select t1."tiêu_đề" from "bài hát" as t1  join "ban nhạc" as t2 on t1."id bài hát" = t2."id bài hát"  where t2."tên" = 'Marianne'
select t1."tiêu_đề"  from "bài hát" as t1  join "ban nhạc" as t2 on t1."id bài hát" = t2."id bài hát"  where t2."tên" = 'Marianne'
select t1.tên , t1.họ  from ban nhạc as t1  join buổi biểu_diễn as t2 on t1.id = t2.nghệ_sĩ trong ban nhạc  where t2.id bài hát in (      select id bài hát      from bài hát      where tiêu_đề = "Badlands" )
select t3.tên , t3.họ  from buổi biểu_diễn as t2  join giọng hát as t1 on t2.id bài hát = t1.id bài hát  join ban nhạc as t3 on t2.nghệ_sĩ trong ban nhạc = t3.id  join bài hát as t4 on t1.id bài hát = t4.id bài hát  where t4.tiêu_đề = "Badlands"
select t3.tên , t3.họ  from buổi biểu_diễn as t1  join bài hát as t2 on t1."id bài hát" = t2."id bài hát"  join ban nhạc as t3 on t1."nghệ_sĩ trong ban nhạc" = t3."id"  where t1."vị_trí trên sân_khấu" = 'hậu_trường' and t2."tiêu_đề" = 'Badlands'
select t3.tên , t3.họ  from buổi biểu_diễn as t1  join giọng hát as t2 on t1.nghệ_sĩ trong ban nhạc = t2.id  join ban nhạc as t3 on t2.id = t3.id  join bài hát as t4 on t4.id bài hát = t1.id bài hát  where t4.tiêu_đề = "Badlands" and t2.loại = "hậu_trường"
select count(distinct t1."hãng thu âm") from "album" as t1 join "ban nhạc" as t2 on t1."hãng thu âm" = t2."id"
select count(distinct "hãng thu âm") from "album"
select t1."hãng thu âm" from "album" as t1 join "ban nhạc" as t2 on t1."hãng thu âm" = t2."id" group by t1."hãng thu âm" order by count(*) desc limit 1
select t1."hãng thu âm" from "album" as t1 join "ban nhạc" as t2 on t1."hãng thu âm" = t2."id" group by t1."hãng thu âm" order by count(*) desc limit 1
select t1.họ from ban nhạc as t1 join nhạc_cụ as t2 on t1.id = t2.id nghệ_sĩ trong ban nhạc group by t1.tên order by count(*) desc limit 1
select t1.họ from ban nhạc as t1 join nhạc_cụ as t2 on t1.id = t2.id nghệ_sĩ trong ban nhạc group by t1.họ order by count(*) desc limit 1
select t3.họ  from buổi biểu_diễn as t1  join giọng hát as t2 on t1.nghệ_sĩ trong ban nhạc = t2.id nghệ_sĩ trong ban nhạc  join ban nhạc as t3 on t2.id = t3.id  where t1.vị_trí trên sân_khấu = "hậu_trường"  group by t3.họ  order by count(*) desc  limit 1
select t1.tên , t1.họ  from buổi biểu_diễn as t2  join ban nhạc as t1  on t2.nghệ_sĩ trong ban nhạc = t1.id  where t2.vị_trí trên sân_khấu = "hậu_trường"  group by t1.tên , t1.họ  order by count(*) desc  limit 1
select * from "bài hát" where "tiêu_đề" like "%the%"
select tiêu_đề from bài hát where tiêu_đề like "%the%"
select t1."nhạc_cụ" from "nhạc_cụ" as t1 join "buổi biểu_diễn" as t2 on t1."id bài hát" = t2."id bài hát"
select t1."nhạc_cụ" from "nhạc_cụ" as t1 join "buổi biểu_diễn" as t2 on t1."id bài hát" = t2."id bài hát"
select t3.nhạc_cụ  from nhạc_cụ as t3  join buổi biểu_diễn as t2 on t3."id bài hát" = t2."id bài hát"  join giọng hát as t1 on t2."id nghệ_sĩ trong ban nhạc" = t1."id nghệ_sĩ trong ban nhạc"  join ban nhạc as t4 on t1."id" = t4."id"  join bài hát as t5 on t5."id bài hát" = t3."id bài hát"  where t4."họ" = 'Heilo' and t5."tiêu_đề" = 'Le_Pop'
select t3."nhạc_cụ"  from "nhạc_cụ" as t3  join "buổi biểu_diễn" as t2 on t3."id bài hát" = t2."id bài hát"  join "giọng hát" as t1 on t2."nghệ_sĩ trong ban nhạc" = t1."nghệ_sĩ trong ban nhạc"  join "ban nhạc" as t4 on t1."id" = t4."id"  join "bài hát" as t5 on t5."id bài hát" = t3."id bài hát"  where t4."họ" = 'Heilo' and t5."tiêu_đề" = 'Le_Pop'
select t1."nhạc_cụ" from "nhạc_cụ" as t1 join "bài hát" as t2 on t1."id bài hát" = t2."id bài hát" group by t1."nhạc_cụ" order by count(*) desc limit 1
select nhạc_cụ from nhạc_cụ group by nhạc_cụ order by count(*) desc limit 1
select count(*) from nhạc_cụ as t1 join bài hát as t2 on t1."id bài hát" = t2."id bài hát" where t1."nhạc_cụ" = 'trống'
select count(*) from nhạc_cụ as t1 join bài hát as t2 on t1."id bài hát" = t2."id bài hát" where t1."nhạc_cụ" = 'trống'
select t3.nhạc_cụ from buổi biểu_diễn as t2 join bài hát as t1 on t2."id bài hát" = t1."id bài hát" join nhạc_cụ as t3 on t2."id nghệ_sĩ trong ban nhạc" = t3."id nghệ_sĩ trong ban nhạc" where t1."tiêu_đề" = 'Le_Pop'
select t3.nhạc_cụ from nhạc_cụ as t3 join bài hát as t2 on t3."id bài hát" = t2."id bài hát" join ban nhạc as t1 on t3."id nghệ_sĩ trong ban nhạc" = t1."id" where t2."tiêu_đề" = 'Le_Pop'
select count(distinct t2.nhạc_cụ) from nhạc_cụ as t2 join bài hát as t1 on t2."id bài hát" = t1."id bài hát" where t1."tiêu_đề" = 'Le_Pop'
select count(distinct t3.nhạc_cụ)  from "nhạc_cụ" as t3  join "ban nhạc" as t2 on t3."id nghệ_sĩ trong ban nhạc" = t2."id"  join "buổi biểu_diễn" as t1 on t2."id" = t1."nghệ_sĩ trong ban nhạc"  join "danh_sách bài hát" as t4 on t4."id bài hát" = t1."id bài hát"  join "bài hát" as t5 on t5."id bài hát" = t4."id bài hát"  where t5."tiêu_đề" = 'Le_Pop'
select count(distinct t2.nhạc_cụ)  from nhạc_cụ as t2  join ban nhạc as t1 on t2.id nghệ_sĩ trong ban nhạc = t1.id  where t1.họ = "Heilo"
select count(distinct t2.nhạc_cụ)  from nhạc_cụ as t2  join ban nhạc as t1 on t2.id nghệ_sĩ trong ban nhạc = t1.id  where t1.họ = "Hello"
select t1.nhạc_cụ from nhạc_cụ as t1 join ban nhạc as t2 on t1.id nghệ_sĩ trong ban nhạc = t2.id where t2.họ = "Heilo"
select t2.nhạc_cụ from nhạc_cụ as t2 join ban nhạc as t1 on t2.id nghệ_sĩ trong ban nhạc = t1.id where t1.tên = "Hello" and t1.họ = "Hello"
select t1."tiêu_đề" from "giọng hát" as t2 join "bài hát" as t1 on t2."id bài hát" = t1."id bài hát" group by t2."id bài hát" order by count(*) desc limit 1
select t1."tiêu_đề" from "giọng hát" as t2 join "bài hát" as t1 on t2."id bài hát" = t1."id bài hát" group by t2."id bài hát" order by count(*) desc limit 1
select "loại" from "giọng hát" group by "loại" order by count(*) desc limit 1
select loại from giọng hát group by loại order by count(*) desc limit 1
select t3.loại  from giọng hát as t3  join ban nhạc as t2 on t3."id bài hát" = t2."id album"  join nghệ_sĩ trong ban nhạc as t1 on t2."id" = t1."id nghệ_sĩ trong ban nhạc"  where t1."họ" = 'Hello'  group by t3.loại  order by count(*) desc  limit 1
select distinct t3."loại"  from "giọng hát" as t3  join "ban nhạc" as t2 on t3."id nghệ_sĩ trong ban nhạc" = t2."id"  join "nhạc_cụ" as t1 on t1."id nghệ_sĩ trong ban nhạc" = t2."id"  where t2."họ" = 'Hello' and t3."loại" = 'lead'
select t3."loại"  from "giọng hát" as t3  join "buổi biểu_diễn" as t2 on t3."id bài hát" = t2."id bài hát"  join "ban nhạc" as t1 on t2."nghệ_sĩ trong ban nhạc" = t1."id"  join "nhạc_cụ" as t4 on t4."id nghệ_sĩ trong ban nhạc" = t1."id"  join "bài hát" as t5 on t5."id bài hát" = t4."id bài hát"  join "danh_sách bài hát" as t6 on t6."id bài hát" = t5."id bài hát"  where t5."tiêu_đề" = 'Le_Pop'
select distinct t3."loại"  from "giọng hát" as t3  join "buổi biểu_diễn" as t2 on t3."id bài hát" = t2."id bài hát"  join "bài hát" as t1 on t1."id bài hát" = t2."id bài hát"  join "ban nhạc" as t4 on t4."id" = t2."nghệ_sĩ trong ban nhạc"  where t1."tiêu_đề" = 'Le_Pop'
select count(distinct t3."loại")  from "giọng hát" as t3  join "bài hát" as t2 on t3."id bài hát" = t2."id bài hát"  join "ban nhạc" as t1 on t3."nghệ_sĩ trong ban nhạc" = t1."id"  where t2."tiêu_đề" = 'Demon_Kitty_Rag'
select count(distinct t3."loại")  from "giọng hát" as t3  join "bài hát" as t2 on t3."id bài hát" = t2."id bài hát"  join "ban nhạc" as t1 on t3."nghệ_sĩ trong ban nhạc" = t1."id"  where t2."tiêu_đề" = 'Demon_Kitty_Rag'
select count(*) from giọng hát as t1 join bài hát as t2 on t1."id bài hát" = t2."id bài hát" where t1."loại" = 'chính'
select count(*) from giọng hát as t1 join bài hát as t2 on t1."id bài hát" = t2."id bài hát" where t1."loại" = 'chính'
select t3."loại"  from "giọng hát" as t3  join "buổi biểu_diễn" as t2 on t3."id bài hát" = t2."id bài hát"  join "danh_sách bài hát" as t1 on t1."id bài hát" = t3."id bài hát"  join "ban nhạc" as t4 on t2."nghệ_sĩ trong ban nhạc" = t4."id"  where t4."tên" = 'Solveig' and t1."vị_trí" = 1 and t1."id bài hát" in (select "id bài hát" from "bài hát" where "tiêu_đề" = 'Quán bar ở Amsterdam')
select t3.loại  from giọng hát as t3  join buổi biểu_diễn as t2 on t3."id bài hát" = t2."id bài hát"  join ban nhạc as t1 on t2."nghệ_sĩ trong ban nhạc" = t1."id"  join nhạc_cụ as t4 on t4."id nghệ_sĩ trong ban nhạc" = t1."id"  join bài hát as t5 on t5."id bài hát" = t3."id bài hát"  where t1."tên" = 'Solveig' and t5."tiêu_đề" = 'Quán bar ở Amsterdam'
select t1."id bài hát" from "bài hát" as t1  join "giọng hát" as t2 on t1."id bài hát" = t2."id bài hát"  where t2."loại" != 'chính'
select t1."tiêu_đề" from "bài hát" as t1  left join "giọng hát" as t2 on t1."id bài hát" = t2."id bài hát"  where t2."loại" != 'chính'
select distinct loại from giọng hát
select distinct loại from giọng hát
select tiêu_đề from album where năm = 2010
select "tiêu_đề", "năm", "hãng thu âm" from "album" where "năm" = 2010 group by "tiêu_đề", "hãng thu âm"
select t2.tên  from buổi biểu_diễn as t1  join ban nhạc as t2 on t1.nghệ_sĩ trong ban nhạc = t2.id  join bài hát as t3 on t1.id bài hát = t3.id bài hát  where t3.tiêu_đề = "Le_Pop"
select t1.tên , t1.họ from ban nhạc as t1 join buổi biểu_diễn as t2 on t1.id = t2.nghệ_sĩ trong ban nhạc join bài hát as t3 on t3.id bài hát = t2.id bài hát where t3.tiêu_đề = "Le_Pop"
select t1.họ from ban nhạc as t1 join nhạc_cụ as t2 on t1.id = t2.id nghệ_sĩ trong ban nhạc group by t1.id order by count(*) desc limit 1
select t1.tên , t1.họ  from ban nhạc as t1  join nhạc_cụ as t2 on t1.id = t2.id nghệ_sĩ trong ban nhạc  group by t2.id nghệ_sĩ trong ban nhạc  order by count ( * ) desc  limit 1
select t3.nhạc_cụ  from nhạc_cụ as t3  join buổi biểu_diễn as t2 on t3."id bài hát" = t2."id bài hát"  join giọng hát as t1 on t2."id nghệ_sĩ trong ban nhạc" = t1."id nghệ_sĩ trong ban nhạc"  join ban nhạc as t4 on t1."id" = t4."id"  join bài hát as t5 on t5."id bài hát" = t3."id bài hát"  where t4."họ" = 'Heilo' and t5."tiêu_đề" = 'Badlands'
select t3.nhạc_cụ  from nhạc_cụ as t3  join buổi biểu_diễn as t2 on t3."id bài hát" = t2."id bài hát"  join giọng hát as t1 on t2."nghệ_sĩ trong ban nhạc" = t1."nghệ_sĩ trong ban nhạc"  join bài hát as t4 on t4."id bài hát" = t3."id bài hát"  join ban nhạc as t5 on t5."id" = t1."id"  where t5."họ" = 'Hello' and t4."tiêu đề" = 'Badlands'
select count(*) from nhạc_cụ as t1 join bài hát as t2 on t1."id bài hát" = t2."id bài hát" where t2."tiêu_đề" = 'Badlands'
select count(distinct t3.nhạc_cụ)  from nhạc_cụ as t3  join buổi biểu_diễn as t2 on t3."id bài hát" = t2."id bài hát"  join danh_sách bài hát as t1 on t2."id bài hát" = t1."id bài hát"  join bài hát as t4 on t1."id bài hát" = t4."id bài hát"  where t4."tiêu_đề" = 'Badlands'
select t3.loại  from giọng hát as t3  join danh_sách bài hát as t2 on t3."id bài hát" = t2."id bài hát"  join bài hát as t1 on t2."id bài hát" = t1."id bài hát"  where t1."tiêu_đề" = 'Badlands'
select t2.loại  from giọng hát as t2  join bài hát as t1 on t2."id bài hát" = t1."id bài hát"  where t1."tiêu_đề" = 'Badlands'
select count(distinct t3."loại")  from "giọng hát" as t3  join "bài hát" as t2 on t3."id bài hát" = t2."id bài hát"  join "ban nhạc" as t1 on t3."nghệ_sĩ trong ban nhạc" = t1."id"  where t2."tiêu_đề" = 'Le_Pop'
select count(distinct t2."loại")  from "giọng hát" as t2  join "bài hát" as t1 on t2."id bài hát" = t1."id bài hát"  where t1."tiêu_đề" = 'Le_Pop'
select t1."id bài hát", count(*)  from "giọng hát" as t2  join "bài hát" as t1 on t2."id bài hát" = t1."id bài hát"  group by t1."id bài hát"  having count(*) > 1
select count(distinct t3."id bài hát")  from "giọng hát" as t1  join "ban nhạc" as t2 on t1."nghệ_sĩ trong ban nhạc" = t2."id"  join "bài hát" as t3 on t3."id bài hát" = t1."id bài hát"  group by t3."id bài hát"  having count(*) > 1
select "tiêu_đề" from "bài hát" except select t3."tiêu_đề" from "giọng hát" as t3 join "bài hát" as t2 on t3."id bài hát" = t2."id bài hát" where t3."loại" = 'phụ'
select t1.tiêu_đề from bài hát as t1  join giọng hát as t2 on t1."id bài hát" = t2."id bài hát"  where t2."loại" != 'phụ'  except  select t1.tiêu_đề from bài hát as t1  join giọng hát as t2 on t1."id bài hát" = t2."id bài hát"  where t2."loại" = 'phụ'
select t3.loại  from giọng hát as t3  join ban nhạc as t2 on t3."id bài hát" = t2."id album"  join nghệ_sĩ trong ban nhạc as t1 on t2."id" = t1."id"  where t1."tên" = 'Solveig'  group by t3.loại  order by count(*) desc  limit 1
select t3."loại"  from "giọng hát" as t3  join "ban nhạc" as t2 on t3."id nghệ_sĩ trong ban nhạc" = t2."id"  join "nhạc_cụ" as t1 on t1."id nghệ_sĩ trong ban nhạc" = t2."id"  where t2."tên" = 'Solveig'  group by t3."loại"  order by count(*) desc  limit 1
select t3."loại"  from "giọng hát" as t3  join "ban nhạc" as t2 on t3."nghệ_sĩ trong ban nhạc" = t2."id"  join "bài hát" as t1 on t3."id bài hát" = t1."id bài hát"  where t2."họ" = 'Hello' and t1."tiêu_đề" = 'Der_Kapitan'
select t3."loại"  from "giọng hát" as t3  join "ban nhạc" as t2 on t3."nghệ_sĩ trong ban nhạc" = t2."id"  join "bài hát" as t1 on t3."id bài hát" = t1."id bài hát"  join "nhạc_cụ" as t4 on t3."id bài hát" = t4."id bài hát"  where t2."họ" = 'Hello' and t1."tiêu_đề" = 'Der_Kapitan'
select t1.tên from buổi biểu_diễn as t2 join ban nhạc as t1 on t2.nghệ_sĩ trong ban nhạc = t1.id group by t2.nghệ_sĩ trong ban nhạc order by count(*) desc limit 1
select t1.tên from buổi biểu_diễn as t2 join ban nhạc as t1 on t2.nghệ_sĩ trong ban nhạc = t1.id group by t2.nghệ_sĩ trong ban nhạc order by count(*) desc limit 1
select t3.loại  from giọng hát as t3  join ban nhạc as t2 on t3."id nghệ_sĩ trong ban nhạc" = t2."id"  join nhạc_cụ as t1 on t1."id bài hát" = t3."id bài hát"  where t2."tên" = 'Marianne'  group by t3.loại  order by count(*) desc  limit 1
select t3.loại  from giọng hát as t3  join ban nhạc as t2 on t3."id nghệ_sĩ trong ban nhạc" = t2."id"  join nhạc_cụ as t1 on t1."id bài hát" = t3."id bài hát"  where t2."tên" = 'Marianne'  group by t3.loại  order by count(*) desc  limit 1
select t3.tên , t3.họ  from buổi biểu_diễn as t1  join bài hát as t2 on t1."id bài hát" = t2."id bài hát"  join ban nhạc as t3 on t1."nghệ_sĩ trong ban nhạc" = t3."id"  where t1."vị_trí trên sân_khấu" = 'hậu_trường' and t2."tiêu_đề" = 'Der_Kapitan'
select t3.tên , t3.họ  from buổi biểu_diễn as t1  join giọng hát as t2 on t1.id bài hát = t2.id bài hát  join ban nhạc as t3 on t2.id nghệ_sĩ trong ban nhạc = t3.id  where t2.loại = "trở lại" and t1.id bài hát = ( select id bài hát from bài hát where tiêu_đề = "Der_Kapitan" )
select t1.tiêu_đề from bài hát as t1 join giọng hát as t2 on t1."id bài hát" = t2."id bài hát" where t2."loại" != 'phụ' group by t1."id bài hát" having count(*) = 1
select t1.tiêu_đề from bài hát as t1 where t1."id bài hát" not in ( select t2."id bài hát" from giọng hát as t2 where t2."loại" = 'phụ')
select t2.tiêu_đề  from danh_sách bài hát as t1  join bài hát as t2 on t1.id bài hát = t2.id bài hát  join album as t3 on t1.id album = t3.id album  where t3.tiêu_đề = "A Night in Hamburg: Living in Hamburg"
select t2.tiêu_đề from album as t1 join danh_sách bài hát as t2 on t1.id album = t2.id album where t1.tiêu_đề = "A Night_in Hamburg : Living in Hamburg"
select t3."tiêu_đề"  from "album" as t1  join "danh_sách bài hát" as t2 on t1."id album" = t2."id album"  join "bài hát" as t3 on t2."id bài hát" = t3."id bài hát"  where t1."hãng thu âm" = 'Universal_Music_Group'
select t3.tiêu_đề  from album as t1  join danh_sách bài hát as t2 on t1.id album = t2.id album  join bài hát as t3 on t2.id bài hát = t3.id bài hát  where t1.hãng thu âm = "Universal_Music_Group"
select count(*), t1."id album"  from "album" as t1  join "danh_sách bài hát" as t2 on t1."id album" = t2."id album"  where t1."loại" = 'phòng thu'
select count(*) from album as t1 join danh_sách bài hát as t2 on t1."id album" = t2."id album" where t1."loại" = 'phòng thu'
select t1."khách_hàng tốt hay xấu"  from "khách_hàng" as t1  join "phiếu giảm_giá" as t2 on t1."id phiếu giảm_giá" = t2."id phiếu giảm_giá"  where t2."số tiền giảm_giá" = 500
select t1."id khách_hàng", t1."tên", count(*)  from "khách_hàng" as t1  join "lượt đặt mua" as t2  on t1."id khách_hàng" = t2."id khách_hàng"  group by t1."id khách_hàng"
select t1."id khách_hàng", sum(t2."số tiền phải trả")  from "khách_hàng" as t1  join "lượt đặt mua" as t2 on t1."id khách_hàng" = t2."id khách_hàng"  group by t1."id khách_hàng"  order by sum(t2."số tiền phải trả") desc  limit 1
select t1."id đặt mua", t1."số tiền hoàn_trả"  from "thanh_toán" as t1  join "lượt đặt mua" as t2 on t1."id đặt mua" = t2."id đặt mua"  group by t1."id đặt mua"  order by count(*) desc  limit 1
select distinct t1."id sản_phẩm"  from "sản_phẩm được đặt" as t2  join "sản_phẩm cho thuê" as t1 on t2."id sản_phẩm" = t1."id sản_phẩm"  group by t1."id sản_phẩm"  having count(*) = 3
select t2.mô_tả sản_phẩm  from sản_phẩm cho thuê as t1  join sản_phẩm được đặt as t2  on t1.id sản_phẩm = t2.id sản_phẩm  where t2.số tiền đã đặt = 102.76
select t1."ngày bắt_đầu đặt mua", t1."ngày kết_thúc đặt mua"  from "lượt đặt mua" as t1  join "sản_phẩm được đặt" as t2 on t1."id đặt mua" = t2."id đặt mua"  where t2."tên sản_phẩm" = 'Bộ sưu_tập sách'
select t1.tên sản_phẩm from sản_phẩm có sẵn as t1 where t1.có sẵn hay không = "có"
select count(distinct "mã loại sản_phẩm") from "sản_phẩm cho thuê"
select tên , họ , giới_tính from khách_hàng where khách_hàng tốt hay xấu = "tốt" order by họ
select avg("số tiền nợ") from "thanh_toán"
select count(số_lượng đặt_hàng), avg(số_lượng đặt_hàng) from sản_phẩm được đặt group by id sản_phẩm
select distinct mã loại thanh_toán from thanh_toán
select "chi_phí thuê hàng ngày" from "sản_phẩm cho thuê" where "tên sản_phẩm" like "%Book%"
select count(*) from "sản_phẩm cho thuê" as t1 join "sản_phẩm được đặt" as t2 on t1."id sản_phẩm" = t2."id sản_phẩm" where t2."số tiền đã đặt" > 200
select sum("số tiền giảm_giá") from "phiếu giảm_giá" where "id phiếu giảm_giá" in (select "id phiếu giảm_giá" from "khách_hàng" where "khách_hàng tốt hay xấu" = 'tốt') intersect select sum("số tiền giảm_giá") from "phiếu giảm_giá" where "id phiếu giảm_giá" in (select "id phiếu giảm_giá" from "khách_hàng" where "khách_hàng tốt hay xấu" = 'xấu')
select ngày thanh_toán from thanh_toán where số tiền đã trả > 300 or mã loại thanh_toán = 'Giao_dịch' group by ngày thanh_toán order by số tiền đã trả desc
select tên sản_phẩm , mô_tả sản_phẩm from sản_phẩm cho thuê where mã loại sản_phẩm = "Dao_kéo" and chi_phí thuê hàng ngày < 20
select * from nhà_hàng
select địa_chỉ from nhà_hàng where tên nhà_hàng = "Subway"
select đánh_giá xếp_hạng from nhà_hàng where tên nhà_hàng = "Subway"
select "tên loại nhà_hàng" from "loại nhà_hàng"
select "mô_tả về loại nhà_hàng" from "loại nhà_hàng" where "tên loại nhà_hàng" = 'Sandwich'
select "tên nhà_hàng", "đánh_giá xếp_hạng" from "nhà_hàng" order by "đánh_giá xếp_hạng" desc limit 1
select tuổi from sinh_viên where tên = "Linda_Smith"
select giới_tính from sinh_viên where tên = "Linda" and họ = "Smith"
select tên , họ from sinh_viên where chuyên_ngành = 600
select "mã thành_phố" from "sinh_viên" where "tên" = 'Linda' and "họ" = 'Smith'
select count(*) from "sinh_viên" where "cố_vấn" = 1121
select t1.tên , count(*)  from "sinh_viên" as t1  join "nhà_hàng" as t2 on t1."cố_vấn" = t2."id nhà_hàng"  group by t1."cố_vấn"  order by count(*) desc  limit 1
select "chuyên_ngành", count(*) from "sinh_viên" group by "chuyên_ngành" order by count(*) desc limit 1
select "chuyên_ngành", count(*) from "sinh_viên" group by "chuyên_ngành" having count(*) >= 2 and count(*) <= 30 order by count(*) desc
select tên , họ from sinh_viên where tuổi > 18 and chuyên_ngành = 600
select tên , họ from sinh_viên where giới_tính = "F" and tuổi > 18 and chuyên_ngành <> 600
select count(*) from "loại nhà_hàng" as t1 join "loại của nhà_hàng" as t2 on t1."id loại nhà_hàng" = t2."id loại nhà_hàng" where t2."tên loại nhà_hàng" = 'Sandwich'
select sum(t3."thời_gian dành ra")  from "sinh_viên" as t1  join "lượt ghé thăm nhà_hàng" as t2 on t1."id sinh_viên" = t2."id sinh_viên"  join "nhà_hàng" as t3 on t2."id nhà_hàng" = t3."id nhà_hàng"  where t1."tên" = 'Linda' and t1."họ" = 'Smith'
select count(*)  from "sinh_viên" as t1  join "lượt ghé thăm nhà_hàng" as t2 on t1."id sinh_viên" = t2."id sinh_viên"  where t1."tên" = 'Linda' and t1."họ" = 'Smith' and t2."tên nhà_hàng" = 'Subway'
select t3."thời_gian"  from "sinh_viên" as t1  join "lượt ghé thăm nhà_hàng" as t2 on t1."id sinh_viên" = t2."id sinh_viên"  join "nhà_hàng" as t3 on t2."id nhà_hàng" = t3."id nhà_hàng"  join "loại của nhà_hàng" as t4 on t4."id nhà_hàng" = t3."id nhà_hàng"  join "loại nhà_hàng" as t5 on t4."id loại nhà_hàng" = t5."id loại nhà_hàng"  where t1."tên" = 'Linda' and t1."họ" = 'Smith' and t5."tên loại nhà_hàng" = 'Subway'
select t1."tên nhà_hàng", sum(t2."thời_gian dành ra")  from "lượt ghé thăm nhà_hàng" as t2  join "nhà_hàng" as t1 on t2."id nhà_hàng" = t1."id nhà_hàng"  group by t2."id nhà_hàng"  order by sum(t2."thời_gian dành ra")  limit 1
select t1.tên , t1.họ  from "sinh_viên" as t1  join "lượt ghé thăm nhà_hàng" as t2  on t1."id sinh_viên" = t2."id sinh_viên"  group by t1."id sinh_viên"  order by count(*) desc  limit 1
select distinct tên , họ from diễn_viên
select count(distinct họ) from diễn_viên
select t1.tên  from diễn_viên as t1  join diễn_viên điện_ảnh as t2 on t1."id diễn_viên" = t2."id diễn_viên"  group by t1.tên  order by count(*) desc  limit 1
select t1.tên , count(*) from diễn_viên as t1 join diễn_viên điện_ảnh as t2 on t1."id diễn_viên" = t2."id diễn_viên" group by t1."id diễn_viên" order by count(*) desc limit 1
select t1.tên , t1.họ  from diễn_viên as t1  join diễn_viên điện_ảnh as t2  on t1.id diễn_viên = t2.id diễn_viên  group by t1.tên , t1.họ  order by count(*) desc  limit 1
select t1.tên , t1.họ  from diễn_viên as t1  join diễn_viên điện_ảnh as t2  on t1."id diễn_viên" = t2."id diễn_viên"  group by t1.tên , t1.họ  order by count(*) desc  limit 1
select "quận" from "địa_chỉ" group by "quận" having count(*) >= 2
select "quận" from "địa_chỉ" group by "quận" having count(*) >= 2
select số điện_thoại , mã bưu_điện from địa_chỉ where địa_chỉ 2 = "1031 Daugavpils_Parkway"
select số điện_thoại , mã bưu_điện from địa_chỉ where địa_chỉ = "1031 Daugavpils_Parkway"
select t1.thành_phố , count(*) , t1.id thành_phố  from địa_chỉ as t2  join thành_phố as t1  on t2.id thành_phố = t1.id thành_phố  group by t1.id thành_phố  order by count(*) desc  limit 1
select t1.thành_phố , t1.id thành_phố , count(*)  from thành_phố as t1  join địa_chỉ as t2 on t1.id thành_phố = t2.id thành_phố  group by t1.id thành_phố  order by count(*) desc  limit 1
select count(*) from địa_chỉ where quận = "California"
select count(*) from địa_chỉ where quận = "California"
select t3.tiêu_đề , t1.id phim from lượt cho thuê as t1 join hàng tồn kho as t2 on t1.id hàng tồn_kho = t2.id hàng tồn_kho join phim as t3 on t1.id phim = t3.id phim where t1.giá thay_thế = 0,99 and t2.số_lượng hàng tồn_kho < 3
select t1.tiêu_đề , t1.id phim from phim as t1 join hàng tồn_kho as t2 on t1.id phim = t2.id phim where t1.giá cho thuê = 0,99 and t2.số lượng hàng tồn_kho < 3
select count(*) from thành_phố where quốc_gia = "Australia"
select count(*) from thành_phố where quốc_gia = "Australia"
select t1.quốc_gia from thành_phố as t1 join quốc_gia as t2 on t1.id quốc_gia = t2.id quốc_gia group by t1.id quốc_gia having count(*) >= 3
select "quốc_gia" from "thành_phố" group by "id quốc_gia" having count(*) >= 3
select t1.ngày thanh_toán  from khoản thanh_toán as t1  join nhân_viên as t2 on t1.id nhân_viên = t2.id nhân_viên  where t1.số tiền > 10 and t2.tên = "Elsa"
select t1.ngày thanh_toán  from khoản thanh_toán as t1  join nhân_viên as t2 on t1.id nhân_viên = t2.id nhân_viên  where t1.số tiền > 10 or t2.tên = "Elsa"
select count(*) from khách_hàng where có hoạt_động không = 1
select count(*) from khách_hàng where có hoạt_động không = 1
select giá cho thuê from phim order by giá cho thuê desc limit 1
select tiêu_đề , giá cho thuê from phim order by giá cho thuê desc limit 1
select t1.tiêu_đề , t1.id phim , t1.mô_tả  from phim as t1  join diễn_viên điện_ảnh as t2  on t1.id phim = t2.id phim  group by t1.id phim  order by count(*) desc  limit 1
select t1.tiêu_đề , t1.id phim , t1.mô_tả  from phim as t1  join diễn_viên điện_ảnh as t2  on t1.id phim = t2.id phim  group by t1.id phim  order by count(*) desc  limit 1
select t1.tên , t1.họ  from diễn_viên as t1  join diễn_viên điện_ảnh as t2  on t1."id diễn_viên" = t2."id diễn_viên"  group by t1."id diễn_viên"  order by count(*) desc  limit 1
select t1.tên , t1.họ , t2.id diễn_viên  from diễn_viên as t1  join diễn_viên điện_ảnh as t2 on t1.id diễn_viên = t2.id diễn_viên  join phim as t3 on t2.id phim = t3.id phim  group by t2.id diễn_viên  order by count ( * ) desc  limit 1
select t1.tên , t1.họ  from diễn_viên as t1  join diễn_viên điện_ảnh as t2  on t1.id diễn_viên = t2.id diễn_viên  group by t1.id diễn_viên  having count(*) > 30
select t1.tên , t1.họ  from diễn_viên as t1  join diễn_viên điện_ảnh as t2  on t1.id diễn_viên = t2.id diễn_viên  group by t1.id diễn_viên  having count(*) > 30
select t1.id cửa_hàng from cửa_hàng as t1 join hàng tồn_kho as t2 on t1.id cửa_hàng = t2.id cửa_hàng group by t1.id cửa_hàng order by count(*) desc limit 1
select t1."id cửa_hàng" from "hàng tồn_kho" as t1 join "cửa_hàng" as t2 on t1."id cửa_hàng" = t2."id cửa_hàng" group by t1."id cửa_hàng" order by count(*) desc limit 1
select sum(số tiền) from khoản thanh_toán
select sum(số tiền) from khoản thanh_toán
select t1.họ , t1.tên , t1.id khách_hàng  from khách_hàng as t1  join khoản thanh_toán as t2  on t1.id khách_hàng = t2.id khách_hàng  group by t1.id khách_hàng  having sum ( t2.số tiền ) = ( select min ( số tiền ) from khoản thanh_toán )
select t1.tên , t1.họ , t1."id khách_hàng"  from "khách_hàng" as t1  join "khoản thanh_toán" as t2  on t1."id khách_hàng" = t2."id khách_hàng"  group by t1."id khách_hàng"  order by sum(t2."số tiền")  limit 1
select t2.id danh_mục from phim as t1 join danh_mục phim as t2 on t1.id phim = t2.id phim where t1.tiêu_đề = "HUNGER ROOF"
select t2.id danh_mục  from phim as t1  join danh_mục phim as t2  on t1.id phim = t2.id phim  where t1.tiêu_đề = "HUNGER ROOF"
select t1.tên , t2.id danh_mục , count(*)  from danh_mục phim as t2  join danh_mục as t1  on t2.id danh_mục = t1.id danh_mục  group by t2.id danh_mục
select t1.tên , count(*) from danh_mục as t1 join danh_mục phim as t2 on t1.id danh_mục = t2.id danh_mục group by t1.id danh_mục
select t1.tiêu_đề , t1.id phim from phim as t1 join hàng tồn_kho as t2 on t1.id phim = t2.id phim group by t1.id phim order by count ( * ) desc limit 1
select t1.tiêu_đề , t1.id phim from phim as t1 join hàng tồn_kho as t2 on t1.id phim = t2.id phim group by t1.id phim order by count ( * ) desc limit 1
select t1.tiêu_đề , t2.id hàng tồn_kho  from lượt cho thuê as t1  join hàng tồn_kho as t2  on t1.id hàng tồn_kho = t2.id hàng tồn_kho  group by t1.id hàng tồn_kho  order by count ( * ) desc  limit 1
select t1.tiêu_đề , t2.id hàng tồn_kho  from lượt cho thuê as t1  join hàng tồn_kho as t2  on t1.id hàng tồn_kho = t2.id hàng tồn_kho  group by t1.id hàng tồn_kho  order by count ( * ) desc  limit 1
select count(distinct t2.id ngôn_ngữ) from phim as t1 join ngôn_ngữ as t2 on t1.id ngôn_ngữ = t2.id ngôn_ngữ
select count(distinct t2.id ngôn_ngữ) from phim as t1 join ngôn_ngữ as t2 on t1.id ngôn_ngữ = t2.id ngôn_ngữ
select tiêu_đề from phim where đánh_giá xếp hạng = "R"
select tiêu_đề from phim where đánh_giá xếp_hạng = "R"
select t2.địa_chỉ  from cửa_hàng as t1  join địa_chỉ as t2 on t1.id địa_chỉ = t2.id địa_chỉ  where t1.id cửa_hàng = 1
select t2.địa_chỉ  from cửa_hàng as t1  join địa_chỉ as t2 on t1.id địa_chỉ = t2.id thành_phố  where t1.id cửa_hàng = 1
select t1.tên , t1.họ , t1.id nhân_viên  from nhân_viên as t1  join khoản thanh_toán as t2  on t1.id nhân_viên = t2.id nhân_viên  group by t1.id nhân_viên  order by count ( * )  limit 1
select t1.tên , t1.họ , t1.id nhân_viên  from nhân_viên as t1  join khoản thanh_toán as t2  on t1.id nhân_viên = t2.id nhân_viên  group by t2.id nhân_viên  order by count ( * ) desc  limit 1
select t3.tên  from phim as t1  join diễn_viên điện_ảnh as t2 on t1.id phim = t2.id phim  join danh_mục phim as t3 on t2.id phim = t3.id phim  where t1.tiêu_đề = "AIRPORT POLLOCK"
select t3.tên  from phim as t1  join diễn_viên điện_ảnh as t2 on t1.id phim = t2.id phim  join diễn_viên as t3 on t2.id diễn_viên = t3.id diễn_viên  join ngôn_ngữ as t4 on t1.id ngôn_ngữ = t4.id ngôn_ngữ  where t1.tiêu_đề = "AIRPORT POLLOCK"
select count(*) from "cửa_hàng"
select count(*) from cửa_hàng
select count(distinct đánh_giá xếp_hạng) from phim
select count ( distinct đánh_giá xếp_hạng ) from phim
select tiêu_đề from phim where tính_năng đặc_biệt like "%Cảnh đã xoá%"
select tiêu_đề from phim where tính_năng đặc_biệt like "%Cảnh đã xoá%"
select count(*) from hàng tồn_kho where id cửa_hàng = 1
select count(*) from hàng tồn_kho where id cửa_hàng = 1
select ngày thanh_toán from khoản thanh_toán order by ngày thanh_toán asc limit 1
select ngày thanh_toán from khoản thanh_toán order by ngày thanh_toán limit 1
select t2.email from khách_hàng as t1 join địa_chỉ as t2 on t1.id địa_chỉ = t2.id địa_chỉ where t1.tên = "Linda"
select địa_chỉ, email from khách_hàng where tên = "Linda"
select tiêu_đề from phim where thời_lượng thuê > 100 or đánh_giá xếp_hạng = "PG" and giá thay_thế < 200 group by tiêu_đề
select tiêu_đề from phim where thời_lượng phim > 100 or đánh_giá xếp_hạng = "PG" and giá thay_thế < 200
select t1.tên , t1.họ  from khách_hàng as t1  join lượt cho thuê as t2  on t1.id khách_hàng = t2.id khách_hàng  order by t2.ngày cho thuê  limit 1
select t1.tên , t1.họ from khách_hàng as t1 join lượt cho thuê as t2 on t1.id khách_hàng = t2.id khách_hàng order by t2.ngày cho thuê limit 1
select t3.tên , t3.họ  from khách_hàng as t1  join lượt thuê as t2 on t1.id khách_hàng = t2.id khách_hàng  join nhân_viên as t3 on t2.id nhân_viên = t3.id nhân_viên  join diễn_viên điện_ảnh as t4 on t4.id diễn_viên = t3.id diễn_viên  where t1.tên = "April" and t1.họ = "Burns"
select t3.tên , t3.họ  from khách_hàng as t1  join lượt thuê as t2 on t1.id khách_hàng = t2.id khách_hàng  join nhân_viên as t3 on t2.id nhân_viên = t3.id nhân_viên  join khoản thanh_toán as t4 on t2.id lượt thuê = t4.id lượt thuê  where t1.tên = "April" and t1.họ = "Burns"
select t1."id cửa_hàng" from "khách_hàng" as t1 join "cửa_hàng" as t2 on t1."id cửa_hàng" = t2."id cửa_hàng" group by t1."id cửa_hàng" order by count(*) desc limit 1
select t1."id cửa_hàng" from "khách_hàng" as t1 join "cửa_hàng" as t2 on t1."id cửa_hàng" = t2."id cửa_hàng" group by t1."id cửa_hàng" order by count(*) desc limit 1
select số tiền from khoản thanh_toán order by số tiền desc limit 1
select max(số tiền) from khoản thanh_toán
select t2.địa_chỉ  from nhân_viên as t1  join địa_chỉ as t2 on t1.id địa_chỉ = t2.id địa_chỉ  where t1.tên = "Elsa"
select t2.địa_chỉ  from nhân_viên as t1  join địa_chỉ as t2 on t1.id địa_chỉ = t2.id địa_chỉ  where t1.tên = "Elsa"
select tên , họ from khách_hàng where id khách_hàng not in ( select id khách_hàng from lượt thuê where ngày trả lại > "2005-08-23 02:06:01" )
select t1.tên , t1.họ from khách_hàng as t1 where t1.id khách_hàng not in ( select t2.id khách_hàng from lượt cho thuê as t2 where t2.ngày cho thuê > "2005-08-23 02:06:01" )
select count(*) from "tài_xế"
select tên , thành_phố quê_hương , tuổi from tài_xế
select "đảng", count(*) from "tài_xế" group by "đảng"
select tên from tài_xế order by tuổi desc
select distinct "thành_phố quê_hương" from "tài_xế"
select "thành_phố quê_hương" from "tài_xế" group by "thành_phố quê_hương" order by count(*) desc limit 1
select "đảng" from "tài_xế" where "thành_phố quê_hương" = 'Hartford' and "tuổi" > 40
select "thành_phố quê_hương" from "tài_xế" where "tuổi" > 40 group by "thành_phố quê_hương" having count(*) >= 2
select "thành_phố quê_hương" from "tài_xế" except select "thành_phố quê_hương" from "tài_xế" where "tuổi" > 40
select tên from "tài_xế" where "id tài_xế" not in (select "id tài_xế" from "xe_buýt của trường_học")
select t1."loại_hình" from "trường_học" as t1 join "xe_buýt của trường_học" as t2 on t1."id trường_học" = t2."id trường_học" group by t1."loại_hình" having count(*) = 2
select t1."trường_học", t2."tên"  from "trường_học" as t1  join "xe_buýt của trường_học" as t2  on t1."id trường_học" = t2."id trường_học"
select avg("số năm làm_việc"), max("số năm làm_việc"), min("số năm làm_việc") from "xe_buýt của trường_học"
select "trường_học", "loại_hình" from "trường_học" except select "trường_học" from "xe_buýt của trường_học"
select t1."loại_hình", count(*)  from "trường_học" as t1  join "xe_buýt của trường_học" as t2  on t1."id trường_học" = t2."id trường_học"  group by t1."loại_hình"
select count(*) from "tài_xế" where "thành_phố quê_hương" = 'Hartford' or "tuổi" < 40
select tên from tài_xế where thành_phố quê_hương = "Hartford" and tuổi < 40
select t1.tên  from "tài_xế" as t1  join "xe_buýt của trường_học" as t2 on t1."id tài_xế" = t2."id tài_xế"  where t2."có làm_việc toàn thời_gian không" = 'n'  order by t2."số năm làm_việc" desc  limit 1
select count(*) from "trường_học"
select count(*) from "trường_học"
select địa_điểm from trường_học order by số_lượng nhập_học asc
select địa_điểm from trường_học order by số_lượng nhập_học asc
select địa_điểm from trường_học order by năm thành_lập desc
select địa_điểm from trường_học order by năm thành_lập desc
select count("số_lượng nhập_học") from "trường_học" where "tôn_giáo" != 'Công_giáo'
select count("số_lượng nhập_học") from "trường_học" where "tôn_giáo" <> 'Công_giáo'
select avg("số_lượng nhập_học") from "trường_học"
select avg("số_lượng nhập_học") from "trường_học"
select đội from cầu_thủ order by đội asc
select đội from cầu_thủ order by đội asc
select count(distinct vị_trí) from cầu_thủ
select count(distinct vị_trí) from cầu_thủ
select đội from cầu_thủ order by tuổi desc limit 1
select đội from cầu_thủ where id cầu_thủ = (select max(id cầu_thủ) from cầu_thủ)
select đội , cầu_thủ from cầu_thủ order by tuổi desc limit 5
select đội from cầu_thủ order by tuổi desc limit 5
select t2.đội, t1.địa_điểm  from trường_học as t1  join cầu_thủ as t2 on t1.id_trường = t2.id_trường
select t2.đội, t1.địa_điểm  from trường_học as t1  join cầu_thủ as t2 on t1.id_trường = t2.id_trường
select t1.địa_điểm from trường_học as t1 join cầu_thủ as t2 on t1.id_trường = t2.id_trường group by t1.id_trường having count(*) > 1
select t1.địa_điểm from trường_học as t1 join cầu_thủ as t2 on t1.id_trường = t2.id_trường group by t1.id_trường having count(*) > 1
select t1.tôn_giáo from trường_học as t1 join cầu_thủ as t2 on t1.id_trường = t2.id_trường group by t1.tôn_giáo order by count(*) desc limit 1
select t1.tôn_giáo from trường_học as t1 join cầu_thủ as t2 on t1.id_trường = t2.id_trường group by t1.id_trường order by count(*) desc limit 1
select t1.địa_điểm, t2.biệt_danh  from trường_học as t1  join chi_tiết trường_học as t2  on t1.id_trường = t2.id_trường
select biệt_danh, địa_điểm from trường_học
select tôn_giáo, count(*) from trường_học group by tôn_giáo
select tôn_giáo, count(*) from trường_học group by tôn_giáo order by count(*) desc
select tôn_giáo, count(*) from trường_học group by tôn_giáo order by count(*) desc
select tôn_giáo, count(*) from trường_học group by tôn_giáo order by count(*) desc
select màu của_trường from trường_học where id_trường = (select id_trường from trường_học order by số_lượng nhập_học desc limit 1)
select số_lượng nhập_học , màu của_trường from trường_học order by số_lượng nhập_học desc limit 1
select địa_điểm from trường_học except select t1."địa_điểm" from trường_học as t1 join cầu_thủ as t2 on t1."id_trường" = t2."id_trường"
select địa_điểm from trường_học where số_lượng nhập_học = ( select max ( số_lượng nhập_học ) from trường_học ) except select t1.địa_điểm from trường_học as t1 join cầu_thủ as t2 on t1.id_trường = t2.id_trường
select tôn_giáo from trường_học where năm thành_lập < 1890 or năm thành_lập > 1900
select tôn_giáo from trường_học where năm thành_lập < 1890 union select tôn_giáo from trường_học where năm thành_lập > 1900
select biệt_danh from chi_tiết trường_học where phân_hạng != 1
select biệt_danh from chi_tiết trường_học where phân_hạng != 1
select tôn_giáo from trường_học group by tôn_giáo having count(*) > 1
select tôn_giáo from trường_học group by tôn_giáo having count(*) > 1
select t1.tên, t2.tên from quốc_gia as t1 join giải đấu as t2 on t1.id = t2.id quốc_gia
select count(*) from giải đấu as t1 join quốc_gia as t2 on t1.id quốc_gia = t2.id where t2.tên = "England"
select avg(cân nặng) from cầu_thủ
select "cân nặng" from "cầu_thủ" order by "cân nặng" desc limit 1 union select "cân nặng" from "cầu_thủ" order by "cân nặng" asc limit 1
select tên cầu_thủ from đặc_điểm của cầu_thủ where đánh_giá tổng_thể > ( select avg ( đánh_giá tổng_thể ) from đặc_điểm của cầu_thủ ) group by tên cầu_thủ having count ( * ) = 1
select tên cầu_thủ from đặc_điểm của cầu_thủ order by khả_năng rê bóng desc limit 1
select distinct t1."tên cầu_thủ" from "đặc_điểm của cầu_thủ" as t1 where t1."tạt bóng" > 90 and t1."chân thuận" = 'R'
select tên cầu_thủ from đặc_điểm của cầu_thủ where chân thuận = "left" and đánh_giá tổng_thể between 85 and 90 group by tên cầu_thủ
select avg(đánh_giá tổng_thể) from đặc_điểm của cầu_thủ where chân thuận = "R" union select avg(đánh_giá tổng_thể) from đặc_điểm của cầu_thủ where chân thuận = "L"
select chân thuận , count ( * ) from đặc_điểm của cầu_thủ where đánh_giá tổng_thể > 80 group by chân thuận
select distinct id from cầu_thủ where chiều cao >= 180 and đánh_giá tổng_thể > 85
select id from "đặc_điểm của cầu_thủ" where "chân thuận" = 'L' and "chiều cao" between 180 and 190
select t1.tên cầu_thủ from đặc_điểm của cầu_thủ as t1 join cầu_thủ as t2 on t1.id cầu_thủ api của fifa = t2.id cầu_thủ api order by t1.đánh_giá tổng_thể desc limit 3
select tên cầu_thủ , ngày_sinh from đặc_điểm của cầu_thủ order by tiềm_năng desc limit 5
select "tên quận" from "quận" group by "tên quận" order by "diện_tích của thành_phố" desc
select "tên quận" from "quận" order by "diện_tích của thành_phố" desc
select "kích_thước trang tối_đa" from "sản_phẩm" group by "kích_thước trang tối_đa" having count(*) > 3
select "kích_thước trang tối_đa" from "sản_phẩm" group by "kích_thước trang tối_đa" having count(*) > 3
select "tên quận", "dân_số thành_phố" from "quận" where "dân_số thành_phố" between 200000 and 20000000
select "tên quận", "dân_số thành_phố" from "quận" where "dân_số thành_phố" between 200000 and 2000000
select "tên quận" from "quận" where "diện_tích của thành_phố" > 10 or "dân_số thành_phố" > 100000
select "tên quận" from "quận" where "diện_tích của các thành_phố" > 10 or "dân_số thành_phố" > 100000
select "tên quận" from "quận" order by "dân_số thành_phố" desc limit 1
select "tên quận" from "quận" order by "dân_số thành_phố" desc limit 1
select "tên quận" from "quận" order by "diện_tích" asc limit 1
select "tên quận" from "quận" order by "diện_tích của các thành_phố" asc limit 1
select sum(dân_số thành_phố) from quận order by diện_tích thành_phố desc limit 3
select tên quận , sum ( dân_số thành_phố )  from quận  order by diện tích thành_phố desc  limit 3
select loại, count(*) from cửa_hàng group by loại
select loại, count(*) from cửa_hàng group by loại
select t1."tên cửa_hàng"  from "cửa_hàng" as t1  join "quận của cửa_hàng" as t2 on t1."id cửa_hàng" = t2."id cửa_hàng"  join "quận" as t3 on t2."id quận" = t3."id quận"  where t3."tên quận" = 'Khanewal'
select t1."tên cửa_hàng"  from "cửa_hàng" as t1  join "quận của cửa_hàng" as t2 on t1."id cửa_hàng" = t2."id cửa_hàng"  join "quận" as t3 on t2."id quận" = t3."id quận"  where t3."tên quận" = 'Khanewal'
select t1."tên cửa_hàng"  from "cửa_hàng" as t1  join "quận của cửa_hàng" as t2 on t1."id cửa_hàng" = t2."id cửa_hàng"  join "quận" as t3 on t2."id quận" = t3."id quận"  where t3."dân_số thành_phố" = (select max("dân_số thành_phố") from "quận")
select t1."tên cửa_hàng" from "cửa_hàng" as t1  join "quận của cửa_hàng" as t2 on t1."id cửa_hàng" = t2."id cửa_hàng"  join "quận" as t3 on t2."id quận" = t3."id quận"  group by t3."id quận"  order by t3."dân_số thành_phố" desc  limit 1
select "thành_phố của các trụ_sở" from "cửa_hàng" where "tên cửa_hàng" = 'Blackville'
select t2.thành_phố của các trụ_sở  from cửa_hàng as t1  join quận as t2 on t1.id quận = t2.id quận  where t1.tên cửa_hàng = "Blackville"
select t1.tên quận , count(*)  from cửa_hàng as t2  join quận as t1 on t2.id quận = t1.id quận  group by t1.tên quận
select t1."tên quận", count(*)  from "quận" as t1  join "quận của cửa_hàng" as t2 on t1."id quận" = t2."id quận"  group by t1."tên quận"
select distinct t1."thành_phố của các trụ_sở"  from "cửa_hàng" as t2  join "quận của cửa_hàng" as t3 on t2."id cửa_hàng" = t3."id cửa_hàng"  join "quận" as t1 on t3."id quận" = t1."id quận"  group by t1."thành_phố của các trụ_sở"  order by count(*) desc  limit 1
select t1."tên thành_phố"  from "quận" as t1  join "quận của cửa_hàng" as t2 on t1."id quận" = t2."id quận"  group by t1."tên thành_phố"  order by count(*) desc  limit 1
select avg("số trang màu trên từng phút") from "sản_phẩm"
select avg("số trang màu trên từng phút") from "sản_phẩm"
select t2."sản_phẩm"  from "sản_phẩm của cửa_hàng" as t1  join "sản_phẩm" as t2 on t1."id sản_phẩm" = t2."id sản_phẩm"  join "cửa_hàng" as t3 on t1."id cửa_hàng" = t3."id cửa_hàng"  where t3."tên cửa_hàng" = 'Miramichi'
select distinct t2."sản_phẩm"  from "cửa_hàng" as t1  join "sản_phẩm của cửa_hàng" as t2 on t1."id cửa_hàng" = t2."id cửa_hàng"  where t1."tên cửa_hàng" = 'Miramichi'
select "sản_phẩm" from "sản_phẩm" where "kích_thước trang tối_đa" = 'A 4' and "số trang màu trên từng phút" < 5 group by "kích_thước trang tối_đa" having count(*) < 5
select "sản_phẩm" from "sản_phẩm" where "kích_thước trang tối_đa" = 'A 4' and "số trang màu trên từng phút" < 5 group by "sản_phẩm" having count(*) < 5
select "sản_phẩm" from "sản_phẩm" where "kích_thước trang tối_đa" = 'A 4' or "số trang màu trên từng phút" < 5 group by "kích_thước trang tối_đa" having count(*) > 1
select "sản_phẩm" from "sản_phẩm" where "kích_thước trang tối_đa" = 'A 4' or "số trang màu trên từng phút" < 5
select "sản_phẩm" from "sản_phẩm" where "sản_phẩm" like "%Máy_quét%"
select "sản_phẩm" from "sản_phẩm" where "sản_phẩm" like '%Máy_quét%'
select "kích_thước trang tối_đa" from "sản_phẩm" group by "kích_thước trang tối_đa" order by count(*) desc limit 1
select "kích_thước trang tối_đa" from "sản_phẩm" group by "kích_thước trang tối_đa" order by count(*) desc limit 1
select "sản_phẩm" from "sản_phẩm" where "kích_thước trang tối_đa" != (select max("kích_thước trang tối_đa") from "sản_phẩm") order by "số trang màu trên từng phút" limit 1
select "sản_phẩm" from "sản_phẩm" where "kích_thước trang tối_đa" is null group by "sản_phẩm" order by count(*) desc limit 10
select sum("dân_số thành_phố") from "quận" where "diện_tích của các thành_phố" > (select avg("diện_tích của các thành_phố") from "quận")
select sum(dân_số thành_phố) from quận where diện_tích của các thành_phố > (select avg(diện_tích của các thành_phố) from quận)
select tên quận from quận where loại = "trung_tâm mua_sắm" intersect select tên quận from quận where loại = "cửa_hàng bình_dân"
select t1.tên quận  from quận as t1  join quận của cửa_hàng as t2 on t1.id quận = t2.id quận  join cửa_hàng as t3 on t2.id cửa_hàng = t3.id cửa_hàng  where t3.loại = 'trung_tâm mua_sắm'  intersect  select t1.tên quận  from quận as t1  join quận của cửa_hàng as t2 on t1.id quận = t2.id quận  join cửa_hàng as t3 on t2.id cửa_hàng = t3.id cửa_hàng  where t3.loại = 'cửa_hàng bình_dân'
select count(*) from khu_vực
select count(*) from "khu_vực"
select "mã khu_vực", "tên khu_vực" from "khu_vực" order by "mã khu_vực"
select "mã khu_vực", "tên khu_vực" from "khu_vực" order by "mã khu_vực"
select "tên khu_vực" from "khu_vực" order by "tên khu_vực"
select "tên khu_vực" from "khu_vực" order by "tên khu_vực"
select tên khu_vực from khu_vực where mã khu_vực <> 'DK'
select "tên khu_vực" from "khu_vực" except select "tên khu_vực" from "khu_vực" where "tên khu_vực" = 'Denmark'
select count(*) from "bão" where "số_lượng người chết" > 0
select count(*) from "bão" where "số_lượng người chết" >= 1
select tên, ngày hoạt_động, số_lượng người tử_vong  from bão  where số_lượng người tử_vong >= 1
select tên , ngày hoạt_động , số người chết from bão where số người chết > 0
select avg("thiệt_hại theo triệu usd"), max("thiệt_hại theo triệu usd") from "bão" where "tốc_độ tối_đa" > 1000
select avg("thiệt_hại theo triệu usd"), max("thiệt_hại theo triệu usd") from "bão" where "tốc_độ tối_đa" > 1000
select sum("số lượng người chết"), sum("thiệt_hại theo triệu usd") from "bão" where "tốc_độ tối_đa" > (select avg("tốc_độ tối_đa") from "bão")
select sum("số người chết"), sum("thiệt_hại theo triệu usd")  from "bão"  where "tốc_độ tối_đa" > (select avg("tốc_độ tối_đa") from "bão") group by "tên" having "tốc_độ tối_đa" > (select avg("tốc_độ tối_đa") from "bão")
select tên , thiệt_hại theo triệu usd from bão order by tốc_độ tối_đa desc
select "tên", "thiệt_hại theo triệu usd" from "bão" order by "tốc_độ tối_đa" desc limit 1
select count(distinct t1."id khu_vực")  from "khu_vực bị ảnh_hưởng" as t2  join "khu_vực" as t1 on t2."id khu_vực" = t1."id khu_vực"
select count(distinct t1."id khu_vực") from "khu_vực bị ảnh_hưởng" as t1 join "khu_vực" as t2 on t1."id khu_vực" = t2."id khu_vực"
select "tên khu_vực" from "khu_vực" except select "tên khu_vực" from "khu_vực bị ảnh_hưởng"
select "tên khu_vực" from "khu_vực" except select t1."tên khu_vực" from "khu_vực" as t1 join "khu_vực bị ảnh_hưởng" as t2 on t1."id khu_vực" = t2."id khu_vực"
select t1."tên khu_vực", count(*)  from "khu_vực" as t1  join "khu_vực bị ảnh_hưởng" as t2  on t1."id khu_vực" = t2."id khu_vực"  group by t1."id khu_vực"
select count(*), t1."tên khu_vực"  from "khu_vực bị ảnh_hưởng" as t2  join "khu_vực" as t1 on t2."id khu_vực" = t1."id khu_vực"  join "bão" as t3 on t2."id bão" = t3."id cơn bão"  group by t1."tên khu_vực"
select t1.tên , count ( * )  from "bão" as t1  join "khu_vực bị ảnh_hưởng" as t2  on t1."id cơn bão" = t2."id bão"  group by t1."id cơn bão"
select count(*), "id cơn bão" from "khu_vực bị ảnh_hưởng" as t1 join "bão" as t2 on t1."id bão" = t2."id cơn bão" group by t1."id bão"
select t1.tên , t1.tốc_độ tối_đa  from bão as t1  join khu_vực bị ảnh_hưởng as t2  on t1.id cơn bão = t2.id bão  group by t1.tên  order by count ( * ) desc  limit 1
select t1.tên , t1.tốc_độ tối_đa  from bão as t1  join khu_vực bị ảnh_hưởng as t2  on t1.id cơn bão = t2.id bão  group by t1.id cơn bão  order by count ( * ) desc  limit 1
select tên from bão where id cơn bão not in ( select id bão from khu_vực bị ảnh_hưởng )
select tên from bão where id cơn bão not in ( select id bão from khu_vực bị ảnh_hưởng )
select t1.tên  from khu_vực bị ảnh_hưởng as t2  join khu_vực as t1 on t2.id khu_vực = t1.id khu_vực  join bão as t3 on t2.id bão = t3.id cơn bão  group by t3.id cơn bão  having count(*) >= 2  intersect  select t1.tên  from khu_vực bị ảnh_hưởng as t2  join khu_vực as t1 on t2.id khu_vực = t1.id khu_vực  join bão as t3 on t2.id bão = t3.id cơn bão  group by t3.id cơn bão  having count(*) >= 10
select t1.tên  from "khu_vực bị ảnh_hưởng" as t2  join "khu_vực" as t1 on t2."id khu_vực" = t1."id khu_vực"  join "bão" as t3 on t2."id bão" = t3."id cơn bão"  group by t3."id cơn bão"  having count(*) >= 2 and sum(t2."số thành_phố bị ảnh_hưởng") >= 10
select tên from bão where id cơn bão not in (select id bão from khu_vực bị ảnh_hưởng group by id bão having count(*) >= 2)
select t1.tên from bão as t1 join khu_vực bị ảnh_hưởng as t2 on t1.id cơn bão = t2.id bão group by t1.id cơn bão having count(*) < 2
select t1."tên khu_vực"  from "khu_vực bị ảnh_hưởng" as t2  join "khu_vực" as t1 on t2."id khu_vực" = t1."id khu_vực"  join "bão" as t3 on t2."id bão" = t3."id cơn bão"  where t3."số_lượng người chết" >= 10
select t2."tên khu_vực"  from "khu_vực bị ảnh_hưởng" as t1  join "khu_vực" as t2 on t1."id khu_vực" = t2."id khu_vực"  join "bão" as t3 on t1."id bão" = t3."id cơn bão"  where t3."số_lượng người chết" >= 10
select t1.tên  from khu_vực bị ảnh_hưởng as t2  join khu_vực as t3 on t2.id khu_vực = t3.id khu_vực  join bão as t1 on t2.id bão = t1.id cơn bão  where t3.tên khu_vực = "Denmark"
select t1.tên  from "khu_vực bị ảnh_hưởng" as t2  join "khu_vực" as t1 on t2."id khu_vực" = t1."id khu_vực"  join "bão" as t3 on t2."id bão" = t3."id cơn bão"  where t1."tên khu_vực" = 'Denmark'
select t1."tên khu_vực"  from "khu_vực" as t1  join "khu_vực bị ảnh_hưởng" as t2 on t1."id khu_vực" = t2."id khu_vực"  group by t1."id khu_vực"  having count(*) >= 2
select t1."tên khu_vực"  from "khu_vực" as t1  join "khu_vực bị ảnh_hưởng" as t2 on t1."id khu_vực" = t2."id khu_vực"  group by t2."id khu_vực"  having count(*) >= 2
select t1."tên khu_vực"  from "khu_vực bị ảnh_hưởng" as t2  join "khu_vực" as t1 on t2."id khu_vực" = t1."id khu_vực"  join "bão" as t3 on t2."id bão" = t3."id cơn bão"  group by t1."tên khu_vực"  order by t3."số_lượng người chết" desc  limit 1
select t1."tên khu_vực"  from "khu_vực bị ảnh_hưởng" as t2  join "khu_vực" as t1 on t2."id khu_vực" = t1."id khu_vực"  join "bão" as t3 on t2."id bão" = t3."id cơn bão"  group by t1."tên khu_vực"  order by sum(t3."số_lượng người chết") desc  limit 1
select t1.tên  from khu_vực bị ảnh_hưởng as t2  join khu_vực as t3 on t2."id khu_vực" = t3."id khu_vực"  join bão as t1 on t2."id bão" = t1."id cơn bão"  where t3."tên khu_vực" = 'Afghanistan' and t3."tên khu_vực" = 'Albania'
select t1.tên  from khu_vực bị ảnh_hưởng as t2  join khu_vực as t3 on t2."id khu_vực" = t3."id khu_vực"  join bão as t1 on t2."id bão" = t1."id cơn bão"  where t3."tên khu_vực" = 'Afghanistan' and t3."tên khu_vực" = 'Albania'
select count(*) from "danh_sách"
select count(*) from "danh_sách"
select họ from danh_sách where phòng học = 111
select "họ" from "danh_sách" where "phòng học" = 111
select tên from danh_sách where phòng học = 108
select tên from danh_sách where phòng học = 108
select tên from danh_sách where phòng học = 107
select distinct tên from danh_sách where phòng học = 107
select phòng học, khối lớp from danh_sách
select phòng học, khối lớp from danh_sách
select khối lớp from danh_sách where phòng học = 103
select khối lớp from danh_sách where phòng học = 103
select khối lớp from danh_sách where phòng học = 105
select khối lớp from danh_sách where phòng học = 105
select phòng học from danh_sách where khối lớp = 4
select phòng học from danh_sách where khối lớp = 4
select phòng học from danh_sách where khối lớp = 5
select phòng học from danh_sách where khối lớp = 5
select t1.họ from giáo_viên as t1 join danh_sách as t2 on t1.phòng học = t2.phòng học where t2.khối lớp = 5
select t1.họ from giáo_viên as t1 join danh_sách as t2 on t1.phòng học = t2.phòng học where t2.khối lớp = 5
select t1.tên from giáo_viên as t1 join danh_sách as t2 on t1.phòng học = t2.phòng học where t2.khối lớp = 1
select t1.tên from giáo_viên as t1 join danh_sách as t2 on t1.phòng học = t2.phòng học where t2.khối lớp = 1
select tên from giáo_viên where phòng học = 110
select t1.tên from giáo_viên as t1 join danh_sách as t2 on t1.phòng học = t2.phòng học where t2.phòng học = 110
select họ from giáo_viên where phòng học = 109
select t1.họ from giáo_viên as t1 join danh_sách as t2 on t1.phòng học = t2.phòng học where t2.phòng học = 109
select tên, họ from giáo_viên
select tên, họ from giáo_viên
select tên , họ from danh_sách
select tên , họ from danh_sách
select t1.tên , t1.họ  from danh_sách as t1  join giáo_viên as t2 on t1.khối lớp = t2.phòng học  where t2.tên = "OTHA" and t2.họ = "MOYER"
select t1.tên , t1.họ  from danh_sách as t1  join giáo_viên as t2 on t1.khối lớp = t2.phòng học  where t2.tên = "OTHA" and t2.họ = "MOYER"
select t1.tên , t1.họ  from danh_sách as t1  join giáo_viên as t2 on t1.phòng học = t2.phòng học  where t2.tên = "MARROTTE" and t2.họ = "KIRK"
select t1.tên , t1.họ  from danh_sách as t1  join giáo_viên as t2 on t1.phòng học = t2.phòng học  where t2.tên = "MARROTTE" and t2.họ = "KIRK"
select t2.tên , t2.họ  from danh_sách as t1  join giáo_viên as t2 on t1.phòng học = t2.phòng học  where t1.họ = "EVELINA" and t1.tên = "BROMLEY"
select t2.tên , t2.họ  from danh_sách as t1  join giáo_viên as t2  on t1.phòng học = t2.phòng học  where t1.tên = "EVELINA" and t1.họ = "BROMLEY"
select t2.họ from danh_sách as t1 join giáo_viên as t2 on t1.phòng học = t2.phòng học where t1.họ = "GELL" and t1.tên = "TAMI"
select t2.họ from danh_sách as t1 join giáo_viên as t2 on t1.phòng học = t2.phòng học where t1.tên = "GELL" and t1.họ = "TAMI"
select count(*) from danh_sách as t1 join giáo_viên as t2 on t1.khối lớp = t2.phòng học where t2.họ = "LORIA" and t2.tên = "ONDERSMA"
select count(*)  from "danh_sách" as t1  join "giáo_viên" as t2 on t1."phòng học" = t2."phòng học"  where t2."tên" = 'LORIA' and t2."họ" = 'ONDERSMA'
select count(*) from danh_sách as t1 join giáo_viên as t2 on t1.khối lớp = t2.phòng học where t1.họ = "KAWA" and t1.tên = "GORDON"
select count(*) from "danh_sách" as t1 join "giáo_viên" as t2 on t1."phòng học" = t2."phòng học" where t2."tên" = 'KAWA' and t2."họ" = 'GORDON'
select count(distinct t1.tên)  from "danh_sách" as t1  join "giáo_viên" as t2 on t1."phòng học" = t2."phòng học"  where t2."tên" = 'TARRING LEIA'
select count(*) from "danh_sách" as t1 join "giáo_viên" as t2 on t1."phòng học" = t2."phòng học" where t2."tên" = 'TARRING' and t2."họ" = 'LEIA'
select count(*) from danh_sách as t1 join giáo_viên as t2 on t1.phòng học = t2.phòng học where t1.tên = "CHRISSY" and t1.họ = "NABOZNY"
select count(*)  from "danh_sách" as t1  join "giáo_viên" as t2 on t1."phòng học" = t2."phòng học"  where t1."tên" = 'CHRISSY' and t1."họ" = 'NABOZNY'
select count(*) from danh_sách as t1 join giáo_viên as t2 on t1.phòng học = t2.phòng học where t1.tên = "RAY" and t1.họ = "MADLOCK"
select count(*) from "danh_sách" as t1 join "giáo_viên" as t2 on t1."phòng học" = t2."phòng học" where t1."tên" = 'MADLOCK' and t1."họ" = 'RAY'
select tên , họ from danh_sách where khối lớp = 1 and phòng học not in ( select phòng học from giáo_viên where tên = "OTHA" and họ = "MOYER" )
select t1.họ from danh_sách as t1 join giáo_viên as t2 on t1.phòng học = t2.phòng học where t1.khối lớp = 1 and t2.tên != "OTHA" and t2.họ != "MOYER"
select t1.họ from danh_sách as t1 join giáo_viên as t2 on t1.phòng học = t2.phòng học where t1.khối lớp = 3 and t2.họ != "COVIN" and t2.tên != "JEROME"
select t1.họ from danh_sách as t1 join giáo_viên as t2 on t1.phòng học = t2.phòng học where t1.khối lớp = 3 and t2.tên != "COVIN" and t2.họ != "JEROME"
select t1."khối lớp", count(t1."phòng học"), sum(count(*))  from "danh_sách" as t1  join "giáo_viên" as t2 on t1."khối lớp" = t2."phòng học"  group by t1."khối lớp"
select khối lớp, count(*), count(distinct tên)  from danh_sách  group by khối lớp
select phòng học, count(*) from danh_sách group by phòng học
select phòng học, count(distinct khối lớp)  from danh_sách  group by phòng học
select t1."phòng học" from "danh_sách" as t1 join "giáo_viên" as t2 on t1."phòng học" = t2."phòng học" group by t1."phòng học" order by count(*) desc limit 1
select phòng học from danh_sách group by phòng học order by count(*) desc limit 1
select phòng học, count(*) from danh_sách group by phòng học
select "phòng học", count(*) from "danh_sách" group by "phòng học"
select count(*), "phòng học" from "danh_sách" where "khối lớp" = 0 group by "phòng học"
select phòng học, count(*) from danh_sách where khối lớp = 0 group by phòng học
select count(*), t2."phòng học"  from "danh_sách" as t1  join "giáo_viên" as t2 on t1."phòng học" = t2."phòng học"  where t1."khối lớp" = 4  group by t2."phòng học"
select t1."phòng học", count(*)  from "danh_sách" as t1  join "giáo_viên" as t2 on t1."phòng học" = t2."phòng học"  where t1."khối lớp" = 4  group by t1."phòng học"
select t1.tên , t1.họ  from giáo_viên as t1  join danh_sách as t2 on t1.phòng học = t2.phòng học  group by t1.phòng học  order by count(*) desc  limit 1
select t1.tên , t1.họ  from giáo_viên as t1  join danh_sách as t2 on t1.phòng học = t2.phòng học  group by t1.phòng học  order by count(*) desc  limit 1
select phòng học, count(*) from danh_sách group by phòng học
select count(*), "phòng học" from "danh_sách" group by "phòng học"
select t1."id khoá học", count(*)  from "lượt đăng_ký khoá học của sinh_viên" as t2  join "khoá học" as t1 on t2."id khoá học" = t1."id khoá học"  group by t2."id khoá học"  order by count(*) desc  limit 1
select t1."tên khoá học" from "lượt đăng_ký khoá học của sinh_viên" as t2 join "khoá học" as t1 on t2."id khoá học" = t1."id khoá học" group by t2."id khoá học" order by count(*) desc limit 1
select t1."id sinh_viên"  from "lượt đăng_ký khoá học của sinh_viên" as t2  join "sinh_viên" as t1 on t2."id sinh_viên" = t1."id sinh_viên"  group by t1."id sinh_viên"  having count(*) > 0  order by count(*) desc  limit 1
select t1."id sinh_viên" from "lượt đăng_ký khoá học của sinh_viên" as t1 join "sinh_viên" as t2 on t1."id sinh_viên" = t2."id sinh_viên" group by t1."id sinh_viên" having count(*) < ( select count(*) from "lượt đăng_ký khoá học của sinh_viên" group by "id sinh_viên" order by count(*) limit 1 )
select tên , họ from ứng_cử_viên
select chi_tiết ứng_cử_viên from ứng_cử_viên
select "id cá_nhân" from "cá_nhân" except select "id sinh_viên" from "lần tham_dự khoá học của sinh_viên"
select "id cá_nhân" from "cá_nhân" except select "id sinh_viên" from "lần tham_dự khoá học của sinh_viên"
select distinct t1."id cá_nhân" from "cá_nhân" as t1 join "lần tham_dự khoá học của sinh_viên" as t2 on t1."id cá_nhân" = t2."id cá_nhân" group by t1."id cá_nhân" having count(*) > 0
select distinct t1."id sinh_viên" from "lần tham_dự khoá học của sinh_viên" as t2 join "sinh_viên" as t1 on t2."id sinh_viên" = t1."id cá_nhân" group by t1."id cá_nhân" having count(*) >= 1
select t1."id sinh_viên", t2."tên khoá học"  from "lượt đăng_ký khoá học của sinh_viên" as t1  join "khoá học" as t2  on t1."id khoá học" = t2."id khoá học"
select t1.chi_tiết sinh_viên  from sinh_viên as t1  join lượt đăng_ký khoá học của sinh_viên as t2  on t1.id sinh_viên = t2.id sinh_viên  order by t2.ngày đăng_kí desc  limit 1
select t1.chi_tiết sinh_viên  from sinh_viên as t1  join lượt đăng_ký khoá học của sinh_viên as t2  on t1.id sinh_viên = t2.id sinh_viên  order by t2.ngày đăng_ký desc  limit 1
select count(*) from "lần tham_dự khoá học của sinh_viên" as t1 join "khoá học" as t2 on t1."id khoá học" = t2."id khoá học" where t2."tên khoá học" = 'English'
select count(*) from "lượt đăng_ký khoá học của sinh_viên" as t1 join "khoá học" as t2 on t1."id khoá học" = t2."id khoá học" where t2."tên khoá học" = 'English'
select count(*) from "lần tham_dự khoá học của sinh_viên" as t1 join "cá_nhân" as t2 on t1."id cá_nhân" = t2."id cá_nhân" where t2."id cá_nhân" = 171
select count(*) from "lần tham_dự khoá học của sinh_viên" as t1 join "sinh_viên" as t2 on t1."id sinh_viên" = t2."id sinh_viên" where t2."id sinh_viên" = 171
select t2."id ứng_cử_viên"  from "cá_nhân" as t1  join "ứng_cử_viên" as t2  on t1."id cá_nhân" = t2."id ứng_cử_viên"  where t1."địa chỉ email" = 'stanley.monahan@example.org'
select t2."id ứng_cử_viên"  from "cá_nhân" as t1  join "ứng_cử_viên" as t2  on t1."id cá_nhân" = t2."id ứng_cử_viên"  where t1."địa chỉ email" = 'stanley.monahan@example.org'
select t1."id ứng_cử_viên"  from "lần tham_dự khoá học của sinh_viên" as t2  join "ứng_cử_viên" as t1 on t2."id ứng_cử_viên" = t1."id ứng_cử_viên"  order by t2."ngày tham_dự" desc  limit 1
select t1."id ứng_cử_viên"  from "lần tham_dự khoá học của sinh_viên" as t2  join "ứng_cử_viên" as t1 on t2."id ứng_cử_viên" = t1."id ứng_cử_viên"  order by t2."ngày đánh_giá" desc  limit 1
select t1."chi_tiết sinh_viên"  from "lượt đăng_ký khoá học của sinh_viên" as t2  join "sinh_viên" as t1 on t2."id sinh_viên" = t1."id cá_nhân"  group by t2."id sinh_viên"  order by count(*) desc  limit 1
select t1.chi_tiết sinh_viên from sinh_viên as t1 join lượt đăng_ký khoá học của sinh_viên as t2 on t1.id sinh_viên = t2.id sinh_viên group by t1.id sinh_viên order by count(*) desc limit 1
select t1."id sinh_viên", count(*)  from "lượt đăng_ký khoá học của sinh_viên" as t2  join "sinh_viên" as t1 on t2."id sinh_viên" = t1."id cá_nhân"  group by t1."id cá_nhân"
select count(*), "id sinh_viên" from "lượt đăng_ký khoá học của sinh_viên" as t1 join "sinh_viên" as t2 on t1."id sinh_viên" = t2."id cá_nhân" group by t1."id sinh_viên"
select t1."tên khoá học", count(*)  from "lượt đăng_ký khoá học của sinh_viên" as t2  join "khoá học" as t1 on t2."id khoá học" = t1."id khoá học"  group by t2."id khoá học"
select t1."id khoá học", count(*)  from "lượt đăng_ký khoá học của sinh_viên" as t2  join "khoá học" as t1 on t2."id khoá học" = t1."id khoá học"  group by t1."id khoá học"
select "id ứng_cử_viên" from "đánh_giá ứng_cử_viên" where "mã kết_quả đánh_giá" = 'Đạt'
select "id ứng_cử_viên" from "đánh_giá ứng_cử_viên" where "mã kết_quả đánh_giá" = 'Đạt'
select t1.số di_động from ứng_cử_viên as t1 join đánh_giá ứng_cử_viên as t2 on t1.id ứng_cử_viên = t2.id ứng_cử_viên where t2.mã kết_quả đánh_giá = 'Trượt'
select t1.số di_động from cá_nhân as t1 join đánh_giá ứng_cử_viên as t2 on t1.id cá_nhân = t2.id ứng_cử_viên where t2.mã kết_quả đánh_giá = "Trượt"
select t1."id sinh_viên" from "lượt đăng_ký khoá học của sinh_viên" as t2 join "sinh_viên" as t1 on t2."id sinh_viên" = t1."id sinh_viên" where t2."id khoá học" = 301
select "id sinh_viên" from "lượt đăng_ký khoá học của sinh_viên" where "id khoá học" = 301
select t1."id sinh_viên" from "lần tham_dự khoá học của sinh_viên" as t2 join "sinh_viên" as t1 on t2."id sinh_viên" = t1."id sinh_viên" where t2."id khoá học" = 301 order by t2."ngày tham_dự" desc limit 1
select t1."id sinh_viên" from "lần tham_dự khoá học của sinh_viên" as t2  join "sinh_viên" as t1 on t2."id sinh_viên" = t1."id sinh_viên"  where t2."id khoá học" = 301 and t2."ngày tham_dự" = (select max("ngày tham_dự") from "lần tham_dự khoá học của sinh_viên" where "id khoá học" = 301)
select distinct t2.thành_phố from địa_chỉ cá_nhân as t1 join địa_chỉ as t2 on t1.id địa_chỉ = t2.id địa_chỉ
select distinct thành_phố from địa_chỉ where count(*) < 1
select distinct t3.thành_phố from địa_chỉ cá_nhân as t1 join cá_nhân as t2 on t1."id cá_nhân" = t2."id cá_nhân" join địa_chỉ as t3 on t1."id địa_chỉ" = t3."id địa_chỉ" group by t3.thành_phố
select distinct t3.thành_phố  from địa_chỉ cá_nhân as t1  join cá_nhân as t2 on t1.id cá_nhân = t2.id cá_nhân  join địa_chỉ as t3 on t1.id địa_chỉ = t3.id địa_chỉ  group by t3.thành_phố  having count(*) > 0
select "tên khoá học" from "khoá học" order by "tên khoá học"
select "tên khoá học" from "khoá học" order by "tên khoá học"
select tên from cá_nhân order by tên
select tên from cá_nhân order by tên
select distinct id sinh_viên from lượt đăng_ký khoá học của sinh_viên union select distinct id sinh_viên from lần tham_dự khoá học của sinh_viên
select distinct t1."id sinh_viên"  from "lượt đăng_ký khoá học của sinh_viên" as t1  join "lần tham_dự khoá học của sinh_viên" as t2  on t1."id sinh_viên" = t2."id sinh_viên"
select t1."id khoá học"  from "lượt đăng_ký khoá học của sinh_viên" as t2  join "lần tham_dự khoá học của sinh_viên" as t1  on t2."id sinh_viên" = t1."id sinh_viên"  where t2."id sinh_viên" = 121
select t1."id khoá học"  from "lượt đăng_ký khoá học của sinh_viên" as t2  join "lần tham_dự khoá học của sinh_viên" as t1  on t2."id sinh_viên" = t1."id sinh_viên"  where t2."id sinh_viên" = 121
select t1.id sinh_viên, t1.chi_tiết sinh_viên  from lượt đăng_ký khoá học của sinh_viên as t1  join lần tham_dự khoá học của sinh_viên as t2  on t1.id sinh_viên = t2.id sinh_viên  where t1.id sinh_viên not in (select id sinh_viên from lần tham_dự khoá học của sinh_viên)
select t1."chi_tiết sinh_viên" from "cá_nhân" as t1  except  select t2."chi_tiết sinh_viên" from "cá_nhân" as t2  join "lần tham_dự khoá học của sinh_viên" as t3 on t2."id cá_nhân" = t3."id sinh_viên"
select t1."id sinh_viên"  from "lượt đăng_ký khoá học của sinh_viên" as t1  join "khoá học" as t2 on t1."id khoá học" = t2."id khoá học"  where t2."tên khoá học" = 'thống_kê'  order by t1."ngày đăng_ký"
select t1."id sinh_viên"  from "lượt đăng_ký khoá học của sinh_viên" as t1  join "khoá học" as t2 on t1."id khoá học" = t2."id khoá học"  where t2."tên khoá học" = 'thống_kê'  order by t1."ngày đăng_ký"
select t1."id sinh_viên"  from "lần tham_dự khoá học của sinh_viên" as t1  join "khoá học" as t2 on t1."id khoá học" = t2."id khoá học"  where t2."tên khoá học" = 'thống_kê'  order by t1."ngày tham_dự"
select t1."id sinh_viên"  from "lần tham_dự khoá học của sinh_viên" as t1  join "khoá học" as t2 on t1."id khoá học" = t2."id khoá học"  where t2."tên khoá học" = 'Statistics'  order by t1."ngày tham_dự"
select count(*) from "lượt nộp bài"
select count(*) from "lượt nộp bài"
select tác_giả from lượt nộp bài order by số điểm
select t1."tác_giả" from "lượt nộp bài" as t1 join "chấp_thuận" as t2 on t1."id lượt nộp bài" = t2."id lượt nộp bài" order by t1."số điểm" asc
select t1.tác_giả , t2.trường đại_học  from lượt nộp bài as t1  join chấp_thuận as t2  on t1.id lượt nộp bài = t2.id lượt nộp bài
select tác_giả , trường đại_học from lượt nộp bài
select tác_giả from lượt nộp bài where trường đại_học = "Florida" or trường đại_học = "Temple"
select tác_giả from lượt nộp bài where trường đại_học = "Florida" or trường đại_học = "Temple"
select avg("số điểm") from "lượt nộp bài"
select avg("số điểm") from "lượt nộp bài"
select tác_giả from lượt nộp bài order by số điểm desc limit 1
select t1."tác_giả" from "lượt nộp bài" as t1 join "chấp thuận" as t2 on t1."id lượt nộp bài" = t2."id lượt nộp bài" where t1."số điểm" = (select max("số điểm") from "lượt nộp bài")
select trường đại_học, count(*) from lượt nộp bài group by trường đại_học
select t1."trường đại_học", count(*)  from "lượt nộp bài" as t1  join "trường đại_học" as t2  on t1."trường đại_học" = t2."id trường đại_học"  group by t1."trường đại_học"
select distinct t1."trường đại_học" from "lượt nộp bài" as t1 join "chấp_thuận" as t2 on t1."id lượt nộp bài" = t2."id lượt nộp bài" group by t1."trường đại_học" order by count(*) desc limit 1
select distinct t1."trường đại_học" from "lượt nộp bài" as t1 join "chấp_thuận" as t2 on t1."id lượt nộp bài" = t2."id lượt nộp bài" group by t1."trường đại_học" order by count(*) desc limit 1
select t1."trường đại_học"  from "lượt nộp bài" as t1  join "chấp_thuận" as t2 on t1."id lượt nộp bài" = t2."id lượt nộp bài"  where t1."số điểm" > 90  intersect  select t1."trường đại_học"  from "lượt nộp bài" as t1  join "chấp_thuận" as t2 on t1."id lượt nộp bài" = t2."id lượt nộp bài"  where t1."số điểm" < 80
select t1."trường đại_học"  from "lượt nộp bài" as t1  join "chấp_thuận" as t2 on t1."id lượt nộp bài" = t2."id lượt nộp bài"  where t1."số điểm" > 90  intersect  select t1."trường đại_học"  from "lượt nộp bài" as t1  join "chấp_thuận" as t2 on t1."id lượt nộp bài" = t2."id lượt nộp bài"  where t1."số điểm" < 80
select t1.tác_giả , t2.kết_quả  from lượt nộp bài as t1  join chấp_thuận as t2  on t1.id lượt nộp bài = t2.id lượt nộp bài
select t1.tác_giả , t2.kết_quả  from lượt nộp bài as t1  join chấp_thuận as t2  on t1.id lượt nộp bài = t2.id lượt nộp bài
select t1.kết_quả from chấp_thuận as t1 join lượt nộp bài as t2 on t1."id lượt nộp bài" = t2."id lượt nộp bài" order by t2."số điểm" desc limit 1
select t1."kết_quả"  from "chấp_thuận" as t1  join "lượt nộp bài" as t2 on t1."id lượt nộp bài" = t2."id lượt nộp bài"  where t2."số điểm" = (select max("số điểm") from "lượt nộp bài")
select t1.tác_giả , count ( * ) from lượt nộp bài as t1 join chấp_thuận as t2 on t1.id lượt nộp bài = t2.id lượt nộp bài group by t1.tác_giả order by count ( * ) desc
select t1.tác_giả , count(*) from lượt nộp bài as t1 join chấp_thuận as t2 on t1.id lượt nộp bài = t2.id lượt nộp bài group by t1.tác_giả
select tác_giả from lượt nộp bài as t1 join chấp_thuận as t2 on t1."id lượt nộp bài" = t2."id lượt nộp bài" group by tác_giả having count(*) > 1
select t1.tác_giả from lượt nộp bài as t1 join chấp_thuận as t2 on t1.id lượt nộp bài = t2.id lượt nộp bài group by t1.tác_giả having count(*) > 1
select "ngày", "địa_điểm" from "hội_thảo" order by "địa_điểm"
select ngày , địa_điểm from hội_thảo order by địa_điểm
select tác_giả from lượt nộp bài except select t1.tác_giả from lượt nộp bài as t1 join chấp_thuận as t2 on t1.id lượt nộp bài = t2.id lượt nộp bài
select tác_giả from lượt nộp bài except select t1.tác_giả from lượt nộp bài as t1 join chấp_thuận as t2 on t1.id lượt nộp bài = t2.id lượt nộp bài
select t1.tên from doanh_nghiệp as t1 join đánh_giá as t2 on t1."id doanh_nghiệp" = t2."id doanh_nghiệp" where t2."đánh_giá xếp_hạng" > 4.5
select t1.tên from doanh_nghiệp as t1 join đánh_giá as t2 on t1."id doanh_nghiệp" = t2."id doanh_nghiệp" where t2."đánh_giá xếp hạng" = 3.5
select "id người tiêu_dùng" from "người tiêu_dùng" where "tên" = 'Michelle'
select t2.tiểu_bang from doanh_nghiệp as t1 join loại_hình as t2 on t1."id doanh_nghiệp" = t2."id doanh_nghiệp" where t1."tên" = 'Whataburger'
select t1.thành_phố  from doanh_nghiệp as t1  join loại_hình as t2 on t1."id doanh_nghiệp" = t2."id doanh_nghiệp"  where t2."tên loại_hình" = 'restaurant' and t1."tên" = 'MGM Steakhouse'
select thành_phố from doanh_nghiệp where đánh_giá xếp_hạng < 1.5
select thành_phố from doanh_nghiệp where tên = "Taj_Mahal"
select văn_bản from đánh_giá where đánh_giá xếp_hạng < 1
select t1.tên  from doanh_nghiệp as t1  join đánh_giá as t2 on t1."id doanh_nghiệp" = t2."id doanh_nghiệp"  where t2."đánh_giá xếp_hạng" > 3.5
select distinct t1."thành_phố"  from "doanh_nghiệp" as t1  join "loại_hình" as t2 on t1."id doanh_nghiệp" = t2."id doanh_nghiệp"  where t2."tên loại_hình" = 'Restaurant' and t1."tên" = 'Taj_Mahal'
select t2.văn_bản  from đánh_giá as t1  join người tiêu_dùng as t2 on t1.id người tiêu_dùng = t2.id người tiêu_dùng  where t2.tên = "Niloofar"
select t1.tên from doanh_nghiệp as t1 join đánh_giá as t2 on t1."id doanh_nghiệp" = t2."id doanh_nghiệp" where t2."id người tiêu_dùng" = 'Niloofar'
select t1.tên  from doanh_nghiệp as t1  join đánh_giá as t2 on t1."id doanh_nghiệp" = t2."id doanh_nghiệp"  where t2."đánh_giá xếp_hạng" = 5
select t3.văn_bản  from đánh_giá as t1  join loại_hình as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp  join doanh_nghiệp as t3 on t2.id doanh_nghiệp = t3.id doanh_nghiệp  join người tiêu_dùng as t4 on t1.id người tiêu_dùng = t4.id người tiêu_dùng  where t4.tên = "Michelle" and t2.tên loại_hình = "Italian Restaurant"
select count(*) from "doanh_nghiệp" as t1  join "loại_hình" as t2 on t1."id doanh_nghiệp" = t2."id doanh_nghiệp"  join "đánh_giá" as t3 on t2."id" = t3."id doanh_nghiệp"  join "người tiêu_dùng" as t4 on t3."id người tiêu_dùng" = t4."id người tiêu_dùng"  where t1."tên" = 'Cafe_Zinho' and t1."tiểu_bang" = 'Texas'
select t1.tên  from doanh_nghiệp as t1  join đánh_giá as t2 on t1."id doanh_nghiệp" = t2."id doanh_nghiệp"  where t1."tên" = 'Italian' and t2."đánh_giá xếp_hạng" = 5
select t1."tên khu_phố lân_cận"  from "khu_vực lân_cận" as t1  join "doanh_nghiệp" as t2 on t1."id doanh_nghiệp" = t2."id doanh_nghiệp"  where t2."tên" = 'nhà_hàng Ý' and t2."thành_phố" = 'Madison'
select t3."tên khu_phố lân_cận"  from "doanh_nghiệp" as t1  join "loại_hình" as t2 on t1."id doanh_nghiệp" = t2."id doanh_nghiệp"  join "khu_vực lân_cận" as t3 on t1."id doanh_nghiệp" = t3."id doanh_nghiệp"  where t2."tên loại_hình" = 'Italian' and t1."đánh_giá xếp_hạng" < 2.5 and t3."tên khu_phố lân_cận" = 'Madison'
select t1.tên , t1."id doanh_nghiệp"  from "doanh_nghiệp" as t1  join "loại_hình" as t2 on t1."id doanh_nghiệp" = t2."id doanh_nghiệp"  where t2."tên loại_hình" = 'nhà_hàng' and t1."tiểu_bang" = 'Pennsylvania'
select t1.tên , t1."id doanh_nghiệp"  from "doanh_nghiệp" as t1  join "loại_hình" as t2 on t1."id doanh_nghiệp" = t2."id doanh_nghiệp"  join "khu_vực lân_cận" as t3 on t1."id doanh_nghiệp" = t3."id doanh_nghiệp"  where t2."tên loại_hình" = 'Restaurant' and t3."tiểu_bang" = 'Pennsylvania'
select t3.văn_bản  from "doanh_nghiệp" as t1  join "loại_hình" as t2 on t1."id doanh_nghiệp" = t2."id doanh_nghiệp"  join "đánh_giá" as t3 on t1."id doanh_nghiệp" = t3."id doanh_nghiệp"  where t2."tên loại_hình" = 'chải_chuốt cho vật_nuôi' and t1."số_lượng đánh_giá" > 100
select tên from doanh_nghiệp where tên like "%brewery%" and thành_phố = "Los_Angeles"
select tên from doanh_nghiệp where thành_phố = "Los_Angeles"
select tên from doanh_nghiệp where tên like "%brewery%" and thành_phố = "Los_Angeles"
select t3.tên  from doanh_nghiệp as t1  join loại_hình as t2 on t1."id doanh_nghiệp" = t2."id doanh_nghiệp"  join đánh_giá as t3 on t2."id" = t3."id doanh_nghiệp"  join người tiêu_dùng as t4 on t3."id người tiêu_dùng" = t4."id người tiêu_dùng"  where t1."tên" = 'Mesa_Grill'
select t1."địa_chỉ đầy_đủ"  from "doanh_nghiệp" as t1  join "loại_hình" as t2 on t1."id doanh_nghiệp" = t2."id doanh_nghiệp"  where t2."tên loại_hình" = 'Walmart' and t1."thành_phố" = 'Los_Angeles'
select t1.tên  from doanh_nghiệp as t1  join đánh_giá as t2 on t1."id doanh_nghiệp" = t2."id doanh_nghiệp"  join người tiêu_dùng as t3 on t2."id người tiêu_dùng" = t3."id người tiêu_dùng"  where t1."thành_phố" = 'Dallas' and t3."tên" = 'Patrick'
select t3.tên  from doanh_nghiệp as t3  join lượt đăng_ký as t2 on t3.id doanh_nghiệp = t2.id doanh_nghiệp  join người tiêu_dùng as t1 on t2.id người tiêu_dùng = t1.id người tiêu_dùng  join đánh_giá as t4 on t2.id doanh_nghiệp = t4.id doanh_nghiệp  join khu_vực lân_cận as t5 on t3.id doanh_nghiệp = t5.id doanh_nghiệp  where t5.tên khu_phố lân_cận = 'Dallas' and t1.tên = 'Patrick' and t4.đánh_giá xếp_hạng > 2.5
select t1.tên  from doanh_nghiệp as t1  join đánh_giá as t2 on t1."id doanh_nghiệp" = t2."id doanh_nghiệp"  join người tiêu_dùng as t3 on t2."id người tiêu_dùng" = t3."id người tiêu_dùng"  where t3.tên = "Patrick"
select t1.tên , t1."id doanh_nghiệp"  from "doanh_nghiệp" as t1  join "đánh_giá" as t2 on t1."id doanh_nghiệp" = t2."id doanh_nghiệp"  where t2."đánh_giá xếp_hạng" >= 3 and t2."id người tiêu_dùng" = (      select "id người tiêu_dùng"      from "người tiêu_dùng"      where "tên" = 'Patrick' )
select t3.tên  from khoản tiền boa as t1  join doanh_nghiệp as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp  join người tiêu_dùng as t3 on t1.id người tiêu_dùng = t3.id người tiêu_dùng  where t2.tên = "Barrio_Café" and t1.năm = 2015
select tên from doanh_nghiệp where tiểu_bang = "Texas" and xếp_hạng đánh_giá < 2
select t1.tên , t1.địa_chỉ đầy_đủ  from doanh_nghiệp as t1  join loại_hình as t2 on t1."id doanh_nghiệp" = t2."id doanh_nghiệp"  where t2."tên loại_hình" = 'hải_sản' and t1.thành_phố = 'Los_Angeles'
select t1.tên , t1.địa_chỉ đầy_đủ  from doanh_nghiệp as t1  join loại_hình as t2 on t1."id doanh_nghiệp" = t2."id doanh_nghiệp"  where t2."tên loại_hình" = 'hải_sản' and t1.thành_phố = 'Los_Angeles'
select t1.tên , t1.địa_chỉ đầy_đủ  from doanh_nghiệp as t1  join loại_hình as t2 on t1."id doanh_nghiệp" = t2."id doanh_nghiệp"  where t2."tên loại_hình" = 'Hải_sản' and t1.thành_phố = 'Los_Angeles'
select t2.văn_bản  from đánh_giá as t1  join người tiêu_dùng as t2 on t1.id người tiêu_dùng = t2.id người tiêu_dùng  where t1.đánh_giá xếp_hạng > 4 and t2.tên = "Patrick"
select t1.tên , t1.địa_chỉ đầy_đủ  from doanh_nghiệp as t1  join loại_hình as t2 on t1."id doanh_nghiệp" = t2."id doanh_nghiệp"  where t1.tên = 'Apple' and t1.thành_phố = 'Los_Angeles'
select t1.tên , t1.địa_chỉ đầy_đủ  from doanh_nghiệp as t1  join loại_hình as t2 on t1."id doanh_nghiệp" = t2."id doanh_nghiệp"  where t2."tên loại_hình" = 'nhà_hàng' and t1.thành_phố = 'Dallas' and t1."đánh_giá xếp_hạng" > 4.5
select t3."tên khu_phố lân_cận"  from "doanh_nghiệp" as t1  join "loại_hình" as t2 on t1."id doanh_nghiệp" = t2."id doanh_nghiệp"  join "khu_vực lân_cận" as t3 on t2."id" = t3."id"  where t1."tên" = 'Flat_Top_Grill' and t2."tên loại_hình" = 'Restaurant'
select t1.văn_bản  from khoản tiền boa as t1  join doanh_nghiệp as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp  where t2.tên = "Vintner_Grill" and t1.số lượt thích > 9
select t2.văn_bản from đánh_giá as t1 join doanh_nghiệp as t2 on t1."id doanh_nghiệp" = t2."id doanh_nghiệp" where t2.tên = "Kabob_Cung_điện" and t1.năm = 2014
select t1.id người tiêu_dùng from người tiêu_dùng as t1 join khoản tiền boa as t2 on t1.id người tiêu_dùng = t2.id người tiêu_dùng join doanh_nghiệp as t3 on t2.id doanh_nghiệp = t3.id doanh_nghiệp where t3.thành_phố = "Dallas"
select t1.thành_phố  from doanh_nghiệp as t1  join loại_hình as t2 on t1."id doanh_nghiệp" = t2."id doanh_nghiệp"  where t2."tên loại_hình" = 'MGM Steakhouse' and t1."tiểu_bang" = 'Texas'
select t3."id người tiêu_dùng"  from "khoản tiền boa" as t1  join "doanh_nghiệp" as t2 on t1."id doanh_nghiệp" = t2."id doanh_nghiệp"  join "lĩnh_vực lân_cận" as t3 on t2."id doanh_nghiệp" = t3."id doanh_nghiệp"  where t3."tên khu_phố lân_cận" = 'chải_chuốt cho thú nuôi'
select t3.văn_bản  from doanh_nghiệp as t1  join loại_hình as t2 on t1."id doanh_nghiệp" = t2."id doanh_nghiệp"  join khoản tiền boa as t3 on t2."id" = t3."id loại_hình"  join đánh_giá as t4 on t3."id khoản tiền boa" = t4."id khoản tiền boa"  where t1."tên" = 'Cafe_Zinho' and t1."tiểu_bang" = 'Texas'
select t3.tên  from loại_hình as t1  join doanh_nghiệp as t2 on t1."id doanh_nghiệp" = t2."id doanh_nghiệp"  join đánh_giá as t3 on t2."id doanh_nghiệp" = t3."id doanh_nghiệp"  join người tiêu_dùng as t4 on t3."id người tiêu_dùng" = t4."id người tiêu_dùng"  where t1."tên loại_hình" = 'Restaurant'
select t3.văn_bản  from "doanh_nghiệp" as t1  join "loại_hình" as t2 on t1."id doanh_nghiệp" = t2."id doanh_nghiệp"  join "lượt đăng_ký" as t3 on t1."id doanh_nghiệp" = t3."id doanh_nghiệp"  join "khu_vực lân_cận" as t4 on t1."id doanh_nghiệp" = t4."id doanh_nghiệp"  join "đánh_giá" as t5 on t1."id doanh_nghiệp" = t5."id doanh_nghiệp"  join "khoản tiền boa" as t6 on t1."id doanh_nghiệp" = t6."id doanh_nghiệp"  join "người tiêu_dùng" as t7 on t6."id người tiêu_dùng" = t7."id người tiêu_dùng"  where t1."tên" = 'cafe zinho' and t5."năm" = 2010 and t5."tiểu_bang" = 'pennsylvania' and t2."tên loại_hình" = 'restaurant'
select t1.tên  from đánh_giá as t2  join người tiêu_dùng as t1  on t2.id người tiêu_dùng = t1.id người tiêu_dùng  where t2.năm = 2010
select t1.văn_bản from đánh_giá as t1 join khoản tiền boa as t2 on t1."id doanh_nghiệp" = t2."id doanh_nghiệp" where t2.năm = 2012
select văn_bản from đánh_giá where đánh_giá xếp_hạng = 2.5
select count(*)  from "doanh_nghiệp" as t1  join "loại_hình" as t2 on t1."id doanh_nghiệp" = t2."id doanh_nghiệp"  join "người tiêu_dùng" as t3 on t2."id người tiêu_dùng" = t3."id người tiêu_dùng"  where t1."thành_phố" = 'Madison' and t2."tên loại_hình" = 'Escape Game'
select count(*)  from "doanh_nghiệp" as t1  join "loại_hình" as t2 on t1."id doanh_nghiệp" = t2."id doanh_nghiệp"  join "người tiêu_dùng" as t3 on t2."id người tiêu_dùng" = t3."id người tiêu_dùng"  where t1."thành_phố" = 'Madison' and t2."tên loại_hình" = 'Escape Game'
select count(*)  from "doanh_nghiệp" as t1  join "loại_hình" as t2 on t1."id doanh_nghiệp" = t2."id doanh_nghiệp"  join "người tiêu_dùng" as t3 on t2."id người tiêu_dùng" = t3."id người tiêu_dùng"  where t1."thành_phố" = 'Madison' and t2."tên loại_hình" = 'Escape Game'
select count(*)  from "doanh_nghiệp" as t1  join "loại_hình" as t2 on t1."id doanh_nghiệp" = t2."id doanh_nghiệp"  join "người tiêu_dùng" as t3 on t1."id doanh_nghiệp" = t3."id người tiêu_dùng"  where t2."tên loại_hình" = 'trò_chơi trốn thoát' and t3."tên" = 'Madison' and t1."có mở_cửa hay không" = 1
select count(*)  from "doanh_nghiệp" as t1  join "loại_hình" as t2 on t1."id doanh_nghiệp" = t2."id doanh_nghiệp"  join "khu_vực lân_cận" as t3 on t1."id doanh_nghiệp" = t3."id doanh_nghiệp"  where t3."tên khu_phố lân_cận" = 'Madison' and t2."tên loại_hình" = 'Escape Game'
select count(*) from "doanh_nghiệp" as t1 join "đánh_giá" as t2 on t1."id doanh_nghiệp" = t2."id doanh_nghiệp" where t2."đánh_giá xếp_hạng" > 3.5
select t1.số_lượng đăng_ký  from lượt đăng_ký as t1  join loại_hình as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp  join doanh_nghiệp as t3 on t2.id doanh_nghiệp = t3.id doanh_nghiệp  join người tiêu_dùng as t4 on t1.id người tiêu_dùng = t4.id người tiêu_dùng  where t2.tên loại_hình = "Mexican" and t3.thành_phố = "Los_Angeles"
select sum(t3."số lượt đăng_ký")  from "doanh_nghiệp" as t1  join "loại_hình" as t2 on t1."id doanh_nghiệp" = t2."id doanh_nghiệp"  join "lượt đăng_ký" as t3 on t2."id" = t3."id doanh_nghiệp"  join "người tiêu_dùng" as t4 on t3."id người tiêu_dùng" = t4."id người tiêu_dùng"  where t1."tên" = 'McDonalds' and t1."thành_phố" = 'Los_Angeles' and t3."ngày" = 'Friday'
select t1.ngày, sum(t1.số_lượng)  from lượt đăng_ký as t1  join doanh_nghiệp as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp  join loại_hình as t3 on t2.id doanh_nghiệp = t3.id doanh_nghiệp  join người tiêu_dùng as t4 on t1.id người tiêu_dùng = t4.id người tiêu_dùng  where t3.tên loại_hình = "Restaurant" and t2.thành_phố = "Los_Angeles"  group by t1.ngày
select t1.tiểu_bang, sum(t3.số lượt đăng_ký)  from doanh_nghiệp as t1  join loại_hình as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp  join lượt đăng_ký as t3 on t1.id doanh_nghiệp = t3.id doanh_nghiệp  join người tiêu_dùng as t4 on t3.id người tiêu_dùng = t4.id người tiêu_dùng  where t1.tên = "Italian_Delis" and t1.thành_phố = "San_Francisco"  group by t1.tiểu_bang, t3.ngày
select count(*) from đánh_giá as t1 join người tiêu_dùng as t2 on t1.id người tiêu_dùng = t2.id người tiêu_dùng where t2.tên = "Niloofar" and t1.năm = 2015
select avg("đánh_giá xếp_hạng")  from "đánh_giá"  join "người tiêu_dùng" on "đánh_giá"."id người tiêu_dùng" = "người tiêu_dùng"."id người tiêu_dùng"  where "người tiêu_dùng"."tên" = 'Michelle'
select count(*) from "lượt đăng_ký" as t1  join "doanh_nghiệp" as t2 on t1."id doanh_nghiệp" = t2."id doanh_nghiệp"  where t2."tên" = 'Cafe_Zinho' and t1."ngày" = 'Friday'
select count(distinct t3."id người tiêu_dùng")  from "doanh_nghiệp" as t1  join "loại_hình" as t2 on t1."id doanh_nghiệp" = t2."id doanh_nghiệp"  join "đánh_giá" as t3 on t2."id" = t3."id doanh_nghiệp"  join "khu_vực lân_cận" as t4 on t1."id doanh_nghiệp" = t4."id doanh_nghiệp"  where t1."tên" = 'Sushi_Too' and t4."tên khu_phố lân_cận" = 'Pittsburgh'
select count(*)  from "doanh_nghiệp" as t1  join "đánh_giá" as t2 on t1."id doanh_nghiệp" = t2."id doanh_nghiệp"  where t1."thành_phố" = 'Pittsburgh' and t2."đánh_giá xếp_hạng" > 4.5
select count(*) from đánh_giá as t1 join khoản tiền boa as t2 on t1."id doanh_nghiệp" = t2."id doanh_nghiệp" where t2."năm" = 2015
select sum(t2."số lượt thích")  from "đánh_giá" as t1  join "khoản tiền boa" as t2 on t1."id đánh_giá" = t2."id đánh_giá"  where t1."id người tiêu_dùng" = (select "id người tiêu_dùng" from "người tiêu_dùng" where "tên" = 'Niloofar')
select sum(t1."số lượt thích")  from "khoản tiền boa" as t1  join "đánh_giá" as t2 on t1."id đánh_giá" = t2."id đánh_giá"  where t2."tên doanh_nghiệp" = 'Cafe_Zinho'
select sum(t3."số lượt thích")  from "khoản tiền boa" as t1  join "đánh_giá" as t2 on t1."id đánh_giá" = t2."id đánh_giá"  join "người tiêu_dùng" as t3 on t2."id người tiêu_dùng" = t3."id người tiêu_dùng"  where t1."id doanh_nghiệp" = (select "id doanh_nghiệp" from "doanh_nghiệp" where "tên" = 'Cafe_Zinho') and t3."tên" = 'Niloofar'
select count(t2.văn_bản)  from đánh_giá as t1  join khoản tiền boa as t2 on t1."id đánh_giá" = t2."id đánh_giá"  where t1."id người tiêu_dùng" = (select "id người tiêu_dùng" from người tiêu_dùng where "tên" = 'Michelle')  and t2.năm = 2010
select count(t2.văn_bản)  from đánh_giá as t1  join khoản tiền boa as t2 on t1."id đánh_giá" = t2."id đánh_giá"  where t1."id người tiêu_dùng" = (select "id người tiêu_dùng" from người tiêu_dùng where "tên" = 'Michelle')  and t2."năm" = 2010
select count(*)  from đánh_giá as t1  join khoản tiền boa as t2 on t1."id đánh_giá" = t2."id đánh_giá"  join người tiêu_dùng as t3 on t2."id người tiêu_dùng" = t3."id người tiêu_dùng"  where t3."tên" = 'Michelle' and t1."tháng" = 'April'
select count(*) from "doanh_nghiệp" as t1  join "loại_hình" as t2 on t1."id doanh_nghiệp" = t2."id doanh_nghiệp"  where t2."tên loại_hình" = 'nhà_hàng' and t1."địa_chỉ đầy_đủ" like '%Texas%'
select count(*) from "doanh_nghiệp" as t1  join "loại_hình" as t2 on t1."id doanh_nghiệp" = t2."id doanh_nghiệp"  where t2."tên loại_hình" = 'bar' and t1."đánh_giá xếp_hạng" > 3.5 and t1."thành_phố" = 'Dallas'
select count(*) from "doanh_nghiệp" as t1  join "loại_hình" as t2 on t1."id doanh_nghiệp" = t2."id doanh_nghiệp"  where t2."tên loại_hình" = 'bar' and t1."đánh_giá xếp_hạng" > 3.5 and t1."thành_phố" = 'Dallas'
select count(distinct t3."id người tiêu_dùng")  from "doanh_nghiệp" as t1  join "loại_hình" as t2 on t1."id doanh_nghiệp" = t2."id doanh_nghiệp"  join "đánh_giá" as t3 on t2."id" = t3."id doanh_nghiệp"  join "người tiêu_dùng" as t4 on t3."id người tiêu_dùng" = t4."id người tiêu_dùng"  where t1."tên" = 'Texas de Brazil' and t1."thành_phố" = 'Dallas' and t2."tên loại_hình" = 'Restaurant'
select count(distinct t3."id người tiêu_dùng")  from "doanh_nghiệp" as t1  join "loại_hình" as t2 on t1."id doanh_nghiệp" = t2."id doanh_nghiệp"  join "đánh_giá" as t3 on t2."id" = t3."id doanh_nghiệp"  join "người tiêu_dùng" as t4 on t3."id người tiêu_dùng" = t4."id người tiêu_dùng"  where t1."tên" = 'Bistro_Di_Napoli' and t3."năm" = 2015
select count(*)  from "doanh_nghiệp" as t1  join "khu_vực lân_cận" as t2 on t1."id doanh_nghiệp" = t2."id doanh_nghiệp"  where t2."tên khu_phố lân_cận" = 'Hazelwood' and t1."thành_phố" = 'Dallas' and t1."tên loại_hình" = 'nhà_hàng'
select count(*)  from "doanh_nghiệp" as t1  join "loại_hình" as t2 on t1."id doanh_nghiệp" = t2."id doanh_nghiệp"  join "người tiêu_dùng" as t3 on t1."id doanh_nghiệp" = t3."id doanh_nghiệp"  where t2."tên loại_hình" = 'Starbucks' and t1."thành_phố" = 'Dallas' and t1."tiểu_bang" = 'Texas'
select count(*) from "doanh_nghiệp" as t1 join "đánh_giá" as t2 on t1."id doanh_nghiệp" = t2."id doanh_nghiệp" where t1."tên" = 'Acacia_Cafe'
select t1.ngày, avg(t2.số_lượng)  from doanh_nghiệp as t1  join lượt đăng_ký as t2 on t1.id doanh_nghiệp = t2.id doanh_nghiệp  where t1.tên = "Barrio_Cafe"  group by t1.ngày
select count(*)  from "doanh_nghiệp" as t1  join "khu_vực lân_cận" as t2  on t1."id doanh_nghiệp" = t2."id doanh_nghiệp"  where t2."tên khu_phố lân_cận" = 'Stone_Meadows' and t1."thành_phố" = 'Madison'
select count(*) from đánh_giá as t1 join người tiêu_dùng as t2 on t1.id người tiêu_dùng = t2.id người tiêu_dùng where t2.tên = "Adrienne"
select count(*)  from đánh_giá as t1  join người tiêu_dùng as t2 on t1.id người tiêu_dùng = t2.id người tiêu_dùng  where t2.tên = "Michelle" and t1.tháng = "3" and t1.năm = 2014
select count(distinct t1."id doanh_nghiệp")  from "đánh_giá" as t1  join "người tiêu_dùng" as t2  on t1."id người tiêu_dùng" = t2."id người tiêu_dùng"  where t2."tên" = 'Michelle' and t1."năm" = 2010
select count(*)  from "doanh_nghiệp" as t1  join "đánh_giá" as t2 on t1."id doanh_nghiệp" = t2."id doanh_nghiệp"  join "người tiêu_dùng" as t3 on t2."id người tiêu_dùng" = t3."id người tiêu_dùng"  where t1."thành_phố" = 'San_Diego' and t3."tên" = 'Christine' and t2."năm" = 2010
select count(*)  from "doanh_nghiệp" as t1  join "loại_hình" as t2 on t1."id doanh_nghiệp" = t2."id doanh_nghiệp"  where t1."tên" = 'Target' and t1."thành_phố" = 'Los_Angeles'
select count(distinct t3."id người tiêu_dùng")  from "doanh_nghiệp" as t1  join "loại_hình" as t2 on t1."id doanh_nghiệp" = t2."id doanh_nghiệp"  join "đánh_giá" as t3 on t2."id" = t3."id doanh_nghiệp"  join "khu_vực lân_cận" as t4 on t1."id doanh_nghiệp" = t4."id doanh_nghiệp"  where t1."tên" = 'quán rượu Ai-len' and t4."tên khu_phố lân_cận" = 'Dallas'
select avg("số điểm đánh_giá") from "đánh_giá" where "năm" = 2014
select count(distinct t3."id người tiêu_dùng")  from "doanh_nghiệp" as t1  join "loại_hình" as t2 on t1."id doanh_nghiệp" = t2."id doanh_nghiệp"  join "đánh_giá" as t3 on t2."id" = t3."id doanh_nghiệp"  join "người tiêu_dùng" as t4 on t3."id người tiêu_dùng" = t4."id người tiêu_dùng"  where t1."tên" = 'Vintner_Grill' and t3."năm" = 2010
select count(t3."số lượng đánh_giá")  from "doanh_nghiệp" as t1  join "khu_vực lân_cận" as t2 on t1."id doanh_nghiệp" = t2."id doanh_nghiệp"  join "đánh_giá" as t3 on t1."id doanh_nghiệp" = t3."id doanh_nghiệp"  where t2."tên khu_phố lân_cận" = 'South_Summerlin'
select count(*) from người tiêu_dùng where tên = "Michelle"
select count(*) from "doanh_nghiệp" as t1 join "loại_hình" as t2 on t1."id doanh_nghiệp" = t2."id doanh_nghiệp" where t2."tên loại_hình" = 'nhà_hàng'
select count(distinct t1.thành_phố)  from doanh_nghiệp as t1  join loại_hình as t2 on t1."id doanh_nghiệp" = t2."id doanh_nghiệp"  where t1.tên = 'Panda_Express' and t2."tên loại_hình" = 'Restaurant'
select count(*)  from đánh_giá as t1  join khoản tiền boa as t2 on t1."id đánh_giá" = t2."id đánh_giá"  where t2."id người tiêu_dùng" = (select "id người tiêu_dùng" from người tiêu_dùng where "tên" = 'Michelle')
select count(*), "id doanh_nghiệp"  from "khu_vực lân_cận" as t1  join "doanh_nghiệp" as t2 on t1."id doanh_nghiệp" = t2."id doanh_nghiệp"  where t1."tên khu_phố lân_cận" = 'Brighton_Heights'  group by t2."id doanh_nghiệp"
select count("số_lượng đánh_giá") from "đánh_giá" where "tháng" = '3'
select count(t2.văn_bản), t1.tháng  from khoản tiền boa as t1  join đánh_giá as t2 on t1.id đánh_giá = t2.id đánh_giá  group by t1.tháng
select count(*)  from "khu_vực lân_cận" as t1  join "doanh_nghiệp" as t2 on t1."id doanh_nghiệp" = t2."id doanh_nghiệp"  where t2."tên" = 'Madison' and t2."đánh_giá xếp_hạng" = 5
select t1.tên , t1.địa_chỉ đầy_đủ  from doanh_nghiệp as t1  join loại_hình as t2 on t1."id doanh_nghiệp" = t2."id doanh_nghiệp"  where t2."tên loại_hình" = 'restaurant' and t1."tiểu_bang" = 'Texas'
select t1.tên  from doanh_nghiệp as t1  join lượt đăng_ký as t2 on t1."id doanh_nghiệp" = t2."id doanh_nghiệp"  order by t2."số_lượng" desc  limit 1
select t1."tên khu_phố lân_cận"  from "khu_vực lân_cận" as t1  join "doanh_nghiệp" as t2 on t1."id doanh_nghiệp" = t2."id doanh_nghiệp"  where t2."thành_phố" = 'Madison'  group by t1."tên khu_phố lân_cận"  order by count(*) desc  limit 1
select t1.tên  from doanh_nghiệp as t1  join đánh_giá as t2 on t1."id doanh_nghiệp" = t2."id doanh_nghiệp"  where t2."đánh_giá xếp_hạng" >= 3.5 and t1."thành_phố" = 'Dallas'  order by t2."đánh_giá xếp_hạng" desc  limit 10
select t1.tên  from doanh_nghiệp as t1  join loại_hình as t2 on t1."id doanh_nghiệp" = t2."id doanh_nghiệp"  join đánh_giá as t3 on t1."id doanh_nghiệp" = t3."id doanh_nghiệp"  where t2."tên loại_hình" = 'Mexican' and t3."đánh_giá xếp_hạng" >= 3.5 and t1."thành_phố" = 'Dallas'
select t1.tên  from doanh_nghiệp as t1  join loại_hình as t2 on t1."id doanh_nghiệp" = t2."id doanh_nghiệp"  where t1."thành_phố" = 'Dallas' and t1."tiểu_bang" = 'Texas' and t2."tên loại_hình" = 'dịch_vụ đỗ xe'
select t1.tên  from doanh_nghiệp as t1  join khu_vực lân_cận as t2 on t1."id doanh_nghiệp" = t2."id doanh_nghiệp"  join loại_hình as t3 on t1."id doanh_nghiệp" = t3."id doanh_nghiệp"  where t2."tên khu_phố lân_cận" = 'Meadowood' and t3."tên loại_hình" = 'Italian' and t1."tiểu_bang" = 'Madison'
select t1.tên  from "doanh_nghiệp" as t1  join "loại_hình" as t2 on t1."id doanh_nghiệp" = t2."id doanh_nghiệp"  join "đánh_giá" as t3 on t2."id doanh_nghiệp" = t3."id doanh_nghiệp"  join "khu_vực lân_cận" as t4 on t1."id doanh_nghiệp" = t4."id doanh_nghiệp"  where t4."tên khu_phố lân_cận" = 'Los_Angeles' and t3."đánh_giá xếp_hạng" > 3 and t3."số lượng đánh_giá" >= 30
select count(*)  from "doanh_nghiệp" as t1  join "loại_hình" as t2 on t1."id doanh_nghiệp" = t2."id doanh_nghiệp"  where t2."tên loại_hình" = 'nhà_hàng' and t1."địa_chỉ đầy_đủ" like '%Edinburgh%'
select t1.id người tiêu_dùng from đánh_giá as t1 join người tiêu_dùng as t2 on t1.id người tiêu_dùng = t2.id người tiêu_dùng group by t1.id người tiêu_dùng having avg(t1.đánh_giá xếp_hạng) < 3
select t1.tên  from "doanh_nghiệp" as t1  join "đánh_giá" as t2 on t1."id doanh_nghiệp" = t2."id doanh_nghiệp"  where t2."tháng" = '4'  group by t1."id doanh_nghiệp"  order by count(*) desc  limit 1
select t1.tên  from "doanh_nghiệp" as t1  join "loại_hình" as t2 on t1."id doanh_nghiệp" = t2."id doanh_nghiệp"  group by t2."id doanh_nghiệp"  order by count(*) desc  limit 1