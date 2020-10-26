#! /bin/sh
PWD=$(pwd)
UPSTREAM="../git-workshop-upstream.git"
WORKSPACE="../git-workshop-workspace"

if [ -d $UPSTREAM ]
then
	echo "Upstream git already exists... Skipping mirror"
else 
	git clone --mirror https://github.com/Softhouse/git-workshop.git $UPSTREAM
fi

if [ -d $WORKSPACE ]
then
	echo "Git workspace already exists... Skipping clone from upstream"
else
	git clone $UPSTREAM $WORKSPACE
fi

rm -rf $PWD