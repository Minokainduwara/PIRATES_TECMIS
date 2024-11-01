mysql> INSERT INTO USER
    -> (User_ID, User_password, First_Name, Last_Name, User_Role, Address, Email, Date_Of_Birth)
    -> VALUES
    -> ('U001', 'password', 'Minoka', 'Wickramasinghe', 'student', 'A 94/1 Dewalegama, Kegalle', 'induwaraminoka@fot.ruh.ac.lk', '2002-06-16'),
    -> ('U002', 'password', 'Dilhara', 'Samaranayaka', 'student', 'Hakmana Road, Matara', 'dilhara123@fot.ruh.ac.lk', '2002-02-20'),
    -> ('U003', 'password', 'Dhyan', 'Gunaratne', 'student', '789 Anuradhapura St, Anuradhapura', 'kamal@fot.ruh.ac.lk', '2002-03-25'),
    -> ('U004', 'password', 'Malindu', 'Rajapaksa', 'student', '101 Negombo Rd, Negombo', 'dilani@fot.ruh.ac.lk', '2002-04-30'),
    -> ('U005', 'password', 'Ravi', 'Wickramasinghe', 'student', '202 Matara Rd, Matara', 'ravi@fot.ruh.ac.lk', '2003-05-05'),
    -> ('U006', 'password', 'Saman', 'Herath', 'student', '303 Battaramulla Rd, Battaramulla', 'saman@fot.ruh.ac.lk', '2000-06-10'),
    -> ('U007', 'password', 'Tanya', 'Jayasuriya', 'student', '404 Jaffna Rd, Jaffna', 'tanya@fot.ruh.ac.lk', '2001-07-15'),
    -> ('U008', 'password', 'Kavi', 'Samarasinghe', 'student', '505 Galle Rd, Galle', 'kavi@fot.ruh.ac.lk', '2002-08-20'),
    -> ('U009', 'password', 'Chandimal', 'Ariyadasa', 'student', '606 Ratnapura Rd, Ratnapura', 'chandi@fot.ruh.ac.lk', '2003-09-25'),
    -> ('U010', 'password', 'Latha', 'Kumarasinghe', 'student', '707 Kurunegala Rd, Kurunegala', 'latha@fot.ruh.ac.lk', '2000-10-30'),
    -> ('U011', 'password', 'Rohan', 'Fernando', 'student', '808 Colombo Rd, Colombo', 'rohan@fot.ruh.ac.lk', '2001-11-05'),
    -> ('U012', 'password', 'Priya', 'Banda', 'student', '909 Moratuwa Rd, Moratuwa', 'priya@fot.ruh.ac.lk', '2002-12-15'),
    -> ('U013', 'password', 'Shanthi', 'Dissanayake', 'student', '1010 Nuwara Eliya Rd, Nuwara Eliya', 'shanthi@fot.ruh.ac.lk', '2000-01-20'),
    -> ('U014', 'password', 'Kumar', 'Mendis', 'student', '1111 Kandy Rd, Kandy', 'kumar@fot.ruh.ac.lk', '2001-02-25'),
    -> ('U015', 'password', 'Dinesh', 'Pathirana', 'student', '1212 Galle Rd, Galle', 'dinesh@fot.ruh.ac.lk', '2002-03-30'),
    -> ('U016', 'password', 'Anjali', 'Seneviratne', 'lecturer', '1313 Jaffna Rd, Jaffna', 'anjali@fot.ruh.ac.lk', '1991-04-05'),
    -> ('U017', 'password', 'Nuwan', 'Laksiri', 'lecturer', '1200 Deniyaya Rd, Matara', 'Nuwan@fot.ruh.ac.lk', '1988-05-10'),
    -> ('U018', 'password', 'Piyumi', 'Wijesinghe', 'lecturer', '1515 Colombo Rd, Colombo', 'Piyumi@fot.ruh.ac.lk', '1993-06-15'),
    -> ('U019', 'password', 'Bimal', 'Nawaratne', 'Technical Officer', '1616 Negombo Rd, Negombo', 'bimal@fot.ruh.ac.lk', '1995-07-20'),
    -> ('U020', 'password', 'Gayan', 'Jayawardena', 'Technical Officer', '1717 Matara Rd, Matara', 'gayan@fot.ruh.ac.lk', '1990-08-25'),
    -> ('U021', 'password', 'Nirosha', 'Wimalasena', 'Technical Officer', '1818 Galle Rd, Galle', 'nirosha@fot.ruh.ac.lk', '1992-09-30'),
    -> ('U022', 'password', 'Subash', 'Jayasinghe', 'DEAN', '1919 Kandy Rd, Kandy', 'Subash@fot.ruh.ac.lk', '1987-10-05'),
    -> ('U023', 'password', 'Pavani', 'Samarawickrama', 'ADMIN', '2020 Kurunegala Rd, Kurunegala', 'pavani@fot.ruh.ac.lk', '1994-11-10'),
    -> ('U024', 'password', 'Vishva', 'Gunasena', 'lecturer', '2121 Jaffna Rd, Jaffna', 'vishva@fot.ruh.ac.lk', '1989-12-15'),
    -> ('U025', 'password', 'Chandra', 'Perera', 'student', '2222 Moratuwa Rd, Moratuwa', 'chandra@fot.ruh.ac.lk', '2001-01-20'),
    -> ('U026', 'password', 'Nadisha', 'De Silva', 'student', '2323 Battaramulla Rd, Battaramulla', 'nadisha@fot.ruh.ac.lk', '2002-02-25'),
    -> ('U027', 'password', 'Suresh', 'Dharmadasa', 'student', '2424 Matara Rd, Matara', 'suresh@fot.ruh.ac.lk', '2003-03-30');
