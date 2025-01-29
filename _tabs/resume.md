---
layout: page
icon: fas fa-user-tie
order: 5
toc: true
---

{% capture resume_content %}
{% if page.url contains '/resume/' %} 
# iSpeakNerd
{% endif %}

<div id="resume-summary">Developer Relations specialist with extensive experience in technical writing, community education, and developer support for Web3 and decentralized finance (DeFi) platforms. Skilled at creating accessible documentation, engaging tutorials, and learning resources that demystify complex technologies. Experienced with community building and fostering developer engagement through collaborative platforms such as GitHub, Notion, and Docusaurus. Proficient with tools and frameworks like Vercel, React, and Next.js, combining a background in physics and programming to effectively bridge technical and non-technical audiences.</div>

{% comment %}
loop through social links from _config.yml and match icons to display from _data/contact.yml
{% endcomment %}


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

## Skills

{%comment%}
render skills as tag links if tags exist
{% endcomment%}
- **Developer Education**: {% assign deSkills = site.data.resume.skills.developer_education | split: ", " -%}
{%- for item in deSkills -%}
  {%- assign item_downcase = item | downcase -%}
  {%- comment -%}singularize{%- endcomment -%}
  {%- assign singular = site.data.plurals[item_downcase] | default: item -%} 
  {%- comment -%}linkify tags{%- endcomment -%}
  {%- include tag_link.html item=singular display=item -%}
  {%- unless forloop.last -%}, {% endunless -%}
{%- endfor %}
- **Developer Tools**: {% assign dtSkills = site.data.resume.skills.developer_tools | split: ", " -%}
{%- for item in dtSkills -%}
  {%- assign item_downcase = item | downcase -%}
  {%- comment -%}singularize{%- endcomment -%}
  {%- assign singular = site.data.plurals[item_downcase] | default: item -%} 
  {%- comment -%}linkify tags{%- endcomment -%}
  {%- include tag_link.html item=singular display=item -%}
  {%- unless forloop.last -%}, {% endunless -%}
{%- endfor %}
- **Languages**: {% assign lSkills = site.data.resume.skills.languages | split: ", " -%}
{%- for item in lSkills -%}
  {%- assign item_downcase = item | downcase -%}
  {%- comment -%}singularize{%- endcomment -%}
  {%- assign singular = site.data.plurals[item_downcase] | default: item -%} 
  {%- comment -%}linkify tags{%- endcomment -%}
  {%- include tag_link.html item=singular display=item -%}
  {%- unless forloop.last -%}, {% endunless -%}
{%- endfor %}
- **Community & Content Management**: {% assign ccmSkills = site.data.resume.skills.community_and_content_management | split: ", " -%}
{%- for item in ccmSkills -%}
  {%- assign item_downcase = item | downcase -%}
  {%- comment -%}singularize{%- endcomment -%}
  {%- assign singular = site.data.plurals[item_downcase] | default: item -%} 
  {%- comment -%}linkify tags{%- endcomment -%}
  {%- include tag_link.html item=singular display=item -%}
  {%- unless forloop.last -%}, {% endunless -%}
{%- endfor %}

## Experience

{% for job in site.data.resume.experience %}
### {{ job.title }}
<!-- {: #{{ job.title | slugify }} } -->
**{{ job.company }}** {% if job.start_year != job.end_year %}({{ job.start_year }} - {{ job.end_year }}){% else %}({{ job.start_year }}){% endif %}

{% for highlight in job.highlights %}
- {{ highlight }}
{% endfor %}
{% endfor %}

## Projects

{% for project in site.data.resume.projects %}
### {{ project.title }}
<!-- {: #{{ project.title | slugify }} } -->
{%comment%} _{{ project.role | default: "" }}_ {% endcomment %}

**{{ project.description }}** - {% if project.link %} [{{ project.link }}]({{ project.link }}) {% endif %}

{% if project.tags %}
Technologies: {% assign tags = project.tags | split: ", " -%}
  {%- for item in tags -%}
    {%- include tag_link.html item=item -%}
    {%- unless forloop.last -%}, {% endunless -%}
  {%- endfor -%}
{%- endif -%}
{%- endfor %}

## Education

{% for education in site.data.resume.education %}
### {{ education.degree }}
<!-- {: #{{ education.degree | slugify }} } -->
**{{ education.school }}** ({{ education.year }})
{% endfor %}

{% if jekyll.environment == "development" %}
<div class="updated-on" style="text-align: center; font-size: 11px;">
  <p>
    This resume was last updated on: <a href="{{ site.data.resume.last_commit_url }}" target="_blank" rel="noopener noreferrer">{{ site.data.resume.last_edit | date: "%Y-%m-%d" }}</a>
  </p>
</div>
{% endif %}

{% endcapture %}

<!-- destructure sections -->
{% assign sections = resume_content | split: '
## ' %}
{% assign first = sections | first %}
{% assign rest = sections | slice: 1, sections.size %}
{% assign last = rest | last %}
{% assign middle = rest | pop %}

<!-- rebuild with splits in document structure -->

<section class="resume-section" id="resume-summary">
{{ first | markdownify }}
</section>

<hr class="resume-section-divider">

{% for section in middle %}
{% assign section_lines = section | split: '
' %}
{% assign section_title = section_lines | first | strip %}
<section class="resume-section" id="{{ section_title | slugify }}">
<h2>{{ section_title }}</h2>
{{ section | remove_first: section_title | markdownify }}
</section>
<hr class="resume-section-divider">
{% endfor %}

{% assign last_lines = last | split: '
' %}
{% assign last_title = last_lines | first | strip %}
<section class="resume-section final-section" id="{{ last_title | slugify }}">
<h2>{{ last_title }}</h2>
{{ last | remove_first: last_title | markdownify }}
</section>
