#!/bin/bash
set -e

wait-for-it -t 300 mysql:3306

npm start