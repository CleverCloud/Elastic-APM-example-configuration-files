# Connect a NodeJS app to the APM server

Follow these steps to connect a NodeJS application to the Elastic APM.

## Step 1: From the Clever Cloud Console

1. Go to your app menu "Service Dependencies"
2. Choose "Link applications" and select your APM app.

## Step 2: Add the Elastic APM agent as a dependency

You'll only need to add the Elastic agent as an npm dependency: `npm install elastic-apm-node`.

After building your app, your configuration file should be updated with something like this:

_package.json_

```json
 "dependencies": {
    ...
    "elastic-apm-node": "^3.26.0"
 }
```

Depending on your stack, you'll need to add some configuration to your app.

Most common set up requires to add this at the very top of your `server.js` file :

_server.js_

```javascript
const apm = require('elastic-apm-node').start({
    serviceName: '<your-service-name>',
    secretToken: process.env.ELASTIC_APM_SECRET_TOKEN,
    serverUrl: process.env.ELASTIC_APM_SERVER_URL,
})
```
**Note:** `serviceName` is the name your want your service to appear with in your APM service list.

### Step 3: Commit and push

Commit changes and push to Clever Cloud. After your app has finished deployed, open APM, you'll see your app listed in the Services list.
