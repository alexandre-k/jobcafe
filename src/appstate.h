#pragma once
#include <iostream>
#include <QVariantMap>
#include <QObject>
#include <QUrl>

class AppState : public QObject
{
    Q_OBJECT
public:
    explicit AppState(QObject *parent = nullptr);
    Q_INVOKABLE void fetchUser(QString email);
    Q_INVOKABLE void sayHello() { std::cout << "Hello everyone" << std::endl; }
    Q_INVOKABLE QVariantMap getUser() const;

private:
    QVariantMap m_user;
    QString m_jobcafe_base_endpoint = "http://localhost:8080/";
    QString m_jobcafe_user_endpoint = m_jobcafe_base_endpoint + "user/";


signals:

public slots:
};
