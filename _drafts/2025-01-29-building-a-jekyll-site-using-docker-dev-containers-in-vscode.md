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

# Running a Jekyll site locally using Docker dev containers in VSCode

# Running a Jekyll Site Locally with Dev Containers in VS Code

## Introduction
- Why I chose Dev Containers for Jekyll development
- Benefits: isolated environment, easy setup, consistent builds
- Overview of what this guide covers

## Prerequisites
- Installed software:
  - [VS Code](https://code.visualstudio.com/)
    - [Dev Containers extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)
  - [Docker Desktop](https://www.docker.com/products/docker-desktop/)

## Setting Up the Dev Container
### 1. Creating the `.devcontainer` Configuration
- Overview of `.devcontainer/devcontainer.json`
- Specifying the base image I used
 - I'm using [Chirpy theme](https://github.com/cotes2020/jekyll-theme-chirpy), so I used the [Chirpy starter repo](https://github.com/cotes2020/chirpy-starter) which leverages a docker image in the manner described in this tutorial
- Mounting project files inside the container
- Forwarding ports for local access (automatically handled by [dev container extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers), or you can manually forward ports in `./devcontainer/devcontainer.json`)
- Enabling VS Code extensions inside the container

### 2. Configuring Jekyll in the Container
- Running `bundle install` to install dependencies
- Setting up the `_config.yml` file if needed
  - Chirpy theme has some information about the [config file options](https://chirpy.cotes.page/posts/getting-started/#configuration)
- Handling gem dependencies with a `Gemfile`

### 3. Running the Jekyll Server
- Starting the container in VS Code
- Running `bundle exec jekyll s` inside the container to serve the site
- Accessing the local site at `http://127.0.0.1:4000` (localhost is not available inside the container)
- Watching for file changes and live reload behavior

## Optimizations & Troubleshooting
- Speeding up container startup with Docker caching
- Handling gem installation errors inside the container

## Conclusion
- How Dev Containers simplified my Jekyll development by isolating the build environment
- Encouragement to try this approach for other static site generators
- Additional resources for customizing Dev Containers further

## References
- [Development containers with Visual Studio Code](https://zerokspot.com/weblog/2020/07/15/development-containers-with-vs-code/)
- [Build a Jekyll development environment with VS Code & Remote Containers](https://powers-hell.com/2021/07/25/build-a-jekyll-development-environment-with-vs-code-remote-containers/)
- [VS Code Remote Development](https://code.visualstudio.com/docs/remote/remote-overview)
- [Docker image reuse in Dev Containers](https://stackoverflow.com/questions/72746911/clone-repo-inside-docker-volume-with-devcontainer-re-open-it-and-access-its-ip)
- [Dockerfile for the Chirpy theme](https://github.com/cotes2020/chirpy-starter/blob/master/Dockerfile)
- [Chirpy theme](https://github.com/cotes2020/jekyll-theme-chirpy)
- [Chirpy starter repo](https://github.com/cotes2020/chirpy-starter)
- [VS Code Remote Development: Develop in a container on a remote host](https://code.visualstudio.com/remote/advancedcontainers/develop-remote-host)


---
---

## Overview

This tutorial will guide you through the process of building a Jekyll site using Docker dev containers in VSCode. We'll walk through the steps of setting up the project, creating the dev container, and running the site.

This project was a learning exercise for me. I wanted to build my Jekyll site isolated from the rest of my development environment because it relies on a completely different stack (Ruby) than my other projects (TypeScript, JavaScript, etc.). Modularizing my dev environment has been helpful and I've learned a lot about Docker and VSCode dev containers in the process. 

In the future, I'll be able to use this approach to use cloud-based dev environments to give me access to consistent environments across different projects and consistent high-powered development environments from any local machine. In other words, I'm setting myself up to access the best tools and environments no matter where I am.

#### Other resources

1. Development containers with Visual Studio Code https://zerokspot.com/weblog/2020/07/15/development-containers-with-visual-studio-code/
2. Build a Jekyll development environment with VS Code & Remote Containers https://powers-hell.com/2021/07/25/build-a-jekyll-development-environment-with-vs-code-remote-containers/
3. VSCode Remote Development: https://code.visualstudio.com/docs/remote/remote-overview
4. Docker reuses images if no change is detected. https://stackoverflow.com/questions/72746911/clone-repo-inside-docker-volume-with-devcontainer-re-open-it-and-access-its-ip
