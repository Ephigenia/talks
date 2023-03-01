---
title: Advanced Git
description: first part of a collection of helpful git commands that we use almost every day
keywords: git,tools,tui,stash,squash,commit,history
author: Marcel Eichner
marp: true
theme: bitly
_header: 2023-03-01
_footer: http://www.marceleichner.de / https://www.qr-code-generator.com
---

<!-- _class: lead -->
# Advanced Git (Part 1) ![git logo w:100px](https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Git-logo-2007.svg/240px-Git-logo-2007.svg.png)

A practical guide for every-day git commands.

---
<!-- _class: chapter -->
# Configuration ⚙️

Git offers a wide range of configuration options. This chapter will be about the configuration options relevant for this talk.

---
# $EDITOR / core.editor

Everytime git requires some input from the user the text editor is opened. Best example: `git commit -a` opens the editor to enter the commit message.

```
export EDITOR=nano >> ~/.bashrc
```

Alternatively only for git commands:

```
git config --global core.editor nano
```

---
<!-- _class: chapter -->
# Cleaning Up 🧹

---
# Typos in last commit message 🖊️
Correct typos in the last commit message using [`--amend`](https://www.atlassian.com/git/tutorials/rewriting-history#git-commit--amend)

```
git commit --amend
```

Will open the editor with the previous commit message to adjust. Closing the editor will change the commit message.

```
git commit --amend -m "adjusted"
```

---
# Dump your work 🗑️

[reset](https://www.atlassian.com/git/tutorials/undoing-changes/git-reset) all changes to files to the latest commit to `HEAD`.
**DANGEROUS** as it cannot be reverted.

```
git reset --hard
```

Would not revert untracked changes like new files. Remove new files too:

```
git reset --hard -f
```

---
# Put your work away 📋

Use [stash](https://www.atlassian.com/git/tutorials/saving-changes/git-stash) to switch context quickly without loosing changes:

```
git stash
```

You can have multiple stashes, re-apply, diff and clean them up.

Learn more about [stash](https://www.atlassian.com/git/tutorials/saving-changes/git-stash)

---
# Partial Commits

Image you changed multiple sections of files while experimenting to find the right solution. Now you have different context of changes and would like to annotate each change by commiting them seperately.

```
git add --patch
```

Shows you each diff and asks wheter to `(1/1) Stage this hunk [y,n,q,a,d,e,?]?`

The most common cases you would use `y` for yes and `n` for no. Sometimes the hunk is to big you would use `s` (if available) to split it further.

---
<!-- _class: chapter -->
# Rewriting History 🏺
Things helping to have a more clean git history (at least public).

---
# Caution! ⚠️

Rewriting history will change the structure of the git tree, change git hashes. Be careful when your changes are already pushed to a remote used by other developers.

**DO NOT DO THIS on main/master branches**

---
# Squash Branch

Reduce the changes of a branch to a single commit using [--squash](https://www.git-tower.com/learn/git/faq/git-squash)

```
git branch feat/my-new-branch-name
git checkout feat/my-new-branch-name
git merge --squash my-source-branch
git commit -a "new commit message"
```

After this you would still have the `my-source-branch` which can be deleted.

---
# Combine Commits (Squash)

Use [rebase](https://www.atlassian.com/git/tutorials/rewriting-history#git-rebase-i) to combine multiple commits:

```
git rebase --interactive HEAD~3
```

This opens up the `$EDITOR`:

```
# p, pick = use commit
# r, reword = use commit, but edit the commit message
# e, edit = use commit, but stop for amending
# s, squash = use commit, but meld into previous commit
```

---
<!-- _class: chapter -->
# Outlook 👀

- How to solve common problems / errors
- How to clean git history from secrets
- What are git hooks?
- useful git aliases
- git tuis

---
<!-- _class: chapter -->
# Questions?

![bg right](https://miro.medium.com/v2/resize:fit:820/format:webp/0*Gb3B1-Xk5qHaxU7v.jpg)

- Which error message stresses you out?
- What did you always wanted to know?
- Send them to me via Slack

---
<!-- _class: invert -->
# Thanks for listening! ✌️
Please give feedback & ask questions!
![bg left 50%](https://public-api.egodit.org/v1/create/free?qr_code_text=https://qrco.de/bdWDGs)
