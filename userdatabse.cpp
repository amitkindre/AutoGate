#include "userdatabse.h"
#include <QDebug>
#include <QSqlDatabase>
#include <QSqlQuery>
#include <QSqlDriver>
#include <QSqlError>



UserDatabse::UserDatabse(QObject *parent) : QObject(parent)
{

}



void UserDatabse::connectDatabase()
{
    const QString DRIVER("QSQLITE");

    if(!QSqlDatabase::isDriverAvailable(DRIVER)){
        qWarning() << "ERROR: Database driver not available" ;
        return;
    }

    QSqlDatabase db = QSqlDatabase::addDatabase("QSQLITE");

    db.setHostName("dbhost");
    db.setDatabaseName("userdb");

    if(!db.open()){
        qWarning() << "ERROR: open database" + db.lastError().text();//opening a database also creates it in SQLITE
    }

}


void UserDatabse::initDatabase()
{
    QSqlQuery query("CREATE TABLE people (id INTEGER PRIMARY KEY, name TEXT, passkeyword TEXT)");

    if(query.isActive()) //On successful execution returns true or false else return error
        qWarning() << "ERROR: opening database" + query.lastError().text();
}


void UserDatabse::insertDatabase(int id, QString name, QString passkeyword)
{
    QSqlQuery query;
    query.prepare("INSERT INTO people (name, passkeyword)"
                    "VALUES (:name, :passkeyword)");

    //query.bindValue(":id",101);
    query.bindValue(":name",name);
    query.bindValue(":passkeyword",passkeyword);

    if(!query.exec())
               qDebug() << "Insert data failed:" + query.lastError().text() ;


}

void UserDatabse::listAllUsers()
{
    QSqlQuery query;
    int id;
    QString name ;


    query.exec("SELECT id,name FROM people");

    while (query.next()) {
                id = query.value(0).toInt();
                name =  query.value(1).toString();
                UserList.append(name);
                emit func(name);
                qDebug() << id << name ;
            }
    //return id;//for count
}
