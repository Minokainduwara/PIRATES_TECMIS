--------------------------------------------
1. STUDENTS in the Faculty_of_Technology
--------------------------------------------

mysql> SELECT * FROM USER WHERE USER_ROLE = 'Student';
+---------+---------------+------------+----------------+-----------+------------------------------------+------------------------------+---------------+
| User_ID | User_password | First_Name | Last_Name      | User_Role | Address                            | Email                        | Date_Of_Birth |
+---------+---------------+------------+----------------+-----------+------------------------------------+------------------------------+---------------+
| U001    | password      | Minoka     | Wickramasinghe | student   | A 94/1 Dewalegama, Kegalle         | induwaraminoka@fot.ruh.ac.lk | 2002-06-16    |
| U002    | password      | Dilhara    | Samaranayaka   | student   | Hakmana Road, Matara               | dilhara123@fot.ruh.ac.lk     | 2002-02-20    |
| U003    | password      | Dhyan      | Gunaratne      | student   | 789 Anuradhapura St, Anuradhapura  | kamal@fot.ruh.ac.lk          | 2002-03-25    |
| U004    | password      | Malindu    | Rajapaksa      | student   | 101 Negombo Rd, Negombo            | dilani@fot.ruh.ac.lk         | 2002-04-30    |
| U005    | password      | Ravi       | Wickramasinghe | student   | 202 Matara Rd, Matara              | ravi@fot.ruh.ac.lk           | 2003-05-05    |
| U006    | password      | Saman      | Herath         | student   | 303 Battaramulla Rd, Battaramulla  | saman@fot.ruh.ac.lk          | 2000-06-10    |
| U007    | password      | Tanya      | Jayasuriya     | student   | 404 Jaffna Rd, Jaffna              | tanya@fot.ruh.ac.lk          | 2001-07-15    |
| U008    | password      | Kavi       | Samarasinghe   | student   | 505 Galle Rd, Galle                | kavi@fot.ruh.ac.lk           | 2002-08-20    |
| U009    | password      | Chandimal  | Ariyadasa      | student   | 606 Ratnapura Rd, Ratnapura        | chandi@fot.ruh.ac.lk         | 2003-09-25    |
| U010    | password      | Latha      | Kumarasinghe   | student   | 707 Kurunegala Rd, Kurunegala      | latha@fot.ruh.ac.lk          | 2000-10-30    |
| U011    | password      | Rohan      | Fernando       | student   | 808 Colombo Rd, Colombo            | rohan@fot.ruh.ac.lk          | 2001-11-05    |
| U012    | password      | Priya      | Banda          | student   | 909 Moratuwa Rd, Moratuwa          | priya@fot.ruh.ac.lk          | 2002-12-15    |
| U013    | password      | Shanthi    | Dissanayake    | student   | 1010 Nuwara Eliya Rd, Nuwara Eliya | shanthi@fot.ruh.ac.lk        | 2000-01-20    |
| U014    | password      | Kumar      | Mendis         | student   | 1111 Kandy Rd, Kandy               | kumar@fot.ruh.ac.lk          | 2001-02-25    |
| U015    | password      | Dinesh     | Pathirana      | student   | 1212 Galle Rd, Galle               | dinesh@fot.ruh.ac.lk         | 2002-03-30    |
| U025    | password      | Chandra    | Perera         | student   | 2222 Moratuwa Rd, Moratuwa         | chandra@fot.ruh.ac.lk        | 2001-01-20    |
| U026    | password      | Nadisha    | De Silva       | student   | 2323 Battaramulla Rd, Battaramulla | nadisha@fot.ruh.ac.lk        | 2002-02-25    |
| U027    | password      | Suresh     | Dharmadasa     | student   | 2424 Matara Rd, Matara             | suresh@fot.ruh.ac.lk         | 2003-03-30    |
+---------+---------------+------------+----------------+-----------+------------------------------------+------------------------------+---------------+
18 rows in set (0.00 sec)


