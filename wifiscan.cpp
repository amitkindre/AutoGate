#include "wifiscan.h"

wifiScan::wifiScan(QObject *parent) : QObject(parent)
{

}

void wifiScan::scanNetworks()
{
#ifdef __ANDROID__
       QAndroidJniObject  x = QAndroidJniObject::callStaticObjectMethod<jstring>("com/android/AutoGate/JWifi",
                                                    "getSize");

        qDebug() << "java says";
        qDebug() << x.toString();
#else
#endif
}
