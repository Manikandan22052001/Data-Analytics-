import mysql.connector
from tabulate import tabulate

con = mysql.connector.connect(host = "localhost", username = "root", password = "_Manikandan@2205", database = "Pyhthon_with_MySql")

# if con:
#     print("connected")
# else:
#     print("connection error")

def insert(Stu_Name,Stu_Department,Stu_Age,Stu_City):
    res = con.cursor()
    sql = "insert into STUDENT(Stu_Name,Stu_Department,Stu_Age,Stu_City) values(%s,%s,%s,%s)"
    user = (Stu_Name,Stu_Department,Stu_Age,Stu_City)
    res.execute(sql,user)
    con.commit()
    print("#### Data Insert successfully ####")

def update(Stu_ID,Stu_Name,Stu_Department,Stu_Age,Stu_City):
    res = con.cursor()
    sql = "Update student Set Stu_Name=%s,Stu_Department=%s,Stu_Age=%s,Stu_City=%s where Stu_ID=%s"
    user = (Stu_Name,Stu_Department,Stu_Age,Stu_City,Stu_ID)
    res.execute(sql,user)
    con.commit()
    print("#### Data Update successfully ####")

def select():
    result = con.cursor()
    sql = "SELECT * FROM STUDENT"
    result.execute(sql)
    result_set = result.fetchall()
    print(tabulate(result_set,headers = ["Stu_ID", "Stu_Name", "Stu_Department", "Stu_Age", "Sti_City"]))

def delete(Stu_ID):
    res = con.cursor()
    sql = "Delete from student where Stu_Id = %s"
    user = (Stu_ID,)
    res.execute(sql, user)
    con.commit()
    print("#### Data Delete successfully ####")


while True:
    print("***************************************")
    print("----- student database management -----")
    print("***************************************")
    print("1.Insert")
    print("2.Update")
    print("3.Select")
    print("4.Delect")
    print("5.Exit")

    choice = int(input("Enter your choice:"))

    if choice == 1:
        Stu_Name = input("Enter your Name:")
        Stu_Department = input("Enter your Department:")
        Stu_Age = int(input("Enter your Age:"))
        Stu_City = input("Enter City:")
        insert(Stu_Name,Stu_Department,Stu_Age,Stu_City)
    elif choice == 2:
        Stu_ID = int(input("Enter your Updata Student ID:"))
        Stu_Name = input("Enter your Name:")
        Stu_Department = input("Enter your Department:")
        Stu_Age = int(input("Enter your Age:"))
        Stu_City = input("Enter City:")
        update(Stu_ID,Stu_Name,Stu_Department,Stu_Age,Stu_City)
    elif choice == 3:
        select()
    elif choice == 4:
        Stu_ID = int(input("Enter your Stu_ID NO:"))
        delete(Stu_ID)
    elif choice == 5:
        quit()
    else:
        print("Invalid Choice. please Enter your Right Choice!")

    
