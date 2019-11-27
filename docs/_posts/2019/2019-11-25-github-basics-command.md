---
layout: post
base_url: "/antoniocloud"
---

# Github git basic commands

Some basic git command and working with ssh keys to update the repository

<https://help.github.com/en/enterprise/2.17/user/authenticating-to-github/adding-a-new-ssh-key-to-your-github-account>

```bash

git clone


ssh-keygen -t rsa -b 4096 -C "my comment "

vim ~/.ssh/config

eval "$(ssh-agent -s)"

ssh-add "my-private-key..."


git remote set-url origin git@github.com:"USERNAME"/"REPOSITORI.git"


git status

git add .

git commit -am "message/comment about changes"

git push

git pull

```

* another page with intro - <https://dev.to/juni/git-and-github---must-know-commands-to-make-your-first-commit-333c>

## git with ssh key

1. first create your ssh key `ssh-keygen -b 4096`
2. add the `.pub` key into your repository
3. check this setup - <https://medium.com/@czarpino/how-to-tell-git-which-ssh-key-to-use-c8574fb243fd>