mysql> SELECT * FROM STUDENT;
+--------+---------+
| Reg_No | User_ID |
+--------+---------+
| TG1350 | U001    |
| TG1351 | U002    |
| TG1352 | U003    |
| TG1353 | U004    |
| TG1354 | U005    |
| TG1355 | U006    |
| TG1356 | U007    |
| TG1357 | U008    |
| TG1358 | U009    |
| TG1359 | U010    |
| TG1100 | U011    |
| TG1101 | U012    |
| TG1102 | U013    |
| TG1103 | U014    |
| TG1104 | U015    |
| TG1105 | U025    |
| TG1106 | U026    |
| TG1107 | U027    |
+--------+---------+
18 rows in set (0.00 sec)




\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
                    ATTENDANCE
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--------------------------------------------------------------------------------
1.View Attendance Summary for the Whole Batch by Course Code
--------------------------------------------------------------------------------
////////////
Code
///////////

CREATE VIEW BatchAttendanceSummary AS
SELECT 
    Sub_ID AS CourseCode,
    StudentID AS RegistrationNo,
    COUNT(CASE WHEN Status = 'Present' THEN 1 END) / COUNT(*) * 100 AS AttendancePercentage,
    CASE 
        WHEN COUNT(CASE WHEN Status = 'Present' THEN 1 END) / COUNT(*) * 100 >= 80 THEN 'Eligible'
        ELSE 'Not Eligible'
    END AS Eligibility
FROM 
    ATTENDANCE
GROUP BY 
    CourseCode, RegistrationNo;


---------------------------------------------
SELECT * 
FROM BatchAttendanceSummary
WHERE CourseCode = 'ICT1112';
---------------------------------------------


////////////////
Output
///////////////

mysql> CREATE VIEW BatchAttendanceSummary AS
    -> SELECT
    ->     Sub_ID AS CourseCode,
    ->     StudentID AS RegistrationNo,
    ->     COUNT(CASE WHEN Status = 'Present' THEN 1 END) / COUNT(*) * 100 AS AttendancePercentage,
    ->     CASE
    ->         WHEN COUNT(CASE WHEN Status = 'Present' THEN 1 END) / COUNT(*) * 100 >= 80 THEN 'Eligible'
    ->         ELSE 'Not Eligible'
    ->     END AS Eligibility
    -> FROM
    ->     ATTENDANCE
    -> GROUP BY
    ->     CourseCode, RegistrationNo;
Query OK, 0 rows affected (0.03 sec)


mysql> SELECT *
    -> FROM BatchAttendanceSummary
    -> WHERE CourseCode = 'ICT1112';
+------------+----------------+----------------------+--------------+
| CourseCode | RegistrationNo | AttendancePercentage | Eligibility  |
+------------+----------------+----------------------+--------------+
| ICT1112    | TG1350         |              75.0000 | Not Eligible |
| ICT1112    | TG1351         |              75.0000 | Not Eligible |
| ICT1112    | TG1352         |              72.7273 | Not Eligible |
| ICT1112    | TG1353         |             100.0000 | Eligible     |
| ICT1112    | TG1354         |             100.0000 | Eligible     |
| ICT1112    | TG1355         |             100.0000 | Eligible     |
| ICT1112    | TG1356         |             100.0000 | Eligible     |
| ICT1112    | TG1357         |              81.8182 | Eligible     |
| ICT1112    | TG1358         |              66.6667 | Not Eligible |
| ICT1112    | TG1359         |             100.0000 | Eligible     |
| ICT1112    | TG1100         |              75.0000 | Not Eligible |
| ICT1112    | TG1101         |             100.0000 | Eligible     |
| ICT1112    | TG1102         |               0.0000 | Not Eligible |
| ICT1112    | TG1103         |              66.6667 | Not Eligible |
| ICT1112    | TG1104         |              83.3333 | Eligible     |
| ICT1112    | TG1105         |              75.0000 | Not Eligible |
| ICT1112    | TG1106         |              58.3333 | Not Eligible |
| ICT1112    | TG1107         |              91.6667 | Eligible     |
+------------+----------------+----------------------+--------------+





---------------------------------------------------------------------------------
2.View Attendance Summary for All Subjects with Percentage and Eligibility
---------------------------------------------------------------------------------

