#!/usr/bin/env bash

set -euo pipefail

rm --force --recursive _site/
git worktree add --orphan _site/
bundle exec jekyll build
cd _site/
git add

