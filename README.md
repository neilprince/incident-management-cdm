# Getting Started

Welcome to your new project. This is based on the following tutorial:
https://developers.sap.com/group.cap-application-full-stack.html

It contains these folders and files, following our recommended project layout:

File or Folder | Purpose
---------|----------
`app/` | content for UI frontends goes here
`db/` | your domain models and data go here
`srv/` | your service models and code go here
`package.json` | project metadata and configuration
`readme.md` | this getting started guide


## Next Steps

- Open a new terminal and run `cds watch`
- (in VS Code simply choose _**Terminal** > Run Task > cds watch_)
- Start adding content, for example, a [db/schema.cds](db/schema.cds).


## Git branches

```mermaid
flowchart TD
    A[master<br>CAP backend with xsuaa but no auths set. CAP index page served in production for testing]
    B[add-fe-ui<br>FE UI added, CAP Launchpad plugin]
    C[add-fe-and-wz-deployment<br>Added deployment for workzone, html5 app. Two apps deploy at this stage - 1 working, 1 not. Required work zone subscription, CIS tenant and trust established to tenant]
    D[add-cdm-for-wz<br>workzone cdm content working. rt and cdm destinations should only have region code eg US10 and not US10-004]
    A --> B
    B --> C
    C --> D
```


## Learn More

Learn more at https://cap.cloud.sap/docs/get-started/.