////////////////////////
Code
////////////////////////

CREATE VIEW AllSubjectsAttendanceSummary AS
SELECT 
    StudentID AS RegistrationNo,
    Sub_ID AS CourseCode,
    COUNT(CASE WHEN Status = 'Present' THEN 1 END) / COUNT(*) * 100 AS AttendancePercentage,
    CASE 
        WHEN COUNT(CASE WHEN Status = 'Present' THEN 1 END) / COUNT(*) * 100 >= 80 THEN 'Eligible'
        ELSE 'Not Eligible'
    END AS Eligibility
FROM 
    ATTENDANCE
GROUP BY 
    RegistrationNo, CourseCode;



--------------------------------------------------------------------------
SELECT * FROM AllSubjectsAttendanceSummary;
--------------------------------------------------------------------------

\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
Output
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

mysql> CREATE VIEW AllSubjectsAttendanceSummary AS
    -> SELECT
    ->     StudentID AS RegistrationNo,
    ->     Sub_ID AS CourseCode,
    ->     COUNT(CASE WHEN Status = 'Present' THEN 1 END) / COUNT(*) * 100 AS AttendancePercentage,
    ->     CASE
    ->         WHEN COUNT(CASE WHEN Status = 'Present' THEN 1 END) / COUNT(*) * 100 >= 80 THEN 'Eligible'
    ->         ELSE 'Not Eligible'
    ->     END AS Eligibility
    -> FROM
    ->     ATTENDANCE
    -> GROUP BY
    ->     RegistrationNo, CourseCode;
Query OK, 0 rows affected (0.01 sec)

