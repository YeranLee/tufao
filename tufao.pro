# General info

release {
    TARGET = tufao
} else {
    TARGET = tufao_d
}

TEMPLATE = lib
VERSION = 0.1.0

QT += network
QT -= gui

# Build info

DEFINES += TUFAO_LIBRARY
OBJECTS_DIR = build
MOC_DIR = build
DESTDIR = lib

# Install info

target.path = $$INSTALLDIR$$[QT_INSTALL_LIBS]

qmakefile.path = $$INSTALLDIR$$[QMAKE_MKSPECS]/features
qmakefile.files = tufao.prf

headers.path = $$INSTALLDIR$$[QT_INSTALL_HEADERS]/Tufao
headers.files = src/*.h \
    include/*

INSTALLS = target qmakefile headers

# Project files

SOURCES += src/httpserver.cpp \
    src/httpserverrequest.cpp \
    src/httpserverresponse.cpp \
    src/httpsserver.cpp \
    src/url.cpp \
    src/querystring.cpp \
    src/priv/tcpserverwrapper.cpp \
    src/priv/reasonphrase.cpp \
    src/priv/http_parser.cpp

HEADERS += src/httpserver.h \
    src/tufao_global.h \
    src/httpserverrequest.h \
    src/httpserverresponse.h \
    src/httpsserver.h \
    src/url.h \
    src/querystring.h \
    src/priv/tcpserverwrapper.h \
    src/priv/httpserver.h \
    src/priv/httpserverrequest.h \
    src/priv/httpsserver.h \
    src/priv/httpserverresponse.h \
    src/priv/reasonphrase.h \
    src/priv/http_parser_qt_helper.h \
    src/priv/http_parser.h \
    src/priv/url.h \
    src/ibytearray.h \
    src/headers.h
