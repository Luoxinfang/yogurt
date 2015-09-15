/**
 * Created by luoxinfang on 15/8/30.
 */
module.exports.getItems = function (_route) {
  var route = _route || 'index';
  return [{
    title: '首页',
    href: '/',
    children: null,
    current: route.indexOf('index') !== -1
  }, {
    title: '平台介绍',
    href: '/about',
    children: null,
    current: route.indexOf('about') !== -1
  }, {
    title: '解决方案',
    href: '/solution',
    children: null,
    current: route.indexOf('solution') !== -1
  }, {
    title: '平台功能',
    href: '/function',
    children: null,
    current: route.indexOf('function') !== -1
  }, {
    title: '保险产品',
    href: '/product',
    children: null,
    current: route.indexOf('product') !== -1
  }, {
    title: '平台公告',
    href: '/notify',
    children: null,
    current: route.indexOf('notify') !== -1
  }, {
    title: '常见问题',
    href: '/question',
    children: null,
    current: route.indexOf('question') !== -1
  }];
};