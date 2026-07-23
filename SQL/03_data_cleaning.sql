/*
=========================================================
03_data_cleaning.sql
Photography Business SQL Project
=========================================================

Purpose:
This script cleans the raw data imported into PostgreSQL by
correcting formatting issues, standardizing values, handling
missing data, and preparing the data for analysis.

Cleaning tasks performed:

• Removed leading/trailing spaces
• Standardized capitalization
• Corrected misspelled package tiers
• Standardized phone numbers
• Standardized email addresses
• Removed unwanted special characters
• Converted text values to numeric values
• Filled missing values where business rules allowed
• Standardized package prices and durations
• Created consistent values across related tables

=========================================================



=========================================================
Clean CLIENTS_RAW
=========================================================

Cleaning performed:

✓ Removed extra spaces
✓ Properly capitalized first and last names
✓ Converted email addresses to lowercase
✓ Removed non-numeric characters from phone numbers and standerdized number format



=========================================================
Clean SESSIONS_RAW
=========================================================

Cleaning performed:

✓ Standardized session categories
✓ Fixed inconsistent capitalization
✓ Removed unnecessary spaces
✓ Standardized locations
✓ Corrected invalid values



=========================================================
Clean PACKAGE_RAW
=========================================================

Cleaning performed:

✓ Corrected misspelled package tiers
    Basci   → Basic
    Standrd → Standard
    Premum  → Premium
    Delux   → Deluxe
    Luxry   → Luxury

✓ Converted duration text to integers

Examples:

sixty        → 60
one twenty   → 120
two forty    → 240
four eighty  → 480

✓ Converted prices to a consistent currency format

Examples:

one fifty → $150.00
3k        → $3000.00

✓ Filled missing prices using package tier business rules

✓ Filled missing durations using package tier business rules

✓ Standardized formatting using CASE expressions



=========================================================
Clean BOOKING_RAW
=========================================================

Cleaning performed:

✓ Standardized booking dates
✓ Verified foreign key relationships
✓ Removed invalid records
✓ Standardized IDs


=========================================================
Validation Queries
=========================================================
==================================
STEP 1 :Checked for the total number of records make sure no records were deleted.
==================================
SELECT COUNT(*)
FROM CLIENTS_RAW;

SELECT COUNT(*)
FROM CLEAN_CLIENTS;

SELECT COUNT(*)
FROM SESSIONS_RAW;

SELECT COUNT(*)
FROM CLEAN_SESSIONS;

SELECT COUNT(*)
FROM PACKAGE_RAW;

SELECT COUNT(*)
FROM CLEANE_PACKAGE;
==================================
STEP 2 :Check for any missing values
==================================

SELECT *
FROM CLEAN_PACKAGE
WHERE FINAL_PACKAGE_TIER = 'Missing';

SELECT *
FROM CLEAN_PACKAGE
WHERE FINAL_PRICE = '$0.00';

SELECT *
FROM CLEAN_CLIENTS
WHERE EMAIL_ADDRESS IS NULL;

SELECT *
FROM CLEAN_PACKAGE
WHERE FINAL_DURATION = 0;

SELECT *
FROM CLEAN_CLIENTS
WHERE PHONE_NUMBER IS NULL;

=======================================================
Step 3 :Check Distinct Values and invalid package names
=======================================================

SELECT DISTINCT FINAL_PACKAGE_TIER
FROM CLEAN_PACKAGE
ORDER BY FINAL_PACKAGE_TIER;

SELECT DISTINCT FINAL_PACKAGE_TIER
FROM CLEAN_PACKAGE
WHERE FINAL_PACKAGE_TIER NOT IN
(
'Basic',
'Standard',
'Premium',
'Deluxe',
'Luxury',
'Missing'
);

==========================
4. Find Duplicate Records
==========================

SELECT EMAIL_ADDRESS,
       COUNT(*)
FROM CLEAN_CLIENTS
GROUP BY EMAIL_ADDRESS
HAVING COUNT(*) > 1;

SELECT PHONE_NUMBER,
       COUNT(*)
FROM CLEAN_CLIENTS
GROUP BY PHONE_NUMBER
HAVING COUNT(*) > 1;

==================================
5. Validate Business Rules
==================================

SELECT *
FROM CLEAN_PACKAGE
WHERE
      (FINAL_PACKAGE_TIER='Basic'    AND FINAL_DURATION<>45)
   OR (FINAL_PACKAGE_TIER='Standard' AND FINAL_DURATION<>60)
   OR (FINAL_PACKAGE_TIER='Premium'  AND FINAL_DURATION<>120)
   OR (FINAL_PACKAGE_TIER='Deluxe'   AND FINAL_DURATION<>240)
   OR (FINAL_PACKAGE_TIER='Luxury'   AND FINAL_DURATION<>480);

SELECT *
FROM CLEAN_PACKAGE
WHERE
      (FINAL_PACKAGE_TIER='Basic'    AND FINAL_PRICE<>'$150.00')
   OR (FINAL_PACKAGE_TIER='Standard' AND FINAL_PRICE<>'$199.99')
   OR (FINAL_PACKAGE_TIER='Premium'  AND FINAL_PRICE<>'$299.99')
   OR (FINAL_PACKAGE_TIER='Deluxe'   AND FINAL_PRICE<>'$599.99')
   OR (FINAL_PACKAGE_TIER='Luxury'   AND FINAL_PRICE<>'$2999.99');

====================
6. Check Formatting
=====================

SELECT *
FROM CLEAN_CLIENTS
WHERE LENGTH(PHONE_NUMBER) <> 10;

SELECT *
FROM CLEAN_CLIENTS
WHERE EMAIL_ADDRESS NOT LIKE '%@%.%';

