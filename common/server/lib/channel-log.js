var config = require('../config.js');
var log4js = require('log4js');

var fs = require("fs");
if (!fs.existsSync(config.logPath)) {
	fs.mkdirSync(config.logPath);
}

log4js.configure(config.log4js);
module.exports = log4js.getLogger();