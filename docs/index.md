---
layout: default
title: Antonio Cloud, Antonio Feijao UK
permalink: /
base_url: https://www.antoniocloud.com
author_profile: true
---

Antonio Cloud personal website. Personal notes about AWS Cloud, Linux, Networking, Raspberry PI, Cyber Security, Python and coding. *The opinions expressed here are my own and do not necessarily represent those of [current](https://aws.amazon.com) or [past employers](https://linkedin.com/in/antoniofeijaouk/)*.

[![ko-fi](https://www.ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/B0B019526)


Check my **[Posts](/pages/posts/)** Or list by **[Categories](/pages/categories/)** or **[Tags](/pages/tags/)**

[About Antonio](/pages/about/) && [Antonio Certifications](/pages/certifications/)

---

## Antonio Cloud blog posts

<ul>
  {% for post in site.posts %}
    <li>
          <a href="{{ post.url }}" target="_blank">{{ post.title }}</a>
          {{ post.excerpt }}
    </li>
  {% endfor %}
</ul>

---
