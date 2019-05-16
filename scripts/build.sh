#!/bin/bash
. config.cfg

docker build -t ${container} $(pwd)
