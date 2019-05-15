# Overview

Installs [application mern-crud](https://github.com/cefjoeii/mern-crud) on Ubuntu 18.04 LTS on Azure.

# Required
* Chef server with valid local client configuration.  I used [Chef Automate](https://docs.microsoft.com/azure/virtual-machines/extensions/chef?WT.mc_id=chefazure-github-jagord) for Azure. 

This will do the following tasks:

* Install MongoDB and start a localhost instance on port 27017
* Install nodejs
* Install npm
* Install git
* Install nginx as a reverse proxy
* Downloads and deploys [application mern-crud](https://github.com/cefjoeii/mern-crud)

# Directions

* Download your Chef Starter Kit, confirm you are able to connect to your Chef Server with knife.
* Clone this repository.
* Upload Cookbooks
* Create nodes
* Bootstrap Node via [Chef Linux Azure Extension](https://docs.microsoft.com/azure/virtual-machines/extensions/chef?WT.mc_id=chefazure-github-jagord)
* Validate chef-client run.


# 

Create simple Ubuntu Server with ARM template on Azure:

```
az group deployment create --resource-group YOURRESOURCEGROUPNAME --template-uri https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/101-vm-sshkey/azuredeploy.json --parameters adminPublicKey="YOUR PUB SSH KEY HERE" adminUsername=USERNAMEHERE
```
