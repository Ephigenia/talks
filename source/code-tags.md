---
title: code-tags
description: 
keywords: comment,code,quality,clean-code,hints,history
author: Marcel Eichner
marp: true
theme: bitly
_header: 2023-01-17
_footer: http://www.marceleichner.de / https://www.qr-code-generator.com/
---

<!--

https://peps.python.org/pep-0350/

-->

<!-- _class: lead -->
# 🏷️ codetags

---
# Introduction

Different terms for the same thing: Task Tags, Task Comments, Todo Comments, Code-Tags.

---
# What?

Leave marks in the code for later adjustments or hints for your future readers. This can be inside of commands or the actual code f.e. Error Messages.

```typescript
try {
  dosomething
} catch (err: unknown) {
  throw new Error('FIXME: add implementation for thrown error catch block');
}
```

---
# Why?

There are several reasons why you would want to annotate the code and give it more context for later purposes or checks:

- you don’t have the time
- things that need to be done but later
- you want to provide more context



---
# Second 
@TODO
@TODOC
@SEE
@BUG
@FIXME
@SECURITY
@HINT

Short versions: `???`, `XXX`, `!!!`

---
# Examples

- The Linux kernel repository contains 4041 FIXMEs and 5720 TODOs. It clearly doesn’t adhere to the rule proposed in this post

---
# Editor

- [Todo Tree VS Code](https://marketplace.visualstudio.com/items?itemName=Gruntfuggly.todo-tree)
- [Todo List Eclipse](https://dzone.com/articles/to-do-lists-with-eclipse-tasks-view)

---
# Additional Resources

- [PEP 350 Codetags](https://peps.python.org/pep-0350/) good description, use-cases and list of possible tags

---
<!-- _class: invert -->
# Thanks for listening!
![bg left 50%](https://public-api.egodit.org/v1/create/free?qr_code_text=http://qrco.de/bdWDGs)
