-- ============================================================
-- SQL AUTO GRADING TEST
-- ALTER STUDENT TABLE
-- ============================================================

USE CollegeDB;


-- TEST 1: Student table exists
SELECT
CASE
    WHEN COUNT(*) = 1
    THEN 'PASS - Student table exists'
    ELSE 'FAIL - Student table does not exist'
END AS Result
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA = 'CollegeDB'
AND TABLE_NAME = 'Student';


-- TEST 2: Email column exists
SELECT
CASE
    WHEN COUNT(*) = 1
    THEN 'PASS - Email column exists'
    ELSE 'FAIL - Email column does not exist'
END AS Result
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'CollegeDB'
AND TABLE_NAME = 'Student'
AND COLUMN_NAME = 'Email';


-- TEST 3: Email is VARCHAR(30)
SELECT
CASE
    WHEN DATA_TYPE = 'varchar'
    AND CHARACTER_MAXIMUM_LENGTH = 30
    THEN 'PASS - Email is VARCHAR(30)'
    ELSE 'FAIL - Email must be VARCHAR(30)'
END AS Result
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'CollegeDB'
AND TABLE_NAME = 'Student'
AND COLUMN_NAME = 'Email';


-- TEST 4: PhoneNumber column exists
SELECT
CASE
    WHEN COUNT(*) = 1
    THEN 'PASS - PhoneNumber column exists'
    ELSE 'FAIL - PhoneNumber column does not exist'
END AS Result
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'CollegeDB'
AND TABLE_NAME = 'Student'
AND COLUMN_NAME = 'PhoneNumber';


-- TEST 5: PhoneNumber is BIGINT
SELECT
CASE
    WHEN DATA_TYPE = 'bigint'
    THEN 'PASS - PhoneNumber is BIGINT'
    ELSE 'FAIL - PhoneNumber must be BIGINT'
END AS Result
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'CollegeDB'
AND TABLE_NAME = 'Student'
AND COLUMN_NAME = 'PhoneNumber';


-- TEST 6: Student table now has 7 columns
SELECT
CASE
    WHEN COUNT(*) = 7
    THEN 'PASS - Student table has 7 columns'
    ELSE 'FAIL - Student table should have 7 columns'
END AS Result
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'CollegeDB'
AND TABLE_NAME = 'Student';


-- ============================================================
-- DISPLAY MODIFIED TABLE STRUCTURE
-- ============================================================

DESCRIBE Student;
