-- ============================================================
-- DML: THÊM DỮ LIỆU MẪU - HỆ THỐNG QUẢN LÝ NHÀ XE TRÀ MY
-- Môn học: Ứng dụng Cơ sở Dữ liệu - TIKT1124(224)_01
-- Nhóm 15 - Đại học Kinh tế Quốc dân
-- ============================================================

-- ============================================================
-- 1. Bảng Khách Hàng (Customer)
-- ============================================================
INSERT INTO tramybus.Customer (customerId, fullName, dateOfBirth, gender, address, phoneNumber, email, username, password) VALUES
('KH00001', 'Đặng Trà Quế',   '1964-04-27', 'Nam', 'Quảng Ngãi',    '0300001346', 'dangtraque@gmail.com',       'user001', 'rVsbSINf'),
('KH00002', 'Chúc Hải Kha',   '2004-03-02', 'Nam', 'Sơn La',        '0300004644', 'chuchaikha@gmail.com',       'user002', 'VuSVIPTN'),
('KH00003', 'Võ Gia Dũng',    '2001-01-26', 'Nam', 'Kiên Giang',    '0300006214', 'vogiadung@gmail.com',        'user003', 'gId92wPX'),
('KH00004', 'Mai Quang Nhung', '1975-12-09', 'Nữ',  'Hà Tĩnh',      '0300008118', 'maiquangnhung@gmail.com',    'user004', 't6fZJX1Q'),
('KH00005', 'Hà Khắc Hạnh',   '1942-07-13', 'Nữ',  'Thừa Thiên Huế','0300022131', 'hakhachanh@gmail.com',       'user005', 'rhp7I2cd'),
('KH00006', 'Cao Việt Sơn',   '1948-08-21', 'Nữ',  'Nam Định',      '0300026627', 'caovietson@gmail.com',       'user006', 'Ivyt8G6n'),
('KH00007', 'Vu Trà Duyên',   '1993-09-28', 'Nữ',  'Hải Phòng',    '0300047993', 'vutraduyen@gmail.com',       'user007', 'MYmEKgZ1'),
('KH00008', 'Võ Thùy Ninh',   '1952-11-27', 'Nữ',  'Lai Châu',     '0300037167', 'vothuyninh@gmail.com',       'user008', 'uSPTQGI5'),
('KH00009', 'Dương Mỹ Nhan',  '1942-01-16', 'Nữ',  'Nghệ An',      '0300047993', 'duongmynhan@gmail.com',      'user009', 'IL3tEVMp'),
('KH00010', 'Hoàng Thùy Toàn','1964-04-27', 'Nam', 'Lạng Sơn',     '0300063785', 'hoangthuytoan@gmail.com',    'user010', 'E9WBDQmP');

