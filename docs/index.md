---
layout: default
title: Antonio Cloud, Antonio Feijao UK
permalink: /
base_url: https://www.antoniocloud.com
author_profile: true
---

Antonio Cloud personal website.
    My personal study notes about AWS Cloud, Linux, Networking, Raspberry PI, Cyber Security, Python and coding.
    The opinions expressed here are my own and do not necessarily represent those of [current](https://aws.amazon.com) or [past employers](https://linkedin.com/in/antoniofeijaouk/).

- [About](/about/)
- [Posts](/posts/)
- [Categories](/categories/)
- [Tags](/tags/)

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
