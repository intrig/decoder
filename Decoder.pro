QT       += core gui

QMAKE_CXXFLAGS += -std=c++11

# add xenon library and includes
android {
LIBS += -L/opt/xenon-2.0.0-beta3-armv7/lib -lxenon
INCLUDEPATH += /opt/xenon-2.0.0-beta3-armv7/include
ANDROID_EXTRA_LIBS += /opt/xenon-2.0.0-beta3-armv7/lib/libxenon.so
ANDROID_PACKAGE_SOURCE_DIR = $$(IMSDIR)/src/visual/android/Decoder/dist
}

macx|linux {
LIBS += -L/usr/local/lib -lxenon
INCLUDEPATH += /usr/local/include

}

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = Decoder
TEMPLATE = app


SOURCES += main.cpp\
        decoder.cpp

HEADERS  += decoder.h

FORMS    += decoder.ui

CONFIG += mobility
MOBILITY = 

