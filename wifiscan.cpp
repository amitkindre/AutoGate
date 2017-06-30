#include "wifiscan.h"

wifiScan::wifiScan(QObject *parent) : QObject(parent)
{

}

void wifiScan::scanNetworks()
{
#ifdef __ANDROID__
       QAndroidJniObject  x = QAndroidJniObject::callStaticObjectMethod<jstring>("org/qtproject/example/AutoGate/TestClass",
                                                    "getSize");

        qDebug() << "java says";
        qDebug() << x.toString();
#else
#endif
}
