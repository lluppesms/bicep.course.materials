param resourceGroupName string = 'rg_demo_resourcegroup'
param location string = 'eastus'

targetScope = 'subscription'

resource resourceGroup 'Microsoft.Resources/resourceGroups@2023-07-01' = {
  name: resourceGroupName
  location: location
} 

