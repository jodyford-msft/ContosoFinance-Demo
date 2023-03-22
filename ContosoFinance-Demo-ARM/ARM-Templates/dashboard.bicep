dashboard:

param dashboard_name string

param la1 string

param la2 string




resource dashboard 'Microsoft.Portal/dashboards@2015-08-01-preview' = {

  name: dashboard_name

  location: 'global'

  properties: {

    lenses: {

      '0': {

        order: 0

        parts: {

          '0': {

            position: {

              x: 0

              y: 0

              colSpan: 6

              rowSpan: 4

            }

            metadata: {

              inputs: [

                {

                  name: 'options'

                  isOptional: true

                }

                {

                  name: 'sharedTimeRange'

                  isOptional: true

                }

              ]

              type: 'Extension/HubsExtension/PartType/MonitorChartPart'

              settings: {

                content: {

                  options: {

                    chart: {

                      metrics: [

                        {

                          resourceMetadata: {

                            id: la1

                          }

                          name: 'Average_% Available Memory'

                          aggregationType: 4

                          namespace: 'microsoft.operationalinsights/workspaces'

                          metricVisualization: {

                            displayName: '% Available Memory'

                            resourceDisplayName: 'la1'

                          }

                        }

                      ]

                      title: 'Avg % Available Memory for la1'

                      titleKind: 1

                      visualization: {

                        chartType: 2

                        legendVisualization: {

                          isVisible: true

                          position: 2

                          hideSubtitle: false

                        }

                        axisVisualization: {

                          x: {

                            isVisible: true

                            axisType: 2

                          }

                          y: {

                            isVisible: true

                            axisType: 1

                          }

                        }

                        disablePinning: true

                      }

                    }

                  }

                }

              }

            }

          }

          '1': {

            position: {

              x: 6

              y: 0

              colSpan: 6

              rowSpan: 4

            }

            metadata: {

              inputs: [

                {

                  name: 'options'

                  isOptional: true

                }

                {

                  name: 'sharedTimeRange'

                  isOptional: true

                }

              ]

              type: 'Extension/HubsExtension/PartType/MonitorChartPart'

              settings: {

                content: {

                  options: {

                    chart: {

                      metrics: [

                        {

                          resourceMetadata: {

                            id: la2

                          }

                          name: 'Average_% Available Memory'

                          aggregationType: 4

                          namespace: 'microsoft.operationalinsights/workspaces'

                          metricVisualization: {

                            displayName: '% Available Memory'

                            resourceDisplayName: 'la2'

                          }

                        }

                      ]

                      title: 'Avg % Available Memory for la2'

                      titleKind: 1

                      visualization: {

                        chartType: 2

                        legendVisualization: {

                          isVisible: true

                          position: 2

                          hideSubtitle: false

                        }

                        axisVisualization: {

                          x: {

                            isVisible: true

                            axisType: 2

                          }

                          y: {

                            isVisible: true

                            axisType: 1

                          }

                        }

                        disablePinning: true

                      }

                    }

                  }

                }

              }

            }

          }

        }

      }

    }

    metadata: {

      model: {

        timeRange: {

          value: {

            relative: {

              duration: 24

              timeUnit: 1

            }

          }

          type: 'MsPortalFx.Composition.Configuration.ValueTypes.TimeRange'

        }

        filterLocale: {

          value: 'en-us'

        }

        filters: {

          value: {

            MsPortalFx_TimeRange: {

              model: {

                format: 'utc'

                granularity: 'auto'

                relative: '24h'

              }

              displayCache: {

                name: 'UTC Time'

                value: 'Past 24 hours'

              }

              filteredPartIds: [

                'StartboardPart-MonitorChartPart-9c5120f0-1849-4b48-955e-c8a8c1e136ce'

                'StartboardPart-MonitorChartPart-9c5120f0-1849-4b48-955e-c8a8c1e138b6'

              ]

            }

          }

        }

      }

    }

  }

}
