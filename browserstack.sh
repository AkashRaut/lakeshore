#!/bin/bash
curl -u "$BrowserStack" \
-X POST "https://api-cloud.browserstack.com/app-automate/upload" \
-F "file=/var/lib/jenkins/workspace/browserstack-test/*.xcarchive"
