#!/usr/bin/env bash

TERRAFORM_VERSIONS=( "0.11.3" "0.11.2" )
TERRAFORM_DOCS_VERSION="0.3.0"

for i in "${TERRAFORM_VERSIONS[@]}"
do
    curl https://releases.hashicorp.com/terraform/${i}/terraform_${i}_linux_amd64.zip -o ~/bin/terraform_${i}_linux_amd64.zip
    unzip -o ~/bin/terraform_${i}_linux_amd64.zip
    mv ~/bin/terraform ~/bin/terraform_${i}
    rm ~/bin/terraform_${i}_linux_amd64.zip
done

ln -s ~/bin/terraform_$TERRAFORM_VERSIONS ~/bin/terraform

curl -L https://github.com/segmentio/terraform-docs/releases/download/v${TERRAFORM_DOCS_VERSION}/terraform-docs_linux_amd64 -o ~/bin/terraform-docs
chmod +x ~/bin/terraform-docs



