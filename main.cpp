//#define __ANDROID__

#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QDebug>
#include "wifiscan.h"


int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    QQmlContext *contextp = engine.rootContext();   //get context

    wifiScan wifis;                                 //wifi scanner object

    contextp->setContextProperty("wifiscan",&wifis);   //make object visible in qml
    //contextp->setContextProperty("jWifiScan",&JWifi);

    engine.load(QUrl(QLatin1String("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
