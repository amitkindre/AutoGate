//#define __ANDROID__

#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QDebug>
#include "wifiscan.h"


#include "userdatabse.h"



int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    QQmlContext *contextp = engine.rootContext();   //get context

    wifiScan wifis;                                 //wifi scanner object


    UserDatabse udb;
    contextp->setContextProperty("wscan",&wifis);   //make object visible in qml
    contextp->setContextProperty("udbase",&udb);

    udb.connectDatabase();
    udb.initDatabase();
    //udb.insertDatabase(1,"Amit","amit");
    //udb.insertDatabase(2,"Santosh","santu");
    //QVector<QString> ulist= udb.getDatabaseCount();
    //for(QVector<QString>::iterator i = ulist.begin(); i!= ulist.end(); i++)
        //qDebug() << "Data: " << *i;



    engine.load(QUrl(QLatin1String("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;



    return app.exec();
}

