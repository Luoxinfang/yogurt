{% extends 'manage:page/layout.tpl' %}

{% block content %}
{% require "manage:static/css/index.css" %}
<div class="notice">
	<div class="warp fc">
		<span class="fl">消息:</span>
		{% widget 'common:widget/message/message.tpl' %}
		<span class="btn-close circle dib fr mr-lg">X</span>
	</div>
	<div class="main warp fc">
		<ul>
			<li>logo</li>
			<li>{{moneyInfo.todayIncome}}</li>
			<li>{{moneyInfo.myCoin}}</li>
			<li>{{moneyInfo.notSettlementIncome}}</li>
			<li>{{moneyInfo.errorKey}}</li>
		</ul>
		{% widget 'common:widget/slider/slider.tpl' %}



	</div>
</div>



{% endblock %}