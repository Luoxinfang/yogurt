{%extends 'home:page/layout.tpl'%}

<!--main content-->
{%block content%}
  <!--因为block外面的内容不会被渲染 所以需要把css放到这里-->
  {%require "home:widget/index/index.css"%}
  <div class="banner">
    {%widget 'home:widget/index/login/login.tpl'%}
    <div class="slider-warp">
      {%widget 'common:widget/slider/slider.tpl'%}
    </div>
  </div>
  <!-- 最新公告 -->
  <div class="notice bd-e6">
    <div class="row clearfix">
      <i class="iconfont fl fc-red fz-16 mr10">&#xe65e;</i>

      <div class="msg-warp fl">
        {%widget 'common:widget/message/message.tpl'%}
      </div>
      <a href="/notify" class="fr lk-red">更多</a>
    </div>
  </div>
  <!-- 企业优势 -->
  <div class="advantages"></div>
  <!-- 合作方式 -->
  <div class="module-ways">
    <div class="way-box bg-f0">
      <div class="row way-1"></div>
    </div>
    <div class="way-box">
      <div class="row way-2">
        <a href="/spread-in" target="_blank" class="btn-spread btn-negative">
          如何推广 <i class="iconfont fz-20 va-m">&#xf004d;</i>
        </a>
      </div>
    </div>
    <div class="way-box bg-f0">
      <div class="row way-3">
        <a target="_blank" href="//channel.hzins.com/open/" class="btn-negative"
           style="margin: 340px 0 0 60px; width: 150px; line-height: 25px;">
          文档中心 <i class="iconfont fz-20 va-m">&#xf004d;</i>
        </a>
      </div>
    </div>
  </div>
  <!-- 客户端下载 -->
  <div class="download">
    <div class="row">
      <p class="fz-18 fc-3 mb20">移动端</p>

      <div class="clearfix">
        <div class="fl box1">
          1、订单管理更轻松；<br/>2、消息处理更及时；<br/> 3、掌上拓业更方便；<br/> 4、移动管理更高效。
        </div>
        <div class="fl box2">
          <div class="client-code-warp fl mr20">
            {%widget 'common:widget/element/client-code.tpl'%}
          </div>
          <div class="fl">
            <p class="fz-16 fc-3 mt10 mb10 lh-24">
              <i class="iconfont fz-24 va-m">&#x3448;</i>
              <a target="_blank" href="/app" target="_blank">下载客户端</a>
            </p>

            <p class="mb10">手机投保，随时随地</p>

            <p>
              <a target="_blank" href="/app" class="btn-negative">
                <i class="iconfont fz-16 va-m">&#xe613;</i> IOS + Andriod
              </a>
            </p>
          </div>
        </div>
        <div class="fl box3">
          <div class="we-chart-warp fl mr20">
            {%widget 'common:widget/element/we-chart-code.tpl'%}
          </div>
          <div class="fl">
            <p class="fz-16 fc-3 mt10 mb10 lh-24"><i class="iconfont fz-24 va-m">&#xf0106;</i> 微信服务号</p>

            <p class="mb10">随手推广你的微店</p>

            <p><a href="/spread-in" target="_blank" class="btn-negative">如何推广 <i
                    class="iconfont fz-20 va-m">
                  &#xf004d;</i></a></p>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!--
    notify model:bigpipe
    in order to render more faster , we used the bigpipe in our projects
    1.在页面中添加一个spage组件 来引用模板文件
    2.在widget目录下面添加一个对应的模板文件 也可以添加css和js文件
    3.在router中添加对该bigpipe组件的绑定
    //4.如果只是当前页面使用了bigpipe技术 记得在页面中单独声明对bigpipe.js的依赖
    -->

{#  <div class="notify-list-warp">
	<div class="loading">正在加载数据...</div>
	{% spage 'home:widget/bigpipe/notify-list/main.tpl' id="notify-list" mode="async" %}
  </div>

  <div class="bigpipe-test-warp">
	<div class="loading">测试多个bigpipe模块</div>
	{% spage 'home:widget/bigpipe/bigpipe-test/main.tpl' id="bigpipe-test" mode="async" %}
  </div>#}

  {%script%}
  require("home:widget/index/index.js").init();
  {%endscript%}
{%endblock%}
