import pandas as pd
from db_connection import get_connection

conn = get_connection()

query = """
SELECT
    c.Company_Name,
    COUNT(a.Application_ID) AS Applications,
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

df = pd.read_sql(query, conn)

output_file = "../Data/Recruitment_KPI_Report.xlsx"

df.to_excel(output_file, index=False)

print(f"\nReport Generated Successfully!")
print(f"File: {output_file}")

conn.close()