-- ============================================================
-- 2. Bảng Nhân Viên (Staff)
-- Ghi chú: Dữ liệu mẫu gồm cả tài xế lẫn nhân viên vận hành
-- ============================================================
INSERT INTO tramybus.Staff (staffId, fullName, dateOfBirth, gender, address, phoneNumber, position, email, username, password) VALUES
('NV0001', 'Lộc Nga Quân',   '1971-01-04', 'Nữ',  'Hà Nam',        '0206075212', 'Tài xế', 'locngaquan@gmail.com',    'Staff0001', '8AMGugrM'),
('NV0002', 'Tạ Đức Tùng',   '1972-05-04', 'Nam', 'Bắc Ninh',      '0221129090', 'Tài xế', 'taductung@gmail.com',     'Staff0002', 'TOxf8sAe'),
('NV0003', 'Mai Thái Khanh', '1998-01-10', 'Nữ',  'Quảng Bình',    '0296791439', 'Tài xế', 'maithaikhanh@gmail.com',  'Staff0003', 'xpFIuq0I'),
('NV0004', 'Đỗ Nga Thiều',   '1973-09-11', 'Nam', 'Cao Bằng',      '0269341040', 'Tài xế', 'dongathieu@gmail.com',    'Staff0004', '6TKoKT7g'),
('NV0005', 'Đăng Tú Duyên',  '1992-07-22', 'Nam', 'Đà Nẵng',      '0282986210', 'Tài xế', 'dangtuduyen@gmail.com',   'Staff0005', 'RJkBnRL5'),
('NV0006', 'Bình Thị Hải',   '1990-05-03', 'Nữ',  'Quảng Nam',    '0219660249', 'Tài xế', 'dinhthihai@gmail.com',    'Staff0006', 'g8acpa6c'),
('NV0007', 'Hoàng Thu Bằng', '1968-10-10', 'Nam', 'Vĩnh Phúc',    '0203621765', 'Tài xế', 'hoangthubang@gmail.com',  'Staff0007', 'DAkyoYZk'),
('NV0008', 'Y Toàn Lân',     '1968-05-06', 'Nữ',  'Phú Thọ',      '0281951369', 'Tài xế', 'ytoanlan@gmail.com',      'Staff0008', 'phPN1KuI'),
('NV0009', 'Lương Văn Tuyết','1973-02-14', 'Nam', 'Quảng Bình',    '0213264323', 'Tài xế', 'luongvantuyet@gmail.com', 'Staff0009', 'SSI5kT0E'),
('NV0010', 'Vy Hoàng Lộc',   '1986-02-09', 'Nữ',  'Thái Nguyên',  '0269519091', 'Tài xế', 'vyhoangloc@gmail.com',    'Staff0010', 'QPg5pbXt'),
-- Nhân viên vận hành (OPS)
('NV0039', 'Nguyễn Văn An',   '1985-03-15', 'Nam', 'Hà Nội',  '0912000001', 'Vận hành', 'nvietana@gmail.com',    'Staff0039', 'psswrd01'),
('NV0082', 'Trần Thị Bình',   '1990-07-20', 'Nữ',  'Hà Nội',  '0912000002', 'Vận hành', 'tranthibinh@gmail.com', 'Staff0082', 'psswrd02'),
('NV0097', 'Lê Minh Cường',   '1988-11-05', 'Nam', 'Hà Nội',  '0912000003', 'Vận hành', 'leminhcuong@gmail.com', 'Staff0097', 'psswrd03'),
('NV0103', 'Diệp Công Hoài',  '1975-01-30', 'Nam', 'Hà Nội',  '0912000004', 'Tài xế',   'diepconghoai@gmail.com','Staff0103', 'psswrd04'),
('NV0104', 'Trịnh Quỳnh Cương','1980-06-14','Nam', 'Hà Nội',  '0912000005', 'Tài xế',   'trinhquynhcuong@gmail.com','Staff0104','psswrd05'),
('NV0105', 'Phạm Thị Dung',   '1992-09-18', 'Nữ',  'Hà Nội',  '0912000006', 'Vận hành', 'phamthidung@gmail.com', 'Staff0105', 'psswrd06'),
('NV0143', 'Hoàng Văn Em',    '1987-04-22', 'Nam', 'Hà Nội',  '0912000007', 'Vận hành', 'hoangvanem@gmail.com',  'Staff0143', 'psswrd07'),
('NV0146', 'Ngô Thị Phương',  '1993-12-10', 'Nữ',  'Hà Nội',  '0912000008', 'Vận hành', 'ngothiphuong@gmail.com','Staff0146', 'psswrd08'),
('NV0157', 'Vũ Thành Giang',  '1983-08-03', 'Nam', 'Hà Nội',  '0912000009', 'Tài xế',   'vuthanggiang@gmail.com','Staff0157', 'psswrd09'),
('NV0173', 'Đào Thị Hoa',     '1996-02-25', 'Nữ',  'Hà Nội',  '0912000010', 'Vận hành', 'daothihoa@gmail.com',   'Staff0173', 'psswrd10'),
('NV0186', 'Bùi Quốc Hùng',   '1978-10-17', 'Nam', 'Hà Nội',  '0912000011', 'Vận hành', 'buiquochung@gmail.com', 'Staff0186', 'psswrd11'),
('NV0207', 'Cao Thị Lan',     '1991-05-09', 'Nữ',  'Hà Nội',  '0912000012', 'Vận hành', 'caothilan@gmail.com',   'Staff0207', 'psswrd12'),
-- Thêm staffId cho các tài xế TX1000-TX1012
('NV1057', 'Trịnh Quỳnh Hoa', '1984-03-11', 'Nữ', 'Hà Nội', '0912001057', 'Tài xế', 'trinhquynhhoa@gmail.com','Staff1057','psswrd57'),
('NV1058', 'Trịnh Quỳnh Hoà', '1979-07-23', 'Nữ', 'Hà Nội', '0912001058', 'Tài xế', 'trinhquynhhoa2@gmail.com','Staff1058','psswrd58'),
('NV1059', 'Đoàn Văn Quyền',  '1981-09-14', 'Nam','Hà Nội', '0912001059', 'Tài xế', 'doanvanquyen@gmail.com', 'Staff1059','psswrd59'),
('NV1060', 'Châu Văn Kỳ',     '1977-04-05', 'Nam','Hà Nội', '0912001060', 'Tài xế', 'chauvanky@gmail.com',    'Staff1060','psswrd60'),
('NV1061', 'Đỗ Sơn Cam',      '1983-12-30', 'Nam','Hà Nội', '0912001061', 'Tài xế', 'dosoncam@gmail.com',     'Staff1061','psswrd61'),
('NV1062', 'Lộc Nga Phương',  '1990-01-17', 'Nữ', 'Hà Nội', '0912001062', 'Tài xế', 'locngaphuong@gmail.com', 'Staff1062','psswrd62'),
('NV1063', 'Đăng Hiền Tuyết', '1986-06-21', 'Nữ', 'Hà Nội', '0912001063', 'Tài xế', 'danghientuyet@gmail.com','Staff1063','psswrd63'),
('NV1064', 'Hoàng Đức Chi',   '1974-08-09', 'Nam','Hà Nội', '0912001064', 'Tài xế', 'hoangducchi@gmail.com',  'Staff1064','psswrd64'),
('NV1065', 'Vy Hoàng Lộc',    '1982-11-03', 'Nữ', 'Hà Nội', '0912001065', 'Tài xế', 'vyhoangloc2@gmail.com', 'Staff1065','psswrd65'),
('NV1066', 'Lê Thị Mai',      '1989-02-14', 'Nữ', 'Hà Nội', '0912001066', 'Tài xế', 'lethimai@gmail.com',    'Staff1066','psswrd66'),
('NV1067', 'Trần Văn Nam',    '1976-07-28', 'Nam','Hà Nội', '0912001067', 'Tài xế', 'tranvannam@gmail.com',   'Staff1067','psswrd67'),
('NV1068', 'Nguyễn Thị Oanh', '1993-10-15', 'Nữ', 'Hà Nội', '0912001068', 'Tài xế', 'nguyenthioanh@gmail.com','Staff1068','psswrd68'),
('NV1069', 'Phạm Quốc Phong', '1985-05-07', 'Nam','Hà Nội', '0912001069', 'Tài xế', 'phamquocphong@gmail.com','Staff1069','psswrd69');

