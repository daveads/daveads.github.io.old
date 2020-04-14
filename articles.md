---
layout: default
title: articles
permalink: /articles.html
---



<div id="ct" style="display:none">
{% for category in site.categories %}
  <h3>{{ category[0] }}</h3>
  <ul>
    {% for post in category[1] %}
      <li><a href="{{ post.url }}">{{ post.title }}</a></li>
    {% endfor %}
  </ul>
 
{% endfor %}
</div>



<div class="posts" id="pt">
  {% for post in site.posts %}
	
    <article class="post">

      <h1><a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a></h1>
    </article>
	
  {% endfor %}
</div>




<div style="postion:fixed; text-align:center">
	<p> 
	        <input type="button" style="background-color:white; color: red; width:110px; height:35px; font-size:19px; margin:15px;" value="Categories" onclick="cate()">
	        <input type="button" style="background-color:white; color: red; width:90px; height:35px; font-size:19px; margin:15px;" value="All" onclick="back()">
	</p>
</div>

