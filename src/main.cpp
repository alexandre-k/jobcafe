#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QStandardPaths>
#include <QDir>
#include "download.h"
#include <QDebug>

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    QString appFolder = QStandardPaths::writableLocation(QStandardPaths::AppDataLocation);
    QDir appDir(appFolder);

    qmlRegisterType<Download>("download", 1, 0, "Download");
    auto root = engine.rootContext();
    root->setContextProperty("appFolder", appDir.path());
    const QUrl url(QStringLiteral("qrc:/ui/Main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
