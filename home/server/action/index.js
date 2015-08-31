var index = require('../model/index.js');
var nav = require('../model/nav.js');
//var app = yog.require('common:server/model/app.js');
var util = require('../lib/util.js');

module.exports = function (req, res) {
  //res.render('home/page/index.tpl', app.getInfo());
  res.render('home/page/index.tpl', {
    app: index.getData(),
    nav: nav.getItems()
  });
};