---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: default
title: <<127.0.0.1>>
lang: en
---


Hello there! I'm Daveads...[Read more](/about.html)<br> **Welcome to my world**. i am not very good at hospitality, but feel at **[127.0.0.1](http://daveads.github.io/)**

>
Quote by albert einstein<br>
<cite>if you can't explain it simply, you don't understand it well enough...</cite>

Activities:(currently) || probably<br>
x. Coding<br>
x. Learning Something new <br>
x. Reading<br>
x. Experimenting _languages<br>
x. Working on a startup idea<br>
x. Tinkering<br>
x. Thinking about ways to solve problems, algorithms....<br>
x. **Read stuffs about && exp A.I**<br>
x. **trying to read a research paper**<br>

**Recent blogposts**👨‍💻️

<div class="posts">
  {% for post in site.posts %}
	
    <article class="post">

      <h1><a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a></h1>
    </article>
	
  {% endfor %}
</div>
