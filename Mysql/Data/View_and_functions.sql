--------------------------------------------
STUDENTS in the Faculty_of_Technology
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




