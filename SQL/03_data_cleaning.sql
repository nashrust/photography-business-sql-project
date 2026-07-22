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
SECTION 1
Clean CLIENTS_RAW
=========================================================

Cleaning performed:

✓ Removed extra spaces
✓ Properly capitalized first and last names
✓ Converted email addresses to lowercase
✓ Removed non-numeric characters from phone numbers and standerdized number format



=========================================================
SECTION 2
Clean SESSIONS_RAW
=========================================================

Cleaning performed:

✓ Standardized session categories
✓ Fixed inconsistent capitalization
✓ Removed unnecessary spaces
✓ Standardized locations
✓ Corrected invalid values



=========================================================
SECTION 3
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
SECTION 4
Clean BOOKING_RAW
=========================================================

Cleaning performed:

✓ Standardized booking dates
✓ Verified foreign key relationships
✓ Removed invalid records
✓ Standardized IDs





