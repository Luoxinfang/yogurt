
{% extends 'home:page/layout.tpl' %}
<!--main content-->
{% block content %}
  {% require "home:widget/about/about.css" %}
  <!-- 各栏目banner图 -->
  <div class="ad-banner pingtai-banner"></div>
  <!--平台介绍-->
  <div class="ui-module module-introduce">
    <div class="row">
      <h3 class="ui-sub-title"><span class="iconfont">&#xf0120;</span>平台介绍</h3>
      <div class="introduce-des">
        <p class="mb20">慧择联盟在充分调研行业风险现状、各类主体保险需求的基础上，以保险服务为依托，结合自身保险产品
          资源和技术系统优势，为旅游及旅游延伸行业（旅行社、签证机构、户外俱乐部、旅游网站、酒店机票等）精心定制差异
          化保险解决方案。</p>
        <div>
          <img src="../widget/about/icon/abls-img.jpg" alt="平台介绍" class="office-img">
          <p class="mb20">不管你是个人、小微商家、办事机构、网站站长，还是门户站点、厂商、渠道平台、分销联盟、中小企业，
            只要注册成为联盟会员，就可以选择适合的合作形式进行联盟相关产品的销售和推广，当用户完成有效购买后，可获取相
            应的推广服务费。</p>
          <p class="mb20">我们期望通过不断的努力，能够启发越来越多的行业加入进来，一起创新，共同成长。</p>
          <p class="mb10">如果您符合平台的要求，具有与平台共同成长的意愿，平台将为您提供系统、产品、客服、技术等全方位的
            支持，助力您整合行业上下游的保险资源，以获取更广阔的市场。</p>
        </div>
      </div>
    </div>
  </div>
  <!--优势能力-->
  <div class="ui-module module-advantage">
    <div class="row">
      <h3 class="ui-sub-title"><span class="iconfont">&#xf0121;</span>优势能力</h3>
      <div class="advantage-content">
        <div class="a-slider-tab">
          <ul class="clearfix">
            <li class="active">
              <a href="javascript:;">
                <i class="iconfont">&#xf0122;</i>
                <span class="text">产品优势</span>
              </a>
            </li>
            <li>
              <a href="javascript:;">
                <i class="iconfont">&#xf0123;</i>
                <span class="text">业务优势</span>
              </a>
            </li>
            <li>
              <a href="javascript:;">
                <i class="iconfont">&#xf0124;</i>
                <span class="text">技术优势</span>
              </a>
            </li>
          </ul>
        </div>
        <div class="slider-content-outer">
          <div class="slider-content">
            <div class="advantages-list">
              <ul>
                <li>与国内外60多家保险公司合作</li>
                <li>开放900多款市场热销产品</li>
                <li>旅游、意外、健康、团意、车险等，险种全覆盖</li>
                <li>积极为客户量身订制场景化、碎片化的保险</li>
                <li>持续探索空白领域的保险</li>
              </ul>
            </div>
            <div class="advantages-img">
              <img src="../widget/about/icon/platform-01.png" alt="产品优势"/>
            </div>
          </div>
          <div class="slider-content hide">
            <div class="advantages-list">
              <ul>
                <li>提供有市场竞争力的保险定价</li>
                <li>提供高额返点，接入方收益丰厚</li>
                <li>7*24小时售后服务，理赔放心365天</li>
                <li>0门槛获得法律支撑，不为保险资质烦恼</li>
                <li> 提供赠险、培训、技术开发等增值服务。</li>
              </ul>
            </div>
            <div class="img-container">
              <img src="../widget/about/icon/platform-02.png" alt="业务优势"/>
            </div>
          </div>
          <div class="slider-content hide">
            <div class="advantages-list">
              <ul>
                <li>技术团单导入不再苦恼</li>
                <li>出单只需30秒，支付结算更高效</li>
                <li>提供整套数据后台，支撑合作方日常运营</li>
                <li>支持网页、APP、手机网页、云应用各平台</li>
                <li>支持合作方技术快速低成本调试</li>
              </ul>
            </div>
            <div class="img-container">
              <img src="../widget/about/icon/platform-03.png" alt="技术优势"/>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!--平台特色-->
  <div class="ui-module module-feature bg-f6">
    <div class="row">
      <h3 class="ui-sub-title"><span class="iconfont">&#xf0125;</span>平台特色</h3>
      <div class="features">
        <div class="feature-item">
          <p class="fc-3 fz-22 mb10">门槛低</p>
          <p class="fz-14">个人、企业都可以合作</p>
          <span class="icon-1"></span>
        </div>
        <div class="feature-item">
          <p class="fc-3 fz-22 mb10">收益高</p>
          <p class="fz-14">提供最高额返利产品</p>
          <span class="icon-2"></span>
        </div>
        <div class="feature-item feature-item-3">
          <p class="fc-3 fz-22 mb10">服务全</p>
          <p class="fz-14">7*24小时客服</p>
          <span class="icon-3"></span>
        </div>
      </div>
    </div>
  </div>
  <!--合作方式-->
  <div class="ui-module module-hezuo">
    <div class="row">
      <h3 class="ui-sub-title"><span class="iconfont fz-30">&#xf0126;</span>合作方式</h3>
      <div class="clearfix">
        <div class="cooperate cooperate-1">
          <div class="step-1">
            <span class="fz-16">开通账号投保</span>
          </div>
          <div class="step-2">
            <div class="inner-box">
              <p class="fz-20 mb20">开通账号，在线投保</p>
              <p class="fz-14 lh-24 mb40">一个账号，全面管理<br />随时随地在线投保<br />轻轻松松查看数据<br />如何在线投保、查看统计数据？</p>
              <div><a class="btn-default" href="javascript:;">了解更多</a></div>
            </div>
          </div>

        </div>
        <div class="cooperate cooperate-2">
          <div class="step-1">
            <span class="fz-16">保险频道嵌入</span>
          </div>
          <div class="step-2">
            <div class="inner-box">
              <p class="fz-20 mb20">保险频道嵌入</p>
              <p class="fz-14 lh-24 mb40">联盟开发专属的保险门店<br />合作方如果有网站、APP或微信公共平台<br />可以把个人专属保险门店嵌入到自己的网站、APP或微信公共平台<br />如何装修店铺更好的嵌入，不想要慧择标识</p>
              <div><a class="btn-default" href="javascript:;">了解更多</a></div>
            </div>
          </div>
        </div>
        <div class="cooperate cooperate-3">
          <div class="step-1">
            <span class="fz-16">保险专案合作</span>
          </div>
          <div class="step-2">
            <div class="inner-box">
              <p class="fz-20 mb20">保险专案合作</p>
              <p class="fz-14 lh-24 mb40">组织专门的产品、技术、市场人员<br />做定制化、深入合作<br />并迅速相应，执行落地<br />
                合作热线4006-366-366</p>
            </div>
          </div>
        </div>
        <div class="cooperate cooperate-4">
          <div class="step-1">
            <span class="fz-16">开放平台对接</span>
          </div>
          <div class="step-2">
            <div class="inner-box">
              <p class="fz-20 mb20">开放平台对接</p>
              <p class="fz-14 lh-24 mb40">联盟提供<br />60多家保险公司、900多款产品的核心业务接口<br />
                如投保、出单、支付、结算、保单查询等<br />供有保险需求、有研发实力的合作伙伴接入</p>
              <div><a class="btn-default" href="javascript:;">什么是开发平台？</a></div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!--加入我们-->
  <div class="ui-module module-join bg-f6">
    <div class="row">
      <h3 class="ui-sub-title"><span class="iconfont fz-30">&#xf0118;</span>加入我们</h3>
      <div class="join-process">
        <ul>
          <li>注册<br />填写注册信息</li>
          <li>审核<br />1个工作日内</li>
          <li>交易<br />登陆进行交易</li>
          <li>收益<br />每月初结算</li>
        </ul>
      </div>
      <div class="tc"><a class="btn-negative" href="javascript:;">申请加入<i class="iconfont ml10">&#xf0128;</i></a></div>
    </div>
  </div>
  {%script%}
  require("home:widget/about/about.js").init();
  {%endscript%}
{% endblock %}