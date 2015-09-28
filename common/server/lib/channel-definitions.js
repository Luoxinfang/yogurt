var config = require('../config.js');
var serverId = config.rabbiqmqQueue;
exports.classes = [
  //中秋国庆2015
  {
    "name": "ActivityNationalFacade",
    "serverId": serverId,
    "identity": "ActivityNationalFacade",
    "methods": [{
      "name": "getLuckyPackage" //拆红包
    }, {
      "name": "getPartnerPrize" //我的获奖详情
    }, {
      "name": "getNews" //getNews
    }, {
      "name": "getTop" //getTop
    }]
  }, {
    "name": "LoginFacade",
    "serverId": serverId,
    "identity": "LoginFacade",
    "methods": [{
      "name": "login"
    }, {
      "name": "retrievePassword"
    }, {
      "name": "checkResetPwdToken"
    }]
  }, {
    "name": "NotifyFacade",
    "serverId": serverId,
    "identity": "NotifyFacade",
    "methods": [{
      "name": "apNotifyList"
    }, {
      "name": "detail"
    }, {
      "name": "notifyDetail"
    }, {
      "name": "myNotifyList"
    }]
  }, {
    "name": "RegisterFacade",
    "serverId": serverId,
    "identity": "RegisterFacade",
    "methods": [{
      "name": "checkRegister"
    }, {
      "name": "register"
    }]
  }, {
    "name": "OtherFacade",
    "serverId": serverId,
    "identity": "OtherFacade",
    "methods": [{
      "name": "feedback"
    }, {
      "name": "getApKefu"
    }]
  }, {
    "name": "ProductFacade",
    "serverId": serverId,
    "identity": "ProductFacade",
    "methods": [{
      "name": "getProductInfoById"
    }, {
      "name": "insureRecord"
    }, {
      "name": "getSearchProduct"
    }, {
      "name": "getProductFilterInfo"
    }, {
      "name": "productCommendList"
    }, {
      "name": "initCreate"
    }, {
      "name": "remove"
    }, {
      "name": "modify"
    }, {
      "name": "initModify"
    }, {
      "name": "create"
    }, {
      "name": "initModify"
    }, {
      "name": "simpleInsureRecord"
    }, {
      "name": "getListProductInfo"
    }, {
      "name": "getAllCategory"
    }, {
      "name": "upProductCommentById"
    }, {
      "name": "downProductCommentById"
    }]
  }, {
    "name": "PolicyFacade",
    "serverId": serverId,
    "identity": "PolicyFacade",
    "methods": [{
      "name": "policyList"
    }, {
      "name": "mergePayOrderDetail"
    }, {
      "name": "policyDetail"
    }, {
      "name": "delete"
    }, {
      "name": "applySurrender"
    }, {
      "name": "surrender"
    }, {
      "name": "download"
    }, {
      "name": "modifyInvoiceNum"
    }, {
      "name": "saveOrder"
    }, {
      "name": "patchDownload"
    }, {
      "name": "redirectEdit"
    }]
  }, {
    "name": "InsureFacade",
    "serverId": serverId,
    "identity": "InsureFacade",
    "methods": [{
      "name": "statisticsList"
    }, {
      "name": "insureList"
    }]
  }, {
    "name": "SettlementFacade",
    "serverId": serverId,
    "identity": "SettlementFacade",
    "methods": [{
      "name": "partnerIncome"
    }, {
      "name": "serviceChargeBalance"
    }, {
      "name": "serviceChargeList"
    }, {
      "name": "exportMonthSettleBill"
    }, {
      "name": "monthSettleBill"
    }, {
      "name": "settlementBillList"
    }, {
      "name": "settlementList"
    }, {
      "name": "accountInfo"
    }, {
      "name": "submitSettlement"
    }, {
      "name": "modifyOrderRemark"
    }]
  }, {
    "name": "AccountFacade",
    "serverId": serverId,
    "identity": "AccountFacade",
    "methods": [{
      "name": "getAccountInfoByPartnerId"
    }, {
      "name": "getGoldDetail"
    }]
  }, {
    "name": "PartnerFacade",
    "serverId": serverId,
    "identity": "PartnerFacade",
    "methods": [{
      "name": "updatePwd"
    },{
      "name": "personalPartnerInfo"
    },{
      "name": "editPersonalPartnerInfo"
    },{
      "name": "childPartnerList"
    },{
      "name": "freezePartner"
    },{
      "name": "addChildPartner"
    },{
      "name": "modifyChildPartner"
    },{
      "name": "updatePwdByEmail"
    }]
  }, {
    "name": "RecommendFacade",
    "serverId": serverId,
    "identity": "RecommendFacade",
    "methods": [{
      "name": "partnerList"
    }, {
      "name": "anonRecommend"
    }, {
      "name": "recommendTotalIncome"
    }, {
      "name": "statistics"
    }, {
      "name": "addAnonRecommend"
    }, {
      "name": "qrcode"
    }, {
      "name": "getActivityRecommendRegisterSuccessRecord"
    }, {
      "name": "getActivityRecommendRegisterSuccessReward"
    }, {
      "name": "addAnonRecommendByExcel"
    }, {
      "name": "checkAnonRecommendByExcel"
    }]
  }, {
    "name": "PolichHolderFacade",
    "serverId": serverId,
    "identity": "PolichHolderFacade",
    "methods": [{
      "name": "getPolichHolder"
    },{
      "name": "modifyPolichHolder"
    }]
  },{
    "name": "FinanceFacade",
    "serverId": serverId,
    "identity": "FinanceFacade",
    "methods": [{
      "name": "getFinancialInfo"
    },{
      "name": "modifyFinancialInfo"
    }]
  },{
    "name": "RechargeFacade",
    "serverId": serverId,
    "identity": "RechargeFacade",
    "methods": [{
      "name": "getSign"
    }]
  }, {
    "name": "CpsConfigFacade",
    "serverId": serverId,
    "identity": "CpsConfigFacade",
    "methods": [{
      "name": "getCpsConfig"
    },{
      "name": "modifyCpsConfig"
    },{
      "name": "getAdvertList"
    },{
      "name": "saveAdvert"
    },{
      "name": "deleteAdvert"
    },{
      "name": "getAdvertById"
    },{
      "name": "modifyAdvert"
    },{
      "name": "removeLogo"
    }]
  },{
    "name": "FileFacade",
    "serverId": serverId,
    "identity": "FileFacade",
    "methods": [{
      "name": "uploadImage"
    }]
  },
];
