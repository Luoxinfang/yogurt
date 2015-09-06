//index action

module.exports = function (req, res) {

  //跨模块引用 引用common模块下面的app.js
  var app = yog.require('common/model/app.js');
  var nav = require('../model/nav.js');
  var util = require('../lib/util.js');
  var data = {
    app: app.getInfo(),
    nav: nav.getItems()
  }
  res.render('home/page/notify.tpl', data);
};