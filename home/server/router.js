module.exports = function (router) {
  //跨模块引用 引用common模块下面的app.js
  var app = yog.require('common/model/app.js');
  var nav = require('./model/nav.js');

  // you can add app common logic here
  // router.use(function(req, res, next){
  // });


  // also you can add custom action
  // require /spa/some/hefangshi
  // router.get('/some/:user', router.action('api'));

  // or write action directly

  // 这里是因为 about,solution等模块没有复杂等业务逻辑 公用代码量多 所以直接在router里面解决他们
  // 这里也有必要注释下 在swig模板中 缺少某个字段 模板引擎不会抛出异常
  var resObj = {
    app: app.getInfo()

  };
  router.get('*', function (req, res, next) {
    var navObj = nav(req.originalUrl);
    req.public = {
      nav: navObj
    };
    resObj.nav = navObj;
    next();
  });
  //这里没有定义的路由会再次去action文件中查找
  //平台介绍
  router.get('/about', function (req, res, next) {
    res.render('home/page/about.tpl', resObj);
  });
  //解决方案
  router.get('/solution', function (req, res, next) {
    res.render('home/page/solution.tpl', resObj);
  });
  //平台功能
  router.get('/function', function (req, res, next) {
    res.render('home/page/function.tpl', resObj);
  });
  //常见问题
  router.get('/question', function (req, res, next) {
    res.render('home/page/question.tpl', resObj);
  });
};