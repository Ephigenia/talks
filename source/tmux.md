---
title: tmux
description: tmux is an open-source terminal multiplexer for Unix-like operating systems. It allows multiple terminal sessions to be accessed simultaneously in a single window. It is useful for running more than one command-line program at the same time. - wikipedia
keywords: terminal,shell,tool,posix,bash,multiplexer,log,pane,window,sesssion,cheat-sheet,shortcuts
author: Marcel Eichner
marp: true
theme: marceleichner
_header: 2022-04-03
_footer: http://www.marceleichner.de
---

<!-- _class: lead -->
# 💻 tmux

## terminal multiplexer

"It lets you switch easily between several programs in one terminal, detach them (they keep running in the background) and reattach them to a different terminal" https://github.com/tmux/tmux/wiki


---
<!-- _class: invert lead -->
# Why?


---
# Basics

[Tmux](https://github.com/tmux/tmux/) organizes your terminal in sessions with 1-n sessions which can have 1-n windows which then are seperated into 1-n panes.

- 1-n Session(s)
    - 1-n Windows
        - 1-n Panes


---
# The Prefix Key

## <kbd>CTRL</kbd> + <kbd>b</kbd>

---
# Noticable Shortcuts

- <kbd>t</kbd> show clock

---
# Install

- macOS
    ```
    brew install tmux
    ```
- Ubuntu and Debian
    ```
    sudo apt install tmux
    ```
- CentOS and Fedora
    ```
    sudo yum install tmux
    ```

---
## Windows

- <kbd>c</kbd>  create window
- <kbd>n</kbd>  next window
- <kbd>p</kbd>  previous window
- <kbd>w</kbd>  list windows
- <kbd>f</kbd>  find window
- <kbd>,</kbd>  name window
- <kbd>1</kbd>, <kbd>2</kbd> ... switch to window x

---
## Panes

- <kbd>%</kbd>  vertical split
- <kbd>"</kbd>  horizontal split
- <kbd>z</kbd>  zoom pane
- <kbd>q</kbd>  show pane numbers
- <kbd>SPACE</kbd>  toggle between layouts
- <kbd>x</kbd>  kill pane
- <kbd>LEFT</kbd>, <kbd>RIGHT</kbd>, <kbd>UP</kbd>, <kbd>DOWN</kbd>  switch focus to pane

<!-- show demo -->

---
# Customize

---
## Status Bar


---
# Plugins

---
## Tmux Plugin Manager (TPM)

---
## Tmuxinator

> Manage complex tmux sessions easily

---
## Configuration

tbd example

<!-- show demo -->


---
# Additional Resources

- [Tmux Beginner’s Guide & Cheat Sheet - Hostinger Tutorials](https://www.hostinger.com/tutorials/tmux-beginners-guide-and-cheat-sheet/)

---
<!-- _class: three -->
# Thanks for listening!
![bg left 50%](./assets/ephigenia.de.png)