CREATE SCHEMA `modern_technology_database` ;
USE `modern_technology_database`;

-- This is a table containing employees information

CREATE TABLE `modern_technology_database`.`employee_info` (
  `employee_id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `position` VARCHAR(45) NOT NULL,
  `department_id` VARCHAR(45) NOT NULL,
  `employment_history` VARCHAR(45) NOT NULL,
  `contact` VARCHAR(45) NOT NULL,
  -- 
  FOREIGN KEY (`department_id`) REFERENCES departments(`department_id`) ON DELETE CASCADE
  );
  
  -- -- --- ----- ------ --
INSERT INTO `modern_technology_database`.`employee_info` ( `name`, `position`, `department_id`, `employment_history`, `contact`) 
VALUES ( 'Sibongile Nkosi', 'Software Engineer', 'D1', 'Joined in 2015, promoted to Senior in 2018', 'sibongile.nkosi@moderntech.com');
INSERT INTO `modern_technology_database`.`employee_info` ( `name`, `position`, `department_id`, `employment_history`, `contact`) 
VALUES ('Lungile Moyo', 'HR Manager', 'D2', 'Joined in 2013, promoted to Manager in 2017', 'lungile.moyo@moderntech.com');
 INSERT INTO `modern_technology_database`.`employee_info`( `name`, `position`, `department_id`, `employment_history`, `contact`) VALUES ( 'Thabo Molefe', 'Quality Analyst', 'D3', 'Joined in 2018', 'thabo.molefe@moderntech.com');
INSERT INTO `modern_technology_database`.`employee_info` ( `name`, `position`, `department_id`, `employment_history`, `contact`) VALUES ( 'Keshav Naidoo', 'Sale Representative', 'D4', 'Joined in 2020', 'keshav.naidoo@moderntech.com');
INSERT INTO `modern_technology_database`.`employee_info` ( `name`, `position`, `department_id`, `employment_history`, `contact`) VALUES ( 'Zanele Khumalo', 'Marketing', 'D5', 'Joined in 2019', 'zanele.khumalo@moderntech.com');
INSERT INTO `modern_technology_database`.`employee_info` ( `name`, `position`, `department_id`, `employment_history`, `contact`) VALUES ( 'Sipho Zulu', 'UI/UX Designer', 'D6', 'Joined in 2016', 'sipho.zulu@moderntech.com');
INSERT INTO `modern_technology_database`.`employee_info` ( `name`, `position`, `department_id`, `employment_history`, `contact`) VALUES ( 'Naledi Moeketsi', 'DevOps Engineer', 'D7', 'Joined in 2017', 'naledi.moeketsi@moderntech.com');
INSERT INTO `modern_technology_database`.`employee_info` ( `name`, `position`, `department_id`, `employment_history`, `contact`) VALUES ( 'Farai Gumbo', 'Content Strategist', 'D5', 'Joined in 2021', 'farai.gumbo@moderntech.com');
INSERT INTO `modern_technology_database`.`employee_info` ( `name`, `position`, `department_id`, `employment_history`, `contact`) VALUES ( 'Karabo Dlamini', 'Accountant', 'D8', 'Joined in 2018', 'karabo.dlamini@moderntech.com');
INSERT INTO `modern_technology_database`.`employee_info` ( `name`, `position`, `department_id`, `employment_history`, `contact`) VALUES ( 'Fatima Patel', 'Customer Support Lead', 'D9', 'Joined in 2016', 'fatima.patel@moderntech.com');
 
  -- 
  CREATE TABLE `modern_technology_database`.`departments` (
  `department_id` VARCHAR(10) NOT NULL,
  `department_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`department_id`)
);

  
  -- Department table information
  
  INSERT INTO `modern_technology_database`.`departments` (`department_id`, `department_name`) VALUES ('D1', 'Development');
INSERT INTO `modern_technology_database`.`departments` (`department_id`, `department_name`) VALUES ('D2', 'HR');
INSERT INTO `modern_technology_database`.`departments` (`department_id`, `department_name`) VALUES ('D3', 'QA');
INSERT INTO `modern_technology_database`.`departments` (`department_id`, `department_name`) VALUES ('D4', 'Sales');
INSERT INTO `modern_technology_database`.`departments` (`department_id`, `department_name`) VALUES ('D5', 'Marketing');
INSERT INTO `modern_technology_database`.`departments` (`department_id`, `department_name`) VALUES ('D6', 'Design');
INSERT INTO `modern_technology_database`.`departments` (`department_id`, `department_name`) VALUES ('D7', 'IT');
INSERT INTO `modern_technology_database`.`departments` (`department_id`, `department_name`) VALUES ('D8', 'Finance');
INSERT INTO `modern_technology_database`.`departments` (`department_id`, `department_name`) VALUES ('D9', 'Suport');



