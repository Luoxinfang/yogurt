/*
 * app相关
 **/
module.exports = {
  //返回应用程序的信息
  getInfo: function(){
    return  {
      title: '慧择商务联盟',
      keyword: '慧择,保险,投保',
      description: '慧择商务联盟'
    };
  },
  //返回版权信息
  getCopyrights: function () {
    return '版权所有 慧择保险经纪人有限公司'
  },
  //返回开发者信息
  getAuthor: function () {
    return '慧择网前端团队'
  }
};

