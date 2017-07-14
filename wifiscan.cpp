#include "wifiscan.h"

wifiScan::wifiScan(QObject *parent) : QObject(parent)
{

}

void wifiScan::scanNetworks()
{
#ifdef __ANDROID__
       QAndroidJniObject  x = QAndroidJniObject::callStaticObjectMethod<jstring>("org/qtproject/example/AutoGatex/JWifi",
                                                    "getSize");

        qDebug() << "java says";                    //package org.qtproject.example.AutoGate;
        qDebug() << x.toString();

#else
#endif
}


