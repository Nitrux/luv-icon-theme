function processFolderFile(text) {
    return processMatchingCondition(text,
                             /^[^#].*/,
                             function(line) {
                                 var item = ({
                                     image: line[0]
                                 });
                                 return item;
                             });
}

function processGimpPalette(text) {
    return processMatchingCondition(text,
                             /^(\d+)\s+(\d+)\s+(\d+)\s+(.*)/,
                             function(line) {
                                 var item = ({
                                     color: rgbToHex(line[1],
                                                     line[2],
                                                     line[3]),
                                     colorName: line[4]
                                 });
                                 return item;
                             });
}

function processMatchingCondition(text, condition, formFunction) {
    var lines = text.split('\n');
    var items = [];

    for (var i = 0; i < lines.length; ++i) {
        var splitLine = lines[i].match(condition);
        if (splitLine) items.push(formFunction(splitLine));
    }
    return items;
}

function rgbToHex(r, g, b) {
    return "#" + componentToHex(r) + componentToHex(g) + componentToHex(b);
}

function componentToHex(c) {
    var hex = parseInt(c).toString(16);
    return hex.length === 1 ? "0" + hex : hex;
}
