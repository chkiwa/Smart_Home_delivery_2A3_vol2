QT       += core gui multimedia
QT       += sql
QT       += core gui charts
QT       += core gui printsupport
QT       += serialport

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    arduino.cpp \
    connection.cpp \
    livreur.cpp \
    main.cpp \
    mainwindow.cpp \
    music.cpp \
    scooter.cpp

HEADERS += \
    arduino.h \
    connection.h \
    livreur.h \
    mainwindow.h \
    music.h \
    scooter.h

FORMS += \
    mainwindow.ui \
    music.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

RESOURCES += \
    resource.qrc