Query OK, 27 rows affected (0.04 sec)
Records: 27  Duplicates: 0  Warnings: 0

mysql> INSERT INTO admin_contact VALUES("A01","0760755332");
Query OK, 1 row affected (0.02 sec)

mysql> INSERT INTO admin_contact VALUES("A01","0715678932");
Query OK, 1 row affected (0.01 sec)


mysql> INSERT INTO dean VALUES("D01","U022");
Query OK, 1 row affected (0.02 sec)

mysql> INSERT INTO department VALUES("D001","ICT","D01");
Query OK, 1 row affected (0.02 sec)

mysql> INSERT INTO department VALUES("D002","ET","D01");
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO department VALUES("D003","BST","D01");
Query OK, 1 row affected (0.01 sec)



INSERT INTO department_admin VALUES("A01","D001");
INSERT INTO department_admin VALUES("A01","D002");
INSERT INTO department_admin VALUES("A01","D003");

CREATE TABLE DEPARTMENT_ADMIN(
    Admin_Id CHAR(3),
    Department_Id CHAR(5),
    FOREIGN KEY (Admin_Id) REFERENCES ADMIN(Admin_Id),
    FOREIGN KEY (Department_Id) REFERENCES DEPARTMENT(Department_Id)
    );

mysql> INSERT INTO lecturer VALUES("L01","U016");
Query OK, 1 row affected (0.02 sec)

mysql> INSERT INTO lecturer VALUES("L02","U017");
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO lecturer VALUES("L03","U018");
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO lecturer VALUES("L04","U024");
Query OK, 1 row affected (0.01 sec)



mysql> INSERT INTO lecturer_contact VALUES("L01","0711234245");
Query OK, 1 row affected (0.02 sec)

mysql> INSERT INTO lecturer_contact VALUES("L02","0717631692");
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO lecturer_contact VALUES("L03","0714123567");
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO lecturer_contact VALUES("L04","0767968432");
Query OK, 1 row affected (0.01 sec)



mysql> INSERT INTO technical_officer VALUES("T01","U019");
Query OK, 1 row affected (0.02 sec)

mysql> INSERT INTO technical_officer VALUES("T02","U020");
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO technical_officer VALUES("T03","U021");
Query OK, 1 row affected (0.01 sec)


