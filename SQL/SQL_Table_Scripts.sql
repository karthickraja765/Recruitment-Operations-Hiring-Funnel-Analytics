-- ==========================================
-- TABLE: Students
-- ==========================================

CREATE TABLE Students (
    Student_ID INT PRIMARY KEY,
    Student_Name VARCHAR(100) NOT NULL,
    Gender VARCHAR(10) NOT NULL,
    Department VARCHAR(50) NOT NULL,
    CGPA DECIMAL(3,2) NOT NULL,
    Graduation_Year INT NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Phone_Number VARCHAR(15),
    College_Name VARCHAR(100) NOT NULL,
    Location VARCHAR(100)
);

-- ==========================================
-- TABLE: Companies
-- ==========================================

CREATE TABLE Companies (
    Company_ID INT PRIMARY KEY,
    Company_Name VARCHAR(100) NOT NULL,
    Industry VARCHAR(50) NOT NULL,
    Company_Size VARCHAR(20),
    Headquarters VARCHAR(100),
    Contact_Email VARCHAR(100) UNIQUE,
    Contact_Person VARCHAR(100),
    Hiring_Status VARCHAR(20) NOT NULL
);

-- ==========================================
-- TABLE: Recruiters
-- ==========================================

CREATE TABLE Recruiters (
    Recruiter_ID INT PRIMARY KEY,
    Recruiter_Name VARCHAR(100) NOT NULL,
    Company_ID INT NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Phone_Number VARCHAR(15),
    Designation VARCHAR(50),

    FOREIGN KEY (Company_ID)
    REFERENCES Companies(Company_ID)
);

-- ==========================================
-- TABLE: Jobs
-- ==========================================

CREATE TABLE Jobs (
    Job_ID INT PRIMARY KEY,
    Company_ID INT NOT NULL,
    Recruiter_ID INT NOT NULL,
    Job_Title VARCHAR(100) NOT NULL,
    Job_Role VARCHAR(100),
    Job_Location VARCHAR(100),
    Salary_LPA DECIMAL(5,2),
    Required_CGPA DECIMAL(3,2),
    Open_Date DATE NOT NULL,
    Close_Date DATE,
    Job_Status VARCHAR(20) NOT NULL,

    FOREIGN KEY (Company_ID)
    REFERENCES Companies(Company_ID),

    FOREIGN KEY (Recruiter_ID)
    REFERENCES Recruiters(Recruiter_ID)
);

-- ==========================================
-- TABLE: Applications
-- ==========================================

CREATE TABLE Applications (
    Application_ID INT PRIMARY KEY,
    Student_ID INT NOT NULL,
    Job_ID INT NOT NULL,
    Application_Date DATE NOT NULL,
    Application_Status VARCHAR(30) NOT NULL,

    FOREIGN KEY (Student_ID)
    REFERENCES Students(Student_ID),

    FOREIGN KEY (Job_ID)
    REFERENCES Jobs(Job_ID)
);

-- ==========================================
-- TABLE: Interviews
-- ==========================================

CREATE TABLE Interviews (
    Interview_ID INT PRIMARY KEY,
    Application_ID INT NOT NULL,
    Interview_Date DATE NOT NULL,
    Interview_Round VARCHAR(50) NOT NULL,
    Interview_Status VARCHAR(30) NOT NULL,
    Feedback_Score DECIMAL(3,2),

    FOREIGN KEY (Application_ID)
    REFERENCES Applications(Application_ID)
);

-- ==========================================
-- TABLE: Offers
-- ==========================================

CREATE TABLE Offers (
    Offer_ID INT PRIMARY KEY,
    Application_ID INT NOT NULL,
    Offer_Date DATE NOT NULL,
    Offered_Salary_LPA DECIMAL(5,2) NOT NULL,
    Offer_Status VARCHAR(30) NOT NULL,

    FOREIGN KEY (Application_ID)
    REFERENCES Applications(Application_ID)
);

-- ==========================================
-- TABLE: Hires
-- ==========================================

CREATE TABLE Hires (
    Hire_ID INT PRIMARY KEY,
    Offer_ID INT NOT NULL,
    Hire_Date DATE NOT NULL,
    Joining_Status VARCHAR(30) NOT NULL,

    FOREIGN KEY (Offer_ID)
    REFERENCES Offers(Offer_ID)
);