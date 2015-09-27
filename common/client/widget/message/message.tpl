<!--
  message ui 组件
  @author roy
  @require marquee.css
-->
<div class="msg-list" id="msg-list">
	<ul>
		{% for item in msgList%}
		<li>
			<a class="black6" href="{{item.href}}">{{item.title}}</a>
		</li>
		{% endfor %}
	</ul>
</div>
{% script %}
	require('common:js/hz-plugin/marquee.js');
	$('#msg-list').marquee({direction:'up',speed:3000});
{% endscript %}