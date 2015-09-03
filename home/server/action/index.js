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
  res.bigpipe.bind('notify-list', function (cb) {
    setTimeout(function () {
      cb(null,{
        list:[{
          title: '数据－1',
          content: '来自bigpipe返回的数据－1'
        },{
          title: '数据－2',
          content: '来自bigpipe返回的数据－2'
        },{
          title: '数据－3',
          content: '来自bigpipe返回的数据－3'
        }]
      });
    },300);
  });

  res.render('home/page/index.tpl', data);
};