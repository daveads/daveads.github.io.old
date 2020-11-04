---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: default
title: Adejumo David Adewale
lang: en
---


Hello there! I'm Daveads...[Read more](/about.html) **Welcome to my world** feel at **[127.0.0.1](http://daveads.github.io/)**

<div style="background-color:black; color:white; padding: 25px;"> 
<cite>"I have no special talent. I am only passionately curious."</cite><br>
~albert einstein<br>
</div>

   <div>
	<del><h1>I guess i should call this my journal but...</h1></del>	
   </div>


## **Activities::** currently || probably<br>
x. Coding (Learning Something new). <br>
x. Reading. <br>
x. Experimenting with _languages.<br>
x. Working on a startup idea.<br>
x. Googling stuffs about A.I & tech related stuffs.<br>
x. Trying to read a research paper.<br>
x. Trying to mentally model something.<br>

<h1>Latest Articles</h1>
{% for post in site.posts limit:5 %}
* <a href="{{ post.url }}">{{ post.title }}</a>
{% endfor %}<br>

