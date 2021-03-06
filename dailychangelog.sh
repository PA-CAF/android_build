#!/bin/bash

# To run this, simply cd to the PA-CAF folder and run:

# . build/dailychangelog.sh :) *After syncing the repo.*

_now=$(date +"%m-%d-%Y")
_file=changelog/PA-CAF_Changelog/$_now/PA-CAF_Changelog-$_now.txt

mkdir -p changelog/PA-CAF_Changelog/

mkdir -p changelog/PA-CAF_Changelog/$_now

chmod 777 -R changelog/PA-CAF_Changelog

repo forall -pc git log --oneline --reverse --no-merges --since=1.day.ago >  $_file
