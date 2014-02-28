import QtQuick 2.0

Rectangle {
    id: root

    property alias text: textItem.text
    property alias icons: iconitem.source

    property color passiveColor: "#2A3E4F"
    property color activeColor:  "#1ABC9C"

    signal clicked()

    height: 75
    width: contentsRow.width + 50
    color: mouseArea.containsMouse ? activeColor : passiveColor

    Behavior on color { ColorAnimation { duration: 100 } }

    Row {
        id: contentsRow
        anchors.centerIn: parent

        Image {
            id: iconitem
            anchors.verticalCenter: parent.verticalCenter
        }

        Text {
            id: textItem
            anchors.verticalCenter: parent.verticalCenter
            font.pointSize: 32
        }
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        onPressed: root.clicked()
        hoverEnabled: true
    }
}
