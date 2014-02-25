QT += core qml quick
TARGET = change_folders
TEMPLATE = app

QMAKE_CXXFLAGS += -std=c++0x

SOURCES += \
    main.cpp \
    process/process.cpp

RESOURCES +=

OTHER_FILES += \
    qml/Main.qml \
    qml/ColorChooser.qml \
    qml/PreviewItem.qml \
    js/FlattrTraits.js

HEADERS += \
    process/process.h
