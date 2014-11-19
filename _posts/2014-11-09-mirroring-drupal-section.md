---
layout: post 
title: Mirroring some of a Drupal site
date: 2014-11-19 18:02:45
tags:
- Development
---
The other day, we were all ready to delete a bunch of nodes from our Drupal site, when the owner of those pages requested a backup of them she could keep locally, just in case. Since there's no easy way to do this within Drupal, we did it via Bash.

If you've got a better system for storing attached media and files, and not using the /sites/default/files path, then adding the regex --accept-regex may not be needed. But for us, since we had to get both /section, it's child directories, and the associated files at /sites/default/files/section/, we needed something a little different.

<script src="https://gist.github.com/krschmidt/ec145651299ea34b4aba.js"></script>
