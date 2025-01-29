---
layout: post
title: Work Samples
date: 2025-01-29 10:00:00 -0800
author: ispeaknerd
description: A collection of work samples and description of my writing process.
categories:
- work sample
- writing process
tags:
- writing process
- content writing
- work sample
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

<div class="resume-contact-links">
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
</div>
