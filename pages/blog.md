---
layout: default
title: articles
permalink: /blog
---

<p style="text-align:center; color:#cccccc; padding:0; font-size: 150%" ><b>Ramblings from me</b></p>


<div>
		{%- include categories_include.html -%}
</div>


<div class="posts" id="pt">
  {% for post in site.posts %}
	
        <h3>

          <a class="post-link" href="{{ post.url | relative_url }}">
            {{ post.title | escape }}
          </a>
          
        {%- assign date_format = site.minima.date_format | default: "%b %-d, %Y" -%}
        
 <span class="post-meta">
  <time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date: "%b %-d, %Y" }}</time>
  {% if post.last_modified_at %}
  (Updated: <time datetime="{{ post.last_modified_at | date_to_xmlschema }}">{{ post.last_modified_at | date: "%b %-d, %Y" }}</time>)
  {% endif %}
</span>

        </h3>
        
        {%- if site.show_excerpts -%}
          {{ post.excerpt }}
        {%- endif -%}
	
  {% endfor %}
</div>
