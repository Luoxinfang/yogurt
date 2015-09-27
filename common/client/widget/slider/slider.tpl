<!--
  slider 组件
  @author roy
  @version 0.1
  @#require common:widget/js/slider.js
-->
<div class="slider">
  <ul>
    {%for item in sliderList%}
      <li class="item">
        {%if item.href%}
          <a class="item-link" href="">
            <img src="{{item.imgUrl}}" alt="{{item.title}}"/>
          </a>
        {%else%}
          <img src="{{item.imgUrl}}" alt="{{item.title}}"/>
        {%endif%}
      </li>
    {%endfor%}
  </ul>
  <div class="index">
    <ul class="con center"></ul>
  </div>
</div>

{%script%}
  require('common:js/hz-plugin/slider.js');
{%endscript%}