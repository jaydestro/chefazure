## IaaS / Infrastructure as Code Workshop

In this workshop we'll create a number of nodes utilizing Azure Resource Manager.  We'll use Chef to deploy our application.  The application is a basic MERN (MongoDB, Express, React, NodeJS).  Chef will install the following dependencies:

  - MongoDB (Database)
  - NodeJS (Runtime)
  - nginx (Reverse Proxy)
 
 
**The workshop mainly focuses on using bash/MacOSx - Much of the many tasks you'll do can easily be run on Linux or Windows as well.**

# Getting Started

 Go to the workshop Github Repo and clone locally:
  ```
  bash-3.2$ git clone git@github.com:jaydestro/chefconf2019.git
Cloning into 'chefconf2019'...
remote: Enumerating objects: 515, done.
remote: Counting objects: 100% (515/515), done.
remote: Compressing objects: 100% (348/348), done.
remote: Total 515 (delta 115), reused 511 (delta 111), pack-reused 0
Receiving objects: 100% (515/515), 383.62 KiB | 15.34 MiB/s, done.
Resolving deltas: 100% (115/115), done.
bash-3.2$
  ```
**Now go into the directory and unzip the credentials archive file:**
```
bash-3.2$ cd chefconf2019
bash-3.2$ ls
Berksfile	README.md	chefignore	data_bags	images		workshop.md
LICENSE		chef.creds.tgz	cookbooks	environments	roles
bash-3.2$ tar xvfz chef.creds.tgz
x ./._.chef
x .chef/
x .chef/._jaygordon.pem
x .chef/jaygordon.pem
x .chef/._default-validator.pem
x .chef/default-validator.pem
x .chef/._trusted_certs
x .chef/trusted_certs/
x .chef/._pivotal.rb
x .chef/pivotal.rb
x .chef/._pivotal.pem
x .chef/pivotal.pem
x .chef/._knife.rb
x .chef/knife.rb
x .chef/trusted_certs/._automatechefconf2019.eastus.cloudapp.azure.com.crt
x .chef/trusted_certs/automatechefconf2019.eastus.cloudapp.azure.com.crt
```
**Now let's verify you can connect to the Chef Server:**
```
bash-3.2$ knife node list
chefconf-jg-02
chefconf-vm-jg-03
chefconf-vm-jg.suvgto0qfjuutmudlqa5pni3zh.bx.internal.cloudapp.net
chefconf-vm-jg2.suvgto0qfjuutmudlqa5pni3zh.bx.internal.cloudapp.net
demo.vhveklo05x4upgun0knk3psgve.parx.internal.cloudapp.net
```

