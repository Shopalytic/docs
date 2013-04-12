---
layout: layout
title: Tracking Events
permalink: events.html
---   
          
{% capture events %}
{% include events.md %}    
{% endcapture %}

{{ events | toc }}

{{ events }}
