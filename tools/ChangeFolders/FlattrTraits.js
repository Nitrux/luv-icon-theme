
function processGimpPalette(text)
{
    var lines = text.split('\n');
    var colors = [];

    for (var i = 0; i < lines.length; ++i) {
        var splitLine = lines[i].match(/^(\d+)\s+(\d+)\s+(\d+)\s+(.*)/);
        if (splitLine) {
            colors.push( {
                color: rgbToHex(splitLine[1], splitLine[2], splitLine[3]),
                colorName: splitLine[4]
            });
        }
    }
    return colors;
}

function componentToHex(c) {
    var hex = parseInt(c).toString(16);
    return hex.length === 1 ? "0" + hex : hex;
}

function rgbToHex(r, g, b) {
    return "#" + componentToHex(r) + componentToHex(g) + componentToHex(b);
}
