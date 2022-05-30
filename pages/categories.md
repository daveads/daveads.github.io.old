---
layout: default
title: All Tags
permalink: /categories
---


<div id="">

   <ul>
	{% for cate in site.categories %} 
	
	<!-- {{ tag.tag-name }} -->

	<li  class="tagsC-layout"><a href="{{ cate.url | downcase }}">{{ cate.title }}</a></li>


	{% endfor %} 

    </ul>
    
</div>