-- ============================================================
-- 3. Bảng Tài Xế (Driver)
-- ============================================================
INSERT INTO tramybus.Driver (driverId, licenseNumber, staffId) VALUES
('TX1',    'BL1',    'NV0001'),
('TX10',   'BL10',   'NV0010'),
('TX100',  'BL100',  'NV0103'),
('TX1000', 'BL1000', 'NV1057'),
('TX1001', 'BL1001', 'NV1058'),
('TX1002', 'BL1002', 'NV1059'),
('TX1003', 'BL1003', 'NV1060'),
('TX1004', 'BL1004', 'NV1061'),
('TX1005', 'BL1005', 'NV1062'),
('TX1006', 'BL1006', 'NV1063'),
('TX1007', 'BL1007', 'NV1064'),
('TX1008', 'BL1008', 'NV1065'),
('TX1009', 'BL1009', 'NV1066'),
('TX101',  'BL101',  'NV0104'),
('TX1010', 'BL1010', 'NV1067'),
('TX1011', 'BL1011', 'NV1068'),
('TX1012', 'BL1012', 'NV1069');

-- ============================================================
-- 4. Bảng Nhân Viên Vận Hành (OperationsStaff)
-- ============================================================
INSERT INTO tramybus.OperationsStaff (OpsId, staffId) VALUES
('OPS001', 'NV0039'),
('OPS002', 'NV0082'),
('OPS003', 'NV0097'),
('OPS004', 'NV0105'),
('OPS005', 'NV0143'),
('OPS006', 'NV0146'),
('OPS007', 'NV0157'),
('OPS008', 'NV0173'),
('OPS009', 'NV0186'),
('OPS010', 'NV0207');

