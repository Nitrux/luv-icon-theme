import QtQuick 2.0
import "FlattrTraits.js" as FlattrTraits

Item {
    id: root

    property alias spacing: flow.spacing
    property int rectSize: 75
    property url colorTable

    signal colorClicked(color color)

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

    Flow {
        id: flow
        anchors.fill: parent
        spacing: 15

        Repeater {
            id: colorRepeater

            Item {
                width: rectSize
                height: rectSize

                Rectangle {
                    id: rect
                    anchors.fill: parent
                    color: modelData.color
                    anchors.margins: mouseArea.containsMouse ? 0 : 5;

                    MouseArea{
                        id: mouseArea
                        anchors.fill: parent
                        onClicked: colorClicked(rect.color)
                        hoverEnabled: true
                    }
                }
            }
        }
    }
}
