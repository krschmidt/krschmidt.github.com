---
layout: post 
title: Deleting nodes tagged with a taxonomy term 
date: 2014-11-19 19:05:15
tags:
- Development
- Web
---
Occasionally, [we](http://www.lanecc.edu) find ourselves with a area of the website that we no longer use and can safetly delete. Normally, it's a very small area of the site, and one of our content administrators will delete the nodes, then I'll remove the files and the taxonomy term associated with the nodes (we use Drupal's taxonomy module to regulate permission and to generate URLs).

But today we had the opportunity to delete several hundred nodes all at once, under about a dozen taxonomy terms. Time to script it.

After backing up your database, you can run this by specifying the `$termid` that you want to delete, then calling `drush scr ~/path/to/script/delete_term_and_nodes.php`.

<script src="https://gist.github.com/krschmidt/540f1de3c375bd2f5226.js"></script>