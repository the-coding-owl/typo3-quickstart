# Quickstart for TYPO3 Packages
This package provides a quickstart for TYPO3 projects. It uses composer to download and install the TYPO3 CMS amd sets it up, so
it can be used right from the get go.

## Quickinstall
For a quick installation of the project, use the built-in vagrant box. It has all needed software and configurations made and
can easily be setup with the `vagrant up` command. However, you need to have vagrant installed on your system to be able to use it.
Please consider the vagrant quickstart guide on their website, if you are unsure how to do this:
https://www.vagrantup.com/intro/getting-started/install.html
You can call your TYPO3 instance by using a browser and call http://localhost:8080
You can also use DNS mapping to enable other urls such as http://example.dev:8080 to redirect to the vagrant box as well and
simulate a multidomain TYPO3 instance.

## Install on local webserver
If you don't want to use the vagrant box, you need to have a webserver, apache2 or nginx, a MySQL server and PHP 7.1 installed.
The requirements for these software depends on the version of TYPO3 CMS used and can be viewed in here:
https://github.com/TYPO3/TYPO3.CMS/blob/master/INSTALL.md
You also need a local composer to be able to install all required packages for this project.
You can download composer from https://getcomposer.org/
Please read their documentations on how to use composer first.

## Read further
I highly recommend to read documentation to the used and recommended software of this project, therefore I provide
a few links to documentations:
- https://docs.typo3.org/
- https://getcomposer.org/doc/
- https://www.vagrantup.com/docs/index.html
- https://docs.typo3.org/typo3cms/extensions/typo3_console/

## TODOs
- Add more documentation
- Add a full documentation of the different parts of this package and how they work