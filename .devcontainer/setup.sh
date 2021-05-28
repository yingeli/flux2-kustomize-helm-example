#!/bin/bash

export AZURE_CLOUD=AzureChinaCloud
export AZURE_USER=admin@yingeli.partner.onmschina.cn
export AZURE_SECRET=mm=L7616

az cloud set --name $AZURE_CLOUD
az login -u $AZURE_USER -p $AZURE_SECRET
az account set -s Test
az aks get-credentials --resource-group rg-aks --name aks-prod --context production
az aks get-credentials --resource-group rg-aks --name aks-stag --context staging

git config --global user.name yingeli
git config --global user.email yingeli@hotmail.com
