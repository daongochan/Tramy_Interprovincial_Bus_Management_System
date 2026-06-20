<div align="center">

# 🚌 Tra My Interprovincial Bus Station — Database Application

**A relational database system for managing an intercity bus station**

![MySQL](https://img.shields.io/badge/MySQL-8.0-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-DDL%20%7C%20DML%20%7C%20DQL-orange?style=for-the-badge)
![System Design](https://img.shields.io/badge/System_Design-UML-blue?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen?style=for-the-badge)

*Course Project · Database Application · National Economics University*

</div>

---

## Overview

**Tra My Bus Station** is a database-backed management system designed for an intercity bus company. It addresses common pain points of traditional bus stations — manual ticketing, opaque scheduling, and inefficient driver assignment — by modelling the entire operation in a relational database.

The system supports four categories of users:

| Actor | Role |
|---|---|
| **Customer** | Search trips, book/cancel tickets, view booking history |
| **Operations Staff** | Manage routes & trips, assign drivers, generate revenue reports |
| **Driver** | View assigned trips, confirm readiness, update trip status |
| **Payment System** | Process payments and handle automated refunds |

---

## Features

### Customer
- Register / log in with phone number and password
- Search trips by departure point, destination, and date
- View seat map and select seats
- Book tickets with online payment (credit card, e-wallet, bank transfer, cash)
- View booking history and cancel tickets (subject to cancellation policy)

### Operations Staff
- Add, update, and delete bus routes
- Schedule trips and assign available drivers and buses
- Monitor ticket sales and passenger lists
- Generate revenue reports by day / week / month / route

### Driver
- View assigned trip schedule with full details
- Confirm trip readiness
- Update real-time trip status (Not Started → In Progress → Completed)

---

## 🗄️ Database Architecture

The database utilizes a relational schema normalized to 3NF, consisting of **10 core tables** to ensure referential integrity across all transactions.

### Database Schema (Class Diagram)
*Illustrates the strict relationships between Transactions (Booking, Ticket, Payment), Operations (Trip, Route, Vehicle), and Personnel (Driver, OperationStaff).*

![Database Schema](<diagrams/UML_Diagrams/005_Class Diagram.png>)

### Entity Relationship Summary

| Table | Primary Key | Description |
|---|---|---|
| `Customer` | `customerId` | Passengers who book tickets |
| `Staff` | `staffId` | All employees (drivers + operations staff) |
| `Driver` | `driverId` | Drivers, linked to Staff |
| `OperationsStaff` | `OpsId` | Operations staff, linked to Staff |
| `Bus` | `busId` | Fleet of vehicles |
| `Route` | `routeId` | Bus routes with distance and base price |
| `Trip` | `tripId` | Scheduled trips linking Bus, Route, and Driver |
| `Ticket` | `ticketId` | Tickets booked by customers for trips |
| `Payment` | `paymentId` | Payment transactions for tickets |
| `DriverIncome` | `incomeID` | Commission income calculated per trip |

### Key Relationships
- One `Route` → Many `Trip`
- One `Trip` → Many `Ticket`
- One `Ticket` → One `Payment`
- One `Driver` → Many `Trip`
- One `Bus` → Many `Trip`

---

## ⚙️ System Workflows

The system's business logic is modeled using UML to visualize the strict operational flows.

**General Use Case Diagram**
*Defines system boundaries and permissions across Customer, Driver, and Operation Staff.*
![General Use Case](<diagrams/UML_Diagrams/001_General Use Case Diagram.png>)
**Booking Process (BPMN)**
*Core operational flow: searching, holding seats, calculating prices, and invoking the Payment Gateway.*
![Booking Process](<diagrams/Business_Processes/011_Booking Process.png>)

[`🖌️ Draw.io Source File (Contains all original diagrams)`](/source_diagrams.drawio)

---

## 🔎 Sample Queries

The [`DQL Queries`](database/003_DQL_Queries.sql) file contains **10 analytical queries**. A few highlights demonstrating complex `JOINs` and `Aggregate Functions`. A few highlights:

### Query 1 — Customer booking history
```sql
SELECT c.customerId, c.fullName,
       t.ticketId, t.seatNumber, t.bookingDate,
       t.DepartureDate, t.status
FROM tramybus.Customer c
JOIN tramybus.Ticket t ON c.customerId = t.customerId;
```

### Query 4 — Route with highest revenue
```sql
SELECT r.routeId, r.routeName, r.departurePoint, r.destination,
       COUNT(tk.ticketId)   AS totalTicketsSold,
       SUM(p.PaymentAmount) AS totalRevenue
FROM tramybus.Route r
JOIN tramybus.Trip    t  ON r.routeId   = t.routeId
JOIN tramybus.Ticket  tk ON t.tripId    = tk.tripId
JOIN tramybus.Payment p  ON tk.ticketId = p.ticketId
WHERE p.status = 'đã thanh toán'
GROUP BY r.routeId, r.routeName, r.departurePoint, r.destination
ORDER BY totalRevenue DESC
LIMIT 1;
```

### Query 10 — Trip revenue summary (paid vs unpaid)
```sql
SELECT tr.tripId, ro.routeName, b.busType,
       COUNT(tk.ticketId) AS totalTickets,
       SUM(CASE WHEN p.status = 'đã thanh toán'   THEN 1 ELSE 0 END) AS paidTickets,
       SUM(CASE WHEN p.status = 'chưa thanh toán' THEN 1 ELSE 0 END) AS unpaidTickets,
       SUM(CASE WHEN p.status = 'đã thanh toán'   THEN p.PaymentAmount ELSE 0 END) AS collectedRevenue
FROM tramybus.Trip tr
JOIN tramybus.Route   ro ON tr.routeId  = ro.routeId
JOIN tramybus.Bus     b  ON tr.busId    = b.busId
LEFT JOIN tramybus.Ticket  tk ON tr.tripId   = tk.tripId
LEFT JOIN tramybus.Payment p  ON tk.ticketId = p.ticketId
GROUP BY tr.tripId, ro.routeName, b.busType
ORDER BY tr.tripId;
```

Full query list in [`database/003_DQL_queries.sql`](database/003_DQL_Queries.sql).

---

## 🚀 Getting Started

### Prerequisites

- **MySQL 8.0+** (or any MySQL-compatible database such as MariaDB)
- A MySQL client: [MySQL Workbench](https://www.mysql.com/products/workbench/), DBeaver, or the CLI

### Setup

**1. Clone the repository**
```bash
git clone https://github.com/daongochan/Tramy_Inter-provincial_Bus_Management_System.git
cd Tramy_Inter-provincial_Bus_Management_System
```

**2. Create the schema and tables**
```bash
mysql -u root -p < database/001_DDL_Create_Tables.sql
```
Or run it inside MySQL Workbench by opening `001_DDL_Create_Tables.sql` and executing.

**3. Insert sample data**
```bash
mysql -u root -p < database/002_DML_Insert_Data.sql
```

**4. Run analytical queries**
```bash
mysql -u root -p tramybus < sql/dql_queries.sql
```

> ⚠️ **Important:** Execute the files in order — DDL first, then DML, then DQL — to respect foreign key constraints.

<div align="center">

*Academic project — National Economics University · 2024–2025*

</div>
