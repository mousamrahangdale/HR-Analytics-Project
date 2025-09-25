CREATE table employee_data (
    EmployeeID INT PRIMARY KEY,
    StartDate DATE,
    Title VARCHAR(100),
    BusinessUnit VARCHAR(50),
    EmployeeStatus VARCHAR(20),
    EmployeeType VARCHAR(20),
    PayZone VARCHAR(20),
    EmployeeClassification VARCHAR(50),
    DepartmentType VARCHAR(50),
    Division VARCHAR(100),
    DOB DATE,
    State VARCHAR(10),
    GenderCode VARCHAR(10),
    RaceDesc VARCHAR(50),
    MaritalDesc VARCHAR(50),
    PerformanceScore VARCHAR(50),
    CurrentEmployeeRating INT,
    SurveyDate DATE,
    EngagementScore INT,
    SatisfactionScore INT,
    WorkLifeBalanceScore INT,
    TrainingDate DATE,
    TrainingProgramName VARCHAR(100),
    TrainingType VARCHAR(50),
    TrainingOutcome VARCHAR(50),
    TrainingDuration INT,
    TrainingCost FLOAT,
    Age INT
);

/*
\copy employee_data(
    EmployeeID, StartDate, Title, BusinessUnit, EmployeeStatus, EmployeeType, PayZone, 
    EmployeeClassification, DepartmentType, Division, DOB, State, GenderCode, RaceDesc, 
    MaritalDesc, PerformanceScore, CurrentEmployeeRating, SurveyDate, EngagementScore, 
    SatisfactionScore, WorkLifeBalanceScore, TrainingDate, TrainingProgramName, 
    TrainingType, TrainingOutcome, TrainingDuration, TrainingCost, Age
)
FROM 'C:/Users/mousa/Downloads/employee_data.csv'
DELIMITER ','
CSV HEADER;
*/

select * from employee_data;

CREATE TABLE  employee_full (
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    StartDate DATE,
    ExitDate DATE,
    Title VARCHAR(100),
    Supervisor VARCHAR(100),
    ADEmail VARCHAR(100),
    BusinessUnit VARCHAR(50),
    EmployeeStatus VARCHAR(50),
    EmployeeType VARCHAR(50),
    PayZone VARCHAR(50),
    EmployeeClassification VARCHAR(50),
    TerminationType VARCHAR(50),
    TerminationDescription TEXT,
    DepartmentType VARCHAR(50),
    Division VARCHAR(100),
    DOB DATE,
    State VARCHAR(30),
    JobFunctionDescription VARCHAR(100),
    GenderCode VARCHAR(10),
    LocationCode INT,
    RaceDesc VARCHAR(50),
    MaritalDesc VARCHAR(50),
    PerformanceScore VARCHAR(50),
    CurrentEmployeeRating INT,
    EmployeeID INT,
    SurveyDate DATE,
    EngagementScore INT,
    SatisfactionScore INT,
    WorkLifeBalanceScore INT,
    TrainingDate DATE,
    TrainingProgramName VARCHAR(100),
    TrainingType VARCHAR(50),
    TrainingOutcome VARCHAR(50),
    Location VARCHAR(100),
    Trainer VARCHAR(100),
    TrainingDuration INT,
    TrainingCost FLOAT
);

/*
\copy employee_full(
    FirstName, LastName, StartDate, ExitDate, Title, Supervisor, ADEmail, BusinessUnit, 
    EmployeeStatus, EmployeeType, PayZone, EmployeeClassification, TerminationType, 
    TerminationDescription, DepartmentType, Division, DOB, State, JobFunctionDescription, 
    GenderCode, LocationCode, RaceDesc, MaritalDesc, PerformanceScore, CurrentEmployeeRating, 
    EmployeeID, SurveyDate, EngagementScore, SatisfactionScore, WorkLifeBalanceScore, 
    TrainingDate, TrainingProgramName, TrainingType, TrainingOutcome, Location, Trainer, 
    TrainingDuration, TrainingCost
)
FROM 'C:/Users/mousa/Downloads/employee_full.csv'
DELIMITER ','
CSV HEADER;
*/

select * from employee_full;

