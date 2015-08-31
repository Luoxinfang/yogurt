/**
 * Created by luoxinfang on 15/8/30.
 */
module.exports.getItems = function () {
  return [{
    title: '首页',
    href: '/',
    children: null
  }, {
    title: '投保',
    href: '/product/list',
    children: null,
  }, {
    title: '订单',
    href: '/order/all',
    children: null
  }, {
    title: '我的',
    href: '/user',
    children: [{
      title: '个人资料',
      href: '/user/info'
    },{
      title: '店铺设置',
      href: '/user/setting'
    }, {
      title: '退出',
      href: '/user/logout'
    }]
  }];
};