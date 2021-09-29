#!bin/bash
#sleep 25m
LatestbuildNumber=$(curl -X GET "https://api.appcenter.ms/v0.1/apps/akash.raut/demo/branches/master/builds" -H  "accept: application/json" -H  "X-API-Token: $Appcenter" |jq -r '.[0].buildNumber') 
echo $LatestbuildNumber
appcenter build download --app akash.raut/demo --type build --id "16"
