#!/bin/sh -x
# git name-rev is fail
#source => http://object.io/site/2010/12/hack-and-ship/#41d6fb95b65dd837c0ac7bfbcae7cc71
CURRENT=`git branch | grep '\*' | awk '{print $2}'`
git checkout master || exit 1
git pull --rebase origin master || exit 1
git checkout ${CURRENT} || exit 1
git rebase master || exit 1
