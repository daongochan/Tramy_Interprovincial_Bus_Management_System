-- ============================================================
-- DQL: CÁC CÂU TRUY VẤN - HỆ THỐNG QUẢN LÝ NHÀ XE TRÀ MY
-- Môn học: Ứng dụng Cơ sở Dữ liệu - TIKT1124(224)_01
-- Nhóm 15 - Đại học Kinh tế Quốc dân
-- ============================================================

-- ============================================================
-- QUERY 1: Truy vấn thông tin khách hàng và vé đã đặt
-- Mục đích: Xem danh sách vé của từng khách hàng kèm trạng thái
-- Use case: UC3 - Xem lịch sử đặt vé (Khách hàng)
-- ============================================================
SELECT
    c.customerId,
    c.fullName,
    t.ticketId,
    t.seatNumber,
    t.bookingDate,
    t.DepartureDate,
    t.status
FROM tramybus.Customer c
JOIN tramybus.Ticket t ON c.customerId = t.customerId;

-- ============================================================
-- QUERY 2: Truy vấn thông tin tài xế và chuyến đi
-- Mục đích: Xem tài xế nào được phân công cho chuyến đi nào,
--           cùng với thông tin xe
-- Use case: UC6 - Phân công chuyến xe (Nhân viên vận hành)
--           UC9 - Xem thông tin chuyến xe (Tài xế)
-- ============================================================
SELECT
    tr.tripId,
    d.driverId,
    s.fullName    AS driverName,
    b.busId,
    b.licensePlate,
    tr.departureTime,
    tr.arrivalTime
FROM tramybus.Trip tr
JOIN tramybus.Driver d  ON tr.driverId = d.driverId
JOIN tramybus.Staff  s  ON d.staffId   = s.staffId
JOIN tramybus.Bus    b  ON tr.busId    = b.busId;

-- ============================================================
-- QUERY 3: Truy vấn số lượng vé đã bán của mỗi chuyến đi
-- Mục đích: Thống kê vé bán được theo từng chuyến, kèm tuyến đường
-- Use case: UC8 - Tạo báo cáo doanh thu (Nhân viên vận hành)
-- ============================================================
SELECT
    tr.tripId,
    ro.routeName,
    COUNT(tk.ticketId) AS ticketsSold,
    p.status
FROM tramybus.Trip    tr
JOIN tramybus.Route   ro ON tr.routeId  = ro.routeId
JOIN tramybus.Ticket  tk ON tr.tripId   = tk.tripId
JOIN tramybus.Payment p  ON tk.ticketId = p.ticketId
GROUP BY tr.tripId, ro.routeName, p.status
ORDER BY tr.tripId;

-- ============================================================
-- QUERY 4: Truy vấn tuyến đường có doanh thu cao nhất
-- Mục đích: Xác định tuyến xe mang lại doanh thu lớn nhất
-- Use case: UC8 - Báo cáo doanh thu (Nhân viên vận hành)
-- ============================================================
SELECT
    r.routeId,
    r.routeName,
    r.departurePoint,
    r.destination,
    COUNT(tk.ticketId)      AS totalTicketsSold,
    SUM(p.PaymentAmount)    AS totalRevenue
FROM tramybus.Route   r
JOIN tramybus.Trip    t  ON r.routeId   = t.routeId
JOIN tramybus.Ticket  tk ON t.tripId    = tk.tripId
JOIN tramybus.Payment p  ON tk.ticketId = p.ticketId
WHERE p.status = 'đã thanh toán'
GROUP BY r.routeId, r.routeName, r.departurePoint, r.destination
ORDER BY totalRevenue DESC
LIMIT 1;

-- ============================================================
-- QUERY 5: Truy vấn danh sách xe còn hoạt động (sẵn sàng phân công)
-- Mục đích: Hiển thị xe có trạng thái "Hoạt động" để phân công
-- Use case: UC6 - Phân công chuyến xe (Nhân viên vận hành)
-- ============================================================
SELECT
    busId,
    licensePlate,
    busType,
    seatCount,
    status
FROM tramybus.Bus
WHERE status = 'Hoạt động'
ORDER BY busId;

-- ============================================================
-- QUERY 6: Truy vấn danh sách tài xế rảnh (chưa được phân công)
-- Mục đích: Lấy danh sách tài xế chưa có chuyến xe đang chạy
-- Use case: UC6 - Phân công chuyến xe (Nhân viên vận hành)
-- ============================================================
SELECT
    d.driverId,
    s.fullName,
    d.licenseNumber,
    s.phoneNumber
