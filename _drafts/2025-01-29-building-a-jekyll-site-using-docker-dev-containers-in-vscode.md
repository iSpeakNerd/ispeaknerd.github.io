---
layout: post
title: How to build a Jekyll site using Docker dev containers in VSCode
date: 2025-01-29 10:00:00 -0800
author: ispeaknerd
description: How to build a Jekyll site using Docker dev containers in VSCode
categories:
- tutorial
- jekyll
tags:
- docker
- jekyll
- vscode
- dev container
published: false
sitemap: false
---

# How to build a Jekyll site using Docker dev containers in VSCode

## Overview

This tutorial will guide you through the process of building a Jekyll site using Docker dev containers in VSCode. We'll walk through the steps of setting up the project, creating the dev container, and running the site.

This project was a learning exercise for me. I wanted to build my Jekyll site isolated from the rest of my development environment because it relies on a completely different stack (Ruby) than my other projects (TypeScript, JavaScript, etc.). Modularizing my dev environment has been helpful and I've learned a lot about Docker and VSCode dev containers in the process. 

In the future, I'll be able to use this approach to use cloud-based dev environments to give me access to consistent environments across different projects and consistent high-powered development environments from any local machine. In other words, I'm setting myself up to access the best tools and environments no matter where I am.

## Prerequisites

locally installed:
- VSCode
- Docker

### VSCode Extensions
- Dev Containers
- WSL

### Docker
- Docker Desktop
- Jekyll docker image you'd like to use (I'm using [Chirpy theme](https://github.com/cotes2020/jekyll-theme-chirpy), so I used the [Chirpy starter repo](https://github.com/cotes2020/chirpy-starter) which leverages a docker image in the manner described in this tutorial)


#### Other resources

1. Development containers with Visual Studio Code https://zerokspot.com/weblog/2020/07/15/development-containers-with-visual-studio-code/
2. Build a Jekyll development environment with VS Code & Remote Containers https://powers-hell.com/2021/07/25/build-a-jekyll-development-environment-with-vs-code-remote-containers/
3. VSCode Remote Development: https://code.visualstudio.com/docs/remote/remote-overview
4. Docker reuses images if no change is detected. https://stackoverflow.com/questions/72746911/clone-repo-inside-docker-volume-with-devcontainer-re-open-it-and-access-its-ip
