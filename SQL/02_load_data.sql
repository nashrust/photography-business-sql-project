/*
=========================================================
02_load_data.sql
=========================================================

Purpose:
Load the raw CSV datasets into PostgreSQL.

Datasets:
- clients_raw_data.csv
- sessions_raw_data.csv
- package_raw_data.csv
- booking_raw_data.csv

Method:
The CSV files were imported into the corresponding RAW tables
using pgAdmin's Import/Export Data tool.

Target Tables:
- CLIENTS_RAW
- SESSIONS_RAW
- PACKAGE_RAW
- BOOKING_RAW

After importing, row counts were verified before data cleaning.
*/

SELECT COUNT(*) AS client_records
FROM CLIENTS_RAW;

SELECT COUNT(*) AS session_records
FROM SESSIONS_RAW;

SELECT COUNT(*) AS package_records
FROM PACKAGE_RAW;

SELECT COUNT(*) AS booking_records
FROM BOOKING_RAW;
