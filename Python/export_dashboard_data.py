import pandas as pd
from db_connection import get_connection

conn = get_connection()

queries = {
    "Applications_Status":
    """
    SELECT Application_Status,
           COUNT(*) AS Application_Count
    FROM Applications
    GROUP BY Application_Status;
    """,

    "Department_Applications":
    """
    SELECT s.Department,
           COUNT(*) AS Applications
    FROM Applications a
    JOIN Students s
      ON a.Student_ID = s.Student_ID
    GROUP BY s.Department;
    """,

    "Company_Applications":
    """
    SELECT c.Company_Name,
           COUNT(*) AS Applications
    FROM Applications a
    JOIN Jobs j
      ON a.Job_ID = j.Job_ID
    JOIN Companies c
      ON j.Company_ID = c.Company_ID
    GROUP BY c.Company_Name;
    """,

    "Funnel_Data":
    """
    SELECT 'Applications' AS Stage, COUNT(*) AS Total_Count
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
    """,

    "Recruiter_Performance":
    """
    SELECT
        r.Recruiter_Name,
        COUNT(j.Job_ID) AS Jobs_Managed
    FROM Recruiters r
    LEFT JOIN Jobs j
        ON r.Recruiter_ID = j.Recruiter_ID
    GROUP BY r.Recruiter_Name
    ORDER BY Jobs_Managed DESC;
    """,

    "Executive_Hiring_Summary":
    """
    SELECT
        c.Company_Name,
        COUNT(DISTINCT a.Application_ID) AS Applications,
        COUNT(DISTINCT i.Interview_ID) AS Interviews,
        COUNT(DISTINCT o.Offer_ID) AS Offers,
        COUNT(DISTINCT h.Hire_ID) AS Hires
    FROM Companies c
    LEFT JOIN Jobs j
        ON c.Company_ID = j.Company_ID
    LEFT JOIN Applications a
        ON j.Job_ID = a.Job_ID
    LEFT JOIN Interviews i
        ON a.Application_ID = i.Application_ID
    LEFT JOIN Offers o
        ON a.Application_ID = o.Application_ID
    LEFT JOIN Hires h
        ON o.Offer_ID = h.Offer_ID
    GROUP BY c.Company_Name
    ORDER BY Hires DESC;
    """
}

for file_name, query in queries.items():
    df = pd.read_sql(query, conn)
    df.to_csv(f"../Data/{file_name}.csv", index=False)

print("Dashboard data exported successfully.")

conn.close()