-- ============================================================
-- 5. Bảng Xe (Bus)
-- ============================================================
INSERT INTO tramybus.Bus (busId, licensePlate, busType, seatCount, status) VALUES
('B001', '29A-60854', 'Xe giường nằm', 30, 'Hoạt động'),
('B002', '29A-46630', 'Xe 16 chỗ',     16, 'Hoạt động'),
('B003', '29A-81130', 'Xe ghế ngồi',   45, 'Hoạt động'),
('B004', '29A-85602', 'Xe 16 chỗ',     16, 'bảo trì'),
('B005', '29A-07701', 'Xe 16 chỗ',     16, 'bảo trì'),
('B006', '29A-51475', 'Xe ghế ngồi',   45, 'Hoạt động'),
('B007', '29A-84837', 'Xe giường nằm', 30, 'Hoạt động'),
('B008', '29A-20833', 'Xe 16 chỗ',     16, 'Hoạt động'),
('B009', '29A-72480', 'Xe 16 chỗ',     16, 'Hoạt động'),
('B010', '29A-42958', 'Xe ghế ngồi',   45, 'Hoạt động'),
('B011', '29A-98873', 'Xe 16 chỗ',     16, 'Hoạt động'),
('B012', '29A-86823', 'Xe 16 chỗ',     16, 'bảo trì'),
('B013', '29A-71110', 'Xe 16 chỗ',     16, 'bảo trì'),
('B014', '29A-34421', 'Xe ghế ngồi',   30, 'bảo trì'),
('B015', '29A-25220', 'Xe 16 chỗ',     16, 'bảo trì'),
('B016', '29A-25350', 'Xe ghế ngồi',   30, 'bảo trì'),
('B017', '29A-26555', 'Xe ghế ngồi',   45, 'bảo trì'),
('B018', '29A-13593', 'Xe giường nằm', 30, 'bảo trì');