SELECT
    ROUND(SUM(CASE WHEN FirstName IS NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS FirstName_Null_Percent,
    ROUND(SUM(CASE WHEN LastName IS NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS LastName_Null_Percent,
    ROUND(SUM(CASE WHEN StartDate IS NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS StartDate_Null_Percent,
    ROUND(SUM(CASE WHEN ExitDate IS NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS ExitDate_Null_Percent,
    ROUND(SUM(CASE WHEN Title IS NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS Title_Null_Percent,
    ROUND(SUM(CASE WHEN Supervisor IS NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS Supervisor_Null_Percent,
    ROUND(SUM(CASE WHEN ADEmail IS NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS ADEmail_Null_Percent,
    ROUND(SUM(CASE WHEN BusinessUnit IS NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS BusinessUnit_Null_Percent,
    ROUND(SUM(CASE WHEN EmployeeStatus IS NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS EmployeeStatus_Null_Percent,
    ROUND(SUM(CASE WHEN EmployeeType IS NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS EmployeeType_Null_Percent,
    ROUND(SUM(CASE WHEN PayZone IS NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS PayZone_Null_Percent,
    ROUND(SUM(CASE WHEN EmployeeClassification IS NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS EmployeeClassification_Null_Percent,
    ROUND(SUM(CASE WHEN TerminationType IS NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS TerminationType_Null_Percent,
    ROUND(SUM(CASE WHEN TerminationDescription IS NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS TerminationDescription_Null_Percent,
    ROUND(SUM(CASE WHEN DepartmentType IS NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS DepartmentType_Null_Percent,
    ROUND(SUM(CASE WHEN Division IS NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS Division_Null_Percent,
    ROUND(SUM(CASE WHEN DOB IS NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS DOB_Null_Percent,
    ROUND(SUM(CASE WHEN State IS NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS State_Null_Percent,
    ROUND(SUM(CASE WHEN JobFunctionDescription IS NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS JobFunctionDescription_Null_Percent,
    ROUND(SUM(CASE WHEN GenderCode IS NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS GenderCode_Null_Percent,
    ROUND(SUM(CASE WHEN LocationCode IS NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS LocationCode_Null_Percent,
    ROUND(SUM(CASE WHEN RaceDesc IS NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS RaceDesc_Null_Percent,
    ROUND(SUM(CASE WHEN MaritalDesc IS NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS MaritalDesc_Null_Percent,
    ROUND(SUM(CASE WHEN PerformanceScore IS NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS PerformanceScore_Null_Percent,
    ROUND(SUM(CASE WHEN CurrentEmployeeRating IS NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS CurrentEmployeeRating_Null_Percent,
    ROUND(SUM(CASE WHEN EmployeeID IS NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS EmployeeID_Null_Percent,
    ROUND(SUM(CASE WHEN SurveyDate IS NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS SurveyDate_Null_Percent,
    ROUND(SUM(CASE WHEN EngagementScore IS NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS EngagementScore_Null_Percent,
    ROUND(SUM(CASE WHEN SatisfactionScore IS NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS SatisfactionScore_Null_Percent,
    ROUND(SUM(CASE WHEN WorkLifeBalanceScore IS NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS WorkLifeBalanceScore_Null_Percent,
    ROUND(SUM(CASE WHEN TrainingDate IS NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS TrainingDate_Null_Percent,
    ROUND(SUM(CASE WHEN TrainingProgramName IS NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS TrainingProgramName_Null_Percent,
    ROUND(SUM(CASE WHEN TrainingType IS NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS TrainingType_Null_Percent,
    ROUND(SUM(CASE WHEN TrainingOutcome IS NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS TrainingOutcome_Null_Percent,
    ROUND(SUM(CASE WHEN Location IS NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS Location_Null_Percent,
    ROUND(SUM(CASE WHEN Trainer IS NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS Trainer_Null_Percent,
    ROUND(SUM(CASE WHEN TrainingDuration IS NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS TrainingDuration_Null_Percent,
    ROUND(SUM(CASE WHEN TrainingCost IS NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS TrainingCost_Null_Percent
FROM employee_full;

CREATE VIEW employee_hr_analytics AS
SELECT 
    e1.*,  
    e2.Supervisor,
    e2.ADEmail,
    e2.TerminationType,
    e2.JobFunctionDescription,
    e2.Location,
    e2.LocationCode,
    e2.Trainer,
	e2.exitdate,
	e2.terminationdescription
FROM employee_data e1
LEFT JOIN employee_full e2
ON e1.EmployeeID = e2.EmployeeID;

select * from employee_hr_analytics;


