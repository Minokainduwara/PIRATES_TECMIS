mysql> DESC user;
+---------------+--------------+------+-----+---------+-------+
| Field         | Type         | Null | Key | Default | Extra |
+---------------+--------------+------+-----+---------+-------+
| User_ID       | varchar(6)   | NO   | PRI | NULL    |       |
| User_password | varchar(30)  | NO   |     | NULL    |       |
| First_Name    | varchar(50)  | YES  |     | NULL    |       |
| Last_Name     | varchar(50)  | YES  |     | NULL    |       |
| User_Role     | varchar(20)  | YES  |     | NULL    |       |
| Address       | varchar(100) | YES  |     | NULL    |       |
| Email         | varchar(100) | YES  |     | NULL    |       |
| Date_Of_Birth | date         | YES  |     | NULL    |       |
+---------------+--------------+------+-----+---------+-------+
8 rows in set (0.01 sec)


mysql> DESC admin;
+----------+------------+------+-----+---------+-------+
| Field    | Type       | Null | Key | Default | Extra |
+----------+------------+------+-----+---------+-------+
| Admin_ID | char(3)    | NO   | PRI | NULL    |       |
| User_ID  | varchar(6) | YES  | MUL | NULL    |       |
+----------+------------+------+-----+---------+-------+
2 rows in set (0.01 sec)

mysql> DESC admin_contact;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| Admin_ID | char(3)     | YES  | MUL | NULL    |       |
| Phone_No | varchar(11) | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
2 rows in set (0.01 sec)

mysql> DESC attendance;
+--------+---------+------+-----+---------+-------+
| Field  | Type    | Null | Key | Default | Extra |
+--------+---------+------+-----+---------+-------+
| Reg_No | char(6) | YES  | MUL | NULL    |       |
| TID    | char(3) | YES  | MUL | NULL    |       |
| Count  | int     | YES  |     | NULL    |       |
+--------+---------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> DESC course;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| Course_Code | char(3)      | NO   | PRI | NULL    |       |
| name        | varchar(30)  | YES  |     | NULL    |       |
| type        | varchar(20)  | YES  |     | NULL    |       |
| Reg_No      | char(6)      | YES  | MUL | NULL    |       |
| SGPA        | decimal(4,2) | YES  |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
5 rows in set (0.01 sec)

mysql> DESC course_subject;
+-------------+---------+------+-----+---------+-------+
| Field       | Type    | Null | Key | Default | Extra |
+-------------+---------+------+-----+---------+-------+
| S_Id        | char(3) | YES  | MUL | NULL    |       |
| Course_Code | char(7) | YES  | MUL | NULL    |       |
+-------------+---------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> DESC dean;
+---------+------------+------+-----+---------+-------+
| Field   | Type       | Null | Key | Default | Extra |
+---------+------------+------+-----+---------+-------+
| Dean_ID | char(3)    | NO   | PRI | NULL    |       |
| User_ID | varchar(6) | YES  | MUL | NULL    |       |
+---------+------------+------+-----+---------+-------+
2 rows in set (0.01 sec)

mysql> DESC department;
+---------------+----------+------+-----+---------+-------+
| Field         | Type     | Null | Key | Default | Extra |
+---------------+----------+------+-----+---------+-------+
| Department_Id | char(5)  | NO   | PRI | NULL    |       |
| Dep_Name      | char(30) | YES  |     | NULL    |       |
| Dean_ID       | char(5)  | YES  | MUL | NULL    |       |
+---------------+----------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> DESC department_admin;
+---------------+---------+------+-----+---------+-------+
| Field         | Type    | Null | Key | Default | Extra |
+---------------+---------+------+-----+---------+-------+
| Admin_Id      | char(3) | YES  | MUL | NULL    |       |
| Department_Id | char(3) | YES  | MUL | NULL    |       |
+---------------+---------+------+-----+---------+-------+
2 rows in set (0.01 sec)

mysql> DESC exam;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| Exam_Id | char(3)     | NO   | PRI | NULL    |       |
| Status  | varchar(10) | YES  |     | NULL    |       |
| S_Id    | char(3)     | YES  | MUL | NULL    |       |
+---------+-------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

mysql> DESC lecturer;
+---------+------------+------+-----+---------+-------+
| Field   | Type       | Null | Key | Default | Extra |
+---------+------------+------+-----+---------+-------+
| LID     | char(3)    | NO   | PRI | NULL    |       |
| User_ID | varchar(6) | YES  | MUL | NULL    |       |
+---------+------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> DESC lecturer_contact;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| LID      | char(3)     | YES  | MUL | NULL    |       |
| Phone_No | varchar(11) | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
2 rows in set (0.01 sec)

mysql> DESC lecturer_course;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| LID           | char(3)     | YES  | MUL | NULL    |       |
| Course_Code   | char(3)     | YES  | MUL | NULL    |       |
| Lec_Hours     | int         | YES  |     | NULL    |       |
| Lec_In_Charge | varchar(30) | YES  |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> DESC mark;
+----------+---------+------+-----+---------+-------+
| Field    | Type    | Null | Key | Default | Extra |
+----------+---------+------+-----+---------+-------+
| Mark_Id  | char(3) | NO   | PRI | NULL    |       |
| Ca_Exam  | int     | YES  |     | NULL    |       |
| Mid_Exam | int     | YES  |     | NULL    |       |
| Exam_ID  | char(3) | YES  |     | NULL    |       |
+----------+---------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> DESC medical;
+---------------+---------+------+-----+---------+-------+
| Field         | Type    | Null | Key | Default | Extra |
+---------------+---------+------+-----+---------+-------+
| Medical_Id    | char(3) | NO   | PRI | NULL    |       |
| Department_Id | char(3) | YES  | MUL | NULL    |       |
| Reg_No        | char(6) | YES  | MUL | NULL    |       |
+---------------+---------+------+-----+---------+-------+
3 rows in set (0.01 sec)

