SHOW DATABASES;

mysql> SHOW DATABASES;
+-----------------------+
| Database              |
+-----------------------+
| faculty_of_technology |
| information_schema    |
| lankadroid            |
| maxtronoic            |
| mydb                  |
| mysql                 |
| performance_schema    |
| sakila                |
| school                |
| sys                   |
| world                 |
+-----------------------+
11 rows in set (0.03 sec)

----------------------------------------------------------------------------

/* Create ADMIN with ALL Privileges With GRANT Option*/

CREATE USER 'ADMIN'@'localhost' IDENTIFIED BY 'password';

mysql> CREATE USER 'ADMIN'@'localhost' IDENTIFIED BY 'password';
Query OK, 0 rows affected (0.04 sec)

GRANT ALL PRIVILEGES ON faculty_of_technology. * TO 'ADMIN'@'localhost' WITH GRANT OPTION;

mysql> GRANT ALL PRIVILEGES ON faculty_of_technology. * TO 'ADMIN'@'localhost' WITH GRANT OPTION;
Query OK, 0 rows affected (0.01 sec)

mysql> FLUSH PRIVILEGES;
Query OK, 0 rows affected (0.01 sec)

-------------------------------------------------------------------------


/* Create DEAN with ALL Privileges */

CREATE USER 'DEAN'@'localhost' IDENTIFIED BY 'password';

mysql> CREATE USER 'DEAN'@'localhost' IDENTIFIED BY 'password';
Query OK, 0 rows affected (0.02 sec)

GRANT ALL PRIVILEGES ON faculty_of_technology. * TO 'DEAN'@'localhost';

mysql> GRANT ALL PRIVILEGES ON faculty_of_technology. * TO 'DEAN'@'localhost';
Query OK, 0 rows affected (0.01 sec)

FLUSH PRIVILEGES;

mysql> FLUSH PRIVILEGES;
Query OK, 0 rows affected (0.01 sec)

-----------------------------------------------------------------------------------


/* Create Lecturer with ALL Privileges without user creation */

CREATE USER 'LECTURER'@'localhost' IDENTIFIED BY 'password';

mysql> CREATE USER 'LECTURER'@'localhost' IDENTIFIED BY 'password';
Query OK, 0 rows affected (0.02 sec)

GRANT ALL PRIVILEGES ON faculty_of_technology. * TO 'LECTURER'@'localhost';

mysql> GRANT ALL PRIVILEGES ON faculty_of_technology. * TO 'LECTURER'@'localhost';
Query OK, 0 rows affected (0.01 sec)

mysql> FLUSH PRIVILEGES;
Query OK, 0 rows affected (0.01 sec)

-----------------------------------------------------------------------------------------



/* Create Technical Officer - Read, write and update permissions for attendance related tables/views */

CREATE USER 'TECHNICAL_OFFICER'@'localhost' IDENTIFIED BY 'password';

mysql> CREATE USER 'TECHNICAL_OFFICER'@'localhost' IDENTIFIED BY 'password';
Query OK, 0 rows affected (0.02 sec)

/*Still cant give privileges */ 
GRANT SELECT, INSERT, UPDATE ON faculty_of_technology.ATTENDANCE TO 'TECHNICAL_OFFICER'@'localhost';

mysql> GRANT SELECT, INSERT, UPDATE ON faculty_of_technology.ATTENDANCE TO 'TECHNICAL_OFFICER'@'localhost';
ERROR 1146 (42S02): Table 'faculty_of_technology.ATTENDANCE' doesn't exist
mysql>
