module.exports = function(router){
  //��ģ������ ����commonģ�������app.js
  var app = yog.require('common/model/app.js');
  var nav = require('./model/nav.js');
  var resObj = {
    app: app.getInfo(),
    nav: nav.getItems()
  };




  
};