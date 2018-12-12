#!/bin/bash
git for-each-ref --shell --format="if [[ %(refname:short) != \"_ignore\"* ]] && [[ ! -z %(upstream) ]]; then git checkout %(refname:short) && git rebase %(upstream:short); fi" refs/heads/ | sh
