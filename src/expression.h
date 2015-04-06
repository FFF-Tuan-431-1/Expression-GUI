#ifndef EXPRESSION_H
#define EXPRESSION_H

#include <QObject>
#include <QString>

#include "Calculate.h"

class Expression : public QObject {

    Q_OBJECT
    Q_PROPERTY(QString expression WRITE setExpression)
    Q_PROPERTY(int value READ getValue)
    Q_PROPERTY(bool isError READ isError)
    Q_PROPERTY(QString suffix READ getSuffix)

public:
    explicit Expression(QObject *parent = 0);
    QString getSuffix();
    void setExpression(const QString &exp);
    int getValue();
    bool isError();
private:
    Calculate calculate = Calculate("");
    QString m_expression = "";
};

#endif // EXPRESSION_H
