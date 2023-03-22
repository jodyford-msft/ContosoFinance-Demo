param rg1_name string = 'rg-east'

param rg2_name string = 'rg-west'

param rgLogging_name string = 'rg-logs'

param location1 string = 'eastus'

param location2 string = 'westus'

param logAnalytics1_name string = 'la-cayers-east'

param logAnalytics2_name string = 'la-cayers-west'

param dashboard_name string = 'BicepDashboard'

targetScope = 'subscription'

resource rg1 'Microsoft.Resources/resourceGroups@2021-04-01' = {

  name: rg1_name

  location: location1

}

resource rg2 'Microsoft.Resources/resourceGroups@2021-04-01' = {

  name: rg2_name

  location: location2

}

resource rgLogging 'Microsoft.Resources/resourceGroups@2021-04-01' = {

  name: rgLogging_name

  location: location1

}

module logAnalytics1 './logAnalytics.bicep' = {

  name: 'logAnalytics1'

  scope: resourceGroup(rg1_name)

  params: {

    workspace_name: logAnalytics1_name

  }

}

module logAnalytics2 './logAnalytics.bicep' = {

  name: 'logAnalytics2'

  scope: resourceGroup(rg2_name)

  params: {

    workspace_name: logAnalytics2_name

  }

}




module dashboard './dashboard.bicep' = {

  name: dashboard_name

  scope: resourceGroup(rgLogging_name)

  params: {
  "properties": {
    "lenses": {
      "0": {
        "order": 0,
        "parts": {
          "0": {
            "position": {
              "x": 0,
              "y": 0,
              "colSpan": 4,
              "rowSpan": 6
            },
            "metadata": {
              "inputs": [
                {
                  "name": "resourceType",
                  "value": "Microsoft.Resources/resources"
                }
              ],
              "type": "Extension/HubsExtension/PartType/BrowseAllResourcesPinnedPart",
              "viewState": {
                "content": {
                  "selectableData": {}
                }
              }
            }
          },
          "1": {
            "position": {
              "x": 4,
              "y": 0,
              "colSpan": 6,
              "rowSpan": 4
            },
            "metadata": {
              "inputs": [
                {
                  "name": "options",
                  "isOptional": true
                },
                {
                  "name": "sharedTimeRange",
                  "isOptional": true
                }
              ],
              "type": "Extension/HubsExtension/PartType/MonitorChartPart",
              "settings": {
                "content": {
                  "options": {
                    "chart": {
                      "metrics": [
                        {
                          "resourceMetadata": {
                            "id": "/subscriptions/fc1a89fb-a3f7-4959-b325-efcd15bb63dc/resourceGroups/CLI/providers/Microsoft.OperationalInsights/workspaces/LogAnalytics"
                          },
                          "name": "Average_Bytes Received/sec",
                          "aggregationType": 4,
                          "namespace": "microsoft.operationalinsights/workspaces",
                          "metricVisualization": {
                            "displayName": "Bytes Received/sec",
                            "resourceDisplayName": "LogAnalytics"
                          }
                        },
                        {
                          "resourceMetadata": {
                            "id": "/subscriptions/fc1a89fb-a3f7-4959-b325-efcd15bb63dc/resourceGroups/CLI/providers/Microsoft.Web/sites/ContosoFinance-Demo-Site"
                          },
                          "name": "Requests",
                          "aggregationType": 1,
                          "namespace": "microsoft.web/sites",
                          "metricVisualization": {
                            "displayName": "Requests",
                            "resourceDisplayName": "ContosoFinance-Demo-Site"
                          }
                        }
                      ],
                      "title": "Sum Requests for ContosoFinance-Demo-Site",
                      "titleKind": 2,
                      "visualization": {
                        "chartType": 2,
                        "legendVisualization": {
                          "isVisible": true,
                          "position": 2,
                          "hideSubtitle": false
                        },
                        "axisVisualization": {
                          "x": {
                            "isVisible": true,
                            "axisType": 2
                          },
                          "y": {
                            "isVisible": true,
                            "axisType": 1
                          }
                        },
                        "disablePinning": true
                      }
                    }
                  }
                }
              }
            }
          },
          "2": {
            "position": {
              "x": 10,
              "y": 0,
              "colSpan": 6,
              "rowSpan": 4
            },
            "metadata": {
              "inputs": [
                {
                  "name": "options",
                  "isOptional": true
                },
                {
                  "name": "sharedTimeRange",
                  "isOptional": true
                }
              ],
              "type": "Extension/HubsExtension/PartType/MonitorChartPart",
              "settings": {
                "content": {
                  "options": {
                    "chart": {
                      "metrics": [
                        {
                          "resourceMetadata": {
                            "id": "/subscriptions/9526e7fc-0c5e-4038-9abe-c3dc8b50ac59/resourceGroups/CLI/providers/Microsoft.Web/sites/ContosoFinance-Demo-Site2"
                          },
                          "name": "Requests",
                          "aggregationType": 1,
                          "namespace": "microsoft.web/sites",
                          "metricVisualization": {
                            "displayName": "Requests",
                            "resourceDisplayName": "ContosoFinance-Demo-Site2"
                          }
                        }
                      ],
                      "title": "Sum Requests for ContosoFinance-Demo-Site2",
                      "titleKind": 1,
                      "visualization": {
                        "chartType": 2,
                        "legendVisualization": {
                          "isVisible": true,
                          "position": 2,
                          "hideSubtitle": false
                        },
                        "axisVisualization": {
                          "x": {
                            "isVisible": true,
                            "axisType": 2
                          },
                          "y": {
                            "isVisible": true,
                            "axisType": 1
                          }
                        },
                        "disablePinning": true
                      }
                    }
                  }
                }
              }
            }
          },
          "3": {
            "position": {
              "x": 0,
              "y": 6,
              "colSpan": 2,
              "rowSpan": 1
            },
            "metadata": {
              "inputs": [],
              "type": "Extension/Microsoft_Azure_Health/PartType/ServiceIssuesPinnedPart"
            }
          },
          "4": {
            "position": {
              "x": 2,
              "y": 6,
              "colSpan": 2,
              "rowSpan": 1
            },
            "metadata": {
              "inputs": [
                {
                  "name": "selectedMenuItemId",
                  "value": "",
                  "isOptional": true
                }
              ],
              "type": "Extension/HubsExtension/PartType/GalleryTile"
            }
          }
        }
      }
    },
    "metadata": {
      "model": {
        "timeRange": {
          "value": {
            "relative": {
              "duration": 24,
              "timeUnit": 1
            }
          },
          "type": "MsPortalFx.Composition.Configuration.ValueTypes.TimeRange"
        },
        "filterLocale": {
          "value": "en-us"
        },
        "filters": {
          "value": {
            "MsPortalFx_TimeRange": {
              "model": {
                "format": "utc",
                "granularity": "auto",
                "relative": "1h"
              },
              "displayCache": {
                "name": "UTC Time",
                "value": "Past hour"
              },
              "filteredPartIds": [
                "StartboardPart-MonitorChartPart-19247c4f-c69b-4eb4-a992-cf45e02d0a18",
                "StartboardPart-MonitorChartPart-19247c4f-c69b-4eb4-a992-cf45e02d0a2b"
              ]
            }
          }
        }
      }
    }
  },
  "name": "My Dashboard",
  "type": "Microsoft.Portal/dashboards",
  "location": "INSERT LOCATION",
  "tags": {
    "hidden-title": "My Dashboard"
  },
  "apiVersion": "2015-08-01-preview"
}

}
