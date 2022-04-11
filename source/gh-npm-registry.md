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

## Use GitHub as package registry for your private packages

---
<!-- _class: lead invert -->
# Scopes

- Some package names also have a scope
- A scope follows the usual rules for package names. When used in package names, scopes are preceded by an "@" symbol and followed by a slash, e.g.

```
@scopename/somepackagename
```

---
<!-- _class: lead invert -->
# Checklist

- package name contains a scope which matches the GitHub organization / username name (lowercased)
- npm config set GitHub registry URL for specific scope(s)
- npm config to have NPM_TOKEN configured

---
## Package Name

The package’s "scope" must match the lowercased organisation’s name.

`package.json`
```json
{
    "name": "@egoditor/somepackagename"
}
```

Name is lowercased cause naming convention doesn’t allow uppercase letters.

---
## Registry

Configure `npm` to use a different package registry URL for specific scope(s). Note that the Organisation’s name must exact match here. **Do not lowercase!**

```
npm config set --@Egoditor:registry --location project https://npm.pkg.github.com/
```
or
```
npm config set --@Egoditor:registry https://npm.pkg.github.com/
```

---
## NPM Token

Using private NPM Packages from GitHub registry require a *personal access token* (PAT) with "write:packages" for publishing and/or "read:packages" for pulling.

```bash
npm config set //npm.pkg.github.com/:_authToken <token-value>
```

or login

```bash
npm login --scope=@Egoditor --registry=https://npm.pkg.github.com
```

Personal Access Tokens can be created in the GitHub Settings > "[Personal Access Tokens](https://github.com/settings/tokens)".

---
### GITHUB_TOKEN vs. NPM_TOKEN

The github workflow environment automatically creates a secret `GITHUB_TOKEN` which can be used to publish and clone private packages.




---
<!-- _class: lead -->
# Install Local Package
---
## npm link

Before publishing a version use the local copy of the package in your project by linking it:

```bash
cd my-new-project
npm link ../../egoditor/my-funky-package
```

---
# Troubleshooting

> npm ERR! Unable to authenticate, need: Basic realm="GitHub Package Registry"

The NPM Token is not valid, doesn’t have the correct permissions. Double check the value.

> npm ERR! 404 Not Found - GET https://npm.pkg.github.com/download/@egoditor...

Authentification worked well but the package could not be found as the scope is not correct. Correct would be with uppercase "e".


---
# Additional Resources

- [GitHub Documentation](https://docs.github.com/es/packages/working-with-a-github-packages-registry/working-with-the-npm-registry)
- [NPM config Documentation](https://docs.npmjs.com/cli/v7/commands/npm-config)


---
<!-- _class: three -->
# Thanks for listening!
![bg left 50%](./assets/ephigenia.de.png)