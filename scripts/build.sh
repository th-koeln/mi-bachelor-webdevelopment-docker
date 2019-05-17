#!/bin/bash
. ./config.cfg

docker build -t ${image} $(pwd)
