//LOCAL Module Reference
@description('Optional. The location to deploy into')
param location string = resourceGroup().location

@description('Generate random storage account name')
param storageAccountName string = 'loc${uniqueString(resourceGroup().id)}'

module storage 'storage-module.bicep' = {  
  name:'bicep.module.01'
  params:{
    storageAccountName:storageAccountName
    location:location
  }
}
