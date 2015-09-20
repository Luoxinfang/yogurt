/**
 * Created by roy on 15/9/18.
 */
var Mock = require('mockjs');

module.exports ={
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
  sliderList:Mock.mock([{
    'title': '我只想静静',
    'imgUrl':'//images.hzins.com/short/aph5/huodong/loginAd.png',
    'href':'//baidu.com'
  },{
    'title': '静静是谁啊',
    'imgUrl':'//images.hzins.com/short/lmimg/ban-06.jpg',
    'href':'//baidu.com'
  },{
    'title': '静静是谁啊',
    'imgUrl':'//images.hzins.com/short/lmimg/ban-06.jpg',
    'href':'//baidu.com'
  }])
};