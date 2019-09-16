#include "download.h"
#include <QDebug>


Download::Download()
{
    connect(&m_manager,
            SIGNAL(finished(QNetworkReply*)),
            SLOT(downloadFinished(QNetworkReply*)));
}

Download::~Download()
{
}

QUrl Download::url() const
{
    return m_url;
}

void Download::setUrl(const QUrl &url)
{
    m_url = url;
}

QUrl Download::destination() const
{
    return m_destination;
}

void Download::setDestination(const QUrl &destination)
{
    m_destination = destination;
}


void Download::start()
{
    QNetworkRequest request(m_url);
    QNetworkReply *m_reply = m_manager.get(request);
}

void Download::downloadFinished(QNetworkReply *reply)
{
    QUrl url = reply->url();
    qDebug() << "Downloaded: " << url;
    saveDownloadedFile(reply);
    reply->deleteLater();
}

void Download::saveDownloadedFile(QIODevice *data)
{
    QFile file(QFileInfo(m_destination.path()).filePath());
    file.open(QIODevice::WriteOnly);
    QByteArray downloadedData = data->readAll();
    file.write(downloadedData);
    file.close();
    emit saved();
}

void Download::onSaved()
{
}