mysql> SELECT * FROM AllSubjectsAttendanceSummary;
+----------------+------------+----------------------+--------------+
| RegistrationNo | CourseCode | AttendancePercentage | Eligibility  |
+----------------+------------+----------------------+--------------+
| TG1350         | ICT1112    |              75.0000 | Not Eligible |
| TG1350         | TMS1113    |              75.0000 | Not Eligible |
| TG1350         | ENG1114    |             100.0000 | Eligible     |
| TG1350         | ICT1122    |              83.3333 | Eligible     |
| TG1350         | ICT1132    |              75.0000 | Not Eligible |
| TG1350         | ICT1142    |              63.6364 | Not Eligible |
| TG1350         | ICT1153    |              70.0000 | Not Eligible |
| TG1350         | ICT1161    |              83.3333 | Eligible     |
| TG1351         | ICT1112    |              75.0000 | Not Eligible |
| TG1351         | TMS1113    |              75.0000 | Not Eligible |
| TG1351         | ENG1114    |              50.0000 | Not Eligible |
| TG1351         | ICT1122    |              83.3333 | Eligible     |
| TG1351         | ICT1132    |              75.0000 | Not Eligible |
| TG1351         | ICT1142    |              81.8182 | Eligible     |
| TG1351         | ICT1153    |              70.0000 | Not Eligible |
| TG1351         | ICT1161    |              83.3333 | Eligible     |
| TG1352         | ICT1112    |              72.7273 | Not Eligible |
| TG1352         | TMS1113    |             100.0000 | Eligible     |
| TG1352         | ENG1114    |             100.0000 | Eligible     |
| TG1352         | ICT1122    |              66.6667 | Not Eligible |
| TG1352         | ICT1132    |              83.3333 | Eligible     |
| TG1352         | ICT1142    |              91.6667 | Eligible     |
| TG1352         | ICT1153    |              63.6364 | Not Eligible |
| TG1352         | ICT1161    |              72.7273 | Not Eligible |
| TG1353         | ICT1112    |             100.0000 | Eligible     |
| TG1353         | TMS1113    |             100.0000 | Eligible     |
| TG1353         | ENG1114    |             100.0000 | Eligible     |
| TG1353         | ICT1122    |             100.0000 | Eligible     |
| TG1353         | ICT1132    |             100.0000 | Eligible     |
| TG1353         | ICT1142    |             100.0000 | Eligible     |
| TG1353         | ICT1153    |             100.0000 | Eligible     |
| TG1353         | ICT1161    |             100.0000 | Eligible     |
| TG1354         | ICT1112    |             100.0000 | Eligible     |
| TG1354         | TMS1113    |             100.0000 | Eligible     |
| TG1354         | ENG1114    |             100.0000 | Eligible     |
| TG1354         | ICT1122    |             100.0000 | Eligible     |
| TG1354         | ICT1132    |             100.0000 | Eligible     |
| TG1354         | ICT1142    |             100.0000 | Eligible     |
| TG1354         | ICT1153    |             100.0000 | Eligible     |
| TG1354         | ICT1161    |             100.0000 | Eligible     |
| TG1355         | ICT1112    |             100.0000 | Eligible     |
| TG1355         | TMS1113    |             100.0000 | Eligible     |
| TG1355         | ENG1114    |             100.0000 | Eligible     |
| TG1355         | ICT1122    |             100.0000 | Eligible     |
| TG1355         | ICT1132    |             100.0000 | Eligible     |
| TG1355         | ICT1142    |             100.0000 | Eligible     |
| TG1355         | ICT1153    |             100.0000 | Eligible     |
| TG1355         | ICT1161    |             100.0000 | Eligible     |
| TG1356         | ICT1112    |             100.0000 | Eligible     |
| TG1356         | TMS1113    |             100.0000 | Eligible     |
| TG1356         | ENG1114    |             100.0000 | Eligible     |
| TG1356         | ICT1122    |             100.0000 | Eligible     |
| TG1356         | ICT1132    |             100.0000 | Eligible     |
| TG1356         | ICT1142    |             100.0000 | Eligible     |
| TG1356         | ICT1153    |             100.0000 | Eligible     |
| TG1356         | ICT1161    |             100.0000 | Eligible     |
| TG1357         | ICT1112    |              81.8182 | Eligible     |
| TG1357         | TMS1113    |              50.0000 | Not Eligible |
| TG1357         | ENG1114    |             100.0000 | Eligible     |
| TG1357         | ICT1122    |              66.6667 | Not Eligible |
| TG1357         | ICT1132    |              58.3333 | Not Eligible |
| TG1357         | ICT1142    |              91.6667 | Eligible     |
| TG1357         | ICT1153    |              81.8182 | Eligible     |
| TG1357         | ICT1161    |              90.9091 | Eligible     |
| TG1358         | ICT1112    |              66.6667 | Not Eligible |
| TG1358         | TMS1113    |              50.0000 | Not Eligible |
| TG1358         | ENG1114    |             100.0000 | Eligible     |
| TG1358         | ICT1122    |              75.0000 | Not Eligible |
| TG1358         | ICT1132    |              83.3333 | Eligible     |
| TG1358         | ICT1142    |              54.5455 | Not Eligible |
| TG1358         | ICT1153    |              90.9091 | Eligible     |
| TG1358         | ICT1161    |              72.7273 | Not Eligible |
| TG1359         | ICT1112    |             100.0000 | Eligible     |
| TG1359         | TMS1113    |             100.0000 | Eligible     |
| TG1359         | ENG1114    |             100.0000 | Eligible     |
| TG1359         | ICT1122    |             100.0000 | Eligible     |
| TG1359         | ICT1132    |             100.0000 | Eligible     |
| TG1359         | ICT1142    |              90.9091 | Eligible     |
| TG1359         | ICT1153    |             100.0000 | Eligible     |
| TG1359         | ICT1161    |              90.9091 | Eligible     |
| TG1100         | ICT1112    |              75.0000 | Not Eligible |
| TG1100         | TMS1113    |              75.0000 | Not Eligible |
| TG1100         | ENG1114    |              50.0000 | Not Eligible |
| TG1100         | ICT1122    |              91.6667 | Eligible     |
| TG1100         | ICT1132    |              66.6667 | Not Eligible |
| TG1100         | ICT1142    |              90.9091 | Eligible     |
| TG1100         | ICT1153    |              72.7273 | Not Eligible |
| TG1100         | ICT1161    |             100.0000 | Eligible     |
| TG1101         | ICT1112    |             100.0000 | Eligible     |
| TG1101         | TMS1113    |              50.0000 | Not Eligible |
| TG1101         | ENG1114    |             100.0000 | Eligible     |
| TG1101         | ICT1122    |              91.6667 | Eligible     |
| TG1101         | ICT1132    |              66.6667 | Not Eligible |
| TG1101         | ICT1142    |              72.7273 | Not Eligible |
| TG1101         | ICT1153    |              72.7273 | Not Eligible |
| TG1101         | ICT1161    |              81.8182 | Eligible     |
| TG1102         | ICT1112    |               0.0000 | Not Eligible |
| TG1102         | TMS1113    |              25.0000 | Not Eligible |
| TG1102         | ENG1114    |               0.0000 | Not Eligible |
| TG1102         | ICT1122    |              33.3333 | Not Eligible |
| TG1102         | ICT1132    |               0.0000 | Not Eligible |
| TG1102         | ICT1142    |               9.0909 | Not Eligible |
| TG1102         | ICT1153    |              18.1818 | Not Eligible |
| TG1102         | ICT1161    |               0.0000 | Not Eligible |
| TG1103         | ICT1112    |              66.6667 | Not Eligible |
| TG1103         | TMS1113    |              75.0000 | Not Eligible |
| TG1103         | ENG1114    |             100.0000 | Eligible     |
| TG1103         | ICT1122    |              75.0000 | Not Eligible |
| TG1103         | ICT1132    |              58.3333 | Not Eligible |
| TG1103         | ICT1142    |              45.4545 | Not Eligible |
| TG1103         | ICT1153    |              54.5455 | Not Eligible |
| TG1103         | ICT1161    |              72.7273 | Not Eligible |
| TG1104         | ICT1112    |              83.3333 | Eligible     |
| TG1104         | TMS1113    |             100.0000 | Eligible     |
| TG1104         | ENG1114    |              50.0000 | Not Eligible |
| TG1104         | ICT1122    |              83.3333 | Eligible     |
| TG1104         | ICT1132    |              83.3333 | Eligible     |
| TG1104         | ICT1142    |              81.8182 | Eligible     |
| TG1104         | ICT1153    |              72.7273 | Not Eligible |
| TG1104         | ICT1161    |              81.8182 | Eligible     |
| TG1105         | ICT1112    |              75.0000 | Not Eligible |
| TG1105         | TMS1113    |              75.0000 | Not Eligible |
| TG1105         | ENG1114    |             100.0000 | Eligible     |
| TG1105         | ICT1122    |              91.6667 | Eligible     |
| TG1105         | ICT1132    |              83.3333 | Eligible     |
| TG1105         | ICT1142    |              72.7273 | Not Eligible |
| TG1105         | ICT1153    |              81.8182 | Eligible     |
| TG1105         | ICT1161    |             100.0000 | Eligible     |
| TG1106         | ICT1112    |              58.3333 | Not Eligible |
| TG1106         | TMS1113    |               0.0000 | Not Eligible |
| TG1106         | ENG1114    |               0.0000 | Not Eligible |
| TG1106         | ICT1122    |              33.3333 | Not Eligible |
| TG1106         | ICT1132    |              33.3333 | Not Eligible |
| TG1106         | ICT1142    |              36.3636 | Not Eligible |
| TG1106         | ICT1153    |              45.4545 | Not Eligible |
| TG1106         | ICT1161    |              18.1818 | Not Eligible |
| TG1107         | ICT1112    |              91.6667 | Eligible     |
| TG1107         | TMS1113    |             100.0000 | Eligible     |
| TG1107         | ENG1114    |             100.0000 | Eligible     |
| TG1107         | ICT1122    |              91.6667 | Eligible     |
| TG1107         | ICT1132    |             100.0000 | Eligible     |
| TG1107         | ICT1142    |              72.7273 | Not Eligible |
| TG1107         | ICT1153    |              90.9091 | Eligible     |
| TG1107         | ICT1161    |             100.0000 | Eligible     |
+----------------+------------+----------------------+--------------+
144 rows in set (0.01 sec)





