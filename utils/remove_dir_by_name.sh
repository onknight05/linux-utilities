#!/bin/bash

NAME=$1
find . -type d -name "${NAME}" -exec rm -rf {} \;
