#!/bin/bash

find . -name "#*" -exec rm -f {} \;
find . -name ".#*" -exec rm -f {} \;
find . -name "*~" -exec rm -f {} \;

