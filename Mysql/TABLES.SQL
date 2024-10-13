CREATE DATABASE Faculty_of_Technology;
USE Faculty_

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