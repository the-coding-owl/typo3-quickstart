# Quickstart for TYPO3 Packages
This package provides a quickstart for TYPO3 projects. It uses composer to download and install the TYPO3 CMS and sets 
it up, so it can be used right from the get go.

## Quickinstall
For a quick installation of the project, use the provided docker containers. They have all needed software and 
configurations and can easily be setup with the `bin/server-start` command. However, you need to have docker and 
docker-compose installed on your system to be able to use it.
Please consider the docker documentation on their website, if you are unsure how to do this:
https://docs.docker.com/install/#supported-platforms
You can call your TYPO3 instance by using a browser and call http://localhost
You can also use DNS mapping to enable other urls such as http://example.dev to redirect to the docker container
as well and simulate a multidomain TYPO3 instance.

## Install on local webserver
If you don't want to use the docker containers, you need to have a webserver, apache2 or nginx, a MySQL server 
and PHP 7.2 installed.
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
- https://docs.docker.com/
- https://docs.typo3.org/typo3cms/extensions/typo3_console/

## TODOs
- Add more documentation
- Add a full documentation of the different parts of this package and how they work