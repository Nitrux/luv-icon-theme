import QtQuick 2.0
import "../js/FlattrTraits.js" as FlattrTraits


Column {
    id: root

    property url colorTable
    signal colorPicked(color color)

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
        spacing: 10

        Repeater {
            id: colorRepeater

            Item {
                width: 75
                height: 75

                Rectangle {
                    id: rect
                    anchors.fill: parent
                    color: modelData.color
                    anchors.margins: mouseArea.containsMouse ? 0 : 5;
                    Behavior on anchors.margins {
                        NumberAnimation { duration: 100 }
                    }

                    MouseArea {
                        id: mouseArea
                        anchors.fill: parent
                        onClicked: colorIndicator.color = rect.color
                        hoverEnabled: true
                    }
                }
            }
        }
    }

    Row {
        id: choosedRow
        anchors.left: parent.left
        spacing: 25

        Rectangle {
            id: colorIndicator
            width: parent.height
            height: parent.height
        }

        Column {
            anchors.verticalCenter: parent.verticalCenter

            Text {
                color: "#F2F2F2"
                text: colorIndicator.color
                font.pointSize: 28
            }

            Button {
                id: applilyButton
                text: qsTr("Appily")
                onClicked: colorPicked(colorIndicator.color)
            }
        }
    }
}
