#!/bin/bash

#mkdocs build

mkdocs gh-deploy


git add .

git commit -am "minor update"

git push