-- Payroll Table
CREATE TABLE `modern_technology_database`.`payroll_table` (
  `payroll_id` INT NOT NULL,
  `employee_id` VARCHAR(45) NOT NULL,
  `hours_worked` VARCHAR(45) NOT NULL,
  `leave_deduction` VARCHAR(45) NOT NULL,
  `final_salary` VARCHAR(45) NOT NULL,
  `perfomance` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`payroll_id`),
  FOREIGN KEY (`employee_id`) REFERENCES employee_info(`employee_id`) ON DELETE CASCADE
  );
  
  CREATE TABLE users_ (
  contact VARCHAR(255) NOT NULL,
  role VARCHAR(255) NOT NULL,
  password VARCHAR(255)
  );
  
  
 -- Dat for the pay roll table 
 INSERT INTO `modern_technology_database`.`payroll_table` (`payroll_id`, `employee_id`, `hours_worked`, `leave_deduction`, `final_salary`, `perfomance`) VALUES ('1000', '1', '160', '8', '65000', 'Good');
INSERT INTO `modern_technology_database`.`payroll_table` (`payroll_id`, `employee_id`, `hours_worked`, `leave_deduction`, `final_salary`, `perfomance`) VALUES ('1001', '2', '150', '10', '79000', 'Good');
INSERT INTO `modern_technology_database`.`payroll_table` (`payroll_id`, `employee_id`, `hours_worked`, `leave_deduction`, `final_salary`, `perfomance`) VALUES ('1002', '3', '170', '4', '54800', 'Good');
INSERT INTO `modern_technology_database`.`payroll_table` (`payroll_id`, `employee_id`, `hours_worked`, `leave_deduction`, `final_salary`, `perfomance`) VALUES ('1003', '4', '165', '6', '59700', 'Bad');
INSERT INTO `modern_technology_database`.`payroll_table` (`payroll_id`, `employee_id`, `hours_worked`, `leave_deduction`, `final_salary`, `perfomance`) VALUES ('1004', '5', '158', '5', '57850', 'Bad');
INSERT INTO `modern_technology_database`.`payroll_table` (`payroll_id`, `employee_id`, `hours_worked`, `leave_deduction`, `final_salary`, `perfomance`) VALUES ('1005', '6', '168', '2', '64800', 'Average');
INSERT INTO `modern_technology_database`.`payroll_table` (`payroll_id`, `employee_id`, `hours_worked`, `leave_deduction`, `final_salary`, `perfomance`) VALUES ('1006', '7', '175', '3', '71800', 'Average');
INSERT INTO `modern_technology_database`.`payroll_table` (`payroll_id`, `employee_id`, `hours_worked`, `leave_deduction`, `final_salary`, `perfomance`) VALUES ('1007', '8', '160', '0', '56000', 'Average');
INSERT INTO `modern_technology_database`.`payroll_table` (`payroll_id`, `employee_id`, `hours_worked`, `leave_deduction`, `final_salary`, `perfomance`) VALUES ('1008', '9', '155', '5', '61500', 'Average');
INSERT INTO `modern_technology_database`.`payroll_table` (`payroll_id`, `employee_id`, `hours_worked`, `leave_deduction`, `final_salary`, `perfomance`) VALUES ('1009', '10', '162', '4', '57750', 'Good');

