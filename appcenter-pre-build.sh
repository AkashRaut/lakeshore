#!/usr/bin/env bash

    latestTag=$(git describe --tags $(git rev-list --tags --max-count=1))
    echo $latestTag
    sed -i "${20}s/1.0/"$latestTag"-qa/" /home/lapht17/Downloads/lakeshore/ios/ReactNativeStarter/Info.plist
    $APPCENTER_SOURCE_DIRECTORY/ios/ReactNativeStarter/Info.plist
