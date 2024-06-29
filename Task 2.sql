

-- Create a table named "Students" to store generic student information
CREATE TABLE Students (
  StudentID INT PRIMARY KEY,
  Name VARCHAR(50) NOT NULL,
  Address VARCHAR(100) NOT NULL,
  DateOfBirth DATE NOT NULL,
  ContactNumber VARCHAR(15) NOT NULL
);

-- Create a table named "AcademicPerformance" to store students' academic performance
CREATE TABLE AcademicPerformance (
  StudentID INT,
  Semester VARCHAR(10) NOT NULL,
  Subject VARCHAR(50) NOT NULL,
  MarksObtained INT NOT NULL,
  Grade VARCHAR(5) NOT NULL,
  PRIMARY KEY (StudentID, Semester, Subject),
  FOREIGN KEY (StudentID) REFERENCES Students(StudentID)
);

-- Create a table named "Attendance" to store students' attendance records
CREATE TABLE Attendance (
  StudentID INT,
  Date DATE NOT NULL,
  AttendanceStatus VARCHAR(10) NOT NULL,
  PRIMARY KEY (StudentID, Date),
  FOREIGN KEY (StudentID) REFERENCES Students(StudentID)
);

-- Create a table named "DepartmentalInfo" to store department-specific information
CREATE TABLE DepartmentalInfo (
  StudentID INT,
  Department VARCHAR(50) NOT NULL,
  Program VARCHAR(50) NOT NULL,
  YearOfStudy INT NOT NULL,
  PRIMARY KEY (StudentID),
  FOREIGN KEY (StudentID) REFERENCES Students(StudentID)
);

-- Insert some sample data
INSERT INTO Students (StudentID, Name, Address, DateOfBirth, ContactNumber)
VALUES
  (1, 'Rahul Sharma', '123, Main Street, Delhi', '1995-02-12', '9876543210'),
  (2, 'Priya Patel', '456, ABC Colony, Mumbai', '1997-08-25', '9123456789'),
  (3, 'Kunal Jain', '789, DEF Road, Bangalore', '1996-04-01', '8765432109');

INSERT INTO AcademicPerformance (StudentID, Semester, Subject, MarksObtained, Grade)
VALUES
  (1, 'Sem 1', 'Maths', 80, 'A'),
  (1, 'Sem 1', 'Science', 70, 'B'),
  (2, 'Sem 2', 'English', 90, 'A+'),
  (3, 'Sem 3', 'Computer Science', 85, 'A');

INSERT INTO Attendance (StudentID, Date, AttendanceStatus)
VALUES
  (1, '2022-01-01', 'Present'),
  (1, '2022-01-02', 'Absent'),
  (2, '2022-01-03', 'Present'),
  (3, '2022-01-04', 'Present');

INSERT INTO DepartmentalInfo (StudentID, Department, Program, YearOfStudy)
VALUES
  (1, 'Computer Science', 'B.Tech', 2),
  (2, 'Electronics', 'B.E.', 3),
  (3, 'Mechanical', 'B.Tech', 1);