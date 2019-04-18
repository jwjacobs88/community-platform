# install dependencies
npm install ./functions
# set project (default = dev)
firebase use default
# assign variables that can be accessed from firebase config method for backend functions
# NOTE - GA_SERVICE_DEV is json encrypted as base64 string (using https://www.browserling.com/tools/json-to-base64)
firebase functions:config:set service.json="$SERVICE_ACCOUNT_JSON_DEV"
firebase functions:config:set analytics.json="$REACT_APP_ANALYTICS_JSON_DEV"
# ensure functions admin scripts correct
cp functions/src/Firebase/admin.ci.ts functions/src/Firebase/admin.ts
# deploy site, functions, rules etc.
#echo $(firebase functions:config:get)
firebase deploy