<!--
  nav ui 组件
  @author roy
  在fis3中 没有声明依赖的时候 会默认加载同名的js和css
-->

<ul class="nav">
	{% set needDrop = false %} <!--设置一个变量来保存是不是需要下拉组件-->
	{%for item in nav%}
	{%if !item.children%}
	<li class="item fl">
		<a href="{{item.href}}">{{item.title}}</a>
	</li>
	{%else%}
	{% set needDrop = true %}
	<li class="item dropdown fl">
		<a class="" href="{{item.href}}">{{item.title}}</a>

		<div class="con hide" dropDown>
			<div class="pt1">
				<div class="arrow-up dib">
					<div class="arrow-con dib"></div>
				</div>
			</div>
			<div class="pt2">
				<ul class="list mt-sm">
					{%for children in item.children %}
					<li>
						<a href="{{children.href}}">{{children.title}}</a>
					</li>
					{%endfor%}
				</ul>
			</div>
		</div>
	</li>
	{%endif%}

	{%endfor%}
</ul>
<!--如果需要下拉组件-->
{% if needDrop %}
	{% script %}
		require('common:widget/js/drop-down.js');
		$('.nav').find('.dropdown').dropDown();
	{% endscript %}
{% endif %}