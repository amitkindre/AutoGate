#ifndef USERDATABSE_H
#define USERDATABSE_H

#include <QObject>
#include <QVector>


class UserDatabse : public QObject
{
    Q_OBJECT
public:
    explicit UserDatabse(QObject *parent = nullptr);

    void initDatabase();
    void connectDatabase();
    void insertDatabase(int, QString, QString);
    Q_INVOKABLE void listAllUsers();

signals:
    void func(QString UserName);

public slots:

private:
     QVector<QString> UserList;
};

#endif // USERDATABSE_H