-- ============================================================
-- 6. Bảng Tuyến Xe (Route)
-- Ghi chú: Chỉ hiển thị một phần dữ liệu mẫu từ báo cáo (RO019–RO030)
-- ============================================================
INSERT INTO tramybus.Route (routeId, routeName, distance, departurePoint, destination, ticketPrice) VALUES
('RO001', 'Hà Nội - Nam Định',     87.0,  'Hà Nội',   'Nam Định',    150000.00),
('RO002', 'Hà Nội - Hải Dương',    57.0,  'Hà Nội',   'Hải Dương',   120000.00),
('RO003', 'Hà Nội - TP Hồ Chí Minh', 1726.0, 'Hà Nội','TP Hồ Chí Minh', 600000.00),
('RO004', 'Hà Nội - Hải Phòng',    105.0, 'Hà Nội',   'Hải Phòng',   180000.00),
('RO005', 'Hà Nội - Ninh Bình',    93.0,  'Hà Nội',   'Ninh Bình',   160000.00),
('RO006', 'Hà Nội - Bắc Giang',    56.0,  'Hà Nội',   'Bắc Giang',   110000.00),
('RO007', 'Hà Nội - Thái Bình',    110.0, 'Hà Nội',   'Thái Bình',   170000.00),
('RO008', 'Hà Nội - Hưng Yên',     64.0,  'Hà Nội',   'Hưng Yên',    130000.00),
('RO009', 'Hà Nội - Quảng Ninh',   155.0, 'Hà Nội',   'Quảng Ninh',  200000.00),
('RO010', 'Hà Nội - Vĩnh Phúc',    75.0,  'Hà Nội',   'Vĩnh Phúc',   140000.00),
('RO011', 'Hà Nội - Lạng Sơn',     155.0, 'Hà Nội',   'Lạng Sơn',    220000.00),
('RO019', 'Hà Nội - Lào Cai',      263.9, 'Hà Nội',   'Lào Cai',     300000.00),
('RO020', 'Hà Nội - Cao Bằng',     282.6, 'Hà Nội',   'Cao Bằng',    320000.00),
('RO021', 'Hà Nội - Hà Giang',     283.9, 'Hà Nội',   'Hà Giang',    310000.00),
('RO022', 'Hà Nội - Sơn La',       298.5, 'Hà Nội',   'Sơn La',      330000.00),
('RO023', 'Hà Nội - Lai Châu',     395.1, 'Hà Nội',   'Lai Châu',    380000.00),
('RO024', 'Hà Nội - Điện Biên',    447.8, 'Hà Nội',   'Điện Biên',   400000.00),
('RO025', 'Đà Nẵng - Nam Định',    711.2, 'Đà Nẵng',  'Nam Định',    450000.00),
('RO026', 'Đà Nẵng - Bình Dương',   28.5, 'Đà Nẵng',  'Bình Dương',   90000.00),
('RO027', 'Đà Nẵng - Đồng Nai',     31.8, 'Đà Nẵng',  'Đồng Nai',   100000.00),
('RO028', 'Đà Nẵng - Long An',      47.2, 'Đà Nẵng',  'Long An',     110000.00),
('RO029', 'Đà Nẵng - Tiền Giang',   71.9, 'Đà Nẵng',  'Tiền Giang',  130000.00),
('RO030', 'Đà Nẵng - Bến Tre',      87.3, 'Đà Nẵng',  'Bến Tre',     150000.00);

-- ============================================================
-- 7. Bảng Chuyến Xe (Trip)
-- ============================================================
INSERT INTO tramybus.Trip (tripId, busId, routeId, driverId, departureTime, arrivalTime) VALUES
('T0001', 'B001', 'RO001', 'TX1',    '00:00:00', '04:00:00'),
('T0002', 'B002', 'RO001', 'TX10',   '01:00:00', '05:00:00'),
('T0003', 'B003', 'RO001', 'TX100',  '02:00:00', '06:00:00'),
('T0004', 'B004', 'RO001', 'TX1000', '03:00:00', '07:00:00'),
('T0005', 'B005', 'RO001', 'TX1001', '04:00:00', '08:00:00'),
('T0006', 'B006', 'RO001', 'TX1002', '05:00:00', '09:00:00'),
('T0007', 'B007', 'RO001', 'TX1003', '06:00:00', '10:00:00'),
('T0008', 'B008', 'RO001', 'TX1004', '07:00:00', '11:00:00'),
('T0009', 'B009', 'RO001', 'TX1005', '08:00:00', '12:00:00'),
('T0010', 'B010', 'RO001', 'TX1006', '09:00:00', '13:00:00'),
('T0011', 'B011', 'RO001', 'TX1007', '10:00:00', '14:00:00'),
('T0012', 'B012', 'RO001', 'TX1008', '11:00:00', '15:00:00'),
('T0013', 'B013', 'RO001', 'TX1009', '12:00:00', '16:00:00'),
('T0014', 'B014', 'RO001', 'TX101',  '13:00:00', '17:00:00'),
('T0015', 'B015', 'RO001', 'TX1010', '14:00:00', '18:00:00'),
('T0039', 'B001', 'RO010', 'TX1',    '06:00:00', '08:00:00'),
('T0061', 'B002', 'RO008', 'TX10',   '07:00:00', '09:00:00'),
('T0102', 'B003', 'RO006', 'TX100',  '08:00:00', '10:00:00'),
('T0155', 'B006', 'RO002', 'TX1002', '09:00:00', '11:00:00'),
('T0317', 'B007', 'RO007', 'TX1003', '10:00:00', '12:00:00'),
('T0354', 'B008', 'RO004', 'TX1004', '11:00:00', '13:00:00'),
('T0355', 'B009', 'RO004', 'TX1005', '12:00:00', '14:00:00'),
('T0404', 'B010', 'RO009', 'TX1006', '13:00:00', '15:00:00'),
('T0426', 'B011', 'RO011', 'TX1007', '14:00:00', '16:00:00'),
('T0442', 'B001', 'RO011', 'TX1',    '15:00:00', '17:00:00'),
('T0446', 'B002', 'RO011', 'TX10',   '16:00:00', '18:00:00');

