---
layout: post 
title: Fixing some Drupal URL issues
date: 2016-01-15 21:31:15
tags:
- Development
- Web
---
I was digging through our analytics the other day, looking for pages that no one visited anymore, and realized that there's a long tail of pages that shouldn't be there: pages with uppercase in the path (someone typed lanecc.edu/About, instead of lanecc.edu/about) and pages with trailing slashes (lanecc.edu/about/ vs lanecc.edu/about). Since both of these practices aren't the best for SEO, I thought it was time we got them fixed.

## Redirecting Mixed Case to Lowercase
First I thought I'd tackle this with the magic of mod_rewrite. Instructions looked [simple enough](http://www.chrisabernethy.com/force-lower-case-urls-with-mod_rewrite/). But once that was in my vhost, I discovered there were no more styles on my page, because our CSS/JS aggregator uses mixed case hashes for each aggregate file. It's possible this is changeable, but when we first launched the site, several thousand documents were uploaded before we installed [transliteration](https://www.drupal.org/project/transliteration). Since each of those could have a mixed case URL, we needed a new fix.

## Removing Trailing Slashes
Though it doesn't matter if we use trailing slashes or no trailing slashes, it's [important we use one or the other](http://googlewebmastercentral.blogspot.com/2010/04/to-slash-or-not-to-slash.html). We're going with no trailing slashes.

## The Fix
The module we put together is available on [GitHub](https://github.com/LaneCommunityCollege/url-case-redirect). It simply looks for either of the above situations, makes sure the path is a real page, and issues a redirect if appropriate. Now we just need to wait a few weeks for analytics to college new data so we can resume our hunt for [ROT](https://www.smashingmagazine.com/2015/06/dealing-with-redundant-out-of-date-trivial-rot-content/).
