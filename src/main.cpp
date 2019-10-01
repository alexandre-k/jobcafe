#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QStandardPaths>
#include <QDir>
#include <QFile>
#include "download.h"
#include "upload.h"
#include <QDebug>

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    QString appFolder = QStandardPaths::writableLocation(QStandardPaths::AppDataLocation);
    QDir appDir(appFolder);

    QString picturesFolder = QStandardPaths::writableLocation(QStandardPaths::PicturesLocation);
    QDir picturesDir(picturesFolder);

    qDebug() << picturesFolder;
    qmlRegisterType<Download>("download", 1, 0, "Download");
    qmlRegisterType<Upload>("upload", 1, 0, "Upload");
    auto root = engine.rootContext();
    root->setContextProperty("appFolder", appDir.path());
    root->setContextProperty("picturesFolder", picturesDir.path());
    const QUrl url(QStringLiteral("qrc:/ui/Main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
