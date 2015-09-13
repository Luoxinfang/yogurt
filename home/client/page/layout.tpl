<!doctype html>
{% html lang="en" framework="home:static/js/mod.js" %}
{% head %}
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="{{app.description}}">
<meta name="keyword" content="{{app.keyword}}">
<link rel="icon" href="/static/favicon.ico">
<title>{{ app.title }}</title>

{% require "home:static/css/common.css" %}

{% require "common:js/jquery-1.8.0.js" %}
{% require "common:js/bigpipe.js" %}

{% endhead %}

{% body %}

{% widget 'home:widget/header/header.tpl' %}
{% widget 'home:widget/nav/nav.tpl' %}

<!-- main content -->
{% block content %}
default content
{% endblock %}


{% widget 'home:widget/footer/main.tpl' %}
{% endbody %}

{% endhtml %}
