CREATE TABLE Regions (
  region_id INT PRIMARY KEY,
  name VARCHAR(100),
  is_rural BOOLEAN
);

CREATE TABLE Schools (
  school_id INT PRIMARY KEY,
  name VARCHAR(100),
  region_id INT,
  capacity INT,
  FOREIGN KEY (region_id) REFERENCES Regions(region_id)
);

CREATE TABLE Students (
  student_id INT PRIMARY KEY,
  name VARCHAR(100),
  age INT,
  gender VARCHAR(10),
  school_id INT,
  is_enrolled BOOLEAN,
  dropout_year INT, 
  FOREIGN KEY (school_id) REFERENCES Schools(school_id)
);

CREATE TABLE Performance (
  student_id INT,
  test_score DECIMAL(5, 2),
  year INT,
  FOREIGN KEY (student_id) REFERENCES Students(student_id)
);
