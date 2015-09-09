<!--
  nav ui 组件
  @author roy
  在fis3中 没有声明依赖的时候 会默认加载同名的js和css
-->
<div class="nav fl">
  <ul class="con">
    {%for item in nav%}
    <li class="item fl">
      {%if !item.children%}
      <a href="{{item.href}}">{{item.title}}</a>
      {%else%}
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
      {%endif%}
    </li>
    {%endfor%}
  </ul>
</div>