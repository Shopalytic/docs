<div id="side_bar" class="span3 affix" data-spy="affix" data-offset-top="75">
  <strong>Getting Started</strong>
  <ul class="nav nav-list">
    <li><a href="how_it_works.html">How It Works</a></li>
    <li><a href="methods.html">Methods</a></li>
    {% if page.url != '/events.html' %}
      <li><a href="/events.html">Tracking Events</a></li>
    {% endif %}
  </ul>    
  <br />

  {% if page.url == '/events.html' %} 
  <strong>Tracking Events</strong>
    {% capture events %}
    {% include events.md %}    
    {% endcapture %}   
    {{ events | toc:'events.html' }}  
    <br />
  {% endif %}  

  <strong>Client Libraries</strong>
  <ul class="nav nav-list">
    <li><a href="/lib/magento.html">Magento</a></li>
    <li><a href="/lib/ruby.html">Ruby</a></li>
    <li><a href="/lib/php.html">PHP</a></li>
  </ul>

  <br />

</div> <!-- / #side_bar --> 
