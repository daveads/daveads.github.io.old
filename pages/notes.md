---
layout: default
title: Summary
permalink: /notes
---

## Notes **#summary** from talks, aritcles, papers and other things i find interesting....


{% for note in site.notes %}

<div id="ct">
	 <h3>

          <a class="post-link" href="{{ note.url | relative_url }}">
            {{ note.title | escape }}
          </a></h3>
          
 </div>
{% endfor %}



