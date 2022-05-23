---
layout: default
title: All Tags
permalink: /categories
---


{% for cate in site.categories %} 

<!-- {{ tag.tag-name }} -->
<ul>
<h3><li><a href="{{ cate.url | downcase }}">{{ cate.title }}</a></li></h3>
</ul>


{% endfor %} 

