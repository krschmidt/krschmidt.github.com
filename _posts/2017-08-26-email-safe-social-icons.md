---
layout: post 
title: Email Safe CSS Social Media Icons
date: 2017-08-26 14:10:00
tags:
- Development
- Web
---
I'm currently putting together a [signature generator](https://github.com/LaneCommunityCollege/jquery-signature). I've been trying to find a way to include social media icons under signatures.

Externally referenced images didn't work, as many email clients immediately strip those out. Inline base 64 encoded PNGs were a little better, rendering in some clients, but conspicuously absent in others. SVGs were likely to be an even worse problem, as our desktop email client at work is embarrassingly old. That left me stumped.

But after having a discussion with an intern the other day, about some of the compromises I'd had to make to build a website that would work with IE6, I realized I had another option. I could do a purely CSS image. Making logos out of CSS usually relies on substantial use of box-shadow and absolute positioning. But Gmail [strips out both of those](https://www.campaignmonitor.com/css/), as well as a number of other properties. If I was going to do this, it was going to be like stepping back in time ten years.

They're definitely imperfect, but what I ended up with seems to render correctly in the email clients we encounter most often. 

<img src="/img/icons.png" alt="Preview of Instagram, Facebook, and Twitter Icons">

Icon source is available on [Github](https://github.com/krschmidt/css-icons). 