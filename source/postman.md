---
title: Postmam
description: Introduction to Postman platform
keywords: post,get,request,software,tool,REST,GraphQL,API,testing,automation,cli,newman,parameters,variables,environments,monitoring
author: Marcel Eichner
marp: true
theme: bitly
_header: 2022-07-20
_footer: http://www.marceleichner.de / https://www.qr-code-generator.com/
---

<!-- _class: lead -->
# Postman 📮

> Postman is an API platform for building and using APIs. Postman simplifies each step of the API lifecycle and streamlines collaboration."

---
## Features

![bg right 90%](https://www.kindpng.com/picc/m/59-590994_postman-logo-transparent-hd-png-download.png)

- Make Request(s)
- Test
- Publish, Share & Collaborate with your Team or the Public
- Documentation
- Monitor your API Status
- Mock not yet created APIs based on API Definitions

---

## Create Requests

Build collections of requests that read, create, delete data in an API no matter if it’s a GraphQL, REST or even gRPC API.

- GET/POST/PUT/DELETE/HEAD
- Query Parameters
- set Headers (including Cookies)
- Form, JSON Bodies
- upload files
- organize those requests in nested folders
- add description to parameters and variables for easy re-use

---

## Flexibility

Create a collection once, use in different environments, for different user(s) and use-cases.

- variables on different levels:
  - collections
  - environment(s)
  - global
- re-use the variables anywhere (`{{variableName}}`)

More: [Defining Variables](https://learning.postman.com/docs/sending-requests/variables/#defining-variables)

---

## Random Variables 🔀

Postman uses [Faker](https://www.npmjs.com/package/@faker-js/faker) to provide a whole bunch of different randomly created variables that can be used especially in create request. 

Think of:

```json
{
    "username": "{{$randomFirstName}}-{{$randomLastName}}",
    "password": "{{$randomPassword}}"
}
```

Creating a new randomly created user each time and uses this user for subsequent requests.

More about [Dynamic Variables](https://learning.postman.com/docs/writing-scripts/script-references/variables-list/)

---
## Tests

Each requests runs Javascript Code when it’s done in order to be able to test the results. This makes it easy to add simple (and even complex) assumptions to a single request or even folders or whole collections.

Some Examples:
- valide response bodies agains certain schema(s)
- check for presence or values of header(s)
- re-use response data for later request(s)

More Test & Scripting: https://learning.postman.com/docs/writing-scripts/script-references/test-examples/

---

## 🏃 Run Collection

A collection can be run alltogether and all requests and tests are executed sequentially and result in a report:

![bg left fit](https://assets.postman.com/postman-docs/collection-runner-overview-v9.jpg)

---

## Automation 🤖

[newman](https://www.npmjs.com/package/newman) is a command line tool written in nodejs which can run collections and execute it's tests:

```
npx newman run <collection-json-filename>
```

![bg right fit](https://raw.githubusercontent.com/postmanlabs/postmanlabs.github.io/develop/global-artefacts/newman-terminal.gif)

More about [newman](https://learning.postman.com/docs/running-collections/using-newman-cli/command-line-integration-with-newman/)

---
<!-- _class: chapter -->
# Demo Time 🎈

- Show simple GET request(s) 
- Show GraphQL Request
- Show Test
- Show Collection Run
- Show NewMan
- Show Visualization
- Show Monitoring

---
<!-- _class: lead -->
# Outlook

---
## Visualization 📈

![bg right](https://assets.postman.com/postman-docs/visualizer-map-v8.jpg)

Show data from an API in (interactive) visualisations like tables, charts, maps etc.

More about [Visualization](https://learning.postman.com/docs/sending-requests/visualizer/)

---
## Monitoring 📺

![bg left](https://assets.postman.com/postman-docs/monitors-individual-requests.jpg)

Run collections every n-minute/hour and record the results of it 

More about [Monitoring](https://learning.postman.com/docs/monitoring-your-api/intro-monitors/)

---

## Others

- Sharing
  - Share API Definitions, Documentations, Monitors with the public
  - checkout [Bitly API on Postman Explorer](https://www.postman.com/blue-station-304768/workspace/bitly-api-workspace)
- Mocking
  - Create API definitions and start using them without having a server
- Flows
  - Visually program and connect multiple API requests and process results

Try It! It’s free: http://postman.com

---
<!-- _class: chapter -->
# Resources 🧳

- [Postman API testing by example](https://testfully.io/blog/postman-api-testing/)
- [Official Documentation](https://learning.postman.com/docs/getting-started/introduction/)
- [Automation tricks with newman](https://blog.postman.com/automation-tricks-for-newman/)

---
<!-- _class: invert -->
# Thanks for listening!
![bg left 50%](./assets/ephigenia.de.png)