-- Table for attendance table
CREATE TABLE attendance (
  `attendance_id` INT NOT NULL AUTO_INCREMENT,
  `employee_id` INT NOT NULL,
  `date` DATE NOT NULL,
  `status` ENUM('Present', 'Absent') NOT NULL,
  PRIMARY KEY (`attendance_id`),
  FOREIGN KEY (`employee_id`) REFERENCES employee_info(`employee_id`) ON DELETE CASCADE
);

 
INSERT INTO `modern_technology_database`.`attendance` (`attendance_id`, `employee_id`, `date`, `status`) VALUES ('1', '2024-11-25', 'Present');
INSERT INTO `modern_technology_database`.`attendance` (`attendance_id`, `employee_id`, `date`, `status`) VALUES ('1', '2024-11-26', 'Absent');
INSERT INTO `modern_technology_database`.`attendance` (`attendance_id`, `employee_id`, `date`, `status`) VALUES ('1', '2024-11-27', 'Present');
INSERT INTO `modern_technology_database`.`attendance` (`attendance_id`, `employee_id`, `date`, `status`) VALUES ('1', '2024-11-28', 'Present');
INSERT INTO `modern_technology_database`.`attendance` (`attendance_id`, `employee_id`, `date`, `status`) VALUES ('1', '2024-11-29', 'Present');
INSERT INTO `modern_technology_database`.`attendance` (`attendance_id`, `employee_id`, `date`, `status`) VALUES ('2', '2024-11-25', 'Present');
INSERT INTO `modern_technology_database`.`attendance` (`attendance_id`, `employee_id`, `date`, `status`) VALUES ('2', '2024-11-26', 'Absent');
INSERT INTO `modern_technology_database`.`attendance` (`attendance_id`, `employee_id`, `date`, `status`) VALUES ('2', '2024-11-27', 'Pressent');
INSERT INTO `modern_technology_database`.`attendance` (`attendance_id`, `employee_id`, `date`, `status`) VALUES ('2', '2024-11-28', 'Present');
INSERT INTO `modern_technology_database`.`attendance` (`attendance_id`, `employee_id`, `date`, `status`) VALUES ('2', '2024-11-29', 'Present');
INSERT INTO `modern_technology_database`.`attendance` (`attendance_id`, `employee_id`, `date`, `status`) VALUES ('3', '2024-11-25', 'Present');
INSERT INTO `modern_technology_database`.`attendance` (`attendance_id`, `employee_id`, `date`, `status`) VALUES ('3', '2024-11-26', 'Present');
INSERT INTO `modern_technology_database`.`attendance` (`attendance_id`, `employee_id`, `date`, `status`) VALUES ('3', '2024-11-27', 'Present');
INSERT INTO `modern_technology_database`.`attendance` (`attendance_id`, `employee_id`, `date`, `status`) VALUES ('3', '2024-11-28', 'Absent');
INSERT INTO `modern_technology_database`.`attendance` (`attendance_id`, `employee_id`, `date`, `status`) VALUES ('3', '2024-11-29', 'Present');
INSERT INTO `modern_technology_database`.`attendance` (`attendance_id`, `employee_id`, `date`, `status`) VALUES ('4', '2024-11-25', 'Absent');
INSERT INTO `modern_technology_database`.`attendance` (`attendance_id`, `employee_id`, `date`, `status`) VALUES ('4', '2024-11-26', 'Present');
INSERT INTO `modern_technology_database`.`attendance` (`attendance_id`, `employee_id`, `date`, `status`) VALUES ('4', '2024-11-27', 'Present');
INSERT INTO `modern_technology_database`.`attendance` (`attendance_id`, `employee_id`, `date`, `status`) VALUES ('4', '2024-11-28', 'Present');
INSERT INTO `modern_technology_database`.`attendance` (`attendance_id`, `employee_id`, `date`, `status`) VALUES ('4', '2024-11-29', 'Present');
INSERT INTO `modern_technology_database`.`attendance` (`attendance_id`, `employee_id`, `date`, `status`) VALUES ('5', '2024-11-25', 'Present');
INSERT INTO `modern_technology_database`.`attendance` (`attendance_id`, `employee_id`, `date`, `status`) VALUES ('5', '2024-11-26', 'Present');
INSERT INTO `modern_technology_database`.`attendance` (`attendance_id`, `employee_id`, `date`, `status`) VALUES ('5', '2024-11-27', 'Absent');
INSERT INTO `modern_technology_database`.`attendance` (`attendance_id`, `employee_id`, `date`, `status`) VALUES ('5', '2024-11-28', 'Present');
INSERT INTO `modern_technology_database`.`attendance` (`attendance_id`, `employee_id`, `date`, `status`) VALUES ('5', '2024-11-29', 'Present');
INSERT INTO `modern_technology_database`.`attendance` (`attendance_id`, `employee_id`, `date`, `status`) VALUES ('6', '2024-11-25', 'Present');
INSERT INTO `modern_technology_database`.`attendance` (`attendance_id`, `employee_id`, `date`, `status`) VALUES ('6', '2024-11-26', 'Present');
INSERT INTO `modern_technology_database`.`attendance` (`attendance_id`, `employee_id`, `date`, `status`) VALUES ('6', '2024-11-27', 'Absent');
INSERT INTO `modern_technology_database`.`attendance` (`attendance_id`, `employee_id`, `date`, `status`) VALUES ('6', '2024-11-28', 'Present');
INSERT INTO `modern_technology_database`.`attendance` (`attendance_id`, `employee_id`, `date`, `status`) VALUES ('6', '2024-11-29', 'Present');
INSERT INTO `modern_technology_database`.`attendance` (`attendance_id`, `employee_id`, `date`, `status`) VALUES ('7', '2024-11-25', 'Present');
INSERT INTO `modern_technology_database`.`attendance` (`attendance_id`, `employee_id`, `date`, `status`) VALUES ('7', '2024-11-26', 'Present');
INSERT INTO `modern_technology_database`.`attendance` (`attendance_id`, `employee_id`, `date`, `status`) VALUES ('7', '2024-11-27', 'Present');
INSERT INTO `modern_technology_database`.`attendance` (`attendance_id`, `employee_id`, `date`, `status`) VALUES ('7', '2024-11-28', 'Absent');
INSERT INTO `modern_technology_database`.`attendance` (`attendance_id`, `employee_id`, `date`, `status`) VALUES ('7', '2024-11-29', 'Present');
INSERT INTO `modern_technology_database`.`attendance` (`attendance_id`, `employee_id`, `date`, `status`) VALUES ('8', '2024-11-25', 'Present');
INSERT INTO `modern_technology_database`.`attendance` (`attendance_id`, `employee_id`, `date`, `status`) VALUES ('8', '2024-11-26', 'Absent');
INSERT INTO `modern_technology_database`.`attendance` (`attendance_id`, `employee_id`, `date`, `status`) VALUES ('8', '2024-11-27', 'Present');
INSERT INTO `modern_technology_database`.`attendance` (`attendance_id`, `employee_id`, `date`, `status`) VALUES ('8', '2024-11-28', 'Present');
INSERT INTO `modern_technology_database`.`attendance` (`attendance_id`, `employee_id`, `date`, `status`) VALUES ('8', '2024-11-29', 'Present');
INSERT INTO `modern_technology_database`.`attendance` (`attendance_id`, `employee_id`, `date`, `status`) VALUES ('9', '2024-11-25', 'Present');
INSERT INTO `modern_technology_database`.`attendance` (`attendance_id`, `employee_id`, `date`, `status`) VALUES ('9', '2024-11-26', 'Present');
INSERT INTO `modern_technology_database`.`attendance` (`attendance_id`, `employee_id`, `date`, `status`) VALUES ('9', '2024-11-27', 'Present');
INSERT INTO `modern_technology_database`.`attendance` (`attendance_id`, `employee_id`, `date`, `status`) VALUES ('9', '2024-11-28', 'Absent');
INSERT INTO `modern_technology_database`.`attendance` (`attendance_id`, `employee_id`, `date`, `status`) VALUES ('9', '2024-11-29', 'Present');
INSERT INTO `modern_technology_database`.`attendance` (`attendance_id`, `employee_id`, `date`, `status`) VALUES ('10', '2024-11-25', 'Present');
INSERT INTO `modern_technology_database`.`attendance` (`attendance_id`, `employee_id`, `date`, `status`) VALUES ('10', '2024-11-26', 'Present');
INSERT INTO `modern_technology_database`.`attendance` (`attendance_id`, `employee_id`, `date`, `status`) VALUES ('10', '2024-11-27', 'Absent');
INSERT INTO `modern_technology_database`.`attendance` (`attendance_id`, `employee_id`, `date`, `status`) VALUES ('10', '2024-11-28', 'Present');
INSERT INTO `modern_technology_database`.`attendance` (`attendance_id`, `employee_id`, `date`, `status`) VALUES ('10', '2024-11-29', 'PRESENT');



