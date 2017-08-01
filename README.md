# README

# Meme Wars!

![Memes!](http://all-silhouettes.com/wp-content/uploads/2014/07/vector_meme_faces.jpg "memes")

# Introduction

Meme Wars is a social sharing site designed for sharing and posting memes. The interface is made so that users can quickly and easily sign up and share memes that they have seen online, or have created.

# Challenges

One of the challenges that I faced was getting the omniauth FaceBook feature to work. Michelle helped me out with that a lot so shout out to her! I also had issues getitng favorites to work but I was able to find and follow a super helpful tutorial that gave me good insites into how to get it to work. http://schmidt-happens.com/articles/2014/06/04/favoriting-system-in-rails.html

# Technologies Used

## Paperclip
Used for uploading images onto the server. Easy to use and simple to integrate into the view.
https://github.com/thoughtbot/paperclip

## Materialize
CSS Freamework used throughout the project. MAkes stuff look good!
http://materializecss.com/

## Figaro
Security feature to prevent FaceBook app keys and mailer information from being exposed on GitHub.
https://github.com/laserlemon/figaro

## will paginate
pagination for meme index page.
https://github.com/mislav/will_paginate

## social share button
Adds shrea buttons to the memes so that its easy fro users to share memes on facebook, twitter, etc.
https://github.com/huacnlee/social-share-button

## acts as votable
Gem that allows for voting on resources.
https://www.youtube.com/watch?v=47KHwLVeSLE
https://github.com/ryanto/acts_as_votable

## onmiauth-facebook
Allows users to sign in through FaceBook.
https://coderwall.com/p/bsfitw/ruby-on-rails-4-authentication-with-facebook-and-omniauth
https://github.com/mkdynamic/omniauth-facebook

# Additional Stretch Goals

Create a thread of memes so that users can respond to meme posts with their own meme posts

Create a canvas interface so that users can upload an image, and the canvas can allow them to write text onto the template image. This will allow users to create memes form their own images on site.

Have pre-loaded templates of popular memes so that users can use the above canvas to crete their own memes on site, and not have to get them from another site.

I would also like to improve upon the style more to make the buttons on a sinlge line, and reduce the shareable icon buttons.
