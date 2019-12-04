---
# You don't need to edit this file, it's empty on purpose.
# Edit theme's home layout instead if you wanna make some changes
# See: https://jekyllrb.com/docs/themes/#overriding-theme-defaults
layout: home
author_profile: true
---

Antonio Cloud personal website.

Personal notes about AWS Cloud, Linux, Networking, Raspberry PI, Cyber Security, Python and coding.

**The opinions expressed here are my own and do not necessarily represent those of [current](https://aws.amazon.com) or [past employers](https://linkedin.com/in/antoniofeijaouk/)**.

[![ko-fi](https://www.ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/B0B019526)


Check my **[Posts](/posts/)** Or list by **[Categories](/categories/)** or **[Tags](/tags/)**

[About Antonio](/about/) && [Antonio Certifications](/certifications/)

---

## Home

!!! home
    Hi and welcome to my personal website.
    [Antonio Cloud](https://www.antoniocloud.com/) is my personal website created and maintained by [Antonio Feijao UK](/about-antonio/).

    I built this website to get hands-on experience and to share some of my personal learnings with others.

    I am passionate about technology in general and I will use this page to share learnings with you and possible create positive discussions where I can learn from you too.

## Disclaimer

!!! Disclaimer
    [AntonioCloud.com](https://www.antoniocloud.com) is a personal website.
    
    The opinions expressed here are my own and do not necessarily represent those of [current](https://aws.amazon.com) or [past employers](https://www.linkedin.com/in/antoniofeijaouk/).

![Antonio Feijao UK snorkeling](images/antonio-feijao-uk-snorkeling.jpg)

## Albert Einstein

You will find some quotes about [Albert Einstein](https://en.wikipedia.org/wiki/Albert_Einstein) my website.

!!! quote
    The only source of knowledge is experience.
    
    by [Albert Einstein](https://en.wikipedia.org/wiki/Albert_Einstein)

## Buy me a drink

Buy-me-a-drink
    This is a personal website and opinions expressed are mine.
    
    I build this page during my own personal time and if you found any information on my page that helped you, or you just want to make me happy, feel free to buy me a drink.
    
    You will make me happy and will motivate me to write more content :)
    
    [https://monzo.me/AntonioFeijaoUK](https://monzo.me/antoniofeijaouk)
    
    [https://www.paypal.me/FeijaoUK](https://www.paypal.me/feijaouk)
    
    Thank you!



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