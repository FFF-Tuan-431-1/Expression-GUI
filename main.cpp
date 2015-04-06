#include <QApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>

#include "src/Expression.h"

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    QQmlApplicationEngine engine;
    Expression exp;
    engine.rootContext()->setContextProperty("exp", &exp);

    engine.load(QUrl(QStringLiteral("qrc:/view/main.qml")));

    return app.exec();
}
