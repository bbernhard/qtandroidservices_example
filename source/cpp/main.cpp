#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QDebug>

#ifdef Q_OS_ANDROID
#include <QAndroidJniObject>
#include <QtAndroid>
#endif

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;

    if (QCoreApplication::arguments().count() > 1){
        qDebug() << "I am the service";
    }
    else{
        qDebug() << "I am the application";
        engine.addImportPath(QStringLiteral("qrc:/"));
        engine.load(QUrl(QStringLiteral("qrc:/source/qml/main.qml")));
    }
    return app.exec();
}
