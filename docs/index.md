---
# You don't need to edit this file, it's empty on purpose.
# Edit theme's home layout instead if you wanna make some changes
# See: https://jekyllrb.com/docs/themes/#overriding-theme-defaults
layout: home
author_profile: true
---

Antonio Cloud owned and maintained by Antonio Feijao UK.
{: .notice--success}


**Disclaimer** - [AntonioCloud.com](https://www.antoniocloud.com) is a personal website. The opinions expressed are my own and do not necessarily represent those of [current](https://aws.amazon.com) or [past employers](https://www.linkedin.com/in/antoniofeijaouk/).
{: .notice--warning}

---

## Buy me a coffee

I update this page during my personal time. If you found anything that helped you, or you just want to support me, them buy me a drink :)

You will make me happy and will motivate me to write more content :)

[![ko-fi](https://www.ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/B0B019526)

---

## Welcome

![Antonio Feijao UK snorkeling](/assets/images/antonio-feijao-uk-snorkeling.jpg)

Welcome to [AntonioCloud.com](https://www.antoniocloud.com).

In this website you will find **Antonio Feijao UK**'s personal notes about AWS Cloud, Linux, Networking, Raspberry-Pi, Cyber-Security, Python3 and coding.

I built this website to get hands-on experience and to share some of my personal learnings with others.

I am passionate about technology in general and I will use this page to share learnings with you and possible create positive discussions where I can learn from you too.

---

## Content

Here you find list of **[Posts](/posts/)** or list of **[posts by categories](/categories/)** or list of **[post by tags](/tags/)**

---

## About Antonio

Here you find more [About Antonio Feijao UK](/about/).

---

## Antonio Certifications

Here I have a list of current [Antonio Feijao UK certifications](/certifications/).

---

## Albert Einstein

On this page you might find  quotes about [Albert Einstein](https://en.wikipedia.org/wiki/Albert_Einstein), that's because I found many of them inspirational and believe in them.

> The only source of knowledge is experience.

by [Albert Einstein](https://en.wikipedia.org/wiki/Albert_Einstein)

---

## List of post at Antonio Cloud

<ul>
  {% for post in site.posts %}
    <li>
          <a href="{{ post.url }}" target="_blank">{{ post.title }}</a>
          {{ post.excerpt }}
    </li>
  {% endfor %}
</ul>
