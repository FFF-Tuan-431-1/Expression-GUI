#ifndef EXPRESSION_H
#define EXPRESSION_H

#include <QObject>
#include <QString>

#include "src/Calculate.h"

class Expression : public QObject {

    Q_OBJECT
    Q_PROPERTY(QString expression READ getSuffix WRITE setExpression)
    Q_PROPERTY(int value READ getValue)

public:
    explicit Expression(QObject *parent = 0);
    QString getSuffix();
    void setExpression(const QString &exp);
    int getValue();
private:
    Calculate calculate = Calculate("");
    QString m_expression = "";
};

#endif // EXPRESSION_H
