#!/bin/bash

# Export OpenAI credentials from file
while IFS='=' read -r key value; do export "$key"="$value"; done < "authentication/openai"

curl https://api.openai.com/v1/models \
  -H "Authorization: Bearer $OPENAI_API_KEY" \
  -H "OpenAI-Organization: $OPENAI_ORGANIZATION_ID" \
  -H "OpenAI-Project: $OPENAI_PROJECT_ID"
