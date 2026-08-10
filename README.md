# Photography Business SQL Project

##  Project Overview
This project demonstrates an end-to-end SQL data analytics workflow by designing, building, cleaning, validating, and analyzing a relational database for a fictional photography business.

The raw datasets were intentionally created with inconsistent formatting, missing values, misspelled text, duplicate records, and invalid values to simulate real-world data quality issues. SQL was then used to clean, standardize, validate, and analyze the data.

This project showcases practical SQL skills used by data analysts and database professionals.

---

#  Objectives

- Design a relational database
- Create normalized database tables
- Import raw datasets into PostgreSQL
- Clean messy real-world style data
- Validate data quality
- Create cleaned production-ready tables
- Perform SQL analysis
- Document the entire workflow

---

#  Technologies Used

- PostgreSQL
- pgAdmin 4
- SQL
- Git
- GitHub
- dbdiagram.io

---

#  Project Structure

```
photography-business-sql-project/

│
├── README.md
│
├── SQL/
│   ├── 01_create_tables.sql
│   ├── 02_load_data.sql
│   ├── 03_data_cleaning.sql
│   ├── 04_create_clean_tables.sql
│   ├── 05_data_validation.sql
│   └── 06_analysis_queries.sql
│
├── Data/
│   ├── clients_raw_data.csv
│   ├── sessions_raw_data.csv
│   ├── package_raw_data.csv
│   └── bookings_raw_data.csv
│
├── Cleaned_Data/
│   ├── clean_clients.csv
│   ├── clean_sessions.csv
│   ├── clean_packages.csv
│   └── clean_bookings.csv
│
└── Images/
    ├── ERD.png
    ├── raw_data_preview.png
    ├── clean_data_preview.png
    ├── validation_results.png
    └── analysis_results.png
```


#  Database Design

The database was designed using an Entity Relationship Diagram (ERD) before implementation.

The project contains four related tables:

- CLIENTS
- SESSIONS
- PACKAGES
- BOOKINGS

Relationships were established using primary and foreign keys to ensure data integrity.

![Entity Relationship Diagram]
(Images/E<img width="1848" height="312" alt="ERD" src="https://github.com/user-attachments/assets/290fadab-26b1-4a94-a932-95dd580a4569" /> RD.png)


#  Project Workflow

This project followed a complete data analytics workflow:

1. Designed the database schema
2. Created raw database tables
3. Loaded raw CSV datasets into PostgreSQL
4. Cleaned and standardized raw data
5. Created cleaned production tables
6. Validated the cleaned data
7. Performed business analysis using SQL

<img width="567" height="571" alt="CLEA_ DATA VALIDATION IMAGE" src="https://github.com/user-attachments/assets/acdc5355-f6cc-4c04-80ee-fba7a113204c" />
 #  Data Cleaning Process

The raw datasets contained numerous data quality issues, including:

- Leading and trailing spaces
- Inconsistent capitalization
- Misspelled package tiers
- Missing values
- Invalid duration values
- Incorrect price formatting
- Duplicate records
- Inconsistent phone numbers
- Mixed text and numeric values

Cleaning techniques included:

- TRIM()
- LOWER()
- INITCAP()
- COALESCE()
- NULLIF()
- CASE expressions
- REGEXP_REPLACE()
- CAST()
- TO_CHAR()

Business rules were applied to standardize package tiers, durations, and pricing.

Example corrections:

| Before | After |
|---------|-------|
| Basci | Basic |
| Standrd | Standard |
| Premum | Premium |
| Delux | Deluxe |
| Luxry | Luxury |
| one fifty | $150.00 |
| sixty | 60 |

## Raw Data

### Clients
<img width="875" height="525" alt="RAW_CLIENT IMAGE" src="https://github.com/user-attachments/assets/929cf26d-08db-4d63-af72-0f63595e9d1d" />

### Sessions
<img width="879" height="532" alt="RAW_ SESSION IMAGE" src="https://github.com/user-attachments/assets/b7f6d238-6aeb-41cf-9da2-1330c03cead8" />

### Packages
<img width="878" height="519" alt="RAW_PACKAGE IMAGE" src="https://github.com/user-attachments/assets/bb060d36-4498-4f2b-8ace-6d8ae2f203e9" />

