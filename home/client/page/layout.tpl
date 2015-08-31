<!doctype html>
{% html lang="en" framework="home:static/js/mod.js" %}
{% head %}
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="/static/favicon.ico">
<title>{{ title }}</title>
{% require "common:js/jquery-1.8.0.js" %}
{% endhead %}

{% body %}
<div class="header">


</div>
<div class="nav">
  <ul class="con">
    {%for item in nav%}
    <li>
      {%if item.children%}
      <a href="{{item.href}}">{{item.title}}</a>

      <div class="pt2">
        <ul>
          {%for children in item.children %}
          <li>
            <a href="{{children.href}}">{{children.title}}</a>
          </li>
          {%endfor%}
        </ul>
      </div>
      {%else%}
      <a href="{{item.href}}">{{item.title}}</a>
      {%endif%}
    </li>
    {%endfor%}
  </ul>
</div>
<div id="wrapper">
  <div id="middle" class="container">
    {% block content %}
    {% endblock %}
  </div>
</div>

{% endbody %}

{% endhtml %}
