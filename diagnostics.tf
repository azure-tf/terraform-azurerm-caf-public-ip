module "diagnostics_pip" {
  # source  = "aztfmod/caf-diagnostics/azurerm"
  # version = "0.1.1"
  source = "git://github.com/aztfmod/terraform-azurerm-caf-diagnostics.git?ref=1912-Refresh"

    name                            = azurerm_public_ip.public_ip.name
    resource_id                     = azurerm_public_ip.public_ip.id
    log_analytics_workspace_id      = var.log_analytics_workspace_id
    diagnostics_map                 = var.diagnostics_map
    diag_object                     = var.diagnostics_settings
}