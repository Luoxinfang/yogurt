/**
 * Created by hz15041183 on 2015/9/13.
 */

var Mock = require('mockjs');
module.exports = {
  msgList: Mock.mock([{
    'title|1-50': 'title',
    'href': '/manage/msg/detail/21'
  }, {
    'title|1-50': 'title',
    'href': '/manage/msg/detail/12'
  }, {
    'title|1-50': 'title',
    'href': '/manage/msg/detail/12'
  }]),
  moneyInfo: Mock.mock({
    'todayIncome|0-10000': 100,
    'myCoint|0-100000': 100,
    'unsetmentIncome|0-100000': 100,
    'refIncome|0-12000': 100
  })


};