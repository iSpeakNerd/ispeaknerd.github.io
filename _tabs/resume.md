---
layout: page
icon: fas fa-user-tie
order: 5
toc: true
---

{% if page.url contains '/resume/' %} 
# iSpeakNerd
{: .resume-header }
{% endif %}

Developer Relations specialist with extensive experience in technical writing, community education, and developer support for Web3 and decentralized finance (DeFi) platforms. Skilled at creating accessible documentation, engaging tutorials, and learning resources that demystify complex technologies. Experienced with community building and fostering developer engagement through collaborative platforms such as GitHub, Notion, and Docusaurus. Proficient with tools and frameworks like Vercel, React, and Next.js, combining a background in physics and programming to effectively bridge technical and non-technical audiences.

{% comment %}
loop through social links from _config.yml and match icons to display from _data/contact.yml
{% endcomment %}

<div class="resume-contact-links">
{% for contact in site.data.contact %}
  {% assign social_url = site.social.links | where_exp: "url", "url contains contact.type" | first %}
  {% if social_url %}
    <a href="{{ social_url }}" {% unless contact.noblank %}target="_blank" rel="noopener noreferrer"{% endunless %}>
      <i class="{{ contact.icon }}"></i>
    </a>
  {% endif %}
{% endfor %}
</div>

## Skills
{: #skills }

{%comment%}
render skills as tag links if tags exist
{% endcomment%}
- **Developer Education**: {% include tag_links.html content=site.data.resume.skills.developer_education %}
- **Developer Tools**: {% include tag_links.html content=site.data.resume.skills.developer_tools %}
- **Languages**: {% include tag_links.html content=site.data.resume.skills.languages %}
- **Community & Content Management**: {% include tag_links.html content=site.data.resume.skills.community_and_content_management %}

## Experience
{: #experience }

{% for job in site.data.resume.experience %}
### {{ job.title }}
{: #{{ job.title | slugify }} }
**{{ job.company }}** {% if job.start_year != job.end_year %}({{ job.start_year }} - {{ job.end_year }}){% else %}({{ job.start_year }}){% endif %}

{% for highlight in job.highlights %}
- {{ highlight }}
{% endfor %}

{% endfor %}

## Projects
{: #projects }

{% for project in site.data.resume.projects %}
### {{ project.title }}
{: #{{ project.title | slugify }} }
{%comment%} _{{ project.role | default: "" }}_ {% endcomment %}

**{{ project.description }}** - {% if project.link %} [{{ project.link }}]({{ project.link }}) {% endif %}

{% if project.tags %}
Technologies: {{ project.tags | join: ", " }}
{% endif %}

{% endfor %}

## Education
{: #education }

{% for education in site.data.resume.education %}
### {{ education.degree }}
{: #{{ education.degree | slugify }} }
**{{ education.school }}** ({{ education.year }})

{% endfor %}

{% if jekyll.environment == "development" %}
<div class="prompt-tip" style="text-align: center; font-size: 11px;">
  <p>
    This resume was last updated on: <a href="{{ site.data.resume.last_commit_url }}" target="_blank" rel="noopener noreferrer">{{ site.data.resume.last_edit | date: "%Y-%m-%d" }}</a>
  </p>
</div>
{% endif %}


