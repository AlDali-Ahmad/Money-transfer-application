from typing import Union
from pydantic import BaseModel
from fastapi import FastAPI
import sqlite3
app = FastAPI()
from fastapi.middleware.cors import CORSMiddleware

app.add_middleware(
    CORSMiddleware,
    allow_origins=['*']
)
#Cross Origin Resource Sharing

@app.get("/")
def read_root():
    return {"Hello": "World"}

@app.get("/Newtransfer/getAll")
def getAllransfers():
    con = sqlite3.connect("Money_transfers.db")
    sql="select * from New_transfer"
    cur=con.execute(sql)
    lst=cur.fetchall()
    print(lst)
    lst_json=[]
    for i in lst:
        item={}
        item["id"]=i[0]
        item["theSendname"]=i[1]
        item["sendphone"]=i[2]
        item["theState"]=i[3]
        item["city"]=i[4]
        item["futureName"]=i[5]
        item["futurephone"]=i[6]
        item["theamount"]=i[7]
        item["thecost"]=i[8]
        item["currencytype"]=i[9]
        item["date"]=i[10]
        lst_json.append(item)
    return lst_json

@app.post("/Newtransfer/insert")
def inserttransfer(theSendname,sendphone,theState,city,futureName,futurephone,theamount,thecost,currencytype,date):
    con = sqlite3.connect("Money_transfers.db")
    sql="insert into  New_transfer(theSendname,sendphone,theState,city,futureName,futurephone,theamount,thecost,currencytype,date) values('{}','{}','{}','{}','{}','{}',{},{},'{}','{}')".format(theSendname,sendphone,theState,city,futureName,futurephone,theamount,thecost,currencytype,date)
    con.execute(sql)
    con.commit()
    con.close()
    return {"status":"success"}

@app.post("/Newtransfer/update")
def updateTransfer(id,theSendname,sendphone,theState,city,futureName,futurephone,theamount,thecost,currencytype,date):
    id=int(id)
    con=sqlite3.connect("Money_transfers.db")
    sql="UPDATE New_transfer set theSendname='{}',sendphone='{}',theState='{}',city='{}',futureName='{}',futurephone='{}',theamount={},thecost={},currencytype='{}',date='{}' WHERE Id={}".format(theSendname,sendphone,theState,city,futureName,futurephone,theamount,thecost,currencytype,date,id)
    con.execute(sql)
    con.commit()
    con.close()
    return{"status":"success"}

@app.post("/Transfer/deleteTransfer")
def deleteTransfer(id1):
    id1=int(id1)
    con = sqlite3.connect("Money_transfers.db")
    sql="delete from New_transfer  where id={}".format(id1)
    con.execute(sql)
    con.commit()
    con.close()
    return {"status":"success"}

@app.get("/Newtransfer/getAllState")
def getAllState():
    con = sqlite3.connect("Money_transfers.db")
    sql="select * from The_State"
    cur=con.execute(sql)
    lst=cur.fetchall()
    print(lst)
    lst_json=[]
    for i in lst:
        item={}
        item["id"]=i[0]
        item["SendState"]=i[1]
        item["FuterState"]=i[2]
        item["FuterCity"]=i[3]
        item["TransferFee"]=i[4]
        lst_json.append(item)
    return lst_json

@app.post("/NewState/insert")
def insertState(SendState,FuterState,FuterCity,TransferFee):
    con = sqlite3.connect("Money_transfers.db")
    sql="insert into  The_State(SendState,FuterState,FuterCity,TransferFee) values('{}','{}','{}','{}')".format(SendState,FuterState,FuterCity,TransferFee)
    con.execute(sql)
    con.commit()
    con.close()
    return {"status":"success"}

@app.post("/NewState/Updete")
def UpdeteState(id,SendState,FuterState,FuterCity,TransferFee):
    con = sqlite3.connect("Money_transfers.db")
    sql="update The_State set SendState='{}',FuterState='{}',FuterCity='{}',TransferFee='{}' where id={}".format(SendState,FuterState,FuterCity,TransferFee,id)
    con.execute(sql)
    con.commit()
    con.close()
    return {"status":"success"}

@app.post("/Transfer/deleteState")
def deleteState(id1):
    id1=int(id1)
    con = sqlite3.connect("Money_transfers.db")
    sql="delete from The_State  where id={}".format(id1)
    con.execute(sql)
    con.commit()
    con.close()
    return {"status":"success"}




@app.get("/Newtransfer/getAllUser")
def getAllUser():
    con = sqlite3.connect("Money_transfers.db")
    sql="select * from Users"
    cur=con.execute(sql)
    lst=cur.fetchall()
    print(lst)
    lst_json=[]
    for i in lst:
        item={}
        item["id"]=i[0]
        item["username"]=i[1]
        item["pasword"]=i[2]
        lst_json.append(item)
    return lst_json

@app.post("/Newtransfer/updateUser")
def updateUser(id,username,pasword):
    con=sqlite3.connect("Money_transfers.db")
    sql="UPDATE Users set username='{}',pasword='{}' WHERE Id={}".format(username,pasword,id)
    con.execute(sql)
    con.commit()
    con.close()
    return{"status":"success"}

@app.post("/Transfer/deleteUser")
def deleteUsers(id1):
    id1=int(id1)
    con = sqlite3.connect("Money_transfers.db")
    sql="delete from Users  where id={}".format(id1)
    con.execute(sql)
    con.commit()
    con.close()
    return {"status":"success"}


@app.get("/Login")
def getuser(username,pasword):
    con=sqlite3.connect("Money_transfers.db")
    sql="select * from Users where username='{}' and pasword='{}'".format(username,pasword)
    cur=con.execute(sql)
    lst=cur.fetchall()
    if len(lst)>0:
        return True
    else:
        return False
      
@app.post("/Reguest")
def insertuser(username,pasword):
    con=sqlite3.connect("Money_transfers.db")
    sql="insert into Users(username,pasword) values('{}','{}')".format(username,pasword)
    con.execute(sql)
    con.commit()
    con.close()
    return {"access":"true"}

