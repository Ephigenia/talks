---
title: NPM Tools
description: A short introduction to a collection of useful node packages for everyday use.
keywords: npm,tool,package,version
author: Marcel Eichner
marp: true
theme: marceleichner
_header: 2022-03-16
_footer: http://www.marceleichner.de
---



<!-- _class: lead -->
# 🧰 NPM Tools

## A short introduction to a collection of useful node packages for everyday use.




----
<!-- _class: chapter -->
## ⚒️ [nvm](https://github.com/nvm-sh/nvm)

nvm is a version manager for node.js

----
### Why?

> nvm allows you to quickly install and use different versions of node via the command line on **all major operating systems**

- POSIX-compliant shell: sh, dash, ksh, zsh, bash
- platforms: unix, macOS, and windows WSL
- simply install/uninstall node version(s)
- have multiple node versions installed
- pin node version used in project by adding a `.nvmrc`






----
<!-- _class: chapter -->
## 🐕 [husky](https://www.npmjs.com/package/husky)

"modern native git hooks made easy" – Easily setup local git commit hooks for the whole team.

---
### git hooks?

- Run custom script(s) every time an [action](https://githooks.com/) occurs (f.e. "commit", "push")
- use cases:
    - lint file(s)
    - auto-format file(s)
    - run test(s)
    - build files
    - generate types
    - validate format of commit-message

---
### Setup

Install the dependency:

    npm install husky --save-dev;

Set the "prepare" script in `package.json`, install git-hooks:

    npm set-script prepare "husky install"
    npm run prepare

This will also create `.husky` directory and add it to `.gitignore`.

---
### Example: pre-push

Run a script everytime new code is pushed to a remote with the `pre-push` action:

```bash
npx husky add .husky/pre-push "npm lint"
git add .husky/pre-push
```

```bash
#!/bin/sh
. "$(dirname "$0")/_/husky.sh"

# <insert lint command here>
```

---
### bypass hooks

Sometimes scripts are slow and must be bypassed:

```bash
git commit --no-verify -m "chore: my message"
```




----
<!-- _class: invert -->
## ⬆️ [npm-check](https://www.npmjs.com/package/npm-check)

"Check for outdated, incorrect, and unused dependencies." - Interactive way of updating npm packages


---
### Why?

- get an overview of the up-to-date "state" of dependencies
- visually appealing, <kbd>F+STRG</kbd> simple way of updating multiple packages
- see different types of updates: patch, minor, major
- find extranous packages
- find missing packages

----
![bg h:90%](https://cloud.githubusercontent.com/assets/51505/9569912/8c600cd8-4f48-11e5-8757-9387a7a21316.gif)


---
<!-- _class: chapter -->
## ↗️  [npm-check-updates](https://www.npmjs.com/package/npm-check-updates)

"upgrades your package.json dependencies to the latest versions" - ignoring specified versions

---
### Non-interactive - but more features!

![bg right height:40%](https://github.com/raineorshine/npm-check-updates/raw/main/.github/screenshot.png?raw=true)

- ignore major (breaking) and minor updates: `npx npm-check-update --target minor`
- run tests while updating `npx npm-check-update --doctor`



----
<!-- _class: chapter -->
## 📦 [depcheck](https://www.npmjs.com/package/depcheck)

Analyze dependencies in a project and find unused and useless dependencies.

---
### Use-Cases

- ideal for integration into CI
- detect packages that have been added by mistake
- detect packages which are not actually used (anymore)

---
### `npx depcheck`

![bg right:70%](https://miro.medium.com/max/1400/1*WZP5AXraMjlD2dikWPfCrw.png)

---
### False Positive(s)

Some dependencies are not required in the sources but are used for compilation, linting and other tasks. Those packages often are detected and are false-positives and can be ignore while also documenting why they are added:

```yaml
# .depcheck.yml
# use `npx depcheck --config .depcheck.yml`
ignores:
  # required by ngx-bootstrap
  - "bootstrap"
  # used for git hooks
  - "husky"
```



----
<!-- _class: chapter -->
## 🪣 [modclean](https://www.npmjs.com/package/modclean)
"Remove unwanted files and directories from your node_modules folder"

---
### Why?

Collection of different glob-patterns & filters to remove files from node_modules which are not used.

- reduce size of packaged applications (electron)
- reduce size of docker image
- in CI reduce space used for cache(s)
- save space on machine
- [Example Benchmarks](https://github.com/ModClean/modclean/wiki/Benchmarks)




---
<!-- _class: chapter -->
![height:300](https://res.cloudinary.com/practicaldev/image/fetch/s--asKSgsVB--/c_imagga_scale,f_auto,fl_progressive,h_420,q_auto,w_1000/https://thepracticaldev.s3.amazonaws.com/i/9i6bs4g6cx05jeagfhum.png)
## [npkill](https://www.npmjs.com/package/npkill)

"Easily find and remove old and heavy node_modules folders ✨"

---
![bg h:78%](https://camo.githubusercontent.com/fa9316e334b14a26e8c8f5b7777e70cca137a6f21b5e160c2b4df9fcdd730308/68747470733a2f2f6e706b696c6c2e6a732e6f72672f696d672f6e706b696c6c2d64656d6f2d302e332e302e676966)




---
<!-- _class: chapter -->
## 📄 [license-checker-rseidelsohn](https://www.npmjs.com/package/license-checker-rseidelsohn)
"Ever needed to see all the license info for a module and its dependencies?"

---
### Why?

- extract [SPDX](https://spdx.org/licenses/) identifiers of packages
- list licenses for legal auditing, documentation:
  
        npx license-checker-rseidelsohn --csv --out /path/to/licenses.csv

- check if packages added with unwanted licenses

        npx license-checker-rseidelsohn --failOn 'GPL'




---
<!-- _class: chapter -->
# Others?

- check packages in `package.json` files of projects that you’re using to find new inspiring helpful tools.
- check github explore: https://github.com/topics/javascript
- check [node weekly](https://nodeweekly.com/) newsletter




---
<!-- _class: invert -->
# Thanks for listening!
![bg left 50%](https://public-api.egodit.org/v1/create/free?qr_code_text=http://qrco.de/bdWDGs&background_color=%23000000&foreground_color=%23ffffff)
