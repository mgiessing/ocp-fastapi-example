# ocp-fastapi-example
Minimal tutorial for OCP developer deployment

## Build & Deployment

In OpenShift go to the developer view

Create a new project "fastapi" and select "+Add" from the sidemenu. Then from tile "Git repository" choose "From Dockerfile" and fill out:

--> URL

--> You might need to add git credentials depending on from where you pull it

You can leave the rest on default values and create the deployment. Click on the deployment and check the build logs "view logs".

## Access

Once the build is completed successfully the circle in topology will turn dark blue and you can access the website via the "Open URL" button (square with an arrow inside)