----------------------------------------------------------------------------------
3. Individual Attendance Summary by Registration Number
---------------------------------------------------------------------------------

/////////////////////////
CODE
////////////////////////


CREATE VIEW IndividualAttendanceSummary AS
SELECT 
    StudentID AS RegistrationNo,
    Sub_ID AS CourseCode,
    COUNT(CASE WHEN Status = 'Present' THEN 1 END) / COUNT(*) * 100 AS AttendancePercentage,
    CASE 
        WHEN COUNT(CASE WHEN Status = 'Present' THEN 1 END) / COUNT(*) * 100 >= 80 THEN 'Eligible'
        ELSE 'Not Eligible'
    END AS Eligibility
FROM 
    ATTENDANCE
GROUP BY 
    RegistrationNo, CourseCode;


------------------------------------------------------------------
SELECT * 
FROM IndividualAttendanceSummary
WHERE RegistrationNo = 'TG1350';
------------------------------------------------------------------



//////////////////////////////
Output
/////////////////////////////

mysql> CREATE VIEW IndividualAttendanceSummary AS
    -> SELECT
    ->     StudentID AS RegistrationNo,
    ->     Sub_ID AS CourseCode,
    ->     COUNT(CASE WHEN Status = 'Present' THEN 1 END) / COUNT(*) * 100 AS AttendancePercentage,
    ->     CASE
    ->         WHEN COUNT(CASE WHEN Status = 'Present' THEN 1 END) / COUNT(*) * 100 >= 80 THEN 'Eligible'
    ->         ELSE 'Not Eligible'
    ->     END AS Eligibility
    -> FROM
    ->     ATTENDANCE
    -> GROUP BY
    ->     RegistrationNo, CourseCode;
