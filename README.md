Free & For Sale Writeup
=======================

##Title: Free & For Sale
##Team Members: Tommy Tai, Nikhil Patel, Steven Elleman, Yadel Abraham
##Demo Link: [Free & For Sale Demo](https://freeforsale.herokuapp.com/)

##Idea: A forum where users can buy/sell/give away various products ranging from seven different categories.

##Models and Description:
1. User
* Has name, email, and password
* Users have a gravatar icon
* Users also have the ability to edit their profile

2. For-Sale Item
* Has a title, short description, pick-up location, timestamp of post, and price
* Each Item is able to be categorized into one of seven different categories

3. Comment
..* Texted posted by various users with their gravatar icon appearing as well as the timestamp of post
..* Users are able to post as many comments as they would like

##Features:
1. User edit profile page
* Can change password
* Users have the ability to also delete their account
2. New Item post
* Users have the ability to post a new item
* Must list price, category, short description, as well as pick-up location
3. Homepage
* Has a login view if the user is not logged in
* Otherwise, will redirect to display clothing items as the first category

##Tech Specs:
* Front-end: HTML/CSS Bootstrap
* Back-end: Ruby on Rails
* Extra Gem: Gravatar

Division of Labor:
* Tommy: Devise, OAUTH, User model, Gravatar, some routes
* Yadel: Routes, Some frontend work
* Steve: Basically all of the frontend
* Nikhil: Comment and Item model, Some frontend work