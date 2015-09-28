<!--
   login model
-->
<form class="login-layer" name="login-form">
    <div class="login-box">
      <div class="fc-3 fz-18 mb5">登录</div>
      <div class="fc-red mb5 hide tip">请输入图中的验证码</div>
      <div class="input-item">
        <label for="user-name" class="login-label name-label"></label>
        <input class="login-input" id="user-name" type="text" placeholder="邮箱/会员ID"/>
      </div>
    <div class="input-item password-item mb10">
      <label for="user-pwd" class="login-label password-label"></label>
      <input class="login-input" id="user-pwd" type="password" placeholder="密码"/>
    </div>
    <div class="verify-item mb20 hide">
      <input class="verify-input" id="captcha" type="text" placeholder="验证码">
      <img src="" alt="" class="va-m code-con" width="114" height="50">
      <a href="javascript:void(0);" class="fz-14 refresh-captcha">换一张</a>
    </div>
    <div class="clearfix mb20 fz-14">
      <label for="rem-me" class="fc-3 fl">
        <input type="checkbox" id="rem-me" checked="checked" style="vertical-align: -2px"/>&nbsp;
        记住账号
      </label>
      <a href="/forgot-pwd" class="fr lk-red">忘记密码</a>
    </div>
    <div class="clearfix">
      <button class="btn-negative btn-fill-negative fl" id="btn-login">登录</button>
      <a href="/reg" class="btn-negative fr">注册</a>
    </div>
  </div>
</form>
{%require "common:js/plugin/jquery.cookie.js"%}
{% script %}
  require("login.js").init();
{% endscript %}