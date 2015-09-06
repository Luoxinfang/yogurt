module.exports = function(router){
  //跨模块引用 引用common模块下面的app.js
  var app = yog.require('common/model/app.js');
  var nav = require('./model/nav.js');
  var resObj = {
    app: app.getInfo(),
    nav: nav.getItems()
  };




  
};