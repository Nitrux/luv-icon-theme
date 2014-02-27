QT += core qml quick svg
TARGET = change_folders
TEMPLATE = app

QMAKE_CXXFLAGS += -std=c++0x

SOURCES += \
    main.cpp \
    process/process.cpp \
    svg_image_item/svg_image_item.cpp

RESOURCES +=

OTHER_FILES += \
    qml/Main.qml \
    qml/ColorChooser.qml \
    qml/PreviewItem.qml \
    js/FlattrTraits.js \
    qml/Button.qml

HEADERS += \
    process/process.h \
    svg_image_item/svg_image_item.h
