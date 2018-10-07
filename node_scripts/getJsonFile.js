function getJsonFile(path) {
    var fs = require('fs');
    var json = fs.readFileSync(path);
    return JSON.parse(json);
}

module.exports = exports = getJsonFile;
