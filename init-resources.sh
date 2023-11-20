#!/bin/sh

echo "STARTING INIT RESOURCES"

# Create Lambda function
awslocal lambda create-function \
  --function-name first-step \
  --runtime java17 \
  --handler cloud.localstack.LambdaRequestHandler::handleRequest \
  --memory-size 512 \
  --zip-file fileb:///etc/localstack/init/ready.d/first-step.jar \
  --region us-east-1 \
  --role arn:aws:iam::000000000000:role/productRole
