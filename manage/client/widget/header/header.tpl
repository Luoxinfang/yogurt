<!--
  header ui 组件
  @author roy
-->
<div class="header">
  <div class="warp">
    <a class="logo fl" href="/">
      <img src="./img/logo.png" alt="保险频道-渠道分销联盟" title="保险频道-渠道分销联盟">
    </a>
    {% widget 'manage:widget/nav/nav.tpl' %}
    {% widget 'manage:widget/search/search.tpl' %}
    <div class="td fl fr" id="header-td" status="1">
      <div class="td-thumb dib"></div>
      <div class="arrow-down dib"></div>
      <div class="con hide" dropdown="" style="display: none;"><!--dropDown-->
        <div class="pt1">
          <div class="arrow-up dib">
            <div class="arrow-con dib"></div>
          </div>
        </div>
        <div class="pt2 black3">
          <div class="row cb">
            <div class="icon wx-follow fl"></div>
            <div class="text ml-lg mt-lg pl-sm fl">
              <div class="f14">关注我们</div>
              <div class="mt-lg black6">出保单 <br> 查余额</div>
            </div>
          </div>
          <div class="row cb mt-lg">
            <div class="icon app-download fl"></div>
            <div class="text ml-lg mt-md pl-sm fl">
              <div class="f14">下载APP</div>
              <div class="mt-sm black6">随时随地 手机投保</div>
              <a class="mt-lg dib btn-app-dl" href="/app" target="_blank"></a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>