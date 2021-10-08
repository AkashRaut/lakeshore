#!/usr/bin/env bash

   # latestTag=$(git describe --tags $(git rev-list --tags --max-count=1))
  #  echo $latestTag
    chmod a+x /Users/runner/work/1/s/ios/ReactNativeStarter/Info.plist
    plutil -replace CFBundleVersion -string "2" 
    $APPCENTER_SOURCE_DIRECTORY/ios/ReactNativeStarter/Info.plist

