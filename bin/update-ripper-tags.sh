#!/bin/bash

ripper-tags -R --exclude=.git --exclude=log --exclude=tmp --exclude=node_modules . $(bundle list --paths) --extra=q -V -f tags
