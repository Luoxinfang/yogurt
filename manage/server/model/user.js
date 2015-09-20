/**
 * Created by roy on 2015/9/9.
 * user model
 *
 */
module.exports = {
  //用户的组织类型 [1:个人,2:公司]
  getOrganizationType: function () {
    var type = 1;
    return type;
  },
  //获取用户的业务类型
  getBusinessType: function () {
    var type = 1;
    return type;
  },
  //获取组合类型
  getCombinationType: function () {
    return this.getOrganizationType() + '-' + this.getBusinessType();
  },
  getNavItem: function () {
    var prePath = '/manage/user/';
    var type = this.getBusinessType();
    var items = [
      {id: 'msg', title: '我的消息', href: prePath + 'msg-list'},
      {id: 'ref', title: '我的推荐', href: prePath + 'ref'},
      {id: 'gain', title: '我的收益', href: prePath + 'gain'},
      {id: 'set', title: '门户设置', href: prePath + 'settings'},
      {id: 'info', title: '个人资料', href: prePath + 'info'},
      {id: 'out', title: '退出', href: prePath + 'logout'}
    ];
    if (type) {
      return items;
    }
  }
};