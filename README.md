# DataBase_Gym
# Data_Base
This project implements a relational database designed to manage a subscription service, employee data, and related facilities. It features a structured design with normalized tables, primary keys, and relationships to ensure data integrity and efficient querying.

## Features
### Tables:

#### EMPLOYEE FACILITIES: Tracks facilities assigned to employees, including hire date and associated gym and employee details.

#### EMPLOYEES: Stores information about employees, such as name, phone number, address, email, and job details.

#### JOBS: Contains job titles and salaries for different roles in the organization.

#### LOCATIONS: Defines physical locations with details like city, street, and available space.

#### GYM: Represents gym facilities, including schedules, opening and closing dates, associated locations, and types of facilities.

#### TYPES: Specifies different facility types, including whether assistance is required.

#### MEMBERSHIPS: Manages membership details, including registration date, associated gym, and member.

#### MEMBERS: Records member details like name, age, gender, and associated subscription.

#### SUBSCRIPTIONS: Defines subscription plans with details such as duration and type.

### Here you can see the diagrams 

![Conceptual_Diagram](https://github.com/user-attachments/assets/ecc95daf-094c-4491-addf-0e03efc1c962)

![ERD_Diagram](https://github.com/user-attachments/assets/25b44f24-f229-4f39-8a6d-9f1936f29d06)


### Key SQL Constructs:

Primary and foreign keys for relational integrity.
Data types appropriate for each field.
Use of IDENTITY columns for auto-incrementing IDs.
Scalability:

### The database design follows best practices for normalization to reduce redundancy and improve consistency.
Usability:

Ready-to-use SQL script for database creation.
Comments for clarity and easier understanding of the structure.
Usage
Load the script in any SQL-compatible database management system (e.g., SQL Server).
Execute the script to create the database and all necessary tables.
Use the database for managing subscriptions, employees, and salary data.
Learning Objectives
Understanding relational database design.
Applying normalization techniques.
Implementing primary and foreign keys in SQL.
Practicing database creation and management.
