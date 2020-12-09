---
layout: default
title: books-summary
permalink: /book-notes
---

{% for book in site.book-notes %}

<div id="ct">
	 <h3>

          <a class="post-link" href="{{ book.url | relative_url }}">
            {{ book.title | escape }}
          </a></h3>
          
 </div>         
{% endfor %}
