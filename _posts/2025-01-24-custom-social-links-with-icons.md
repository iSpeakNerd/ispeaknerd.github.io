---
layout: post
title: Adding Custom Social Links and Icons to My Jekyll Site
date: 2025-01-24 10:00:00 -0800
author: ispeaknerd
authors:
- ispeaknerd
description: How I easily added custom social links and icons to my Chirpy-themed Jekyll site
categories:
- tutorial
- jekyll
tags:
- tutorial
- jekyll
- chirpy
- jekyll-theme
published: true
---

# Adding Custom Social Links and Icons to My Jekyll Site

## The Problem

I wanted to add custom social links and icons to my Chirpy-themed Jekyll site because my deepest social presence is [on Farcaster](https://warpcast.com/ispeaknerd) which isn't supported by Chirpy. I found a [few solutions described online](https://blog.jakelee.co.uk/adding-new-social-media-link-to-minima/), but they were for the default Jekyll theme, [Minima](https://github.com/jekyll/minima), and didn't work for the Chirpy theme I'm using. I was able to combine a few ideas and create a solution that works and is easy to implement for Chirpy.

Specifically, I wanted to add the icon and link to my most active social media platform, [Farcaster](https://warpcast.com/ispeaknerd).

![Farcaster icon](./assets/img/fc-arch.svg)

## The Solution

I found a solution that combined a few other approaches and is easy to implement. I described my solution on [Chirpy's github discussion](https://github.com/cotes2020/jekyll-theme-chirpy/discussions/2172#discussioncomment-11837732) for anyone else who wants to add custom social links and icons to their Chirpy-themed Jekyll site, but here it is in longform.

### Overview

Basically, we want to add icons as svgs for each custom social link so that we can use them in the social links section of the sidebar or and anywhere else. To accomplish that, just follow these steps:

1. Create custom icons as a custom font using the social media logos.
2. Add the custom font to the Chirpy theme using css.
3. Create the custom link and icon mapping in the `_data/contact.yml` file.

> Note: Make sure you name the icons whatever you want to refer to them as on your site before uploading to icomoon in step 1. The names cannot be changed in css later. I'm using `CUSTOM_ICON_NAME` to refer to the icon in this example css file.
{: .prompt-tip }

### Step 1: Create custom icons as a custom font using the social media logos

I used [icomoon](https://icomoon.io/app) to create custom icons as a custom font using the social media svg logos.

1. Go to [icomoon](https://icomoon.io/app) and click on "Import Icons". 
2. Choose the svg files for the social media logos you want to use.
3. Select the icons you uploaded.
4. Click on "Font" at the bottom of the page and download the zip file.
5. Unzip the file. 
6. Copy the contents of the `fonts` folder to the `assets/fonts` folder in your Jekyll site.

### Step 2: Add the custom font to the Chirpy theme using css

By appending css rather than replacing the file entirely, we are keeping the default theme and just adding the custom font.

1. Create a copy of the [`jekyll-theme-chirpy.scss`](https://github.com/cotes2020/jekyll-theme-chirpy/blob/master/assets/css/jekyll-theme-chirpy.scss) file in the `assets/css` folder of your Jekyll site.
2. Append the contents of the `style.css` file downloaded from icomoon in step 1 to the `assets/css/jekyll-theme-chirpy.scss` file in your Jekyll site.

The final file should look like this:

```scss
---
---

@use 'main {% raw %}
{%- if jekyll.environment == 'production' -%}
  .bundle
{%- endif -%} {% endraw %}
';

/* append your custom style below */

@font-face {
  font-family: 'icomoon';
  src: url('/assets/fonts/icomoon.eot?weotyf');
  src: url('/assets/fonts/icomoon.eot?weotyf#iefix') format('embedded-opentype'),
    url('/assets/fonts/icomoon.ttf?weotyf') format('truetype'),
    url('/assets/fonts/icomoon.woff?weotyf') format('woff'),
    url('/assets/fonts/icomoon.svg?weotyf#icomoon') format('svg');
  font-weight: normal;
  font-style: normal;
  font-display: block;
}

[class^='icon-'],
[class*=' icon-'] {
  font-family: 'icomoon' !important;
  speak: never;
  font-style: normal;
  font-weight: normal;
  font-variant: normal;
  text-transform: none;
  line-height: 1;

  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}

.CUSTOM_ICON_NAME:before {
  content: '\e900';
}
```

### Step 3: Create the custom link and icon mapping in the `_data/contact.yml` file

1. Create a copy of the [`contact.yml`](https://github.com/cotes2020/jekyll-theme-chirpy/blob/master/_data/contact.yml) file in the `_data` folder of your Jekyll site.
2. Add the custom link and icon mapping to the `_data/contact.yml` file in your Jekyll site.

The final file will have a custom entry that looks like this:

```yaml
- type: CUSTOM_SOCIAL_TYPE
  icon: "CUSTOM_ICON_NAME"
  url: "CUSTOM_SOCIAL_LINK_URL"
```

> Note: Your icon name must match the icon name in the modified `jekyll-theme-chirpy.scss` file.
{: .prompt-info }
