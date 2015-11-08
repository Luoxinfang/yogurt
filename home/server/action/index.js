//index action
var _ = require('lodash');

module.exports = function (req, res) {

  //跨模块引用 引用common模块下面的app.js
  var app = yog.require('common/model/app.js');
  var nav = require('../model/nav.js');
  var util = require('../lib/util.js');
  var model = yog.require('common/lib/loader-model.js')();

  var resObj = _.extend(req.public, {
    app: app.getInfo(),
    msgList: model.msgList,
    sliderList: model.sliderList
  });
  //console.log('indexData:',resObj);
  res.render('home/page/index.tpl', resObj);
  res.bigpipe.bind('notify-list', function (cb) {
    setTimeout(function () {
      cb(null, {
        list: [{
          title: '数据－1',
          content: '来自bigpipe返回的数据－1'
        }, {
          title: '数据－2',
          content: '来自bigpipe返回的数据－2'
        }, {
          title: '数据－3',
          content: '来自bigpipe返回的数据－3'
        }]
      });
    }, 3000);

  });
  res.bigpipe.bind('bigpipe-test', function (cb) {
    setTimeout(function () {
      cb(null, {
        list: [{
          title: 'test－1',
          content: '来自bigpipe返回的数据－1',
          time: 1442303608739
        }, {
          title: 'test－2',
          content: '来自bigpipe返回的数据－2',
          time: 1442303608739
        }, {
          title: 'test－3',
          content: '来自bigpipe返回的数据－3',
          time: 1442303608739
        }]
      });
    }, 1000);
  });
};