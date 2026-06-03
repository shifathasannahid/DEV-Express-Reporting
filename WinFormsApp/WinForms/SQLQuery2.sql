--CREATE TABLE EmployeeInfo
--(
--    EmployeeID INT IDENTITY(1,1) PRIMARY KEY,
--    FirstName VARCHAR(50),
--    LastName VARCHAR(50),
--    DateOfBirth DATE,
--    DateOfJoining DATE,
--    DesignationID INT
--);

--CREATE TABLE EducationInformation
--(
--    EducationID INT IDENTITY(1,1) PRIMARY KEY,
--    EmployeeID INT,
--    SSC VARCHAR(100),
--    HSC VARCHAR(100),
--    BSC VARCHAR(100),

--    FOREIGN KEY (EmployeeID)
--    REFERENCES EmployeeInfo(EmployeeID)
--);

--INSERT INTO EmployeeInfo
--VALUES
--('Shifat','Nahid','2000-05-10','2024-01-15',1),
--('Rahim','Ahmed','1999-08-20','2023-06-01',2);

--INSERT INTO EducationInformation
--VALUES
--(1,'Golden A+','Golden A','B.Sc in CSE'),
--(2,'A+','A+','B.Sc in EEE');

--Stored Procedure Create

--CREATE PROCEDURE sp_EmployeeReport
--AS
--BEGIN

--SELECT
--    E.EmployeeID,
--    E.FirstName,
--    E.LastName,
--    E.DateOfBirth,
--    E.DateOfJoining,
--    E.DesignationID,
--    ED.SSC,
--    ED.HSC,
--    ED.BSC
--FROM EmployeeInfo E
--INNER JOIN EducationInformation ED
--ON E.EmployeeID = ED.EmployeeID

--END

EXEC sp_EmployeeReport