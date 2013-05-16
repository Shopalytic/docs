---
layout: layout
title: Javascript Library
permalink: /clients/javascript.html
---    

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
Familiarize yourself with our supported [tracking Events](/events.html) and their paramters.     

<h2>init</h2>
`init` must be the first thing called after the javascript tag and before any other shopalytic methods are called.

```javascript
  shopalytic.init(/* Project Token */, { /* Options */ });
```

<h4>Project Token</h4>
The `project_token` is the first parameter passed to `init`. The token can be found on your project settings page. `project_token` is required.

<h4>Options</h4>
`options` is an optional hash that can contain any of the settings from table below.

<pre>Optional Parameters</pre> 
*Parameter* | *Description* | *Type* | *Example*
--- | --- | --- | ---  
`disabled` | defaults to `false`. When set to `true` the Shopalytic library will not send event data to our severs. Cookies and tracking will still remain enabled. | bool | false
`source` | can be used to describe the delivery platform. For example if you wanted to tag and identify the events separately for web, iphone app and andorid app. | string | web
`debug` | defaults to `false`. When set to `true` some useful debugging data will be printed in the console log. | bool | false
`sandbox` | defaults to `false`. When set to `false` tracking events will be sent to our sandbox testing environment. Events will be processed in real-time and any errors in processing reported to the client. When used in conjunction with `debug` the response will be printed in the console log. Sandbox mode should never be set in a production environment. Our sandbox is a shared environment that is reset on a regular basis. Any data sent there should not be considered reliable and we make no guarantees about the performance of the servers. | bool | false
`cross_subdomain_cookie` | defaults to `true`. If set to `false` our tracking cookie will not be set across sub domains. | bool | true

<h2>identify</h2>
For details on the purpose of `identify` and when to use it, visit the [Methods](/methods.html#identify) page.

```javascript
  shopalytic.identify('jon@example.com');
```

<h2>alias</h2>
For details on the purpose of `alias` and when to use it, visit the [Methods](/methods.html#alias) page.

```javascript
  shopalytic.alias('jon.smith@example.com');
```


<h2>Example Tracking Events</h2>
Below are some example calls to various tracking events. Visit the [Tracking Events](/events.html) page for a list of all the events we support and explanations of all the parameters and options.

{% client_header account_register %}
```javascript
  shopalytic.track('account_register', { 
    'email': 'contact@example.com',
    'first_name': 'John',
    'last_name': 'Smith'
  });
```

{% client_header account_update %}
```javascript
  shopalytic.track('account_update', { 
    'email': 'new_contact@example.com'
  });   
```

{% client_header cart_add %}
```javascript
  shopalytic.track('cart_add', { 
    'cart_id': '123456',
    'sku': 'blue-shrt',
    'price': '9.99',
    'qty': '3'
  });
```

{% client_header cart_modify %}
```javascript
  shopalytic.track('cart_add', { 
    'cart_id': '123456',
    'sku': 'blue-shrt',
    'price': '9.99',
    'qty': '10'
  });
```

{% client_header order %}
```javascript
  shopalytic.track('order', { 
    'order_id': '123456',
    'cart_id': '123456',
    'order_date': new Date(2012, 0, 20, 5, 15, 33), // reminder: Javascript month starts at 0 for Jan
    'total': '80.37',
    'subtotal': '69.47', // sum of all the line_items
    'total_tax': '5.9',
    'total_shipping': '10',
    'total_discount': '5',
    'line_items': [
      {
        'sku': 'blue-shrt',
        'price': '9.99',
        'qty': '3'
      },
      {
        'sku': 'white-shorts',
        'price': '39.5',
        'qty': '1'
      }
    ],
    'discounts': [
      { 'code': '$5_off', 'value': '5' }
    ]
  }); 
```

{% client_header refund %}
```javascript
  // Full refund
  shopalytic.track('refund', {
      'refund_type': 'full',
      'order_id': '123456'
  });

  // Partial Refund
  shopalytic.track('refund', {
    'refund_type': 'partial',
    'order_id': '123456',
    'total_refund': '9.99',
    'subtotal_refund': '9.99',
    'line_items': [
      {
        'sku': 'blue-shrt',
        'price': '9.99',
        'qty': '1'
      }
    ]
  });  
  
```

{% client_header shipment %}
```javascript
  shopalytic.track('shipment', {
    'order_id': '123456',
    'shipment_id': '1000',
    'carrier': 'ups',
    'tracking_numer': '1Z9999W99999999999'
  });      
```

{% client_header shipment_update %}
```javascript
  shopalytic.track('shipment', {
    'order_id': '123456',
    'shipment_id': '1000',
    'carrier': 'ups',
    'tracking_numer': '1Z9999W99999999999'
  });
```

{% client_header page_view %}
We automatically set `url` to the current url and `referrer` to the page referrer. Both variables can be overridden. 

```javascript
  // Uses the logged in state variable and the default
  //   url and referrer
  shopalytic.track('page_view', { 'logged_in': true });

  // Overrides the url and referrer
  shopalytic.track('page_view', {
    'url': document.url,
    'referrer': document.referrer
  });
```

{% client_header product_view %}
```javascript
  shopalytic.track('product_view', { 
    'sku': 'blue-shrt',
    'name': 'Funny Blue Shirt',
    'price': '9.99',
    'categories': ['shirts', 'humor']
  });
```
