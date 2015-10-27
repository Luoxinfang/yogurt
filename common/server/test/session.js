/**
 * @description
 * @author roy
 */

module.exports = {
  login: function (user, callback) {
    var rs = {
      status: '00000'
    };
    if (user.userName != '7411') {
      rs = {
        status: '11111',
        exception: '用户不存在'
      };
    } else if (user.password != '123') {
      rs = {
        status: '11112',
        exception: '密码错误'
      };
    } else {
      rs.result = {
        "parentId": 0,
        "personalChannelTypeId": 0,
        "siteLogo": "//images.hzins.com/short/www/2015/icon/logo_default.png",
        "webType": 1,
        "email": "331744837@qq.com",
        "contactName": "罗新芳",
        "domain": "lx58818",
        "partnerId": 58818,
        "agentId": 0,
        "siteName": "",
        "settleType": 0
      }
    }
    callback(rs);
  }
};