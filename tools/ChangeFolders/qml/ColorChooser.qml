import QtQuick 2.0
import "../js/FlattrTraits.js" as FlattrTraits

Flow {
    id: root

    spacing: 30
    property int rectSize: 70
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
                Behavior on anchors.margins {
                    NumberAnimation { duration: 100 }
                }

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
