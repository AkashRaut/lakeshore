#!bin/bash
Pass=running
Status=$(curl -u "chirag_s0hAmI:UKVo1z4FvdVpShc6WdyC" -X GET "https://api-cloud.browserstack.com/app-automate/builds.json?"  -H  "accept: application/json" |jq -r '.[0].automation_build.status')
echo $Status
if [ $Status = $Pass ]
then
npm install -g appcenter-cli
appcenter login --token $Appcenter
appcenter apps set-current akash.raut/demo
appcenter distribute release --app akash.raut/demo --file /var/lib/jenkins/workspace/browserstack-test/Lakeshore.ipa --group "Collaborators,Beta-testers" 
echo "Build is Distributed"
else
echo "Build Failed"
exit 1
fi
