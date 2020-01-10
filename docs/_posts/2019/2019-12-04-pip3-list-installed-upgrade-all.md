---
categories:
    - Python 3
    - Linux
tags:
    - Python 3
    - Linux
    - pip3
    - shell-scripting
---

So, I want to list the packages installed with `pip3` and now that I can see them, I want to update them all.

## List `pip3` installed packages

```shell
pip3 list
```

## Update all my pip3 packages

with a `for loop` you can loop through all your packages, exclude what is not a package and run command `pip3 {package} --upgrade` on the installed packages.

```shell
for n in $(pip3 list | awk '{print $1}' | egrep -v 'Package|^-'); do pip3 install ${n} --upgrade ; done
```

If you know better, let me know :)

Beware of dependencies packages or minimum and max versions, use at your own responsibility. 
