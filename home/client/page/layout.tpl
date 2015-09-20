<!doctype html>
{%html lang="en" framework="common:js/mod.js"%}
{%head%}
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="{{app.description}}">
<meta name="keyword" content="{{app.keyword}}">
<link rel="icon" href="/static/favicon.ico">
<title>{{app.title}}</title>

{%require "common:css/normalize.css"%}
{%require "common:css/global.css"%}
{%require "home:static/css/common.css"%}
{%require "home:static/css/global.css"%}

{%require "common:js/jquery-1.8.0.js"%}
{%require "common:js/bigpipe.js"%}

{%endhead%}

{%body%}
{%widget 'home:widget/common/topbar/topbar.tpl'%}
{%widget 'common:widget/sidebar/sidebar.tpl'%}
{%widget 'home:widget/common/header/header.tpl'%}


<!-- main content -->
{%block content%}
	default content
{%endblock%}


{%widget 'home:widget/common/footer/footer.tpl'%}
{%endbody%}

{%endhtml%}