CREATE TABLE `modern_technology_database`.`leave` (
  `leave_id` INT NOT NULL AUTO_INCREMENT,
  `employee_id` INT NOT NULL,
  `leave_date` DATETIME NOT NULL,
  `reason` VARCHAR(95) NOT NULL,
  `status` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`leave_id`),
  FOREIGN KEY (`employee_id`) REFERENCES employee_info(`employee_id`) ON DELETE CASCADE
  );

INSERT INTO `modern_technology_database`.`leave` (`leave_id`, `employee_id`, `leave_date`, `reason`, `status`) VALUES ('3001', '1', '2024-11-22', 'Sick leave', 'Approved');
INSERT INTO `modern_technology_database`.`leave` (`employee_id`, `leave_date`, `reason`, `status`) VALUES ('1', '2024-12-01', 'Personal', 'Pending');
INSERT INTO `modern_technology_database`.`leave` (`employee_id`, `leave_date`, `reason`, `status`) VALUES ('2', '2024-11-15', 'Family Responsibility', 'Denied');
INSERT INTO `modern_technology_database`.`leave` (`employee_id`, `leave_date`, `reason`, `status`) VALUES ('2', '2024-12-02', 'Vacation', 'Approved');
INSERT INTO `modern_technology_database`.`leave` (`employee_id`, `leave_date`, `reason`, `status`) VALUES ('3', '2024-11-10', 'Medical Appointment', 'Approved');
INSERT INTO `modern_technology_database`.`leave` (`employee_id`, `leave_date`, `reason`, `status`) VALUES ('3', '2024-12-05', 'Personal', 'Pending');
INSERT INTO `modern_technology_database`.`leave` (`employee_id`, `leave_date`, `reason`, `status`) VALUES ('4', '2024-11-20', 'Bereavement', 'Approved');
INSERT INTO `modern_technology_database`.`leave` (`employee_id`, `leave_date`, `reason`, `status`) VALUES ('5', '2024-12-01', 'Childcare', 'Pending');
INSERT INTO `modern_technology_database`.`leave` (`employee_id`, `leave_date`, `reason`, `status`) VALUES ('6', '2024-11-18', 'Sick Leave', 'Approved');
INSERT INTO `modern_technology_database`.`leave` (`employee_id`, `leave_date`, `reason`, `status`) VALUES ('7', '2024-11-22', 'Vacation', 'Pending');
INSERT INTO `modern_technology_database`.`leave` (`employee_id`, `leave_date`, `reason`, `status`) VALUES ('8', '2024-12-02', 'Medical Appiontment', 'Approved');
INSERT INTO `modern_technology_database`.`leave` (`employee_id`, `leave_date`, `reason`, `status`) VALUES ('9', '2024-11-19', 'Childcare', 'Denied');
INSERT INTO `modern_technology_database`.`leave` (`employee_id`, `leave_date`, `reason`, `status`) VALUES ('10', '2024-12-03', 'Vacation', 'Pending');

  INSERT INTO `modern_technology_database`.`users_` (`contact`, `role`, `password`) 
