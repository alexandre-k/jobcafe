#include "upload.h"
#include <QDebug>
#include <QDir>
#include <QFile>
#include <QHttpMultiPart>
#include <QNetworkReply>
#include <QNetworkRequest>
#include <QNetworkAccessManager>
#include <QStandardPaths>
#include <QStringList>

Upload::Upload()
{
}

void Upload::start()
{
    qDebug() << "START";
    qDebug() << "FILES " << files();
    for (QUrl fullPath : files()) {
        qDebug() << "Path: " << fullPath;
        QString imageType = "image/" + QFileInfo(fullPath.path()).completeSuffix();
        QFile *m_image = new QFile(fullPath.path().toUtf8());
        copyToAppDir(fullPath);

        multiPart = new QHttpMultiPart(QHttpMultiPart::FormDataType);

        qDebug() << "FULLPATH *******:" << fullPath;
        qDebug() << "Will upload to: ";
        qDebug() << "User:" << user().toUtf8();
        qDebug() << "Image path:" << fullPath.path();
        qDebug() << "Image type:" << imageType;
        qDebug() << "Image name:" << fullPath.fileName();
        qDebug() << "Url:" << url();

        QHttpPart userPart;
        userPart.setHeader(QNetworkRequest::ContentDispositionHeader, QVariant("form-data; name=\"user\""));
        userPart.setBody(user().toUtf8());

        QHttpPart imagePart;
        imagePart.setHeader(QNetworkRequest::ContentTypeHeader, QVariant(imageType.toUtf8()));
        imagePart.setHeader(QNetworkRequest::ContentDispositionHeader, QVariant("form-data; name=\"picture\"; filename=\"" + fullPath.fileName().toUtf8() + "\""));
        m_image->open(QIODevice::ReadOnly);
        imagePart.setBodyDevice(m_image);
        m_image->setParent(multiPart);

        multiPart->append(userPart);
        multiPart->append(imagePart);

        QNetworkRequest request(url());
        QNetworkReply *m_reply = m_manager.post(request, multiPart);
        multiPart->setParent(m_reply);
        qDebug() << "Uploading file" << fullPath << "to" << m_url << "...";
    }
}

QString Upload::user() const
{
    return m_user;
}

void Upload::setUser(const QString &usr)
{
    m_user = usr;
}

QList<QUrl> Upload::files()
{
    return m_files;
}

void Upload::setFiles(const QList<QUrl> &afiles)
{
    m_files = afiles;
}

QUrl Upload::url() const
{
    return m_url;
}

void Upload::setUrl(const QUrl &url)
{
    m_url = url;
}

void Upload::copyToAppDir(QUrl fullPath)
{
    QString appFolder = QStandardPaths::writableLocation(QStandardPaths::AppDataLocation);
    QDir appDir(appFolder);
    QString from = fullPath.path();
    QString to = appDir.path() + "/profile_picture.png";
    QFile::remove(to);
    QFile::copy(from, to);

}
