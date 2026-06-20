-- ============================================================
-- DDL: TẠO CẤU TRÚC BẢNG - HỆ THỐNG QUẢN LÝ NHÀ XE TRÀ MY
-- Môn học: Ứng dụng Cơ sở Dữ liệu - TIKT1124(224)_01
-- Nhóm 15 - Đại học Kinh tế Quốc dân
-- ============================================================

-- Tạo schema (nếu chưa có)
CREATE SCHEMA IF NOT EXISTS tramybus;

-- ============================================================
-- 1. Bảng Khách Hàng (Customer)
-- ============================================================
CREATE TABLE tramybus.Customer (
    customerId   VARCHAR(20)  PRIMARY KEY,
    fullName     VARCHAR(50),
    dateOfBirth  DATE,
    gender       VARCHAR(10),
    address      VARCHAR(255),
    phoneNumber  VARCHAR(20),
    email        VARCHAR(255),
    username     VARCHAR(20),
    password     VARCHAR(20)
);

-- ============================================================
-- 2. Bảng Nhân Viên (Staff)
-- ============================================================
CREATE TABLE tramybus.Staff (
    staffId      VARCHAR(20)  PRIMARY KEY,
    fullName     VARCHAR(50),
    dateOfBirth  DATE,
    gender       VARCHAR(10),
    address      VARCHAR(255),
    phoneNumber  VARCHAR(20),
    position     VARCHAR(10),
    email        VARCHAR(255),
    username     VARCHAR(20),
    password     VARCHAR(20)
);

-- ============================================================
-- 3. Bảng Tài Xế (Driver)
-- ============================================================
CREATE TABLE tramybus.Driver (
    driverId      VARCHAR(20)  PRIMARY KEY,
    licenseNumber VARCHAR(50),
    staffId       VARCHAR(20),
    FOREIGN KEY (staffId) REFERENCES tramybus.Staff(staffId)
);

-- ============================================================
-- 4. Bảng Nhân Viên Vận Hành (OperationsStaff)
-- ============================================================
CREATE TABLE tramybus.OperationsStaff (
    OpsId   VARCHAR(20)  PRIMARY KEY,
    staffId VARCHAR(20),
    FOREIGN KEY (staffId) REFERENCES tramybus.Staff(staffId)
);

-- ============================================================
-- 5. Bảng Xe (Bus)
-- ============================================================
CREATE TABLE tramybus.Bus (
    busId        VARCHAR(20)  PRIMARY KEY,
    licensePlate VARCHAR(20),
    busType      VARCHAR(50),
    seatCount    INT,
    status       ENUM('Hoạt động', 'bảo trì') NOT NULL
);

-- ============================================================
-- 6. Bảng Tuyến Xe (Route)
-- ============================================================
CREATE TABLE tramybus.Route (
    routeId        VARCHAR(20)    PRIMARY KEY,
    routeName      VARCHAR(255),
    distance       DECIMAL(10, 2),
    departurePoint VARCHAR(100),
    destination    VARCHAR(100),
    ticketPrice    DECIMAL(10, 2)
);

-- ============================================================
-- 7. Bảng Chuyến Xe (Trip)
-- ============================================================
CREATE TABLE tramybus.Trip (
    tripId        VARCHAR(20)  PRIMARY KEY,
    busId         VARCHAR(20),
    routeId       VARCHAR(20),
    driverId      VARCHAR(20),
    departureTime TIME,
    arrivalTime   TIME,
    FOREIGN KEY (busId)    REFERENCES tramybus.Bus(busId),
    FOREIGN KEY (routeId)  REFERENCES tramybus.Route(routeId),
    FOREIGN KEY (driverId) REFERENCES tramybus.Driver(driverId)
);

-- ============================================================
-- 8. Bảng Vé Xe (Ticket)
-- ============================================================
CREATE TABLE tramybus.Ticket (
    ticketId      VARCHAR(20)    PRIMARY KEY,
    customerId    VARCHAR(20),
    tripId        VARCHAR(20),
    seatNumber    VARCHAR(10),
    bookingDate   DATE,
    ticketPrice   DECIMAL(10, 2),
    DepartureDate DATE,
    status        ENUM('còn vé', 'hết vé') NOT NULL,
    FOREIGN KEY (customerId) REFERENCES tramybus.Customer(customerId),
    FOREIGN KEY (tripId)     REFERENCES tramybus.Trip(tripId)
);

-- ============================================================
-- 9. Bảng Thanh Toán (Payment)
-- ============================================================
CREATE TABLE tramybus.Payment (
    paymentId       VARCHAR(20)    PRIMARY KEY,
    ticketId        VARCHAR(20),
    paymentDate     DATETIME,
    paymentMethod   VARCHAR(50),
    transactionCode VARCHAR(100),
    PaymentAmount   DECIMAL(10, 2),
    status          ENUM('đã thanh toán', 'chưa thanh toán') NOT NULL,
    FOREIGN KEY (ticketId) REFERENCES tramybus.Ticket(ticketId)
);

-- ============================================================
-- 10. Bảng Thu Nhập Tài Xế (DriverIncome)
-- ============================================================
CREATE TABLE tramybus.DriverIncome (
    incomeID       VARCHAR(20)    PRIMARY KEY,
    tripId         VARCHAR(20),
    totalRevenue   DECIMAL(10, 2),
    commissionRate DECIMAL(10, 2),
    incomeAmount   DECIMAL(10, 2),
    paymentDate    DATE,
    FOREIGN KEY (tripId) REFERENCES tramybus.Trip(tripId)
);

-- ============================================================
-- END OF DDL SCRIPT
-- ============================================================