-- ============================================================
-- 8. Bảng Vé Xe (Ticket)
-- ============================================================
INSERT INTO tramybus.Ticket (ticketId, customerId, tripId, seatNumber, bookingDate, ticketPrice, DepartureDate, status) VALUES
('TK00001', 'KH04662', 'T0001', 'B11', '2025-02-12', 150000.00, '2025-03-29', 'còn vé'),
('TK00002', 'KH00962', 'T0002', 'B13', '2025-02-10', 150000.00, '2025-03-26', 'còn vé'),
('TK00003', 'KH04609', 'T0003', 'B19', '2025-02-27', 150000.00, '2025-03-16', 'còn vé'),
('TK00004', 'KH01126', 'T0004', 'B12', '2025-02-03', 150000.00, '2025-03-25', 'hết vé'),
('TK00005', 'KH02648', 'T0005', 'A11', '2025-03-01', 150000.00, '2025-03-05', 'còn vé'),
('TK00006', 'KH04345', 'T0006', 'B09', '2025-03-04', 150000.00, '2025-03-13', 'hết vé'),
('TK00007', 'KH01916', 'T0007', 'B13', '2025-02-01', 150000.00, '2025-02-25', 'còn vé'),
('TK00008', 'KH03286', 'T0008', 'A02', '2025-02-09', 150000.00, '2025-02-16', 'còn vé'),
('TK00009', 'KH03932', 'T0009', 'A11', '2025-03-07', 150000.00, '2025-03-19', 'còn vé'),
('TK00010', 'KH03230', 'T0010', 'B07', '2025-02-16', 150000.00, '2025-03-15', 'còn vé'),
('TK00011', 'KH04754', 'T0011', 'B01', '2025-02-12', 150000.00, '2025-03-03', 'còn vé');

-- Thêm các khách hàng bổ sung cho ticket (KH có mã từ báo cáo)
INSERT INTO tramybus.Customer (customerId, fullName, dateOfBirth, gender, address, phoneNumber, email, username, password) VALUES
('KH04662', 'Võ Minh Nữ',     '1985-06-01', 'Nữ',  'Hà Nội', '0911000001', 'vominhnu@gmail.com',    'user4662', 'pwd4662'),
('KH00962', 'Đặng Sơn Bằng',  '1990-03-15', 'Nam', 'Hà Nội', '0911000002', 'dangsonbang@gmail.com', 'user0962', 'pwd0962'),
('KH04609', 'Hà Đức Nga',     '1978-09-22', 'Nữ',  'Hà Nội', '0911000003', 'haducnga@gmail.com',    'user4609', 'pwd4609'),
('KH01126', 'Y Sơn Long',     '2000-12-05', 'Nam', 'Hà Nội', '0911000004', 'ysonlong@gmail.com',    'user1126', 'pwd1126'),
('KH02648', 'Diệp Sơn Nhân',  '1995-07-18', 'Nam', 'Hà Nội', '0911000005', 'diepsonnhan@gmail.com', 'user2648', 'pwd2648'),
('KH04345', 'Cao Hoài Khuê',  '1983-04-30', 'Nữ',  'Hà Nội', '0911000006', 'caohaikue@gmail.com',   'user4345', 'pwd4345'),
('KH01916', 'Vu Bá Lộc',      '1972-11-14', 'Nam', 'Hà Nội', '0911000007', 'vubaloc@gmail.com',     'user1916', 'pwd1916'),
('KH03286', 'Trịnh Sỹ Tuấn',  '1988-02-08', 'Nam', 'Hà Nội', '0911000008', 'trinhsytuan@gmail.com', 'user3286', 'pwd3286'),
('KH03932', 'Đỗ Sơn Thần',    '1967-08-27', 'Nam', 'Hà Nội', '0911000009', 'dosonthane@gmail.com',  'user3932', 'pwd3932'),
('KH03230', 'Lưu Duy Hạ',     '1993-05-11', 'Nam', 'Hà Nội', '0911000010', 'luuduyha@gmail.com',    'user3230', 'pwd3230'),
('KH04754', 'Vi Nga Khương',   '1981-10-03', 'Nữ',  'Hà Nội', '0911000011', 'vingakhuong@gmail.com', 'user4754', 'pwd4754');

