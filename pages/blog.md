---
layout: default
title: articles
permalink: /blog
---

<p style="text-align:center; color:#cccccc; padding:0; font-size: 150%" ><b>Ramblings from me</b></p>


<div>
		{%- include subs.html -%}
</div>


<div class="inputT">
	
	<input type="text" id="search-input" class="search" placeholder="Search blog posts.." oninput="removePosts()">
	
	<img class="clear-icon" src="data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgdmlld0JveD0iMCAwIDUxLjk3NiA1MS45NzYiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDUxLjk3NiA1MS45NzY7IiB4bWw6c3BhY2U9InByZXNlcnZlIiB3aWR0aD0iMTZweCIgaGVpZ2h0PSIxNnB4Ij4KPGc+Cgk8cGF0aCBkPSJNNDQuMzczLDcuNjAzYy0xMC4xMzctMTAuMTM3LTI2LjYzMi0xMC4xMzgtMzYuNzcsMGMtMTAuMTM4LDEwLjEzOC0xMC4xMzcsMjYuNjMyLDAsMzYuNzdzMjYuNjMyLDEwLjEzOCwzNi43NywwICAgQzU0LjUxLDM0LjIzNSw1NC41MSwxNy43NCw0NC4zNzMsNy42MDN6IE0zNi4yNDEsMzYuMjQxYy0wLjc4MSwwLjc4MS0yLjA0NywwLjc4MS0yLjgyOCwwbC03LjQyNS03LjQyNWwtNy43NzgsNy43NzggICBjLTAuNzgxLDAuNzgxLTIuMDQ3LDAuNzgxLTIuODI4LDBjLTAuNzgxLTAuNzgxLTAuNzgxLTIuMDQ3LDAtMi44MjhsNy43NzgtNy43NzhsLTcuNDI1LTcuNDI1Yy0wLjc4MS0wLjc4MS0wLjc4MS0yLjA0OCwwLTIuODI4ICAgYzAuNzgxLTAuNzgxLDIuMDQ3LTAuNzgxLDIuODI4LDBsNy40MjUsNy40MjVsNy4wNzEtNy4wNzFjMC43ODEtMC43ODEsMi4wNDctMC43ODEsMi44MjgsMGMwLjc4MSwwLjc4MSwwLjc4MSwyLjA0NywwLDIuODI4ICAgbC03LjA3MSw3LjA3MWw3LjQyNSw3LjQyNUMzNy4wMjIsMzQuMTk0LDM3LjAyMiwzNS40NiwzNi4yNDEsMzYuMjQxeiIgZmlsbD0iIzAwMDAwMCIvPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+CjxnPgo8L2c+Cjwvc3ZnPgo=" />

</div>


<br>
<div class="result-container">
	
	<ul id="search-result" ></ul>

</div>





<div id="posts">
  {% for post in site.posts %}
	
        <h3>

          <a class="post-link" href="{{ post.url | relative_url }}">
            {{ post.title | escape }}
          </a>
          
        {%- assign date_format = site.minima.date_format | default: "%b %-d, %Y" -%}
   
  <div class="time">
  <time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date: "%b %-d, %Y" }}</time>
  {% if post.last_modified_at %}
  (Updated: <time datetime="{{ post.last_modified_at | date_to_xmlschema }}">{{ post.last_modified_at | date: "%b %-d, %Y" }}</time>)
  {% endif %}
  
  </div>
  
        </h3>
        
        {%- if site.show_excerpts -%}
          {{ post.excerpt }}
        {%- endif -%}
	
  {% endfor %}
</div>






<!-- Script pointing to search-script.js -->
<script src="/assets/js/simple-jekyll-search.js" type="text/javascript"></script>

<!-- Configuration -->
<script>

SimpleJekyllSearch({
  searchInput: document.getElementById('search-input'),
  resultsContainer: document.getElementById('search-result'),
  json: '/search.json',
  searchResultTemplate: '<li class="Scontain"><a href="{{ site.url }}{url}">{title}</a>  <time datetime="{date}" class="time">{date}</time> </li>'
})

/**
function removePosts(){
	
	var inputV = document.getElementById("search-input").value;
	
	if (inputV == ""){
	
	 document.getElementById('posts').style.display = 'block';
	
	}else {
	
	     document.getElementById('posts').style.display = 'none';
	
	}
	
	console.log(inputV);
	
}
**/

// search input button 

  const clearIcon = document.querySelector(".clear-icon");
  const searchBar = document.querySelector(".search");

  searchBar.addEventListener("keyup", () => {
    if(searchBar.value && clearIcon.style.visibility != "visible"){
      clearIcon.style.visibility = "visible";
      document.getElementById('search-result').style.display = 'block';
      document.getElementById('posts').style.display = 'none';
    } else if(!searchBar.value) {
      clearIcon.style.visibility = "hidden";
      document.getElementById('posts').style.display = 'block';
    }
  });

  clearIcon.addEventListener("click", () => {
    searchBar.value = "";
    clearIcon.style.visibility = "hidden";
    document.getElementById('posts').style.display = 'block';
    document.getElementById('search-result').style.display = 'none';
	
  })

</script>
