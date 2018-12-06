#!/bin/bash

if [ $# -eq 0 ]
then
	composer install
else
	composer $@
fi