FROM tramybus.Driver d
JOIN tramybus.Staff  s ON d.staffId = s.staffId
WHERE d.driverId NOT IN (
    SELECT driverId
    FROM tramybus.Trip
);

-- ============================================================
-- QUERY 7: Truy vấn tổng doanh thu theo tuyến đường
-- Mục đích: Thống kê doanh thu và số vé bán của từng tuyến
-- Use case: UC8 - Báo cáo doanh thu phân tích theo tuyến
-- ============================================================
SELECT
    r.routeId,
    r.routeName,
    r.departurePoint,
    r.destination,
    COUNT(tk.ticketId)   AS totalTickets,
    SUM(p.PaymentAmount) AS totalRevenue,
    AVG(p.PaymentAmount) AS avgTicketPrice
FROM tramybus.Route   r
JOIN tramybus.Trip    t  ON r.routeId   = t.routeId
JOIN tramybus.Ticket  tk ON t.tripId    = tk.tripId
JOIN tramybus.Payment p  ON tk.ticketId = p.ticketId
WHERE p.status = 'đã thanh toán'
GROUP BY r.routeId, r.routeName, r.departurePoint, r.destination
ORDER BY totalRevenue DESC;

-- ============================================================
-- QUERY 8: Truy vấn vé của một khách hàng cụ thể
-- Mục đích: Khách hàng xem lịch sử đặt vé cá nhân
-- Use case: UC3 - Xem lịch sử đặt vé
-- Thay thế :customerId bằng mã thực tế khi chạy
-- ============================================================
SELECT
    t.ticketId,
    ro.routeName,
    ro.departurePoint,
    ro.destination,
    tr.departureTime,
    t.seatNumber,
    t.bookingDate,
    t.DepartureDate,
    t.ticketPrice,
    t.status
FROM tramybus.Ticket  t
JOIN tramybus.Trip    tr ON t.tripId    = tr.tripId
JOIN tramybus.Route   ro ON tr.routeId  = ro.routeId
WHERE t.customerId = 'KH04662'  -- Thay bằng mã khách hàng cần tra cứu
ORDER BY t.bookingDate DESC;

-- ============================================================
-- QUERY 9: Truy vấn doanh thu tài xế theo từng chuyến
-- Mục đích: Xem thu nhập của tài xế từ mỗi chuyến đi
-- Use case: FR2.4 - Báo cáo doanh thu tài xế
-- ============================================================
SELECT
    di.incomeID,
    di.tripId,
    s.fullName        AS driverName,
    d.driverId,
    ro.routeName,
    di.totalRevenue,
    di.commissionRate,
    di.incomeAmount,
    di.paymentDate
FROM tramybus.DriverIncome di
JOIN tramybus.Trip   tr ON di.tripId    = tr.tripId
JOIN tramybus.Driver d  ON tr.driverId  = d.driverId
JOIN tramybus.Staff  s  ON d.staffId    = s.staffId
JOIN tramybus.Route  ro ON tr.routeId   = ro.routeId
ORDER BY di.paymentDate DESC;

-- ============================================================
-- QUERY 10: Truy vấn thống kê chuyến xe theo trạng thái thanh toán
-- Mục đích: Đếm số vé đã/chưa thanh toán theo từng chuyến
-- Use case: UC8 - Báo cáo tổng quan hoạt động
-- ============================================================
SELECT
    tr.tripId,
    ro.routeName,
    b.busType,
    b.licensePlate,
    s.fullName                                          AS driverName,
    COUNT(tk.ticketId)                                  AS totalTickets,
    SUM(CASE WHEN p.status = 'đã thanh toán'   THEN 1 ELSE 0 END) AS paidTickets,
    SUM(CASE WHEN p.status = 'chưa thanh toán' THEN 1 ELSE 0 END) AS unpaidTickets,
    SUM(CASE WHEN p.status = 'đã thanh toán'   THEN p.PaymentAmount ELSE 0 END) AS collectedRevenue
FROM tramybus.Trip    tr
JOIN tramybus.Route   ro ON tr.routeId  = ro.routeId
JOIN tramybus.Bus     b  ON tr.busId    = b.busId
JOIN tramybus.Driver  d  ON tr.driverId = d.driverId
JOIN tramybus.Staff   s  ON d.staffId   = s.staffId
LEFT JOIN tramybus.Ticket  tk ON tr.tripId    = tk.tripId
LEFT JOIN tramybus.Payment p  ON tk.ticketId  = p.ticketId
GROUP BY tr.tripId, ro.routeName, b.busType, b.licensePlate, s.fullName
ORDER BY tr.tripId;

-- ============================================================
-- END OF DQL SCRIPT
-- ============================================================
