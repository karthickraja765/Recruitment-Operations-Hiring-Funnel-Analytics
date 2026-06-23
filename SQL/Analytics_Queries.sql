-- Query 1: Total Applications
SELECT COUNT(*) AS Total_Applications
FROM Applications;

-- Query 2: Applications by Status
SELECT Application_Status,
       COUNT(*) AS Application_Count
FROM Applications
GROUP BY Application_Status
ORDER BY Application_Count DESC;

-- Query 3: Applications by Department
SELECT s.Department,
       COUNT(*) AS Applications
FROM Applications a
JOIN Students s
ON a.Student_ID = s.Student_ID
GROUP BY s.Department
ORDER BY Applications DESC;

-- Query 4: Company-wise Applications
SELECT c.Company_Name,
       COUNT(*) AS Applications
FROM Applications a
JOIN Jobs j
ON a.Job_ID = j.Job_ID
JOIN Companies c
ON j.Company_ID = c.Company_ID
GROUP BY c.Company_Name
ORDER BY Applications DESC;

-- Query 5: Hiring Funnel Summary
SELECT
    (SELECT COUNT(*) FROM Applications) AS Applications,
    (SELECT COUNT(*) FROM Interviews) AS Interviews,
    (SELECT COUNT(*) FROM Offers) AS Offers,
    (SELECT COUNT(*) FROM Hires) AS Hires;

-- Query 6: Funnel Conversion Rates
SELECT
ROUND(
((SELECT COUNT(*) FROM Interviews) * 100.0 /
(SELECT COUNT(*) FROM Applications)),2
) AS App_To_Interview_Percent,

ROUND(
((SELECT COUNT(*) FROM Offers) * 100.0 /
(SELECT COUNT(*) FROM Interviews)),2
) AS Interview_To_Offer_Percent,

ROUND(
((SELECT COUNT(*) FROM Hires) * 100.0 /
(SELECT COUNT(*) FROM Offers)),2
) AS Offer_To_Hire_Percent;

-- Query 7: Recruiter Workload
SELECT r.Recruiter_Name,
       COUNT(j.Job_ID) AS Jobs_Managed
FROM Recruiters r
LEFT JOIN Jobs j
ON r.Recruiter_ID = j.Recruiter_ID
GROUP BY r.Recruiter_Name
ORDER BY Jobs_Managed DESC;

-- Query 8: Offer Acceptance Rate
SELECT
ROUND(
(
COUNT(CASE WHEN Offer_Status='Accepted' THEN 1 END)
* 100.0
/
COUNT(*)
),2
) AS Offer_Acceptance_Rate
FROM Offers;

-- Query 9: Department-wise Average CGPA
SELECT
Department,
ROUND(AVG(CGPA),2) AS Average_CGPA
FROM Students
GROUP BY Department
ORDER BY Average_CGPA DESC;

-- Query 10: Hires by Company
SELECT
c.Company_Name,
COUNT(h.Hire_ID) AS Total_Hires
FROM Hires h
JOIN Offers o
ON h.Offer_ID = o.Offer_ID
JOIN Applications a
ON o.Application_ID = a.Application_ID
JOIN Jobs j
ON a.Job_ID = j.Job_ID
JOIN Companies c
ON j.Company_ID = c.Company_ID
GROUP BY c.Company_Name
ORDER BY Total_Hires DESC;

-- Query 11: Candidate Drop-Off Analysis
SELECT 'Applications' AS Stage, COUNT(*) AS Count_Value
FROM Applications

UNION ALL

SELECT 'Interviews', COUNT(*)
FROM Interviews

UNION ALL

SELECT 'Offers', COUNT(*)
FROM Offers

UNION ALL

SELECT 'Hires', COUNT(*)
FROM Hires;

-- Query 12: Top Paying Jobs
SELECT
Job_Title,
Company_ID,
Salary_LPA
FROM Jobs
ORDER BY Salary_LPA DESC
LIMIT 5;
