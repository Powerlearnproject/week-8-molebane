-- Insert sample regions
INSERT INTO Regions (region_id, name, is_rural) VALUES (1, 'Urban Region A', FALSE), (2, 'Rural Region B', TRUE);

-- Insert sample schools
INSERT INTO Schools (school_id, name, region_id, capacity) VALUES (1, 'City School', 1, 500), (2, 'Village School', 2, 100);

-- Insert sample students
INSERT INTO Students (student_id, name, age, gender, school_id, is_enrolled, dropout_year) VALUES 
(1, 'Alice', 14, 'F', 1, TRUE, NULL), 
(2, 'Bob', 12, 'M', 2, FALSE, 2023);

-- Insert sample performance data
INSERT INTO Performance (student_id, test_score, year) VALUES (1, 85.5, 2024), (2, 62.0, 2022);
