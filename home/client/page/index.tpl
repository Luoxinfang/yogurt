{% extends 'home:page/layout.tpl' %}

<!--main content-->
{% block content %}
  <!--因为block外面的内容不会被渲染 所以需要把css放到这里-->
  {% require "home:static/css/index.css" %}

  {% widget 'home:widget/slider/slider.tpl' %}

  <!--
    notify model
    in order to render more faster , we used the bigpipe in our projects
    1.在页面中添加一个spage组件 来引用模板文件
    2.在widget目录下面添加一个对应的模板文件 也可以添加css和js文件
    3.在router中添加对该bigpipe组件的绑定
    //4.如果只是当前页面使用了bigpipe技术 记得在页面中单独声明对bigpipe.js的依赖
  -->
  <div class="notify-list-warp">
    正在加载数据...
    {% spage 'home:widget/bigpipe/notify-list.tpl' id="notify-list" mode="async" %}
  </div>

  {% script %}
    require("home:widget/js/index.js").init();
  {% endscript %}
{% endblock %}
