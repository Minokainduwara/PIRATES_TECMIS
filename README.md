# DBMS MINI PROJECT GROUP-15

## Student Management System - Faculty of Technology

#### This project is a Database Management System developed for managing student details, attendance, exam marks, and eligibility. Designed with multiple user roles, it ensures secure and efficient access and management of student data for the Faculty of Technology at the University of Ruhuna.

## About the project

#### This project serves as a mini practicum to apply database management concepts. It enables faculty members to efficiently manage various student data, including attendance, course grades, eligibility, and more.

#### The system includes:
* **Attendance Management**: Tracks weekly attendance for both theory and practical sessions.
* **Marks and Grades**: Records multiple types of assessments and calculates eligibility for final exams.
* **Eligibility Checking**: Combines attendance and assessment results to determine exam eligibility.
* **SGPA/CGPA Calculations**: Generates semester and cumulative GPAs based on performance.

## User Roles and Permissions
#### This DBMS project includes five MySQL user accounts with role-specific permissions:
* **Admin**: Full access to all tables with grant option.
* **Dean**: Full access without grant option.
* **Lecturer**: Full access without grant or user creation privileges.
* **Technical Officer**: Read, write, and update permissions for attendance-related tables.
* **Student**: Read-only access to final attendance and grades.
 
## Database Stucture
#### Key Tables
* **Students**: Stores information on proper, repeat, and suspended students.
* **Courses**: Includes course details
* **Marks**: Contains assessment records
* **Attendance**: Tracks weekly attendance for each student per course.

#### Entity-Relationship Diagram
* The database design is based on a comprehensive ERD, mapping relationships between students, courses, attendance, and marks.
![Markdown Logo](ER.drawio.png)
#### Table Schema
* Detailed schema provided in the report, including attributes, constraints, and relationships.

## Getting Started
#### Follow these instructions to set up and use the DBMS on your local system.
## Prerequisites
#### MySQL installed and configured on your system.

## Installation
1. Clone the repository
1. Create the Database and Tables
1. Set up User Accounts

## Usage
#### This system includes various stored procedures and views to manage and display student information:
* **View Attendance Summary**: Display attendance percentages and eligibility per course.
* **View Marks Summary**: Display Continuous Assessment (CA) marks and final eligibility.
* **Individual Reports**: Generate reports for individual students by registration number.

## Eligibility and Grading Criteria
#### Attendance Eligibility
* A minimum of 80% attendance in both theory and practical sessions is required.
#### Marks Eligibility
* Students must score ≥ 50% in CA marks to be eligible for the final exam.
#### Grading Rules
* Grade each subject according to faculty bylaws.
* Special cases
    * Medical Leave (MC): Displayed for students with valid medical reasons.
    * Repeat Students: Maximum grade allowed is “C”.

## Contributing
1. Fork the project.
1. Create a feature branch
1. Commit your changes
1. Push to the branch
1. Open a pull request.

## Acknowledgments
* MySQL Documentation - For references on database security and role management.
* W3school

