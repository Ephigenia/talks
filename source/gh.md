---
title: gh
description: 
keywords: npm,tool,package,version
author: Marcel Eichner
marp: true
theme: marceleichner
_header: 2022-03-30
_footer: http://www.marceleichner.de
---

<!--

https://cli.github.com/manual/gh_extension

    gh run list --workflow deploy-to-prod.yml 

    gh pr checkout

    gh pr list

    gh label create

    gh release create

extensions

    gh actions-status cli

show running actions

    gh run view

    gh run watch

iterate

    gh repo list Egoditor --json name -q ".[] .name" | xargs -n1 -I $ sh -c "echo '# repo: $'; gh secret list --repo Egoditor\/$"
>

<!-- _class: lead -->
# 🐙 gh

## GitHub’s official command line tool

https://cli.github.com/

---
<!-- _class: invert lead -->
# Pull-Requests

```
gh pr checkout <number>
```

---
<!-- _class: invert lead -->
# Issues

---
<!-- _class: invert lead -->
# Workflows

# Resources

- https://github.blog/2021-03-11-scripting-with-github-cli/
- [Awesome GitHub CLI Extensions](https://github.com/kodepandai/awesome-gh-cli-extensions)

---
<!-- _class: three -->
# Thanks for listening!
![bg left 50%](https://public-api.egodit.org/v1/create/free?qr_code_text=http://qrco.de/bdWDGs)
