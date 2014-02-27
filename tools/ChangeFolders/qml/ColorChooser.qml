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
                        onClicked: picker.color = rect.color
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
            id: picker
            width: parent.height
            height: parent.height
        }

        Column {
            anchors.verticalCenter: parent.verticalCenter

            Text {
                color: "#F2F2F2"
                text: picker.color
                font.pointSize: 28
            }

            Rectangle {
                id: applilyButton
                height: buttonText.height * 1.5
                width: buttonText.width * 1.5
                color: buttonMouseArea.containsMouse ? "#1ABC9C" : "#2A3E4F"
                Behavior on color {
                    ColorAnimation { duration: 100 }
                }

                Text {
                    anchors.centerIn: parent
                    id: buttonText
                    color: "#F2F2F2"
                    text: qsTr("Appily")
                    font.pointSize: 32
                }

                MouseArea {
                    id: buttonMouseArea
                    anchors.fill: parent
                    onPressed: colorPicked(picker.color)
                    hoverEnabled: true
                }
            }
        }
    }
}
