#include "appstate.h"
#include <iostream>
#include <QJsonDocument>
#include <QNetworkReply>
#include <QNetworkRequest>
#include <QNetworkAccessManager>
#include <QDebug>
#include <QUrl>

AppState::AppState(QObject *parent) : QObject(parent)
{

}

QVariantMap AppState::getUser() const
{
    return m_user;
}

void AppState::fetchUser(QString email)
{
    QNetworkRequest request;
    QUrl url(m_jobcafe_user_endpoint + email);
    request.setUrl(url);
    QNetworkAccessManager *manager = new QNetworkAccessManager();
    manager->get(request);
    connect(manager, &QNetworkAccessManager::finished, [=](QNetworkReply *reply) {
        QString raw_data = reply->readAll();
        if (!raw_data.isEmpty()) {
            QJsonDocument json_data = QJsonDocument::fromJson(raw_data.toUtf8());
            m_user["email"] = json_data["email"].toString();
            m_user["fullName"] = json_data["fullName"].toString();
            m_user["firstName"] = json_data["firstName"].toString();
            m_user["lastName"] = json_data["lastName"].toString();
            m_user["password"] = json_data["password"].toString();
            m_user["phone"] = json_data["phone"].toString();
            m_user["isNewMessageNotified"] = json_data["isNewMessageNotified"].toBool();
            m_user["isNewServiceAdvertised"] = json_data["isNewServiceAdvertised"].toBool();
            m_user["subscribed"] = json_data["subscribed"].toBool();
            m_user["profilePicture"] = json_data["profilePicture"].toString();
            m_user["profession"] = json_data["profession"].toString();
            qDebug() << m_user;
        }
    });
}
