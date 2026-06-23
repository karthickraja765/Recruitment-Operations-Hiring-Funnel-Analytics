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
    """
}

for file_name, query in queries.items():
    df = pd.read_sql(query, conn)
    df.to_csv(f"../Data/{file_name}.csv", index=False)

print("Dashboard data exported successfully.")

conn.close()