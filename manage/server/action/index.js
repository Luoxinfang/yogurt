//index action
module.exports = function (req, res) {
  var app = yog.require('common/model/app.js');
  var nav = require('../model/nav.js');
  var resObj = {
    app: app.getInfo(),
    nav: nav.getItems()
  };
  res.render('manage/page/index.tpl', resObj);
};
