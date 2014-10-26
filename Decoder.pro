QT       += core gui

QMAKE_CXXFLAGS += -std=c++11

INCLUDEPATH += /opt/xenon-android/include

# add xenon library and dist
android {
LIBS += -L/opt/xenon-android/lib -lxenon
ANDROID_EXTRA_LIBS += /opt/xenon-android/lib/libxenon.so
ANDROID_PACKAGE_SOURCE_DIR = /opt/xenon-android/dist
}

#macx|linux {
#LIBS += -L$$(IMSDIR)/o -lxenon
#INCLUDEPATH += $$(ANDROID_XENON_LIB)/../../xenon
#
#}

QT += widgets

TARGET = Decoder
TEMPLATE = app


SOURCES += main.cpp\
        decoder.cpp

HEADERS  += decoder.h

FORMS    += decoder.ui

CONFIG += mobility
MOBILITY = 