Query OK, 0 rows affected (0.01 sec)

mysql> SELECT *
    -> FROM IndividualAttendanceSummary
    -> WHERE RegistrationNo = 'TG1350';
+----------------+------------+----------------------+--------------+
| RegistrationNo | CourseCode | AttendancePercentage | Eligibility  |
+----------------+------------+----------------------+--------------+
| TG1350         | ENG1114    |             100.0000 | Eligible     |
| TG1350         | ICT1112    |              75.0000 | Not Eligible |
| TG1350         | ICT1122    |              83.3333 | Eligible     |
| TG1350         | ICT1132    |              75.0000 | Not Eligible |
| TG1350         | ICT1142    |              63.6364 | Not Eligible |
| TG1350         | ICT1153    |              70.0000 | Not Eligible |
| TG1350         | ICT1161    |              83.3333 | Eligible     |
| TG1350         | TMS1113    |              75.0000 | Not Eligible |
+----------------+------------+----------------------+--------------+
8 rows in set (0.01 sec)




----------------------------------------------------------------------------------------------
4. Individual Attendance Summary by Registration Number and Course Code
----------------------------------------------------------------------------------------------

/////////////////////////
Code
/////////////////////////

CREATE VIEW IndividualCourseAttendance AS
SELECT 
    StudentID AS RegistrationNo,
    Sub_ID AS CourseCode,
    Week,
    Date,
    Status,
    TimeAllocation
FROM 
    ATTENDANCE;


--------------------------------------------------------------------------
SELECT * 
FROM IndividualCourseAttendance
WHERE RegistrationNo = 'TG1350' AND CourseCode = 'ICT1112';
--------------------------------------------------------------------------

////////////////////////////////////////////////
Output
///////////////////////////////////////////////

mysql> CREATE VIEW IndividualCourseAttendance AS
    -> SELECT
    ->     StudentID AS RegistrationNo,
    ->     Sub_ID AS CourseCode,
    ->     Week,
    ->     Date,
    ->     Status,
    ->     TimeAllocation
    -> FROM
    ->     ATTENDANCE;
Query OK, 0 rows affected (0.01 sec)

mysql> SELECT *
    -> FROM IndividualCourseAttendance
    -> WHERE RegistrationNo = 'TG1350' AND CourseCode = 'ICT1112';
