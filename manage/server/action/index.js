//index action
module.exports = function (req, res) {
  var app = yog.require('common/model/app.js');
  var nav = require('../model/nav.js');

  /** Test data **/
  var data = require('../test/index.js');

  var resObj = {
    app: app.getInfo(),
    nav: nav.getItems(),
    msgList: data.msgList
  };

  res.render('manage/page/index.tpl', resObj);
  res.bigpipe.bind('notify-list', function (cb) {
    setTimeout(function () {
      cb(null, [{
        title:'notify-1',
        href: 'content-1'
      },{
        title:'notify-2',
        href: 'content'
      },{
        title:'notify-3',
        href: 'content'
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
