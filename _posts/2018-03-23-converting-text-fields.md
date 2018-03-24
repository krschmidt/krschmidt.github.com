---
layout: post 
title: Converting Drupal 7 Text Fields to Text Areas
date: 2018-03-23 23:13:00
tags:
- Development
- Web
---
Due to a problem with the CK Editor module not working on text fields, tonight I had to switch some text fields to text areas (change the field type from text to long text).

I didn't want a module with some udpate queries, and I didn't want to do it in drush. I just wanted raw queries. Since I had some trouble finding something to work from (though this [Stack Exchange post](https://drupal.stackexchange.com/questions/109663/how-to-convert-text-into-long-text) was pretty good), I thought I'd write it up.

This assumes you're changing two fields, a and b, which are currently text fields of length 4096.

<script src="https://gist.github.com/krschmidt/4328832ee13d4c3118a2e38c625d26a9.js"></script>
