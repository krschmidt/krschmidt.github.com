---
layout: post 
title: Converting Drupal from LDAP to CAS
date: 2015-10-10 11:05:40
tags:
- Development
- Web
---
As part of a larger identity management project at work, I recently changed our Drupal 7 install from LDAP authentication to CAS. Here was our process:

1. Since we want the CAS login screen to come up for every user, we'd need a new login screen for our handful of users with local accounts. We created a new node for this, and display the User Login block on that node.
2. Disable all the LDAP modules.
3. Commit the [CAS Module](https://www.drupal.org/project/cas), push it up, and install it.
4. Configure the module:
    * Made CAS login default on login forms
    * checking that users cannot change their email address or password
    * require CAS for `user*`
    * setting the initial login destination to admin/dashboard
4. Convert all of our LDAP users to new CAS accounts, based on these [instructions](https://www.drupal.org/node/1261232). 
<script src="https://gist.github.com/krschmidt/c09756eed306cb4f170a.js"></script>
5. Since the initial login destination CAS module setting is really for logins from the CAS login block, we left the [Login Destination](https://www.drupal.org/project/login_destination) module in place to make sure that users who login at `/user` are sent to `/admin/dashboard`
6. In order to log out of CAS in addition to Drupal, we added a redirect from `/user/logout` to `/caslogout`
7. on `/admin/config/system/site-information` we changed the login page to `/cas`
8. Uninstall the LDAP modules (after a few days, just in case something was broken)

We had one additional user who was using a local account but who could be switched to CAS. That was two more queries:
<script src="https://gist.github.com/krschmidt/bcfa0f685b3ad9f6295f.js"></script>
user-id is the numeric uid that can be found by editing a user on `/admin/people`, and username is the username that user will use to login on the CAS screen.

Switching to CAS also changes our new user creation process. Rather than ask our LDAP administrator to add a group an LDAP entry, our webmaster (who manages our editors and content) simply creates a new Drupal user, using their name as their drupal username, and cas username as the cas username. Drupal requires a password, even though it'll never get used, so she generates a random 14+ character password that will never get seen. 
