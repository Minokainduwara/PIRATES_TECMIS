# 📚 DBMS MINI PROJECT GROUP-15
### **Student Management System - Faculty of Technology**

> A Database Management System for managing student details, attendance, exam marks, and eligibility at the University of Ruhuna's Faculty of Technology.

---

## 🌟 About the Project

This mini practicum demonstrates database management concepts, enabling efficient handling of student data, including attendance, grades, and eligibility checks.

### ✨ Key Features:
- **Attendance Management**: Tracks weekly attendance for theory and practical sessions.
- **Marks and Grades**: Records assessments and calculates final exam eligibility.
- **Eligibility Checking**: Assesses attendance and CA results for exam eligibility.
- **SGPA/CGPA Calculations**: Provides semester and cumulative GPAs.

---

## 🔐 User Roles and Permissions
| Role               | Permissions                                                                                       |
|--------------------|---------------------------------------------------------------------------------------------------|
| **Admin**          | Full access with grant option                                                                     |
| **Dean**           | Full access without grant option                                                                  |
| **Lecturer**       | Full access without user creation privileges                                                      |
| **Technical Officer** | Read, write, update for attendance tables                                                  |
| **Student**        | Read-only for attendance and grades                                                               |

---

## 🏗 Database Structure

- **Students**: Stores proper, repeat, and suspended students.
- **Courses**: Contains course information.
- **Marks**: Records assessments.
- **Attendance**: Tracks weekly attendance by course.

### Entity-Relationship Diagram
* The database structure is designed around a detailed ERD, mapping relationships between students, courses, attendance, and marks.

---

## 🚀 Getting Started

### Prerequisites
- **MySQL** installed and configured.

### Installation
1. **Clone the repository**
   ```bash
   git clone https://github.com/Minokainduwara/Project_Sql_TECMIS.git


# 🏗 Database Setup and Usage Guide

---

## 🚀 Database Setup

### Create Database and Tables
- Use the provided SQL scripts to set up the database schema, including tables and relationships.
- This setup includes tables for **students**, **attendance**, **marks**, **courses**, and **user roles**.

### Set Up User Accounts
Create MySQL user accounts with specific roles and permissions as defined in the project:
- **Admin**: Full access to all tables with grant option.
- **Dean**: Full access without grant option.
- **Lecturer**: Full access without privileges for user creation.
- **Technical Officer**: Read, write, and update permissions for attendance-related tables.
- **Student**: Read-only access to attendance and grades.

---

## 💻 Usage

The system includes a variety of stored procedures and views to manage and display student information efficiently:

- **View Attendance Summary**: Provides attendance percentages and eligibility status per course.
- **View Marks Summary**: Displays Continuous Assessment (CA) marks and final eligibility.
- **Individual Reports**: Generates detailed reports for individual students based on their registration number.

---

## 🎓 Eligibility and Grading Criteria

### Attendance Requirement
- Minimum of **80%** attendance is required for both theory and practical sessions to be eligible for exams.

### Marks Eligibility
- Students need to achieve **≥ 50% in CA marks** to qualify for final exams.

### Grading
- **Medical Leave (MC)**: Special designation for students with valid medical reasons.
- **Repeat Students**: Maximum grade achievable is "C".

---

## 🤝 Contributing

1. **Fork the project** to start making your contributions.
2. **Create a Feature Branch**:
   ```bash
   git checkout -b feature/YourFeature

