resource storageAccountName_resource 'Microsoft.Storage/storageAccounts@2023-01-01' = {
  name: 'xxxstorage02'
  location: 'eastus'
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {}
}
