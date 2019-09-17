#pragma once
#include <QFile>
#include <QNetworkAccessManager>
#include <QNetworkReply>
#include <QObject>
#include <QUrl>
#include <QString>


class Upload : public QObject
{
    Q_OBJECT

    Q_PROPERTY(QString user READ user WRITE setUser NOTIFY userChanged)
    Q_PROPERTY(QUrl fullPath READ fullPath WRITE setFullPath NOTIFY fullPathChanged)
    Q_PROPERTY(QUrl url READ url WRITE setUrl NOTIFY urlChanged)

public:
    explicit Upload();

    Q_INVOKABLE void start();

    QString user() const;
    void setUser(const QString &usr);

    QUrl fullPath();
    void setFullPath(const QUrl &path);

    QUrl url() const;
    void setUrl(const QUrl &url);

signals:
    void userChanged();
    void fullPathChanged();
    void urlChanged();

private:
    QString m_user;
    QUrl m_fullPath;
    QFile *m_image;
    QUrl m_url;
    QNetworkAccessManager m_manager;
    QHttpMultiPart *multiPart;
    QNetworkReply *m_reply;

    void copyToAppDir();
};
