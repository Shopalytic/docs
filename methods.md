---
layout: layout
title: Methods
permalink: methods.html
---

<h2 id="identify">identify</h2>
Anytime a user visits your product Shopalytic will automatically assign them a unique tracking id. We use this id to track the pages they visits and the events they take. The `identify` method lets us persistently identify customers across multiple platforms (iPhone, iPad, Web, etc.) and enables you to report on customers by an identifier that makes sense to you.

If your commerce platform assigns a unique identifier, such as a user id you can use that to tell us who the customer is. We require that an identity be unique and only belong to a single user. We suggest that you call the `identity` method on all logged in pages. This will ensure that we know exactly who we are collecting data about.

<h2 id="track">track</h2>
The track method is the method used to send event data to Shopalytic. `track` always take two arguments. The first is an event type, such as "order" or "customer_register". The second argument are the properties that describe the event taken. You can get a full list of the event types and the properties on the [Tracking Events](/events.html) page.
