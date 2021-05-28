#!/bin/bash

export AZURE_CLOUD=AzureChinaCloud
export AZURE_USER=admin@yingeli.partner.onmschina.cn
export AZURE_SECRET=mm=L7616

az cloud set --name $AZURE_CLOUD
az login -u $AZURE_USER -p $AZURE_SECRET
az account set -s Test

# export GITHUB_TOKEN=c99ba518c1c32fd6ad333b65d6eb973ec8191f93
