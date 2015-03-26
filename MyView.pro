TEMPLATE = app

QT += qml quick widgets

SOURCES += main.cpp \
    src/Calculate.cpp \
    src/Cell.cpp \
    src/Check.cpp \
    src/Suffix.cpp \
    src/Util.cpp \
    expression.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

HEADERS += \
    src/Calculate.h \
    src/Cell.h \
    src/Check.h \
    src/Suffix.h \
    src/Util.h \
    expression.h
