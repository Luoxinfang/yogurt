<!--
  notify model :bigpipe
  @author roy
-->
<ul>
  {% for item in list %}
  <li>{{item.title}}  -- {{item.time|date('Y-m-d G:m:s')}}</li>
  {% endfor %}
</ul>