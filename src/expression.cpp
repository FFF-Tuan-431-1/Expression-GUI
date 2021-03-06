#include "Expression.h"
#include "Calculate.h"

Expression::Expression(QObject *parent) : QObject(parent)
{
}

void Expression::setExpression(const QString &exp) {
    m_expression = exp;
    calculate.setExpression(exp.toStdString());
}

QString Expression::getSuffix() {
    return QString::fromStdString(calculate.getSuffix());
}

int Expression::getValue() {
    return calculate.getAnswer();
}

bool Expression::isError() {
    return calculate.isError();
}

