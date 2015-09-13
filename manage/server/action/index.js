//index action
module.exports = function (req, res) {
  var app = yog.require('common/model/app.js');
  var nav = require('../model/nav.js');
  var resObj = {
    app: app.getInfo(),
    nav: nav.getItems()
  };

  res.render('manage/page/index.tpl', resObj);
  res.bigpipe.bind('notify-list', function (cb) {
    setTimeout(function () {
      cb(null, [{
        title:'notify-1',
        content: 'content-1'
      }]);
    });
  },1000);
  res.bigpipe.bind('account-info', function (cb) {
    setTimeout(function () {
      cb(null, [{
        title:'notify-1',
        content: 'content-1'
      }]);
    });
  },1000);
  res.bigpipe.bind('last-insured', function (cb) {
    setTimeout(function () {
      cb(null, [{
        title:'notify-1',
        content: 'content-1'
      }]);
    });
  },1000);
};
