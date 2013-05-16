---
layout: layout
title: Shopalytic Documentation
permalink: index.html
---   

Welcome! If this is your first time we suggest starting with the [how it works](how_it_works.html) page. It will provide a brief introduction to Shopalytic and the basics of our integration and tracking.

<h2>Installation</h2>

<h3>Step 1</h3>
Include the following javascript tag in the head of your page. Our libraries are loaded asynchronously, so there's no need to worry about our tag holding up your page. 

```javascript
  <script>
    (function(c){window.shopalytic=c;c._q=[];for(var a=function(a){c[a]=function(){
    c._q.push([a].concat(Array.prototype.slice.call(arguments,0)))}},b=["init",
    "identify","track","alias"],d=0;d<b.length;d++)a(b[d]);
    a=document.createElement("script");a.type="text/javascript";a.async=!0;
    a.src="http://shopalytic.dev:3000/assets/client/shopalytic.v1.js";
    b=document.getElementsByTagName("script")[0];b.parentNode.insertBefore(a
    ,b)})(window.shopalytic||[]);

    shopalytic.init(/* Project Token */, { /* Options */ });
    shopalytic.track('page_view');
  </script>

```

<h3>Step 2</h3>
Set the `project_token`. Your token can be found on the project settings page.

<h3>Step 3</h3>
Familiarize yourself with the [Methods](/methods.html) our client library support and when to use them.

<h3>Step 4</h3>
Familiarize yourself with our supported [Tracking Events](/events.html) and their paramters.     
