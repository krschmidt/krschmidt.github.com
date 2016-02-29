---
layout: post 
title: Setting a Canonical URL via Javascript
date: 2016-02-29 14:21:00
tags:
- Development
- Web
---
We use a product [at work](https://www.lanecc.edu) that doesn't include a canonical URL on its webpages. This normally isn't a problem, but our search engine has seeing pages with different url parameters (usually the utm parameters from Google Analytics) as different pages, leading to duplicates in search results.

After contacting the company to make sure there wasn't some sort of simple variable I could include in the header templates, I had to look for a javascript solution. Some search engines probably won't ever see it, since they won't execute the javascript, but Google should.

<script src="https://gist.github.com/krschmidt/9d46d1d080454b55f8cf.js"></script>