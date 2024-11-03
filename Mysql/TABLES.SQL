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

CREATE TABLE Marks (
    MarkID INT AUTO_INCREMENT PRIMARY KEY,
    StudentID VARCHAR(10),
    CourseCode VARCHAR(10),
    AssessmentType ENUM('Quiz', 'Assessment', 'Midterm_Practical', 'Midterm_Theory', 'Final_Practical', 'Final_Theory'),
    MarksObtained DECIMAL(5, 2),
    MaxMarks INT DEFAULT 100 
);

CREATE TABLE StudentStatus (
    StudentID VARCHAR(10) PRIMARY KEY,
    Status ENUM('Proper', 'Repeat', 'Suspended')
);


mysql> DROP TABLE ATTENDANCE;
Query OK, 0 rows affected (0.06 sec)

mysql> CREATE TABLE Attendance (
    ->     AttendanceID INT AUTO_INCREMENT PRIMARY KEY,
    ->     StudentID VARCHAR(10),
    ->     CourseCode VARCHAR(10),
    ->     SessionType ENUM('Theory', 'Practical'),
    ->     Week INT,
    ->     Date DATE,
    ->     Status ENUM('Present', 'Absent', 'Medical'),
    ->     TimeAllocation FLOAT
    -> );
Query OK, 0 rows affected (0.03 sec)

mysql> DROP TABLE MARK;
Query OK, 0 rows affected (0.03 sec)

mysql> CREATE TABLE Marks (
    ->     MarkID INT AUTO_INCREMENT PRIMARY KEY,
    ->     StudentID VARCHAR(10),
    ->     CourseCode VARCHAR(10),
    ->     AssessmentType ENUM('Quiz', 'Assessment', 'Midterm_Practical', 'Midterm_Theory', 'Final_Practical', 'Final_Theory'),
    ->     MarksObtained DECIMAL(5, 2),
    ->     MaxMarks INT DEFAULT 100
    -> );
Query OK, 0 rows affected (0.04 sec)

mysql> CREATE TABLE StudentStatus (
    ->     StudentID VARCHAR(10) PRIMARY KEY,
    ->     Status ENUM('Proper', 'Repeat', 'Suspended')
    -> );
Query OK, 0 rows affected (0.03 sec)

mysql> ALTER TABLE student
    -> DROP COLUMN state;
Query OK, 0 rows affected (0.08 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> ALTER TABLE course
    -> DROP COLUMN SGPA;
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0


mysql> ALTER TABLE marks ADD FOREIGN KEY (StudentID) REFERENCES student(Reg_No);
Query OK, 0 rows affected (0.11 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> DROP TABLE student_exam;
Query OK, 0 rows affected (0.04 sec)

mysql> DROP TABLE exam;
Query OK, 0 rows affected (0.02 sec)

mysql> ALTER TABLE SUBJECT DROP COLUMN CGPA;
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> DESC SUBJECT;
+---------+---------+------+-----+---------+-------+
| Field   | Type    | Null | Key | Default | Extra |
+---------+---------+------+-----+---------+-------+
| S_Id    | char(3) | NO   | PRI | NULL    |       |
| Credits | int     | YES  |     | NULL    |       |
+---------+---------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> ALTER TABLE Subject ADD COLUMN S_Name VARCHAR(30);
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> ALTER TABLE Subject ADD Course_code S_Name VARCHAR(30);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'S_Name VARCHAR(30)' at line 1
mysql> ALTER TABLE Subject ADD Course_code CHAR(3);
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> ALTER TABLE Subject ADD FOREIGN KEY (Course_code) REFERENCES Course(Course_code);
Query OK, 0 rows affected (0.09 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> DESC SUBJECT;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| S_Id        | char(3)     | NO   | PRI | NULL    |       |
| Credits     | int         | YES  |     | NULL    |       |
| S_Name      | varchar(30) | YES  |     | NULL    |       |
| Course_code | char(3)     | YES  | MUL | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql>

mysql> DESC marks;
+----------------+-------------------------------------------------------------------------------------------------+------+-----+---------+----------------+
| Field          | Type                                                                                            | Null | Key | Default | Extra          |
+----------------+-------------------------------------------------------------------------------------------------+------+-----+---------+----------------+
| MarkID         | int                                                                                             | NO   | PRI | NULL    | auto_increment |
| StudentID      | varchar(10)                                                                                     | YES  | MUL | NULL    |                |
| CourseCode     | varchar(10)                                                                                     | YES  |     | NULL    |                |
| AssessmentType | enum('Quiz','Assessment','Midterm_Practical','Midterm_Theory','Final_Practical','Final_Theory') | YES  |     | NULL    |                |
| MarksObtained  | decimal(5,2)                                                                                    | YES  |     | NULL    |                |
| MaxMarks       | int                                                                                             | YES  |     | 100     |                |
+----------------+-------------------------------------------------------------------------------------------------+------+-----+---------+----------------+
6 rows in set (0.00 sec)

mysql> ALTER TABLE marks DROP COLUMN CourseCode;
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> ALTER TABLE marks ADD COLUMN Sub_ID char(3);
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> ALTER TABLE marks ADD FOREIGN KEY (Sub_ID) REFERENCES Subject(S_ID);
Query OK, 0 rows affected (0.09 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> DESC marks;
+----------------+-------------------------------------------------------------------------------------------------+------+-----+---------+----------------+
| Field          | Type                                                                                            | Null | Key | Default | Extra          |
+----------------+-------------------------------------------------------------------------------------------------+------+-----+---------+----------------+
| MarkID         | int                                                                                             | NO   | PRI | NULL    | auto_increment |
| StudentID      | varchar(10)                                                                                     | YES  | MUL | NULL    |                |
| AssessmentType | enum('Quiz','Assessment','Midterm_Practical','Midterm_Theory','Final_Practical','Final_Theory') | YES  |     | NULL    |                |
| MarksObtained  | decimal(5,2)                                                                                    | YES  |     | NULL    |                |
| MaxMarks       | int                                                                                             | YES  |     | 100     |                |
| Sub_ID         | char(3)                                                                                         | YES  | MUL | NULL    |                |
+----------------+-------------------------------------------------------------------------------------------------+------+-----+---------+----------------+
6 rows in set (0.00 sec)

mysql>