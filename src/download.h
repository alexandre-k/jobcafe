#pragma once
#include <QObject>
#include <QNetworkAccessManager>
#include <QNetworkRequest>
#include <QNetworkReply>
#include <QUrl>
#include <QSaveFile>
#include <QFileInfo>
#include <QDir>
#include <QtCore>

class Download : public QObject
{
    Q_OBJECT

    Q_PROPERTY(QUrl url READ url WRITE setUrl NOTIFY urlChanged)
    Q_PROPERTY(QUrl destination READ destination WRITE setDestination NOTIFY destinationChanged)

public:
    explicit Download();
    ~Download();

    Q_INVOKABLE void start();
    QUrl url() const;
    void setUrl(const QUrl &url);

    QUrl destination() const;
    void setDestination(const QUrl &destination);

signals:
    void urlChanged();
    void destinationChanged();
    void saved();

public slots:
    void downloadFinished(QNetworkReply *reply);
    void onSaved();

private:
    QNetworkAccessManager m_manager;
    QUrl m_url;
    QUrl m_destination;
    QNetworkReply* m_reply;
    void saveDownloadedFile(QIODevice *data);
};