VALUES 
('sibongile.nkosi@moderntech.com', 'employee', 'SoftEng!2015'),
('lungile.moyo@moderntech.com', 'admin', 'HRmanag3r2013'),
('thabo.molefe@moderntech.com', 'employee', 'P@ssw0rd123'),
('keshav.naidoo@moderntech.com', 'employee', 'SaleRep#2024'),
('zanele.khumalo@moderntech.com', 'employee', 'Mark3ting!'),
('sipho.zulu@moderntech.com', 'employee', 'UxDes1gn#'),
('naledi.moeketsi@moderntech.com', 'employee', 'DevOps@17'),
('farai.gumbo@moderntech.com', 'employee', 'C0ntent$21'),
('karabo.dlamini@moderntech.com', 'admin', 'Acc0unt@nt18'),
('fatima.patel@moderntech.com', 'admin', 'CustSupp0rt16');

SHOW CREATE TABLE employee_info;
ALTER TABLE employee_info MODIFY COLUMN employee_id INT AUTO_INCREMENT PRIMARY KEY;
ALTER TABLE employee_info DROP PRIMARY KEY;

SELECT TABLE_NAME, COLUMN_NAME, CONSTRAINT_NAME, REFERENCED_TABLE_NAME
FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE REFERENCED_TABLE_NAME = 'employee_info';

ALTER TABLE attendance DROP FOREIGN KEY attendance_ibfk_1;

ALTER TABLE employee_info DROP PRIMARY KEY;

ALTER TABLE employee_info MODIFY COLUMN employee_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY;

ALTER TABLE attendance
ADD CONSTRAINT attendance_ibfk_1 FOREIGN KEY (employee_id) 
REFERENCES employee_info(employee_id);

desc employee_info;

ALTER TABLE attendance
DROP FOREIGN KEY attendance_ibfk_1;

ALTER TABLE attendance
ADD CONSTRAINT attendance_ibfk_1
FOREIGN KEY (employee_id)
REFERENCES employee_info (employee_id)
ON DELETE CASCADE;













