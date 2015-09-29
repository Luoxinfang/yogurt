/**
 * Created by roy on 15/9/27.
 */
var H = window.H || {};

//工具类
H.util = {};

//获取浏览器地址栏上的参数
H.util.getParameter = function (name) {
  var reg = new RegExp("(^|&)" + name+ "=([^&]*)(&|$)", "i"),
      r = window.location.search.substr(1).match(reg);
  if (null != r) return r[2]; return null;
};

module.exports = H;