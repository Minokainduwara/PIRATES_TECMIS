CREATE DATABASE Faculty_of_Technology;
USE Faculty_of_Technology;

/* USER table */

CREATE TABLE USER(
    User_ID VARCHAR(6) NOT NULL,
    User_password VARCHAR(30) NOT NULL,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    User_Role VARCHAR(20),
    Address VARCHAR(100),
    Email VARCHAR(100),
    Date_Of_Birth DATE,
    PRIMARY KEY(User_ID)
);


mysql> CREATE TABLE USER(
    ->     User_ID VARCHAR(6) NOT NULL,
    ->     User_password VARCHAR(30) NOT NULL,
    ->     First_Name VARCHAR(50),
    ->     Last_Name VARCHAR(50),
    ->     User_Role VARCHAR(20),
    ->     Address VARCHAR(100),
    ->     Email VARCHAR(100),
    ->     Date_Of_Birth DATE,
    ->     PRIMARY KEY(User_ID)
    -> );
Query OK, 0 rows affected (0.07 sec)


mysql> CREATE TABLE COURSE(
    ->     Course_Code CHAR(3) PRIMARY KEY,
    ->     name VARCHAR(30),
    ->     type VARCHAR(20),
    ->     Reg_No CHAR(6),
    ->     SGPA DECIMAL(4,2),
    ->     FOREIGN KEY (Reg_No) REFERENCES STUDENT(Reg_No)
    -> );
Query OK, 0 rows affected (0.07 sec)

mysql> CREATE TABLE LECTURER_COURSE(
    ->     LID CHAR(3),
    ->     Course_Code CHAR(3),
    ->     Lec_Hours INT,
    ->     Lec_In_Charge VARCHAR(30),
    ->     FOREIGN KEY (LID) REFERENCES LECTURER(LID),
    ->     FOREIGN KEY (Course_Code) REFERENCES COURSE(Course_Code)
    -> );
Query OK, 0 rows affected (0.05 sec)

mysql> CREATE TABLE TECHNICAL_OFFICER(
    ->     TID CHAR(3) PRIMARY KEY,
    ->     User_ID VARCHAR(6),
    ->     FOREIGN KEY(User_ID) REFERENCES user(User_ID)
    -> );
Query OK, 0 rows affected (0.04 sec)

mysql> CREATE TABLE DEAN(
    ->     Dean_ID CHAR(3) PRIMARY KEY,
    ->     User_ID VARCHAR(6),
    ->     FOREIGN KEY(User_ID) REFERENCES user(User_ID)
    -> );
Query OK, 0 rows affected (0.04 sec)

mysql> CREATE TABLE ADMIN(
    ->     Admin_ID CHAR(3) PRIMARY KEY,
    ->     User_ID VARCHAR(6),
    ->     FOREIGN KEY(User_ID) REFERENCES user(User_ID)
    -> );
Query OK, 0 rows affected (0.04 sec)

mysql> CREATE TABLE ADMIN_CONTACT(
    ->     Admin_ID CHAR(3),
    ->     Phone_No VARCHAR(11),
    ->     FOREIGN KEY(Admin_ID) REFERENCES ADMIN(Admin_ID)
    -> );
Query OK, 0 rows affected (0.04 sec)



/*Updated Table */

CREATE TABLE Attendance (
    AttendanceID INT AUTO_INCREMENT PRIMARY KEY,
    StudentID VARCHAR(10),
    CourseCode VARCHAR(10),
    SessionType ENUM('Theory', 'Practical'),
    Week INT, 
    Date DATE,
    Status ENUM('Present', 'Absent', 'Medical'),  
    TimeAllocation FLOAT  
);

