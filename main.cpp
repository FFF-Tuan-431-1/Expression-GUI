#include <QApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>

#include "expression.h"

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    QQmlApplicationEngine engine;
    Expression exp;
    engine.rootContext()->setContextProperty("exp", &exp);

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
