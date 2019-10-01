#pragma once
#include <QFile>
#include <QList>
#include <QNetworkAccessManager>
#include <QNetworkReply>
#include <QObject>
#include <QUrl>
#include <QString>
#include <QVariant>


class Upload : public QObject
{
    Q_OBJECT

    Q_PROPERTY(QString user READ user WRITE setUser NOTIFY userChanged)
    Q_PROPERTY(QList<QUrl> files READ files WRITE setFiles NOTIFY filesChanged)
    Q_PROPERTY(QUrl url READ url WRITE setUrl NOTIFY urlChanged)

public:
    explicit Upload();

    Q_INVOKABLE void start();

    QString user() const;
    void setUser(const QString &usr);

    QList<QUrl> files();
    void setFiles(const QList<QUrl> &afiles);

    QUrl url() const;
    void setUrl(const QUrl &url);

signals:
    void userChanged();
    void filesChanged();
    void urlChanged();

private:
    QString m_user;
    QList<QUrl> m_files;
    QFile *m_image;
    QUrl m_url;
    QNetworkAccessManager m_manager;
    QHttpMultiPart *multiPart;
    QNetworkReply *m_reply;

    void copyToAppDir(QUrl fullPath);
};
