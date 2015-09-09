/**
 * Created by luoxinfang on 15/8/30.
 */
module.exports.getItems = function () {
  var user = require('./user');
  return [{
    title: '首页',
    href: '/',
    children: null
  }, {
    title: '投保',
    href: '/product/list',
    children: null
  }, {
    title: '订单',
    href: '/order/all',
    children: null
  }, {
    title: '我的',
    href: '/user',
    children: user.getNavItem()
  }]
};