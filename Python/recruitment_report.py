import pandas as pd
from db_connection import get_connection

conn = get_connection()

applications = pd.read_sql(
    "SELECT COUNT(*) AS Total FROM Applications",
    conn
)

interviews = pd.read_sql(
    "SELECT COUNT(*) AS Total FROM Interviews",
    conn
)

offers = pd.read_sql(
    "SELECT COUNT(*) AS Total FROM Offers",
    conn
)

hires = pd.read_sql(
    "SELECT COUNT(*) AS Total FROM Hires",
    conn
)

total_applications = applications.iloc[0, 0]
total_interviews = interviews.iloc[0, 0]
total_offers = offers.iloc[0, 0]
total_hires = hires.iloc[0, 0]

app_to_interview = round(
    (total_interviews / total_applications) * 100, 2
)

interview_to_offer = round(
    (total_offers / total_interviews) * 100, 2
)

offer_to_hire = round(
    (total_hires / total_offers) * 100, 2
)

print("\nRECRUITMENT FUNNEL REPORT")
print("=" * 50)

print(f"Applications      : {total_applications}")
print(f"Interviews        : {total_interviews}")
print(f"Offers            : {total_offers}")
print(f"Hires             : {total_hires}")

print("\nCONVERSION RATES")
print("-" * 50)

print(f"App → Interview : {app_to_interview}%")
print(f"Interview → Offer : {interview_to_offer}%")
print(f"Offer → Hire : {offer_to_hire}%")

conn.close()