import QtQuick 2.0
import "../js/FlattrTraits.js" as FlattrTraits


Column {
    id: root

    property url colorTable
    signal colorPicked(color front, color back, color paper, color glyph)

    onColorTableChanged: {
        var request = new XMLHttpRequest()
        request.open('GET', colorTable)
        request.onreadystatechange = function(event) {
            if (request.readyState === XMLHttpRequest.DONE) {
                colorRepeater.model =
                        FlattrTraits.processGimpPalette(request.responseText);
            }
        }
        request.send();
    }

    spacing: 20

    Flow {
        id: flow
        width: parent.width
        spacing: 5

        Repeater {
            id: colorRepeater
            property var selectedItem: colorRepeater;

            property color color: "white"

            Item {
                id: item
                width: 75
                height: 75

                property alias color: rect.color

                Component.onCompleted: {
                    if (index ===0) colorRepeater.selectedItem = item
                }

                Rectangle {
                    id: rect
                    anchors.fill: parent
                    color: modelData.color
                    anchors.margins: mouseArea.containsMouse ||
                                     item === colorRepeater.selectedItem ?
                                         0 : 10;
                    Behavior on anchors.margins {
                        NumberAnimation { duration: 100 }
                    }

                    MouseArea {
                        id: mouseArea
                        anchors.fill: parent
                        onClicked: colorRepeater.selectedItem = item
                        hoverEnabled: true
                    }
                }
            }
        }
    }

    Row {
        id: choosedRow
        anchors.left: parent.left
        spacing: 5

        Grid {
            anchors.verticalCenter: parent.verticalCenter
            rows: 2
            columns: 2
            spacing: 5

            Button {
                id: frontButton
                text: qsTr("Front")
                onClicked: passiveColor = colorRepeater.selectedItem.color
                passiveColor: "#1abc9c"
                activeColor: colorRepeater.selectedItem.color
                width: 130
            }

            Button {
                id: backButton
                text: qsTr("Back")
                onClicked: passiveColor = colorRepeater.selectedItem.color
                passiveColor: "#34495d"
                activeColor: colorRepeater.selectedItem.color
                width: 130
            }

            Button {
                id: paperButton
                text: qsTr("Paper")
                onClicked: passiveColor = colorRepeater.selectedItem.color
                passiveColor: "#ffffff"
                activeColor: colorRepeater.selectedItem.color
                width: 130
            }

            Button {
                id: glyphButton
                text: qsTr("Glyph")
                onClicked: passiveColor = colorRepeater.selectedItem.color
                passiveColor: "#304050"
                activeColor: colorRepeater.selectedItem.color
                width: 130
                visible: false
            }
        }

        Button {
            id: paintButon
            anchors.verticalCenter: parent.verticalCenter
            text: qsTr("Paint")
            onClicked: colorPicked(frontButton.color,
                                   backButton.color,
                                   paperButton.color,
                                   glyphButton.color)
            height: parent.height
        }
    }
}
