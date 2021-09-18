#!/bin/bash

#get highest tag number
VERSION=`git describe --abbrev=0 --tags`

#replace . with space so can split into an array
VERSION_BITS=(${VERSION//./ })

#get number parts and increase last one by 1
VNUM1=${VERSION_BITS[0]}
VNUM2=${VERSION_BITS[1]}
VNUM3=${VERSION_BITS[2]}
VNUM3=$((VNUM3+1))

#create new tag
NEW_TAG="$VNUM1.$VNUM2.$VNUM3"

echo "Updating $VERSION to $NEW_TAG"

#get current hash and see if it already has a tag
#$GIT_COMMIT=`git rev-parse HEAD`
#NEEDS_TAG=`git describe --contains $GIT_COMMIT 2>/dev/null`

#only tag if no tag already
#if [ -z "$NEEDS_TAG" ]; then
    git tag -a $NEW_TAG -m $NEW_TAG
    echo "Tagged with $NEW_TAG"
    #git remote remove origin https://github.com/abhinavvashishat/lakeshore.git
    #git remote set-url origin https://github.com/abhinavvashishat/lakeshore.git
    #git remote add origin https://abhinavvashishat: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/abhinavvashishat/lakeshore.git
    git push https://abhinavvashishat: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@github.com/abhinavvashishat/lakeshore.git --tags 
#else
    #echo "Already a tag on this commit"
#fi
