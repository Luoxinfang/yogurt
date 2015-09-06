<!--
  notify model :bigpipe
  @author roy
-->
<ul>
  {% for item in list %}
  <li>{{item.title}}</li>
  {% endfor %}
</ul>