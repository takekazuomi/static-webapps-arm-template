param name string
param location string = 'eastus2'
param sku string = 'Free'
param skuCode string = 'Free'
param repositoryUrl string = 'https://github.com/takekazuomi/my-static-web-app'
param branch string = 'master'
param repositoryToken string
param appLocation string = '/'
param apiLocation string = 'api'
param appArtifactLocation string = ''

resource swa 'Microsoft.Web/staticSites@2019-12-01-preview' = {
    name: name
    location: location
    properties: {
        repositoryUrl: repositoryUrl
        branch: branch
        repositoryToken: repositoryToken
        buildProperties: {
            appLocation: appLocation
            apiLocation: apiLocation
            appArtifactLocation: appArtifactLocation
        }
    }
    sku: {
        Tier: sku
        Name: skuCode
    }
}
