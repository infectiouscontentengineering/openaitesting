#!/bin/bash

# Function to export OpenAI credentials
export_openai_credentials() {
    while IFS='=' read -r key value; do
        export "$key"="$value"
    done < "$1"
}

# Usage: export_openai_credentials <file_path>
export_openai_credentials "authentication/openai"

curl https://api.openai.com/v1/models \
  -H "Authorization: Bearer $OPENAI_API_KEY" \
  -H "OpenAI-Organization: $OPENAI_ORGANIZATION_ID" \
  -H "OpenAI-Project: $OPENAI_PROJECT_ID"
