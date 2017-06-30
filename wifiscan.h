#ifndef WIFISCAN_H
#define WIFISCAN_H

#include <QObject>
#include <QDebug>

#ifdef __ANDROID__
#include <QAndroidJniObject>
#endif

class wifiScan : public QObject
{
    Q_OBJECT
public:
    explicit wifiScan(QObject *parent = nullptr);
    Q_INVOKABLE void scanNetworks();
signals:

public slots:

};

#endif // WIFISCAN_H
