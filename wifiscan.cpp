#include "wifiscan.h"

wifiScan::wifiScan(QObject *parent) : QObject(parent)
{

}

void wifiScan::scanNetworks()
{
       QAndroidJniObject  x = QAndroidJniObject::callStaticObjectMethod<jstring>("org/qtproject/example/AutoGate/JWifi",
                                                    "getSize");

        qDebug() << "java says";
        qDebug() << x.toString();
}
