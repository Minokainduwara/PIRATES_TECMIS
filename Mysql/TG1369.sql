CREATE TABLE EXAM(
    Exam_Id CHAR(3) PRIMARY KEY,
    Status VARCHAR(10),
    S_Id CHAR(03),
    FOREIGN KEY(S_Id) REFERENCES SUBJECT(S_Id)
);

CREATE TABLE MARK(
    Mark_Id CHAR(3) PRIMARY KEY,
    Ca_Exam INT,
    Mid_Exam INT,
    Exam_ID CHAR(3),
    
);

CREATE TABLE SUBJECT(
    S_Id CHAR(3) PRIMARY KEY,
    CGPA DECIMAL(3,2),
    Credits INT
);

CREATE TABLE COURSE_SUBJECT(
    S_Id CHAR(3),
    Course_Code CHAR(7)
    FOREIGN KEY(S_Id) REFERENCES SUBJECT(S_Id),
    FOREIGN KEY(Course_Code) REFERENCES COURSE(Course_Code)
);
