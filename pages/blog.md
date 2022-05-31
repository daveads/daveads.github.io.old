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
	
	<input type="text" id="search-input" class="search" placeholder="Search blog posts..">
	
	<!-- <img class="clear-icon" src="assets/images/clear.png"> -->

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

 // const clearIcon = document.querySelector(".clear-icon");
  const searchBar = document.querySelector(".search");

  searchBar.addEventListener("keyup", () => {
    if(searchBar.value /** && clearIcon.style.visibility != "visible" **/ ){
      /** clearIcon.style.visibility = "visible"; **/
      document.getElementById('search-result').style.display = 'block';
      document.getElementById('posts').style.display = 'none';
    } else if(!searchBar.value) {
      /** clearIcon.style.visibility = "hidden"; **/
      document.getElementById('posts').style.display = 'block';
    }
  });


/**
  clearIcon.addEventListener("click", () => {
    searchBar.value = "";
    clearIcon.style.visibility = "hidden";
    document.getElementById('posts').style.display = 'block';
    document.getElementById('search-result').style.display = 'none';
	
  })
**/


</script>
