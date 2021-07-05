TEMPLATE = lib
CONFIG += staticlib

CONFIG += c++11

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

INCLUDEPATH += $$PWD/include

SOURCES += \
    src/muParser.cpp \
    src/muParserBase.cpp \
    src/muParserBytecode.cpp \
    src/muParserCallBack.cpp \
    src/muParserDLL.cpp \
    src/muParserError.cpp \
    src/muParserInt.cpp \
    src/muParserTest.cpp \
    src/muParserTokenReader.cpp \

HEADERS += \
    include/muParser.h \
    include/muParserBase.h \
    include/muParserBytecode.h \
    include/muParserCallBack.h \
    include/muParserDef.h \
    include/muParserDLL.h \
    include/muParserError.h \
    include/muParserFixes.h \
    include/muParserInt.h \
    include/muParserTemplateMagic.h \
    include/muParserTest.h \
    include/muParserToken.h \
    include/muParserTokenReader.h \

# Default rules for deployment.
unix {
    target.path = $$[QT_INSTALL_PLUGINS]/generic
}
!isEmpty(target.path): INSTALLS += target