mysql> DESC student;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| Reg_No  | char(6)     | NO   | PRI | NULL    |       |
| State   | varchar(20) | YES  |     | NULL    |       |
| User_ID | varchar(6)  | YES  | MUL | NULL    |       |
+---------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> DESC student_exam;
+---------+---------+------+-----+---------+-------+
| Field   | Type    | Null | Key | Default | Extra |
+---------+---------+------+-----+---------+-------+
| Exam_ID | char(3) | YES  | MUL | NULL    |       |
| Reg_No  | char(6) | YES  | MUL | NULL    |       |
+---------+---------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> DESC subject;
+---------+--------------+------+-----+---------+-------+
| Field   | Type         | Null | Key | Default | Extra |
+---------+--------------+------+-----+---------+-------+
| S_Id    | char(3)      | NO   | PRI | NULL    |       |
| CGPA    | decimal(3,2) | YES  |     | NULL    |       |
| Credits | int          | YES  |     | NULL    |       |
+---------+--------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

mysql> DESC technical_officer;
+---------+------------+------+-----+---------+-------+
| Field   | Type       | Null | Key | Default | Extra |
+---------+------------+------+-----+---------+-------+
| TID     | char(3)    | NO   | PRI | NULL    |       |
| User_ID | varchar(6) | YES  | MUL | NULL    |       |
+---------+------------+------+-----+---------+-------+
2 rows in set (0.01 sec)




/* Updated Table Structure */

mysql> DESC student;
+---------+------------+------+-----+---------+-------+
| Field   | Type       | Null | Key | Default | Extra |
+---------+------------+------+-----+---------+-------+
| Reg_No  | char(6)    | NO   | PRI | NULL    |       |
| User_ID | varchar(6) | YES  | MUL | NULL    |       |
+---------+------------+------+-----+---------+-------+



mysql> DESC ATTENDANCE;
+----------------+------------------------------------+------+-----+---------+----------------+
| Field          | Type                               | Null | Key | Default | Extra          |
+----------------+------------------------------------+------+-----+---------+----------------+
| AttendanceID   | int                                | NO   | PRI | NULL    | auto_increment |
| StudentID      | varchar(10)                        | YES  |     | NULL    |                |
| SessionType    | enum('Theory','Practical')         | YES  |     | NULL    |                |
| Week           | int                                | YES  |     | NULL    |                |
| Date           | date                               | YES  |     | NULL    |                |
| Status         | enum('Present','Absent','Medical') | YES  |     | NULL    |                |
| TimeAllocation | float                              | YES  |     | NULL    |                |
| Sub_ID         | varchar(10)                        | YES  | MUL | NULL    |                |
+----------------+------------------------------------+------+-----+---------+----------------+
8 rows in set (0.00 sec)

mysql> DESC marks;
+----------------+-------------------------------------------------------------------------------------------------+------+-----+---------+----------------+
| Field          | Type                                                                                            | Null | Key | Default | Extra          |
+----------------+-------------------------------------------------------------------------------------------------+------+-----+---------+----------------+
| MarkID         | int                                                                                             | NO   | PRI | NULL    | auto_increment |
| StudentID      | varchar(10)                                                                                     | YES  | MUL | NULL    |                |
| AssessmentType | enum('Quiz','Assessment','Midterm_Practical','Midterm_Theory','Final_Practical','Final_Theory') | YES  |     | NULL    |                |
| MarksObtained  | decimal(5,2)                                                                                    | YES  |     | NULL    |                |
| MaxMarks       | int                                                                                             | YES  |     | 100     |                |
| Sub_ID         | varchar(10)                                                                                     | YES  | MUL | NULL    |                |
+----------------+-------------------------------------------------------------------------------------------------+------+-----+---------+----------------+
6 rows in set (0.00 sec)

mysql> desc studentstatus;
+-----------+-------------------------------------+------+-----+---------+-------+
| Field     | Type                                | Null | Key | Default | Extra |
+-----------+-------------------------------------+------+-----+---------+-------+
| StudentID | varchar(10)                         | NO   | PRI | NULL    |       |
| Status    | enum('Proper','Repeat','Suspended') | YES  |     | NULL    |       |
+-----------+-------------------------------------+------+-----+---------+-------+
2 rows in set (0.00 sec)


mysql> desc course;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| Course_Code | char(3)     | NO   | PRI | NULL    |       |
| name        | varchar(30) | YES  |     | NULL    |       |
| type        | varchar(20) | YES  |     | NULL    |       |
| Reg_No      | char(6)     | YES  | MUL | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> DROP TABLE COURSE_SUBJECT;
Query OK, 0 rows affected (0.05 sec)


mysql> ALTER TABLE marks
    -> MODIFY COLUMN Sub_ID VARCHAR(10);
Query OK, 0 rows affected (0.10 sec)
Records: 0  Duplicates: 0  Warnings: 0