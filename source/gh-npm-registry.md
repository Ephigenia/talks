---
title: gh npm registry
description: 
keywords: npm,tool,package,version,package,registry
author: Marcel Eichner
marp: true
theme: egoditor
_header: 2022-04-08
_footer: http://www.marceleichner.de
---

<!-- _class: lead -->
# GitHub NPM Registry

## how to use github as package registry for your private packages

https://cli.github.com/

---
<!-- _class: invert lead -->
# Prequisities

- `GITHUB_TOKEN` can be used to write to registry
- accessing the github npm registry requires a personal access token with "read:packages" permissions ([Manage Personal Access Tokens](https://github.com/settings/tokens))

---
<!-- _class: lead -->
# Install Package
How to use a private npm package form the github package registry

---
## NPM Configuration
Tell package manager to load scoped packages from a different registry:
`<project-id>/.npmrc`
```
@OWNER:registry=https://npm.pkg.github.com/
```

If the package to be used is public you’re done!

---
## Private Packages

Private NPM Packages from the GitHub registry require a *personal access token* with `write:packages` and/or `read:packages` permission.

### `~/.npmrc`

```
//npm.pkg.github.com/:_authToken=<token-value>
```

or 

```bash
npm config set //npm.pkg.github.com/:_authToken <token-value>
```


---
<!-- _class: lead -->
# Provide Package
---
# Registry

### `package.json`
```json
{
    "publishConfig": {
        "registry": "https://npm.pkg.github.com"
    }
}
```
---
# Package Scope

The package’s scope must match the organisation’s name:

### `package.json`
```json
{
    "name": "@OWNER/lorem-ipsum"
}
```


---
<!-- _class: lead -->
# Install Local Package
---
## npm link

test new versions without publishing them

```bash
cd my-new-project
npm link ../../egoditor/my-funky-package
```


---
<!-- _class: lead -->
# Semantic Release

---
# Additional Resources

- [GitHub Documentation](https://docs.github.com/es/packages/working-with-a-github-packages-registry/working-with-the-npm-registry)

---
<!-- _class: three -->
# Thanks for listening!
![bg left 50%](./assets/ephigenia.de.png)