+----------------+------------+------+------------+---------+----------------+
| RegistrationNo | CourseCode | Week | Date       | Status  | TimeAllocation |
+----------------+------------+------+------------+---------+----------------+
| TG1350         | ICT1112    |    1 | 2024-09-01 | Present |            1.5 |
| TG1350         | ICT1112    |    1 | 2024-09-02 | Present |            1.5 |
| TG1350         | ICT1112    |    3 | 2024-09-19 | Present |            1.5 |
| TG1350         | ICT1112    |    6 | 2024-10-08 | Present |            1.5 |
| TG1350         | ICT1112    |    6 | 2024-10-09 | Absent  |            1.5 |
| TG1350         | ICT1112    |    8 | 2024-10-22 | Medical |            1.5 |
| TG1350         | ICT1112    |    9 | 2024-10-30 | Absent  |            1.5 |
| TG1350         | ICT1112    |   10 | 2024-11-07 | Present |            1.5 |
| TG1350         | ICT1112    |   12 | 2024-11-17 | Present |            1.5 |
| TG1350         | ICT1112    |   13 | 2024-11-25 | Present |            1.5 |
| TG1350         | ICT1112    |   14 | 2024-12-03 | Present |            1.5 |
| TG1350         | ICT1112    |   15 | 2024-12-11 | Present |            1.5 |
+----------------+------------+------+------------+---------+----------------+
12 rows in set (0.01 sec)





-----------------------------------------------------------------------------
5. Filtered Views for Theory, Practical, and Combined Sessions
----------------------------------------------------------------------------

///////////////////////////
Code
//////////////////////////


---------------------
Theory
---------------------

CREATE VIEW TheoryAttendance AS
SELECT 
    StudentID AS RegistrationNo,
    Sub_ID AS CourseCode,
    COUNT(CASE WHEN Status = 'Present' AND SessionType = 'Theory' THEN 1 END) / COUNT(CASE WHEN SessionType = 'Theory' THEN 1 END) * 100 AS TheoryAttendancePercentage
FROM 
    ATTENDANCE
GROUP BY 
    RegistrationNo, CourseCode;

---------------------------
Practical
---------------------------

CREATE VIEW PracticalAttendance AS
SELECT 
    StudentID AS RegistrationNo,
    Sub_ID AS CourseCode,
    COUNT(CASE WHEN Status = 'Present' AND SessionType = 'Practical' THEN 1 END) / COUNT(CASE WHEN SessionType = 'Practical' THEN 1 END) * 100 AS PracticalAttendancePercentage
FROM 
    ATTENDANCE
GROUP BY 
    RegistrationNo, CourseCode;



--------------------------------
Combined Theory and Practical
-----------------------------

CREATE VIEW CombinedAttendance AS
SELECT 
    StudentID AS RegistrationNo,
    Sub_ID AS CourseCode,
    COUNT(CASE WHEN Status = 'Present' THEN 1 END) / COUNT(*) * 100 AS CombinedAttendancePercentage
FROM 
    ATTENDANCE
GROUP BY 
    RegistrationNo, CourseCode;


--------------------------------------------------------
SELECT * 
FROM TheoryAttendance
WHERE CourseCode = 'ICT1112';




SELECT * 
FROM PracticalAttendance
WHERE RegistrationNo = 'TG1350';



SELECT * 
FROM CombinedAttendance
WHERE RegistrationNo = 'TG1350';

--------------------------------------------------------


/////////////////////////////
Output
/////////////////////////////


mysql> CREATE VIEW TheoryAttendance AS
    -> SELECT
    ->     StudentID AS RegistrationNo,
    ->     Sub_ID AS CourseCode,
    ->     COUNT(CASE WHEN Status = 'Present' AND SessionType = 'Theory' THEN 1 END) / COUNT(CASE WHEN SessionType = 'Theory' THEN 1 END) * 100 AS TheoryAttendancePercentage
    -> FROM
    ->     ATTENDANCE
    -> GROUP BY
    ->     RegistrationNo, CourseCode;
Query OK, 0 rows affected (0.01 sec)

mysql>
mysql> 
Query OK, 0 rows affected (0.00 sec)

