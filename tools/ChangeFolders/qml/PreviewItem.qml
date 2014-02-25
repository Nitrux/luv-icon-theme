import QtQuick 2.0
import "../js/FlattrTraits.js" as FlattrTraits

Flow {
    id: root

    property url file
    property int imageSize: 100

    function getFolderFilenames() {
        var folderFilenames = [];
        previewRepeater.model.forEach( function(item) {
            folderFilenames.push(item.image);
        });
        return folderFilenames;
    }

    spacing: 30

    onFileChanged: {
        var request = new XMLHttpRequest()
        request.open('GET', file)
        request.onreadystatechange = function(event) {
            if (request.readyState === XMLHttpRequest.DONE) {
                previewRepeater.model =
                        FlattrTraits.processFolderFile(request.responseText);
            }
        }
        request.send();
    }

    Repeater {
        id: previewRepeater

        Image {
            source: "../" + modelData.image
            sourceSize.width: imageSize
            sourceSize.height: imageSize
        }
    }

}
