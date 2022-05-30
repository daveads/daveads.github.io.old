---
layout: default
title: All Tags
permalink: /tags
---




<!-- {{ tag.tag-name }} -->

<div>

 <ul>
 
    {% for tag in site.tags %} 
   
	<li class="tagsC-layout" ><a href="{{ tag.url }}">{{ tag.title }}</a></li>
	
    {% endfor %} 	
   
 </ul>

</div>
