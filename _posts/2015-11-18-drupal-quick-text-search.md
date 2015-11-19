---
layout: post 
title: Drupal Quick Text Search 
date: 2015-11-18 21:18:32
tags:
- Development
- Web
---
On a somewhat regular basis, [we](http://www.lanecc.edu) will get a request to change all instances of _something_ on the website. It might be that we've removed a node, and we're curious where all the links to it were. Or maybe, for the umpteenth time this year, some department changed their name. Or, the worst, since it feels like it should just be a replace query but never can be, there's a new person in a position and we need to swap names in a bunch of places. We needed a simple way to figure out which nodes contained a given string.

The quick, Drupal only solution would be to build a view with an exposed filter on the body. But that won't also search menu links, and our exposed filters always feel slow. So I put together a quick script to bootstrap Drupal, check for a user with an administrative role, and then search. 

Nothing fancy here &ndash; it just runs a like query over the relevant tables and prints out where it found the results, and if they were in nodes or in menus. But we use it every week.

<script src="https://gist.github.com/krschmidt/214bb766b51c05c700ec.js"></script>