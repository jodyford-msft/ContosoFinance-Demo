la:

param workspace_name string


resource log_analytics_workspace 'Microsoft.OperationalInsights/workspaces@2020-08-01' = {

  name: workspace_name

  location: resourceGroup().location

  sku: {

    name: 'PerGB2018'

  }

}




output id string = log_analytics_workspace.id
