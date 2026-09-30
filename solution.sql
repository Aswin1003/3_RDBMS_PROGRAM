-- Select database
USE CollegeDB;

-- Add new columns
ALTER TABLE Student
ADD COLUMN Email VARCHAR(30),
ADD COLUMN PhoneNumber BIGINT;

-- Display modified table structure
DESCRIBE Student;
