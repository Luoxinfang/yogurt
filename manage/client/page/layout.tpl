<!doctype html>
{% html lang="en" framework="common:js/lib/mod.js" %}
{% head %}
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="{{app.description}}">
<meta name="keyword" content="{{app.keyword}}">
<link rel="icon" href="/static/favicon.ico">
<title>{{ app.title }}</title>

{%require "common:css/normalize.css"%}
{%require "common:css/global.css"%}
{%require "manage:widget/common/css/common.css"%}

{%require "common:js/lib/jquery-1.8.0.js"%}
{%require "common:js/lib/bigpipe.js"%}

{% endhead %}

{% body %}

{% widget 'manage:widget/common/header/header.tpl' %}
<!-- main content -->
{% block content %}
	加载中...
{% endblock %}


{% widget 'manage:widget/common/footer/footer.tpl' %}
{% endbody %}

{% endhtml %}