import QtQuick 2.0
import CustomTypes 1.0
import "../js/FlattrTraits.js" as FlattrTraits

Flow {
    id: root

    property url file
    property int imageSize: 100

    spacing: 30

    onFileChanged: {
        var request = new XMLHttpRequest()
        request.open('GET', file)
        request.onreadystatechange = function(event) {
            if (request.readyState === XMLHttpRequest.DONE) {
                previewRepeater.model =
                        FlattrTraits.processFolderFile(request.responseText);
                updateImages();
            }
        }
        request.send();
    }

    Repeater {
        id: previewRepeater

        SvgImage {
            source: modelData.image
            width: imageSize
            height: imageSize
        }
    }

    function getFolderFilenames() {
        var folderFilenames = [];
        previewRepeater.model.forEach( function(item) {
            folderFilenames.push(item.image);
        });
        return folderFilenames;
    }

    function updateImages() {

        for (var i = 0; i < previewRepeater.count; ++i)
        {
            previewRepeater.itemAt(i).loadSource();
        }
    }
}
