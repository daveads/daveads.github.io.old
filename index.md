---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: default
title: home
---


Hello there! I'm Daveads, a Computer Programmer..[Read more](/about.html)

>
Quote by albert einstein<br>
<cite>if you can't explain it in simply you don't understand it well enough...</cite>



<div class="posts">
  {% for post in site.posts %}
	
    <article class="post">

      <h1><a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a></h1>
    </article>
	
  {% endfor %}
</div>
