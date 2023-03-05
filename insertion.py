import mysql.connector as connector
con=connector.connect(host="localhost",port='3306',user='root',
                      password='',database='test')

#query = "create table shreya(id int,name char(244))"

def insert_data(connection,table,data):
        if(table!=''):
            cur = connection.cursor()
            sql = "INSERT INTO "+table+" VALUES (%s,%s,%s)"
            #sql1 = "insert into student('id','Namel','Course') values(1,'ABC','ABC')"
            #cur.execute(sql1)
            cur.execute(sql,data)
            connection.commit()

          
        else:
            print("Data not submitted")

  
insert_data(con,'student',['6','ABC','ABC'])