-- ============================================================
-- 9. Bảng Thanh Toán (Payment)
-- ============================================================
INSERT INTO tramybus.Payment (paymentId, ticketId, paymentDate, paymentMethod, transactionCode, PaymentAmount, status) VALUES
('PAY0001', 'TK00001', '2025-02-12 10:30:00', 'Thẻ tín dụng', 'TXN20250212001', 150000.00, 'đã thanh toán'),
('PAY0002', 'TK00002', '2025-02-10 08:15:00', 'Ví điện tử',   'TXN20250210002', 150000.00, 'đã thanh toán'),
('PAY0003', 'TK00003', '2025-02-27 14:20:00', 'Thẻ tín dụng', 'TXN20250227003', 150000.00, 'đã thanh toán'),
('PAY0004', 'TK00004', '2025-02-03 09:45:00', 'Ngân hàng',    'TXN20250203004', 150000.00, 'chưa thanh toán'),
('PAY0005', 'TK00005', '2025-03-01 11:00:00', 'Ví điện tử',   'TXN20250301005', 150000.00, 'đã thanh toán'),
('PAY0006', 'TK00006', '2025-03-04 16:30:00', 'Thẻ tín dụng', 'TXN20250304006', 150000.00, 'chưa thanh toán'),
('PAY0007', 'TK00007', '2025-02-01 07:00:00', 'Tiền mặt',     'TXN20250201007', 150000.00, 'đã thanh toán'),
('PAY0008', 'TK00008', '2025-02-09 13:10:00', 'Ví điện tử',   'TXN20250209008', 150000.00, 'đã thanh toán'),
('PAY0009', 'TK00009', '2025-03-07 10:00:00', 'Thẻ tín dụng', 'TXN20250307009', 150000.00, 'đã thanh toán'),
('PAY0010', 'TK00010', '2025-02-16 15:45:00', 'Ngân hàng',    'TXN20250216010', 150000.00, 'đã thanh toán'),
('PAY0011', 'TK00011', '2025-02-12 12:20:00', 'Tiền mặt',     'TXN20250212011', 150000.00, 'đã thanh toán');

-- ============================================================
-- 10. Bảng Thu Nhập Tài Xế (DriverIncome)
-- ============================================================
INSERT INTO tramybus.DriverIncome (incomeID, tripId, totalRevenue, commissionRate, incomeAmount, paymentDate) VALUES
('INC0001', 'T0001', 1500000.00, 0.10, 150000.00, '2025-03-29'),
('INC0002', 'T0002', 900000.00,  0.10,  90000.00, '2025-03-26'),
('INC0003', 'T0003', 1200000.00, 0.10, 120000.00, '2025-03-16'),
('INC0004', 'T0007', 600000.00,  0.10,  60000.00, '2025-02-25'),
('INC0005', 'T0008', 450000.00,  0.10,  45000.00, '2025-02-16'),
('INC0006', 'T0009', 750000.00,  0.10,  75000.00, '2025-03-19'),
('INC0007', 'T0010', 600000.00,  0.10,  60000.00, '2025-03-15'),
('INC0008', 'T0011', 450000.00,  0.10,  45000.00, '2025-03-03');

-- ============================================================
-- END OF DML SCRIPT
-- ============================================================
