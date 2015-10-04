//index action
var _ = require('lodash');
module.exports = function (req, res) {

  //跨模块引用 引用common模块下面的app.js
  var app = yog.require('common/model/app.js');
  var util = require('../lib/util.js');
  var resObj = _.extend(req.public, {
    app: app.getInfo()
  });
  res.render('home/page/notify.tpl', resObj);
};