### Bookings
<img width="481" height="545" alt="BOOKINGS_RAW IMAGE" src="https://github.com/user-attachments/assets/586ddde0-6eb8-4503-b160-5ad22fb3dafe" />

 
### Clean Data

### Clients
<img width="755" height="545" alt="CLEANED_CLIENTS IMAGE" src="https://github.com/user-attachments/assets/4f1d4ec3-f6c5-462d-889c-e7d1014336cc" />

### Session 
<img width="776" height="540" alt="CLEANED_SESSION IMAGE" src="https://github.com/user-attachments/assets/99895a66-ae3d-4bef-9e90-1e86667b922e" />

### Package
<img width="394" height="568" alt="CLEANED_PACKAGE IMAGE" src="https://github.com/user-attachments/assets/803facae-a562-453b-b8b4-a375216754c6" />

### Booking
<img width="490" height="544" alt="CLEANED_BOOKING IMAGE" src="https://github.com/user-attachments/assets/0eb2d85c-5ad9-4e9d-9eec-5a05d4613727" />

---

#  Data Validation

After cleaning, validation queries were used to verify data quality.

Validation included:

- Record count comparisons
- Missing value detection
- Duplicate detection
- Foreign key validation
- Package tier validation
- Price validation
- Duration validation
- Email formatting
- Phone number formatting

## TABLE_VALIDATION
<img width="567" height="571" alt="CLEA_ DATA VALIDATION IMAGE" src="https://github.com/user-attachments/assets/ce51e261-bb9b-47a3-b435-97f92a49e659" />

## PHONE_VALIDATION
<img width="375" height="517" alt="Phone_validation" src="https://github.com/user-attachments/assets/6c1f7ff2-4816-4611-91ca-0e3aacba3826" />

## EMAIL_VALIDATION
<img width="322" height="320" alt="Email_Validation" src="https://github.com/user-attachments/assets/2b7d86f4-1151-4f29-a023-d29d83ef27fb" />

## DURATION_VALIDATION
<img width="593" height="515" alt="Duration_validation" src="https://github.com/user-attachments/assets/d661b15c-b001-4e19-9a19-5d2a9fcef579" />



---

#  SQL Analysis

Once the data was cleaned, SQL queries were used to analyze the business data.

Example analyses included:

- Package popularity
- Session type distribution
- Customer counts
- Revenue by package tier
- Booking trends
- Session trends

*(Insert analysis screenshot here)*

```markdown
![Analysis](Images/analysis_results.png)
```

---

#  SQL Files

| File | Description |
|------|-------------|
| 01_create_tables.sql | Creates all raw database tables |
| 02_load_data.sql | Documents loading the raw CSV datasets |
| 03_data_cleaning.sql | Cleans and standardizes raw data |
| 04_create_clean_tables.sql | Creates cleaned tables |
| 05_data_validation.sql | Verifies data quality |
| 06_analysis_queries.sql | Business analysis using SQL |

---

#  Key SQL Skills Demonstrated

- Database Design
- Relational Databases
- PostgreSQL
- Data Cleaning
- Data Validation
- Data Transformation
- Data Normalization
- CASE Statements
- Joins
- Aggregate Functions
- Common Table Expressions (CTEs)
- Regular Expressions
- String Functions
- Window Functions (if applicable)
- Business Analysis

---

#  What I Learned

Through this project I strengthened my ability to:

- Design relational databases
- Build normalized SQL tables
- Create realistic datasets
- Clean messy data
- Apply business rules
- Validate data quality
- Analyze business information using SQL
- Document an end-to-end analytics project
- Organize a professional GitHub portfolio

---

#  Future Improvements

Possible enhancements include:

- Build an interactive Power BI dashboard
- Develop Tableau visualizations
- Automate the data cleaning pipeline
- Add stored procedures
- Create SQL views
- Optimize query performance with indexes
- Expand the dataset with additional business scenarios

---

#  Author

**Nash Rust**

Aspiring Data Analyst

Skills:
- SQL
- PostgreSQL
- Excel
- GitHub
- Data Cleaning
- Data Validation
- Relational Database Design