mysql> CREATE VIEW PracticalAttendance AS
    -> SELECT
    ->     StudentID AS RegistrationNo,
    ->     Sub_ID AS CourseCode,
    ->     COUNT(CASE WHEN Status = 'Present' AND SessionType = 'Practical' THEN 1 END) / COUNT(CASE WHEN SessionType = 'Practical' THEN 1 END) * 100 AS PracticalAttendancePercentage
    -> FROM
    ->     ATTENDANCE
    -> GROUP BY
    ->     RegistrationNo, CourseCode;
Query OK, 0 rows affected (0.01 sec)

mysql> 
Query OK, 0 rows affected (0.00 sec)

mysql> CREATE VIEW CombinedAttendance AS
    -> SELECT
    ->     StudentID AS RegistrationNo,
    ->     Sub_ID AS CourseCode,
    ->     COUNT(CASE WHEN Status = 'Present' THEN 1 END) / COUNT(*) * 100 AS CombinedAttendancePercentage
    -> FROM
    ->     ATTENDANCE
    -> GROUP BY
    ->     RegistrationNo, CourseCode;
Query OK, 0 rows affected (0.01 sec)

mysql>


mysql> SELECT *
    -> FROM TheoryAttendance
    -> WHERE CourseCode = 'ICT1112';
+----------------+------------+----------------------------+
| RegistrationNo | CourseCode | TheoryAttendancePercentage |
+----------------+------------+----------------------------+
| TG1350         | ICT1112    |                    85.7143 |
| TG1351         | ICT1112    |                   100.0000 |
| TG1352         | ICT1112    |                    85.7143 |
| TG1353         | ICT1112    |                   100.0000 |
| TG1354         | ICT1112    |                   100.0000 |
| TG1355         | ICT1112    |                   100.0000 |
| TG1356         | ICT1112    |                   100.0000 |
| TG1357         | ICT1112    |                    85.7143 |
| TG1358         | ICT1112    |                    57.1429 |
| TG1359         | ICT1112    |                   100.0000 |
| TG1100         | ICT1112    |                    85.7143 |
| TG1101         | ICT1112    |                   100.0000 |
| TG1102         | ICT1112    |                     0.0000 |
| TG1103         | ICT1112    |                    71.4286 |
| TG1104         | ICT1112    |                    71.4286 |
| TG1105         | ICT1112    |                    71.4286 |
| TG1106         | ICT1112    |                    71.4286 |
| TG1107         | ICT1112    |                   100.0000 |
+----------------+------------+----------------------------+
18 rows in set (0.01 sec)

mysql> SELECT *
    -> FROM PracticalAttendance
    -> WHERE RegistrationNo = 'TG1350';
+----------------+------------+-------------------------------+
| RegistrationNo | CourseCode | PracticalAttendancePercentage |
+----------------+------------+-------------------------------+
| TG1350         | ENG1114    |                          NULL |
| TG1350         | ICT1112    |                       60.0000 |
| TG1350         | ICT1122    |                       60.0000 |
| TG1350         | ICT1132    |                       60.0000 |
| TG1350         | ICT1142    |                       75.0000 |
| TG1350         | ICT1153    |                       75.0000 |
| TG1350         | ICT1161    |                       80.0000 |
| TG1350         | TMS1113    |                       50.0000 |
+----------------+------------+-------------------------------+
8 rows in set, 1 warning (0.01 sec)

mysql> SELECT *
    -> FROM CombinedAttendance
    -> WHERE RegistrationNo = 'TG1350';
+----------------+------------+------------------------------+
| RegistrationNo | CourseCode | CombinedAttendancePercentage |
+----------------+------------+------------------------------+
| TG1350         | ENG1114    |                     100.0000 |
| TG1350         | ICT1112    |                      75.0000 |
| TG1350         | ICT1122    |                      83.3333 |
| TG1350         | ICT1132    |                      75.0000 |
| TG1350         | ICT1142    |                      63.6364 |
| TG1350         | ICT1153    |                      70.0000 |
| TG1350         | ICT1161    |                      83.3333 |
| TG1350         | TMS1113    |                      75.0000 |
+----------------+------------+------------------------------+
8 rows in set (0.01 sec)

mysql>




