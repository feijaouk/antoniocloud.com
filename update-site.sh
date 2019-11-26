#!/bin/bash

#mkdocs build

git add .

git commit -am "minor update"

git push

mkdocs gh-deploy

