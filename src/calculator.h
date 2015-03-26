#ifndef CALCULATOR_H
#define CALCULATOR_H

#include <QObject>
#include <QString>

class Calculator : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString expression READ getSuffix WRITE setExpression)
    Q_PROPERTY(int value READ getValue)

public:
    explicit Calculator(QObject *parent = 0);
    ~Calculator();

    Qstring getSuffix();
    void setExpression(Qstring exp);
    void getValue();

private:
    QString expression;

};

#endif // CALCULATOR_H
