import QtQuick 2.0
import CustomTypes 1.0

Rectangle {
    id: main

    property url folderListsPath: "../folders.txt"
    property url palettePath: "../../../extras/flattr.gpl"
    property string script: "/script.sh"

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
            onColorPicked: paintFolders(front, back, paper, glyph)
        }
    }

    Process {
        id: process
    }

    function paintFolders(front, back, paper, glyph) {
        var filenames = previewItem.getFolderFilenames();

        filenames.forEach( function(filename) {
            console.log(process.execute(script + " " +
                                        filename + " " +
                                        front.toString().substr(1) + " " +
                                        back.toString().substr(1) + " " +
                                        paper.toString().substr(1) + " " +
                                        glyph.toString().substr(1) ));
        });
        previewItem.updateImages();
    }
}

