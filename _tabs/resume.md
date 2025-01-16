---
layout: page
icon: fas fa-user-tie
order: 5
toc: true
---

# John Doe
{: .resume-header }

{header description}

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
**{{ job.company }}** _({{ job.period }})_

{% for highlight in job.highlights %}
- {{ highlight }}
{% endfor %}

{% endfor %}

## Projects
{: #projects }

{% for project in site.data.resume.projects %}
### {{ project.title }}
{: #{{ project.title | slugify }} }
**{{ project.description }}**

{% endfor %}

## Education
{: #education }

{% for education in site.data.resume.education %}
### {{ education.degree }}
{: #{{ education.degree | slugify }} }
**{{ education.school }}** _({{ education.year }})_

{% endfor %}

{% if jekyll.environment == "development" %}
<div class="prompt-tip">
<p>This resume was last updated on: {{ "now" | date: "%Y-%m-%d" }}</p>
</div>
{% endif %}


