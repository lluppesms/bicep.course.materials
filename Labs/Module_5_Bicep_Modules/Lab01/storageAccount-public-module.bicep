//REMOTE PUBLIC Module Reference
@description('Optional. The location to deploy into')
param location string = resourceGroup().location

@description('Generate random storage account name')
param storageAccountName string = 'rem${uniqueString(resourceGroup().id)}'

module storage 'br/public:avm/res/storage/storage-account:0.8.2'= {
  name:'bicep.acr.modules.02'
  params:{
    name: storageAccountName
    location: location
  }
}
