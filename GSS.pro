QT += core gui multimedia multimediawidgets
QT += webenginewidgets
QT += widgets network
QT += multimedia

QT += quick quick3d
QT += 3dcore 3drender 3dinput 3dlogic 3dextras 3danimation
QT += 3dcore 3drender 3dinput 3dlogic 3dextras qml quick 3dquick 3danimation
QT += qml quick 3dcore 3drender 3dinput 3dquick
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets printsupport quickwidgets



CONFIG += c++17
CONFIG += c++11





# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    main.cpp \
    mainwindow.cpp \
    qcustomplot.cpp



HEADERS += \
    mainwindow.h \
    qcustomplot.h


FORMS += \
    mainwindow.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    Toolery.qss \

    itutayf1.png

RESOURCES += \
    qml.qrc
obj.qrc



