{% extends 'manage:page/layout.tpl' %}

{% block content %}
{% require "manage:static/css/index.css" %}
<div class="notice">
	<div class="warp fc">
		<span class="fl">ÏûÏ¢£º</span>
		{% widget 'common:widget/message/message.tpl' %}
		<span class="btn-close circle dib fr mr-lg">¡Á</span>
	</div>
	<div class="main warp">


	</div>
</div>



{% endblock %}