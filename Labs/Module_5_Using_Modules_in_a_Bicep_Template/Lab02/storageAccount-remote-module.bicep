//REMOTE Module Reference
@description('Optional. The location to deploy into')
param location string = resourceGroup().location

@description('Generate random storage account name')
param storageAccountName string = 'rem${uniqueString(resourceGroup().id)}'

module storage 'br/mybicepregistry:storage/storageaccounts:v1.0.0'= {
  name:'bicep.acr.modules.02'
  params:{
    storageAccountName:storageAccountName
    location:location
  }  
}
