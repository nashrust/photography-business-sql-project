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
- bookings_data.csv

Method:
The CSV files were imported into the corresponding RAW tables
using pgAdmin's Import/Export Data tool.

Target Tables:
- CLIENTS_RAW
- SESSIONS_RAW
- PACKAGE_RAW
- BOOKINGS

After importing, row counts were verified before data cleaning.
*/

SELECT 'CLIENTS_RAW' AS table_name, COUNT(*) AS total_records
FROM CLIENTS_RAW

UNION ALL

SELECT 'SESSIONS_RAW', COUNT(*)
FROM SESSIONS_RAW

UNION ALL

SELECT 'PACKAGE_RAW', COUNT(*)
FROM PACKAGE_RAW

UNION ALL

SELECT 'BOOKINGS', COUNT(*)
FROM BOOKINGS;


