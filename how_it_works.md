---
layout: layout
title: How it works
permalink: how_it_works.html
---   

Sending data to Shopalytic is easy. Our system revolves around the concept of "events". An event is essentially an action taken on your site by a customer or potential customer. For example, an event could be registering for an account, placing an order or browsing to a product page. Shopalytic has already determined the events of interest, which you can read about in detail on the [Tracking Events](/events.html) page. What we need from you is to place the events in the correct places and fill in the properties with the data required for each event type.

We have native support for a number of different programming languages, ecommerce platforms, and development frameworks. The left hand navigation has a list of the different client libraries. The [Methods](/methods.html) and [Tracking Events](/events.html) are generally the same (unless otherwise specified) for each library. However since each client library is setup and installed a little differently, please reference the specific library you are integrating with for details on getting setup.

Once the Shopalytic events have been setup we will start to track and collect data about your customers. Each customer will automatically be assigned a unique tracking id which gets stored in a cookie. We use this tracking id to identify customers and customer actions across visits. All the events you track are sent to the Shopalytic backend for processing, once processed the data is available in our reporting interface within an hour of receiving it.
