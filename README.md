# Welcome to CAMML codes

[![Build Status](https://github.com/camml-lab/camml-codes/actions/workflows/tests.yaml/badge.svg)](https://github.com/camml-lab/camml-codes/actions)

This is our repository that groups together the various codes developed in the CAMML group.

## Users

## Developers

This repo uses [git submodules](https://git-scm.com/book/en/v2/Git-Tools-Submodules) the track various codes which each
live in their own repository. We do this using their `https://` versions which means you are asked for your credentials
every time you want to access them.
To avoid this you can run the following command which will use your git credentials instead:

```bash
# Run this command once to tell Git: 
# "Any time you see an HTTPS URL for github.com, use the SSH URL instead."
git config --global url."git@github.com:".insteadOf "https://github.com/"
```