targetScope = 'managementGroup'

@description('Specifies the location for resources.')
param location string = 'swedencentral'

module sub003 'br/public:lz/sub-vending:1.4.1' = {
  name: 'sub003'
  params: {
    subscriptionAliasEnabled: false
    existingSubscriptionId: 'a1c89ebb-90c9-4b49-8e6f-26845c7c2153'
    subscriptionTags: {
      test: 'true'
    }
    subscriptionWorkload: 'Production'
    subscriptionManagementGroupAssociationEnabled: true
    subscriptionManagementGroupId: 'alz-landingzones-corp'
    virtualNetworkEnabled: true
    virtualNetworkLocation: location
    virtualNetworkResourceGroupName: 'rsg-${location}-net-001'
    virtualNetworkName: 'vnet-${location}-001'
    virtualNetworkAddressSpace: [
      '10.0.0.0/16'
    ]
    virtualNetworkResourceGroupLockEnabled: true
    virtualNetworkPeeringEnabled: true
    hubNetworkResourceId: '/subscriptions/94eae67c-163d-490b-9392-82ad9db4b204/resourceGroups/rg-alz-connectivity/providers/Microsoft.Network/virtualHubs/alz-vhub-swedencentral'
  }
}