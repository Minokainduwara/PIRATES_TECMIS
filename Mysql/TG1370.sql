CREATE TABLE DEPARTMENT(
    Department_Id char(5) NOT NULL PRIMARY KEY,
    Dep_Name char(30),
    Dean_ID char(5),
    FOREIGN KEY(Dean_ID) REFERENCES DEAN(Dean_ID) 
);