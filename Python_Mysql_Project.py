print("------------ SQL CONNECTING WITH PYTHON ----------")

import mysql.connector

mydb = mysql.connector.connect(
    host = "localhost",
    user = "root",
    password = "_Manikandan@2205"
)

mycursor = mydb.cursor()

# mycursor.execute("SHOW DATABASES")
# # mycursor.execute("SELECT * FROM Orders")

# # print(mycursor)

# for x in mycursor:
#     print(x)
mycursor.execute("USE ORDERS")

mycursor.execute("SELECT * FROM Orders")

myresult = mycursor.fetchall()

print(myresult)

# for x in myresult:
    # print(x)