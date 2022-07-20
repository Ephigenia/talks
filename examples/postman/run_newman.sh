#!/usr/bin/env bash

npx newman run \
	--env-var "baseUrl=http://localhost:3000" \
	postman-demo-project.postman_collection.json
