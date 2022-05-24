---
title: gh npm registry
description: 
keywords: npm,tool,package,version,package,registry
author: Marcel Eichner
marp: true
theme: marceleichner
_header: 2022-04-26
_footer: http://www.marceleichner.de
---

<!-- _class: lead -->
# GitHub NPM Registry

## Use GitHub as package registry for your private packages


---
# Why?

- separation of concerns: split projects into one-purpose only module(s)
- cheap: github package registry is already included in paid accounts
- effortless: almost zero administration & maintenance of registry required

---
<!-- _class: chapter -->
# Scopes

- Some package names also have a scope (thing Angular, React, Jest etc.)
- Scopes are usually used company-wide
- A scope follows the usual rules for package names. When used in package names, scopes are preceded by an "@" symbol and followed by a slash, e.g.

```
@scopename/somepackagename
```

---
<!-- _class: chapter -->
# Checklist

- package name contains a scope which matches the GitHub organization / username name (lowercased)
- npm config set GitHub registry URL for specific scope(s)
- properly setup of NPM_TOKEN

---
## Package Name

The package’s "scope" must match the organisation’s name:

```json
{
    "name": "@egoditor/somepackagename"
}
```

Name transformed according to [package.json schema definitions](https://github.com/SchemaStore/schemastore/blob/master/src/schemas/json/package.json#L168).

---
## Registry

Configure `npm` to use a different package registry URL for specific scope(s) for the current project:
```
npm config set --@egoditor:registry --location project https://npm.pkg.github.com/
```

or for all projects in the user directory:
```
npm config set --@egoditor:registry https://npm.pkg.github.com/
```


---
## NPM Token

Using private NPM Packages from GitHub registry requires a *personal access token* (PAT) with "write:packages" for publishing and/or "read:packages" for pulling.

```bash
npm config set //npm.pkg.github.com/:_authToken <token-value>
```

(alternative) interactively login

```bash
npm login --scope=@egoditor --registry=https://npm.pkg.github.com
```

(alternative) environment variable
```
NPM_TOKEN=token-value npm install
```

Personal Access Tokens can be created in the GitHub Settings > "[Personal Access Tokens](https://github.com/settings/tokens)".

---
## Install package

```
npm install --save @egoditor/my-package@1.0.0
```

NPM checks the project and system users `.npmrc` files for registry definitions for the scope "egoditor". If there’s none it uses the default registry.

---
<!-- _class: chapter -->
# Install Local Package
---
## npm link

Before publishing a version use the local copy of the package in your project by linking it:

```bash
cd my-new-project
npm link ../../egoditor/my-funky-package
```

---
# Publishing Packages

- configure `package.json` "files" or `.npmignore` to publish only required files
- follow SEMVER
- use publishing channels (current, next, beta, alpha)
- easy to setup with semantic-release package

*… will be covered in another talk*


---
<!-- _class: chapter -->
# The Hard-Part GitHub Actions

- Publishing a package is easy when rules are followed
- Installing a package is harder
- Access to the package is handled by github and the repository and organisation user permissions.

---
## Publishing

Publishing can be done using the `GITHUB_TOKEN` which is automatically created on each CI run and has access to the same repository.

---
## Permissions
![bg right](assets/gh-npm-registry/GITHUB_TOKEN.png)

Do things with the same repository.

Defined by:
- workflow settings
- type of repository (fork or source)
- settings in workflow.yml

**CAUTION: NO ACCESS to other repositories / packages**

---
## Example Workflow (Publishing)

```yaml
// .github/workflows/release.yml
jobs:
  ci:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/setup-node@v3
      - run: npm publish
        env:
          NPM_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```

---
## Installing in CI

- **`GITHUB_TOKEN` doesn’t have access to other repos or packages**
- create personal access token (PAT) with `read:packages` permissions
- create repo or organisation secret (f.e. `NPM_READ_TOKEN`)
- set `NPM_AUTH_TOKEN`
- set `registry-url`

---
## Example Workflow (Publishing)

```yaml
// .github/workflows/main.yml
jobs:
  ci:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/setup-node@v3
        with:
          registry-url: 'https://npm.pkg.github.com/'
      - name: install dependencies
        run: npm ci
        env:
          NPM_AUTH_TOKEN: ${{ secrets.NPM_READ_TOKEN }}
```


---
# Troubleshooting

> npm ERR! Unable to authenticate, need: Basic realm="GitHub Package Registry"

The NPM_AUTH_TOKEN Token is not valid, doesn’t have the correct permissions. Double check the value.

> npm ERR! 404 Not Found - GET https://npm.pkg.github.com/download/@egoditor...

Authentification worked well but the package could not be found as the scope is not correct. Correct would be with uppercase "e".


---
# Additional Resources

- [GitHub Documentation](https://docs.github.com/es/packages/working-with-a-github-packages-registry/working-with-the-npm-registry)
- [NPM config Documentation](https://docs.npmjs.com/cli/v7/commands/npm-config)
- [GITHUB_TOKEN: How it Works, Change Permissions, Customizations](https://dev.to/github/the-githubtoken-in-github-actions-how-it-works-change-permissions-customizations-3cgp)

---
<!-- _class: three -->
# Thanks for listening!
![bg left 50%](./assets/ephigenia.de.png)
