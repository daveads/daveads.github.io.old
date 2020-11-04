---
layout: default
title: articles
permalink: /articles
---

<p style="text-align:center; background-color:black; color:white; padding:0;" ><b>Ramblings from me</b></p>

<div id="ct" style="display:none">
{% for category in site.categories %}
  <h2>{{ category[0] }}</h2>
  <ul style="font-size: 23px;">
    {% for post in category[1] %}
      <li><a href="{{ post.url }}">{{ post.title }}</a></li>
   
         {%- assign date_format = site.minima.date_format | default: "%b %-d, %Y" -%}
        <span class="post-meta">{{ post.date | date: date_format }}</span>
        
    {% endfor %}
  </ul>
 
{% endfor %}
</div>



<div class="posts" id="pt">
  {% for post in site.posts %}
	
        <h3>

          <a class="post-link" href="{{ post.url | relative_url }}">
            {{ post.title | escape }}
          </a>
          
        {%- assign date_format = site.minima.date_format | default: "%b %-d, %Y" -%}
        <span class="post-meta">{{ post.date | date: date_format }}</span>
        </h3>
        
        {%- if site.show_excerpts -%}
          {{ post.excerpt }}
        {%- endif -%}
	
  {% endfor %}
</div>




<div style="text-align:center;">
	<p> 
	        <input type="button" style="background-color:black; color: white; width:110px; height:35px; font-size:19px; margin:3px;" value="Categories" onclick="cate()">
	        <input type="button" style="background-color:black; color: white; width:90px; height:35px; font-size:19px; margin:3px;" value="All" onclick="back()">
	</p>
</div>
