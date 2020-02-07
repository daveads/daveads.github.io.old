---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: default
title: Adejumo David Adewale
lang: en
---


Hello there! I'm Daveads...[Read more](/about.html) **Welcome to my world** feel at **[127.0.0.1](http://daveads.github.io/)**

>
Quote by albert einstein<br>
<cite>if you can't explain it simply, you don't understand it well enough...</cite>

## **Activities::** currently || probably<br>
x. Coding<br>
x. Learning Something new <br>
x. Reading<br>
x. Experimenting _languages<br>
x. Working on a startup idea<br>
x. Tinkering something<br>
x. Researching stuffs about A.I<br>
x. Trying to read a research paper<br>
x. Trying to mentally model something<br>


**Recent blogposts**👨‍💻️

<div class="posts">
  {% for post in site.posts %}
	
    <article class="post">

      <h1><a href="{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a></h1>
    </article>
	
  {% endfor %}
</div>
