# Welcome to CAMML codes

[![Build Status](https://github.com/camml-lab/camml-codes/actions/workflows/tests.yaml/badge.svg)](https://github.com/camml-lab/camml-codes/actions)
![reax](https://img.shields.io/github/actions/workflow/status/camml-lab/camml-codes/test.yml?job=test_submodules%20(submodule_path%3A%20reax))
![tensorial](https://img.shields.io/github/actions/workflow/status/camml-lab/camml-codes/test.yml?job=test_submodules%20(submodule_path%3A%20tensorial))
![e3md](https://img.shields.io/github/actions/workflow/status/camml-lab/camml-codes/test.yml?job=test_submodules%20(submodule_path%3A%20e3md))
![e3response](https://img.shields.io/github/actions/workflow/status/camml-lab/camml-codes/test.yml?job=test_submodules%20(submodule_path%3A%20e3response))
![e3gen](https://img.shields.io/github/actions/workflow/status/camml-lab/camml-codes/test.yml?job=test_submodules%20(submodule_path%3A%20e3gen))

This is our repository that groups together the various codes developed in the CAMML group.

## Getting started

This repo uses [git submodules](https://git-scm.com/book/en/v2/Git-Tools-Submodules) the track various codes which each
live in their own repository. We do this using their `https://` versions which means you are asked for your credentials
every time you want to access them.
To avoid this you can run the following command which will use your git credentials instead:

```bash
# Run this command once to tell Git: 
# "Any time you see an HTTPS URL for github.com, use the SSH URL instead."
git config --global url."git@github.com:".insteadOf "https://github.com/"
```

To clone the repository use

```bash
git clone https://github.com/camml-lab/camml-codes.git
cd camml-codes
chmod +x codes
```

to initialise the codes (submodules), use

```bash
./codes init
```

then, to pip install all of the codes use

```bash
./codes install
```

## Development

This part contains instructions for anyone maintaining this package.

To update the submodules to the latest versions on the development branch, use:

```bash
./codes update
```

> [WARNING]
> This will rebase onto the current versions of the submodules, so they should ideally be in a clean state.

If there are any updates, then these will now show up in `git status` which can be committed and pushed.