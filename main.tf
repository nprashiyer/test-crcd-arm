module "managed-eventgrid-service" {
  source                              = "terraform-dev-001-api-endpoint.cloud.wal-mart.com/paas-foundation/eventgrid-systemtopic/azurerm"
  version                             = "1.0.7"
  subscription_name                   = var.subscription_name
  resource_group_name                 = var.resource_group_name
  resource_id                         = var.resource_id
  eventgrid_system_topic_type         = var.eventgrid_system_topic_type
  location                            = var.location
  tags                                = var.tags
  storage_account_name                = var.storage_account_name
  storage_account_resource_group_name = var.storage_account_resource_group_name
  diagnostics_storage_account_name    = var.diagnostics_storage_account_name
  diagnostics_storage_account_resource_group_name = var.diagnostics_storage_account_resource_group_name
}
