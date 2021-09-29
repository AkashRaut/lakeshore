#!bin/bash
Pass=running
Status=$(curl -u "chirag_s0hAmI:UKVo1z4FvdVpShc6WdyC" -X GET "https://api-cloud.browserstack.com/app-automate/builds.json?"  -H  "accept: application/json" |jq -r '.[0].automation_build.status')
echo $Status
if [ $Status = $Pass ]
then
npm install -g appcenter-cli
appcenter login --token 37b676e6877956014e29c481bc158d151aa0c3a6
appcenter apps set-current akash.raut/demo
appcenter distribute release --app akash.raut/demo --file /var/lib/jenkins/workspace/browserstack-test/Lakeshore.ipa --group "Collaborators,Beta-testers" 
echo "Build is Distributed"
else
echo "Build Failed"
fi
