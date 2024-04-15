param resourceGroupName string = 'rg_demo_resourcegroup'
param location string = 'eastus'

targetScope = 'subscription'

resource resourceGroup 'Microsoft.Resources/resourceGroups@2023-07-01' = {
  name: resourceGroupName
  location: location
} 

var storageAccountName = 'storage${uniqueString(resourceGroup.id)}'
var storageLocation = resourceGroup.location

module storageAccount 'storage-module.bicep' = {
  name: 'rg.scoped.storageAccount'
  scope: az.resourceGroup(resourceGroup.name)
  params: {
    storageAccountName: storageAccountName
    location: storageLocation
  }
}
