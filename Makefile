asdf:
	asdf plugin add awscli || true
	asdf plugin add aws-sam-cli || true
	asdf install

build:
	sam build --use-container

deploy:
	sam deploy

local:
	sam local start-api