---
author: ["Bill Mao"]
title: "Site Architecture: How Github Commits Reach Your Screen"
date: "2024-05-07"
description: "First article describing how this site is built."
summary: "First article describing how this site is built."
tags: ["first post", "architecture"]
categories: ["first post", "architecture"]
---

### Frontend

I use Hugo and the Papermod theme to generate a static site. There's some custom CSS and layouts for the links and the Friendnet page, but otherwise nothing else is changed from the theme.

### Backend

The site itself is hosted on Cloudflare Pages; it is automatically built and deployed by Cloudflare's Github integration whenever commits are pushed to https://github.com/billqmao/personal-website. Terraform is used to build the hosting infrastructure, the code is located at https://github.com/billqmao/website-tf. The TF state is stored both locally and remotely in a GCP Cloud Storage bucket.