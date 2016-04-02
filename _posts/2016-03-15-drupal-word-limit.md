---
layout: post 
title: Drupal Webform Word Limit
date: 2016-03-15 16:37:12
tags:
- Development
- Web
---
[We](https://www.lanecc.edu) regularly have webforms with text areas. Since Drupal's [webform](https://www.drupal.org/project/webform) doesn't support a limit of any kind for text areas (beyond that imposed by the database), we added one. It's only front end - but that's plenty good enough for what we're doing.

To use, after adding the below to the page JS (either via theme or [JS Injector](https://www.drupal.org/project/js_injector)) just add the `wordlimit` and `wordlimit-250` classes to the text area field on your webform, where 250 is the word limit you want to use. If you'd like to specify a minimum word count, just add another class, like `wordlimit-100`. The order doesn't matter; this will use the smaller number as the minimum limit and the larger number as the maximum limit.

<script src="https://gist.github.com/krschmidt/5128933e88a1d35910a0.js"></script>