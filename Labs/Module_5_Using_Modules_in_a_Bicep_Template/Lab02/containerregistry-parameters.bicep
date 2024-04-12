
param location string = resourceGroup().location

param registryName string = 'demoazuregistry'

module acr 'acr-main.bicep' = {
  name:'bicep.acr.remote.02'
  params:{
    name: registryName
    acrsku: 'Basic'
    location: location
  }
}
