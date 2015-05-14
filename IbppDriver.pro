CONFIG += qt \
    plugin
QT += core \
    sql
DEFINES	-= UNICODE
QT -= gui # -=   GUI
TEMPLATE = lib

CONFIG(debug, debug|release) {
    DESTDIR = bin/debug
    TARGET =   qsqlfirebirdd
    OBJECTS_DIR = build/debug
	MOC_DIR = build/debug
	RCC_DIR = build/debug
	UI_DIR = build/debug
} else {
    DESTDIR = bin/release
    TARGET =   qsqlfirebird
    OBJECTS_DIR = build/release
	MOC_DIR = build/release
	RCC_DIR = build/release
	UI_DIR = build/release
}

DEFINES += QT_NO_CAST_TO_ASCII \
    QT_NO_CAST_FROM_ASCII
HEADERS += src/qsql_ibpp.h \
    src/qsqlcachedresult_p.h
SOURCES += src/main.cpp \
    src/qsql_ibpp.cpp
include(./ibpp2531/ibpp.pri) # +=   IBPP
contains(QT_CONFIG, reduce_exports):CONFIG += hide_symbols  # +=   hide_symbols

target.path     += $$[QT_INSTALL_PLUGINS]/sqldrivers
INSTALLS        += target
