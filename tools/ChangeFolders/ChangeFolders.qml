import QtQuick 2.0

Rectangle {
    id: main
    width: 1024
    height: 768
    color: "#192430"

    ColorChooser{
        id: colorChooser
        width: parent.width / 3
        anchors.top: parent.top
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.margins: 25
        colorTable: "../../extras/flattr.gpl"
    }
}

