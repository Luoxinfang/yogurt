'use strict';
var config = require('./config.js');
var amqpRPC = require('./rpc');
var log = require('../lib/channel-log.js');

module.exports = {
  TYPES: {
    rabbitmq: amqpRPC
  },
  enables: {},
  _request: function(cmd, params, callback) {
    log.debug('method : %s params : %s', cmd, JSON.stringify(params));
    this.enables.request(cmd, params, function(result) {
      //console.log('---', config.env);
      if (config.env == 'development')
        log.debug('result : %s %sms\n%s', cmd, result.timestamp, JSON.stringify(result));
      else {
        if (result.status != '00000')
          log.debug('result : %s\n%s', cmd, JSON.stringify(result));
      }
      callback(result);
    });
  },
  init: function(rpctype, options) {
    this.enables = this.TYPES[rpctype].init(options);
  },
  login: function(params, callback) {
    this._request('LoginFacade.login', params, callback);
  },
  apNotifyList: function(params, callback) {
    this._request('NotifyFacade.apNotifyList', params, callback);
  },
  getNotifyDetail: function(params, callback) {
    this._request('NotifyFacade.notifyDetail', params, callback);
  },
  checkRegister: function(params, callback) {
    this._request('RegisterFacade.checkRegister', params, callback);
  },
  //getPartnerPrize
  getPartnerPrize: function(params, callback) {
    this._request('ActivityNationalFacade.getPartnerPrize', params, callback);
  },
  //忘记密码
  retrievePassword: function(params, callback) {
    this._request('LoginFacade.retrievePassword', params, callback);
  },
  //重置密码
  updatePwd: function(params, callback) {
    this._request('PartnerFacade.updatePwd', params, callback);
  },
  //通过邮箱的token来判断是不是可以修改密码
  checkResetPwdToken: function(params, callback) {
    this._request('LoginFacade.checkResetPwdToken', params, callback);
  },
  //通过邮箱直接修改密码
  updatePwdByEmail: function(params, callback) {
    this._request('PartnerFacade.updatePwdByEmail', params, callback);
  },
  //注册
  register: function(params, callback) {
    this._request('RegisterFacade.register', params, callback);
  },
  //意见反馈
  feedback: function(params, callback) {
    this._request('OtherFacade.feedback', params, callback);
  },
  //搜索
  getSearchProduct: function(params, callback) {
    this._request('ProductFacade.getSearchProduct', params, callback);
  },
  //最近投保
  insureRecord: function(params, callback) {
    this._request('ProductFacade.insureRecord', params, callback);
  },
  //登录前 保险产品页
  getProductInfoById: function(params, callback) {
    this._request('ProductFacade.getProductInfoById', params, callback);
  },
  //产品列表页数据接口 important
  getProductFilterInfo: function(params, callback) {
    this._request('ProductFacade.getProductFilterInfo', params, callback);
  },
  //产品列表页数据接口 important
  getAllCategory: function(params, callback) {
    this._request('ProductFacade.getAllCategory', params, callback);
  },
  /*登陆以后的界面接口*/
  //消息
  myNotifyList: function(params, callback) {
    this._request('NotifyFacade.myNotifyList', params, callback);
  },
  //消息详情
  myNotifyDetail: function(params, callback) {
    this._request('NotifyFacade.detail', params, callback);
  },
  //获取今日收入
  partnerIncome: function(params, callback) {
    this._request('SettlementFacade.partnerIncome', params, callback);
  },
  //未结算收入
  serviceChargeBalance: function(params, callback) {
    this._request('SettlementFacade.serviceChargeBalance', params, callback);
  },
  //我的金币
  getAccountInfoByPartnerId: function(params, callback) {
    this._request('AccountFacade.getAccountInfoByPartnerId', params, callback);
  },
  //推荐奖励
  recommendTotalIncome: function(params, callback) {
    this._request('RecommendFacade.recommendTotalIncome', params, callback);
  },
  //最近投过
  simpleInsureRecord: function(params, callback) {
    this._request('ProductFacade.simpleInsureRecord', params, callback);
  },
  //最近投过
  getListProductInfo: function(params, callback) {
    this._request('ProductFacade.getListProductInfo', params, callback);
  },
  //我的订单
  policyList: function(params, callback) {
    this._request('PolicyFacade.policyList', params, callback);
  },
  //删除我的订单
  deleteOrder: function(params, callback) {
    this._request('PolicyFacade.delete', params, callback);
  },
  //子账户订单
  subAccountOrder: function(params, callback) {
    this._request('InsureFacade.statisticsList', params, callback);
  },
  //子账户订单详情
  subAccountOrderDetail: function(params, callback) {
    this._request('InsureFacade.insureList', params, callback);
  },
  //订单 查询合并支付的详情
  mergePayOrderDetail: function(params, callback) {
    this._request('PolicyFacade.mergePayOrderDetail', params, callback);
  },
  //跳转到
  redirectEdit: function(params, callback) {
    this._request('PolicyFacade.redirectEdit', params, callback);
  },
  //保单的详情
  policyDetail: function(params, callback) {
    this._request('PolicyFacade.policyDetail', params, callback);
  },
  //user 我推荐的会员
  partnerList: function(params, callback) {
    this._request('RecommendFacade.partnerList', params, callback);
  },
  //user 个人资料
  personalPartnerInfo: function(params, callback) {
    this._request('PartnerFacade.personalPartnerInfo', params, callback);
  },
  //user 修改个人资料
  editPersonalPartnerInfo: function(params, callback) {
    this._request('PartnerFacade.editPersonalPartnerInfo', params, callback);
  },
  //子账户订单管理
  childPartnerList: function(params, callback) {
    this._request('PartnerFacade.childPartnerList', params, callback);
  },
  //冻结、解冻子账户
  freezePartner: function(params, callback) {
    this._request('PartnerFacade.freezePartner', params, callback);
  },
  //添加子账户
  addChildPartner: function(params, callback) {
    this._request('PartnerFacade.addChildPartner', params, callback);
  },
  //修改子账户
  modifyChildPartner: function(params, callback) {
    this._request('PartnerFacade.modifyChildPartner', params, callback);
  },
  //修改备注
  modifyOrderRemark: function(params, callback) {
    this._request('SettlementFacade.modifyOrderRemark', params, callback);
  },
  //申请退保界面数据
  applySurrender: function(params, callback) {
    this._request('PolicyFacade.applySurrender', params, callback);
  },
  //申请退保
  surrender: function(params, callback) {
    this._request('PolicyFacade.surrender', params, callback);
  },
  //获取支付需要的加密key
  saveOrder: function(params, callback) {
    this._request('PolicyFacade.saveOrder', params, callback);
  },
  //批量下载保单
  patchDownload: function(params, callback) {
    this._request('PolicyFacade.patchDownload', params, callback);
  },
  //获取常用投保人
  getPolichHolder: function(params, callback) {
    this._request('PolichHolderFacade.getPolichHolder', params, callback);
  },
  //修改/添加常用投保人
  modifyPolichHolder: function(params, callback) {
    this._request('PolichHolderFacade.modifyPolichHolder', params, callback);
  },
  //获取财务信息 收款人信息
  getFinancialInfo: function(params, callback) {
    this._request('FinanceFacade.getFinancialInfo', params, callback);
  },
  //修改财务信息 收款人信息
  modifyFinancialInfo: function(params, callback) {
    this._request('FinanceFacade.modifyFinancialInfo', params, callback);
  },
  //余额明细
  getGoldDetail: function(params, callback) {
    this._request('AccountFacade.getGoldDetail', params, callback);
  },
  //余额充值
  getSign: function(params, callback) {
    this._request('RechargeFacade.getSign', params, callback);
  },
  //匿名推荐列表
  anonRecommend: function(params, callback) {
    this._request('RecommendFacade.anonRecommend', params, callback);
  },
  //收益明细
  serviceChargeList: function(params, callback) {
    this._request('SettlementFacade.serviceChargeList', params, callback);
  },
  //下载清单
  settlementList: function(params, callback) {
    this._request('SettlementFacade.settlementList', params, callback);
  },
  //下载保单
  download: function(params, callback) {
    this._request('PolicyFacade.download', params, callback);
  },
  //结算记录
  settlementBillList: function(params, callback) {
    this._request('SettlementFacade.settlementBillList', params, callback);
  },
  //月结清单
  monthSettleBill: function(params, callback) {
    this._request('SettlementFacade.monthSettleBill', params, callback);
  },
  //下载月结清单
  exportMonthSettleBill: function(params, callback) {
    this._request('SettlementFacade.exportMonthSettleBill', params, callback);
  },
  //申请结算
  accountInfo: function(params, callback) {
    this._request('SettlementFacade.accountInfo', params, callback);
  },
  //提交结算
  submitSettlement: function(params, callback) {
    this._request('SettlementFacade.submitSettlement', params, callback);
  },
  //修改发票号
  modifyInvoiceNum: function(params, callback) {
    this._request('SettlementFacade.modifyInvoiceNum', params, callback);
  },
  //获取专属客服
  getApKefu: function(params, callback) {
    this._request('OtherFacade.getApKefu', params, callback);
  },
  //推荐送10元活动
  statistics: function(params, callback) {
    this._request('RecommendFacade.statistics', params, callback);
  },
  //推荐送10元活动 生成二维码
  qrcode: function(params, callback) {
    this._request('RecommendFacade.qrcode', params, callback);
  },
  //推荐送10元活动 匿名推荐
  addAnonRecommend: function(params, callback) {
    this._request('RecommendFacade.addAnonRecommend', params, callback);
  },
  //推荐送10元活动 推荐成功的会员
  getActivityRecommendRegisterSuccessRecord: function(params, callback) {
    this._request('RecommendFacade.getActivityRecommendRegisterSuccessRecord', params, callback);
  },
  //推荐送10元活动 获得的奖励
  getActivityRecommendRegisterSuccessReward: function(params, callback) {
    this._request('RecommendFacade.getActivityRecommendRegisterSuccessReward', params, callback);
  },
  //店铺设置
  getCpsConfig: function(params, callback) {
    this._request('CpsConfigFacade.getCpsConfig', params, callback);
  },
  //删除logo
  removeLogo: function(params, callback) {
    this._request('CpsConfigFacade.removeLogo', params, callback);
  },
  //修改店铺设置
  modifyCpsConfig: function(params, callback) {
    this._request('CpsConfigFacade.modifyCpsConfig', params, callback);
  },
  //店铺设置 推荐的产品列表
  productCommendList: function(params, callback) {
    this._request('ProductFacade.productCommendList', params, callback);
  },
  //店铺设置 推荐的产品列表 新增 页面初始数据
  initCreate: function(params, callback) {
    this._request('ProductFacade.initCreate', params, callback);
  },
  //店铺设置 推荐的产品列表 上移
  upProductCommentById: function(params, callback) {
    this._request('ProductFacade.upProductCommentById', params, callback);
  },
  //店铺设置 推荐的产品列表 下移
  downProductCommentById: function(params, callback) {
    this._request('ProductFacade.downProductCommentById', params, callback);
  },
  //店铺设置 推荐的产品列表 新增
  createIndexProRef: function(params, callback) {
    this._request('ProductFacade.create', params, callback);
  },
  //店铺设置 更新推荐的产品
  updateIndexProRef: function(params, callback) {
    this._request('ProductFacade.initModify', params, callback);
  },
  //店铺设置 推荐的产品列表 删除
  removeIndexProRef: function(params, callback) {
    this._request('ProductFacade.remove', params, callback);
  },
  //店铺设置 推荐的产品列表 获取到某个产品
  getIndexProRefById: function(params, callback) {
    this._request('ProductFacade.initModify', params, callback);
  },
  //店铺设置 推荐的产品列表 修改某个产品
  updateIndexProRefById: function(params, callback) {
    this._request('ProductFacade.modify', params, callback);
  },
  //店铺设置 广告管理
  getAdvertList: function(params, callback) {
    this._request('CpsConfigFacade.getAdvertList', params, callback);
  },
  //店铺设置 广告管理 新增
  saveAdvert: function(params, callback) {
    this._request('CpsConfigFacade.saveAdvert', params, callback);
  },
  //店铺设置 广告管理 删除
  deleteAdvert: function(params, callback) {
    this._request('CpsConfigFacade.deleteAdvert', params, callback);
  },
  //店铺设置 广告管理 获取到一个具体的对象
  getAdvertsById: function(params, callback) {
    this._request('CpsConfigFacade.getAdvertById', params, callback);
  },
  //店铺设置 广告管理 修改
  modifyAdvert: function(params, callback) {
    this._request('CpsConfigFacade.modifyAdvert', params, callback);
  },
  //上传图片接口
  uploadImage: function(params, callback) {
    this._request('FileFacade.uploadImage', params, callback);
  },
  //上传推荐人接口
  addAnonRecommendByExcel: function(params, callback) {
    this._request('RecommendFacade.addAnonRecommendByExcel', params, callback);
  },
  //校验上传的文件
  checkAnonRecommendByExcel: function(params, callback) {
    this._request('RecommendFacade.checkAnonRecommendByExcel', params, callback);
  },
  //拆红包
  getLuckyPackage: function(params, callback) {
    this._request('ActivityNationalFacade.getLuckyPackage', params, callback);
  },
  //new15
  getNews: function(params, callback) {
    this._request('ActivityNationalFacade.getNews', params, callback);
  },
  //getTop
  getTop: function(params, callback) {
    this._request('ActivityNationalFacade.getTop', params, callback);
  }
};