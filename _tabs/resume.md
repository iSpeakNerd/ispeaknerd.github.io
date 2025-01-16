---
layout: page
icon: fas fa-user-tie
order: 5
toc: true
---

# iSpeakNerd
{: .resume-header }

Developer Relations specialist with extensive experience in technical writing, community education, and developer support for Web3 and decentralized finance (DeFi) platforms. Skilled at creating accessible documentation, engaging tutorials, and learning resources that demystify complex technologies. Experienced with community building and fostering developer engagement through collaborative platforms such as GitHub, Notion, and Docusaurus. Proficient with tools and frameworks like Vercel, React, and Next.js, combining a background in physics and programming to effectively bridge technical and non-technical audiences.

{% comment %}
loop through social links from _config.yml and match icons to display from _data/contact.yml
{% endcomment %}
<div class="resume-contact-links">
{% for social_url in site.social.links %}
  {% for contact_data in site.data.contact %}
    {% if contact_data.url != nil or contact_data.type != 'rss' and contact_data.type != 'email' %}
      {% if social_url contains contact_data.type %}
        <a href="{{ social_url }}" {% unless contact_data.noblank %}target="_blank" rel="noopener noreferrer"{% endunless %}>
          <i class="{{ contact_data.icon }}"></i>
        </a>
      {% endif %}
    {% endif %}
  {% endfor %}
{% endfor %}
</div>

## Skills
{: #skills }

- **Developer Education**: {{ site.data.resume.skills.developer_education }}
- **Developer Tools**: {{ site.data.resume.skills.developer_tools }}
- **Languages**: {{ site.data.resume.skills.languages }}
- **Community & Content Management**: {{ site.data.resume.skills.community_and_content_management }}

## Experience
{: #experience }

{% for job in site.data.resume.experience %}
### {{ job.title }}
{: #{{ job.title | slugify }} }
**{{ job.company }}** _{% if job.start_year != job.end_year %}({{ job.start_year }} - {{ job.end_year }}){% else %}({{ job.start_year }}){% endif %}_

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
**{{ education.school }}** _({{ education.year }})_

{% endfor %}

{% if jekyll.environment == "development" %}
<div class="prompt-tip" style="text-align: center; font-size: 11px;">
  <p>
    This resume was last updated on: [{{ site.data.resume.last_edit }}]({{ site.data.resume.last_commit_url }})
  </p>
</div>
{% endif %}


