import QtQuick 2.0

Rectangle {
    id: main

    property url folderListsPath: "folders.txt"
    property url palettePath: "../../extras/flattr.gpl"

    width: 1024
    height: 768
    color: "#192430"

    Flickable {
        id: previewFlickable
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        anchors.margins: 25
        width: parent.width / 2.2
        contentWidth: width
        contentHeight: previewItem.height
        flickDeceleration: Flickable.VerticalFlick

        PreviewItem {
            id: previewItem
            width: parent.width
            file: folderListsPath
        }
    }

    Flickable {
        id: colorChooserFlickable
        anchors.top: parent.top
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.margins: 25
        width: parent.width / 2.2
        contentWidth: width
        contentHeight: colorChooser.height
        flickDeceleration: Flickable.VerticalFlick

        ColorChooser {
            id: colorChooser
            width: parent.width
            colorTable: palettePath
            onColorClicked: paintFolders(color)
        }
    }

    function paintFolders(color) {
        // TODO
    }
}

