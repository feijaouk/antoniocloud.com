---
layout: default
title: Antonio Cloud blog
permalink: /
baseurl: /antoniocloud/
author_profile: true
---

Antonio Cloud blog

- [About](https://antoniofeijaouk.github.io/antoniocloud/about/)
- [Posts](https://antoniofeijaouk.github.io/antoniocloud/posts/)
- [Categories](https://antoniofeijaouk.github.io/antoniocloud/categories/)
- [Tags](https://antoniofeijaouk.github.io/antoniocloud/tags/)


Test index.md file - `index.md` file

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
