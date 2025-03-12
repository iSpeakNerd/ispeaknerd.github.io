---
layout: post
title: Work Samples
date: 2025-01-29 10:00:00 -0800
author: ispeaknerd
description: A collection of work samples and description of my writing process.
categories:
- work sample
tags:
- writing process
- content writing
- work sample
- technical writing
published: true
sitemap: true
pin: true
---

# iSpeakNerd Work Samples

Hello! Thank you for taking the time to review my writing samples.
My writing samples include an [overview document]({% post_url 2024-11-25-work-sample-1-project-overview %}), [developer documentation for an API tool]({% post_url 2024-12-05-work-sample-2-developer-documentation %}), a [how-to guide]({% post_url 2023-12-04-work-sample-3-how-to-user-guide %}), and a [user options flowchart]({% post_url 2023-03-23-work-sample-4-user-options-flowchart %}).
My ideal writing process looks like:

1. Define - Study the engineering PRs in order to test new features as the first user of the product and learn through doing. I document my steps, the code I run, and the issues I encounter. Design code samples to highlight in documentation.
2. Research - Meet with the lead engineer of the release to go through my notes, ask questions, and clarify my own understanding. Ask the engineer to review my code samples for accuracy. Decide if visual aids are warranted for any particular processes.
3. Draft 1 - Write the first draft of the documentation. Run style linters like [Alexjs](https://alexjs.com/) on save. Create technical diagrams as needed for the document.
4. Style Edit - The next day, edit the draft for grammar, tone, and style according to the organization’s [style guide](https://developers.google.com/style/). Add callouts to highlight specific information such as extra information, helpful tips, warnings, and danger signs.
5. Technical Review - Open a Pull Request and request a technical review from the same engineer and the product owner, as appropriate.
6. Draft 2 - Incorporate technical feedback into the document.
7. Stylistic Review - Request a peer review from another technical writer for style, tone, and grammar.
8. Finalize document - Incorporate stylistic feedback into the document.
9. Ship - Publish the document.

I hope these writing samples and the process above give you a sense of my technical writing skills. I strive to always be writing framed around solving user problems. To see more, check out [my GitHub profile](https://github.com/{{ site.github.username }}). Thank you!

<!-- <div class="resume-contact-links">
  <ul class="list-inline">
  {% for contact in site.data.contact %}
    {% assign social_url = site.social.links | where_exp: "url", "url contains contact.type" | first %}
    {% if social_url %}
      <li class="list-inline-item">
      <a href="{{ social_url }}" {% unless contact.noblank %}target="_blank" rel="noopener noreferrer"{% endunless %} class="no-underline">
        <i class="{{ contact.icon }} resume-contact-icon"></i>
      </a>
      </li>
    {% endif %}
  {% endfor %}
  </ul>
</div> -->

### Work Samples
<!-- TODO: add explicit audience for each -->
#### 1. Project Overview
Sample 1: [Project Overview Blog Post]({% post_url 2024-11-25-work-sample-1-project-overview %})

> ##### Work Sample 1: Project Overview Blog Post
> 
> **Project Name:** POAP Channel Invite Tool
> 
> **Project Context:** I built a tool at Devcon 2024 that allows community owners on Farcaster to discover the holders of their POAPs on Farcaster and invite them to join their Farcaster channel. The blog article explains the development of the tool and provides an overview of how it works that is accessible for both technical and nontechnical audiences.
> 
> **Project URL:** [POAP Invites Frame](https://github.com/iSpeakNerd/poap-invites-frame)
> 
> **Article URL:** Original publication [POAP-Powered Pathways to Participation](https://paragraph.xyz/@ispeaknerd.eth/poap-powered-pathways-to-participation)
{: .prompt-info}

#### 2. Developer Documentation 
Sample 2: [Developer Documentation]({% post_url 2024-12-05-work-sample-2-developer-documentation %})

> **Project:** Poap Invites Tool - API 
>
> **Context:** I built a tool at Devcon 2024 that allows community owners on Farcaster to discover the holders of their POAPs on Farcaster and invite them to join their Farcaster channel. I wrote the Readme document for the project repository that describes in technical detail how other developers can use it to give access to their own Farcaster communities from POAPs.
> 
> **Achievements:** Learned how to build in comments to the codebase that can be leveraged by others moving forward to build developer documentation and showcase logic flow with mermaid sequence diagrams.
> 
> **GitHub Readme:** [README.md](https://github.com/iSpeakNerd/poap-invites-frame/blob/main/README.md)
{: .prompt-info}

#### 3. How-To Guide
Sample 3: [How-To Guide]({% post_url 2023-12-04-work-sample-3-how-to-user-guide %})

> **Project:** Create Token Gating Rules with Collab.Land
> 
> **Context:** The defining feature of Collab.Land is the ability to create gating rules that communities can use to define boundaries on their content and spaces based on web3 token holdings, both fungibles and nonfungible. We found the UX to be confusing and cognitively demanding for users. Users had to make several decisions regarding gating configuration without knowing factors to consider, where to obtain required configuration settings, and potential gating implications. This documentation uses mdx within the Docusaurus framework.
> 
> **Achievements:** I created a number of documents walking users through the creation of token gating rules for individual token standards as well as guidance for which type of token gate was appropriate based on their requirements.
>
> **Pull Request:** [pull/200](https://github.com/abridged/collabland-dev/pull/200)
{: .prompt-info}

#### 4. Flowchart
Sample 4: [User Options Flowchart]({% post_url 2023-03-23-work-sample-4-user-options-flowchart %})

> **Project:** POAP Distribution Methods
> 
> **Context:** As a community member and POAP creator, I was very confused by the overwhelming amount of options for delivering POAPs to users. But there was no documentation at the time, Fall 2022, giving cross-option considerations, all the docs were focused on method → use but as a user I found myself confused and lost because I had the use but was struggling to choose the proper method. I created this flowchart to focus on the user perspective.
> 
> **Achievements:** I learned to think about inverting the engineering mindset of `method → use` and made this to focus on the user perspective of `uses → method`. 
> 
> **Live version:** [poap-distribution-methods](https://whimsical.com/poap-distribution-methods-79PSrqjYamsUY4nUfE5XFD@6HYTAunKLgTVnpkuieFxo2P6MmRwQtR7d8meXhx22wAfKSW)
{: .prompt-info}
