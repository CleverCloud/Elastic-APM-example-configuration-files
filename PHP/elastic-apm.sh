# 1. Add this environment variable on Clever Cloud:
# CC_PRE_RUN_HOOK="./elastic-apm.sh"

# Check that all necessary environment variables are defined
if [ -z "$ELASTIC_APM_SERVER_URL" ] || \
[ -z "$ELASTIC_APM_SECRET_TOKEN" ]; then
  echo "Some environment variables are missing. Please set them before running this script."
  exit 1
fi

# Create the YAML file
cat <<EOL > $APP_HOME/elastic-apm.yml

server_url: $ELASTIC_APM_SERVER_URL
secret_token: $ELASTIC_APM_SECRET_TOKEN

EOL

echo "elastic-apm.yml file created successfully."

# Give appropriate permissions
chmod +rwx litestream.yml
