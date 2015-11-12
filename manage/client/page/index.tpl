{%extends 'manage:page/layout.tpl'%}

{%block content%}
  {%require "manage:widget/index/index.css"%}
  <div class="notice">
    <div class="row fc">
      <span class="fl">消息:</span>
      <div class="msg-wrap fl">
        {% widget 'common:widget/message/message.tpl' %}
      </div>
      <span class="btn-close circle dib fr">x</span>
    </div>
    <div class="main warp fc">
      <ul>
        <li>logo</li>
        <li>{{moneyInfo.todayIncome}}</li>
        <li>{{moneyInfo.myCoin}}</li>
        <li>{{moneyInfo.notSettlementIncome}}</li>
        <li>{{moneyInfo.errorKey}}</li>
      </ul>
      {%widget 'common:widget/slider/slider.tpl'%}


    </div>
  </div>



{%endblock%}