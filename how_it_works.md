---
layout: layout
title: How it works
permalink: how_it_works.html
---   

Sending data to Shopalytic is easy. We've already identified the most interesting events to collect and pre-defined the properties you need to send. For example, events such as when a customer registers for an account, places an order, or receives a shipment. What we need from you is to place calls for those events in all the appropriate places.  There may be times where some of the properties we are asking for aren't available. In those cases we've made certain properties optional and you only need to track the events you're interested in. But the more you send us the better analysis we can provide.

After the Shopalytic Javascript tag has been installed we will begin to automatically start tracking and collecting basic usage data about your customers. Each customer will be assigned a unique tracking id which we store in a cookie and will use to identify the actions they take while using your product.  If your commerce platform has a mechanism for uniquely identifying customers, such as email address or user id we suggest you use the `identify` method. This will enable us to track customers across devices (iPad, iPhone, Web, etc.) and give you a reference point to look up specific customers. Without the `identify` method there's a risk that we accidentally consider a single customer two or more different customers. There's more information about the `identify` method below.

All tracking of events use the `track` method. The first argument is always an event type, such as `customer_register` or `order`. The second parameter contains properties that describe the event. Such as information about the products a customer ordered or the date a shipment was delivered. Each event has a different properties which are outlined in detail below.

All customers who visit your product are automatically assigned a unique tracking id by Shopalytic. The `identify` method lets us persistently identify customers across multiple platforms (iPhone, iPad, Web, etc.) and allows us to provide features that enable you to view reports about specific customers. If your commerce platform assigns a unique identifier, such as a user id you can use that to tell us who a customer is. We require that an identity be unique and only belong to a single customer. When you call `identify` we will create an alias that references the id we automatically assigned the customer. We suggest calling the `identity` method on every request so we can ensure we know exactly who we are collecting data about.     
