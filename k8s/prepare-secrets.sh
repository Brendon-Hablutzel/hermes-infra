#!/bin/bash

ENV_FILE=".env"
OUTPUT_FILE=".base64.env"

# Clear or create the output file
> "$OUTPUT_FILE"

# Read each line from the .env file
while IFS= read -r line; do
  # Ignore empty lines and comments
  if [[ -z "$line" || "$line" == \#* ]]; then
    continue
  fi

  # Extract the key and value from the line
  key=$(echo "$line" | cut -d '=' -f 1)
  value=$(echo "$line" | cut -d '=' -f 2-)

  # Base64 encode the value
  encoded_value=$(echo -n "$value" | base64)

  # Write the key and encoded value to the output file
  echo "$key=$encoded_value" >> "$OUTPUT_FILE"
done < "$ENV_FILE"

source "$OUTPUT_FILE"

# envsubst < backend-secret-template.yaml > backend-secret.yaml
