import QtQuick 2.0

Rectangle {
    id: root

    property alias text: textItem.text
    property alias icons: iconitem.source
    signal clicked()

    height: 75
    width: contentsRow.width + 50
    color: mouseArea.containsMouse ? "#1ABC9C" : "#2A3E4F"

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
            color: "#F2F2F2"
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
