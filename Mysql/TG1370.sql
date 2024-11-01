CREATE TABLE DEPARTMENT(
    Department_Id char(5) NOT NULL PRIMARY KEY,
    Dep_Name char(30),
    Dean_ID char(5),
    FOREIGN KEY(Dean_ID) REFERENCES DEAN(Dean_ID) 
);



CREATE TABLE Student_Exam(
    Exam_ID char(3),
    Reg_No char(6),
    FOREIGN KEY (Exam_ID) REFERENCES EXAM(Exam_Id),
    FOREIGN KEY (Reg_No) REFERENCES STUDENT(Reg_No)

);