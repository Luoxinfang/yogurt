<!--
  nav ui 组件
  @author roy
  @require 'nav.js'
-->
<ul class="ui-nav">
	{% for item in nav %}
		<li class="ui-nav-item{% if item.current %} ui-nav-cur{% endif %}">
			{% if item.children %}
				<a href="{{ item.href }}">{{ item.title }}</a>
        <div class="ui-nav-children-list">
          <div class="pt1">
            <div class="arrow-up dib">
              <div class="arrow-con dib"></div>
            </div>
          </div>
          <div class="pt2">
            <ul>
              {% for children in item.children %}
                <li>
                  <a href="{{ children.href }}">{{ children.title }}</a>
                </li>
              {% endfor %}
            </ul>
          </div>
        </div>
			{% else %}
				<a href="{{ item.href }}">{{ item.title }}</a>
			{% endif %}
		</li>
	{% endfor %}
</ul>