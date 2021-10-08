#!/usr/bin/env bash

    latestTag=$(git describe --tags $(git rev-list --tags --max-count=1))
    echo $latestTag
    brew install brew gnu-sed
    chmod a+x $APPCENTER_SOURCE_DIRECTORY/ios/ReactNativeStarter/Info.plist
    sed -i "${20}s/1.0/"$latestTag"-qa/" 
    $APPCENTER_SOURCE_DIRECTORY/ios/ReactNativeStarter/Info.plist
