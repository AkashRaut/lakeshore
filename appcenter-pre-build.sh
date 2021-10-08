#!/usr/bin/env bash

    latestTag=$(git describe --tags $(git rev-list --tags --max-count=1))
    echo $latestTag

    plutil -replace CFBundleVersion -string "$latestTag" -i $APPCENTER_SOURCE_DIRECTORY/ios/ReactNativeStarter/Info.plist

