# FastAPI deployment in API Gateway using AWS SAM

This repository contains a template of automation for FastAPI deployment in API Gateway using AWS SAM (Serverless Application Model).

The process to install the API and deploy in AWS is available below.

## Prerequisites

#### Manually install binaries

1. Install [awsume](https://awsu.me/)
2. Install [SAM CLI](https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/serverless-sam-cli-install.html)


#### Using asdf

1. Install [asdf](https://asdf-vm.com/)
2. Run `make asdf`


## Installation and deployment guide

1. Configure the AWS credentials or assume a role into the desired AWS account via `awsume`.
2. Run the following commands with SAM CLI:

```bash
sam build --use-container
sam deploy
```

During the deployment process the parameters in `samconfig.toml` will be used as reference but it is possible to adjust it by using the command below:

```
sam deploy --guided
```

## Local tests with SAM

It is possible to simulate the API Gateway server locally by running the following command:

```
sam local start-api
```

## Make commands

- `make build` > sam build --use-container
- `make deploy` > sam deploy
- `make local` > sam local start-api