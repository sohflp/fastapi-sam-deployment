# FastAPI deployment in API Gateway using AWS SAM

This repository contains a template of automation for FastAPI deployment in API Gateway using AWS SAM (Serverless Application Model).

The process to install the API and deploy in AWS is available below.

# Prerequisites

1. Install `awsume`: https://awsu.me/
2. Install SAM CLI: https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/serverless-sam-cli-install.html

# Installation and deployment guide

1. Configure the AWS credentials or assume a role into the desired AWS account via `awsume`.
2. Create a virtual environment in Python:

```
python3 -m venv .venv
```

3. Activate the virtual environment:

```
source .venv/bin/activate
```

4. Install the python dependencies:

```
pip install -r requirements.txt
```

5. Run the following commands with SAM CLI:

```
sam build
sam deploy
```

During the deployment process the parameters in `samconfig.toml` will be used as reference but it is possible to adjust it by using the command below:

```
sam deploy --guided
```