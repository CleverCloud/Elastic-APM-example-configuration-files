# Connect a NodeJS app to the APM server

Follow these steps to connect a NodeJS application to the Elastic APM.

## Step 1: From the Clever Cloud Console

1. Go to your app menu "Service Dependencies"
2. Choose "Link applications" and select your APM app.

## Step 2: Add the Elastic APM agent as a dependency

You'll only need to add the Elastic agent as an npm dependency:

_package.json_

```json
 "dependencies": {
    ...
    "elastic-apm-node": "^3.26.0"
 }
```

### Step 3: Commit and push

Commit changes and push to Clever Cloud. After your app has finished deployed, open APM, you'll see your app listed in the Services list.
