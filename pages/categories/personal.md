---
layout: categories
title: 'Personal'
permalink: 'categories/personal'
---


<div>

		{%- include categories.html -%}
</div>


<ul>
  {% for post in site.categories.Personal  %}
<h3>
    {% if post.url %}
       <li>
       		<a href="{{ post.url }}">{{ post.title }}</a>
       </li>

        
<span class="post-meta">

  <time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date: "%b %-d, %Y" }}</time>
  
  {% if post.last_modified_at %}
  (Updated: <time datetime="{{ post.last_modified_at | date_to_xmlschema }}">{{ post.last_modified_at | date: "%b %-d, %Y" }}</time>)
  {% endif %}
  
</span>
</h3>

  {% endif %}
  {% endfor %}
</ul>


