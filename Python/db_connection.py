import mysql.connector

def get_connection():
    connection = mysql.connector.connect(
        host="localhost",
        user="root",
        password="Kr765uk12@@",
        database="Recruitment_Analytics_DB"
    )

    return connection