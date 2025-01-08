echo 'resource "azurerm_virtual_desktop_host_pool" "example" {
  name                = "example-host-pool"
  location            = "East US"
  resource_group_name = "existing-resource-group"
  friendly_name       = "Example Host Pool"
  type                = "Pooled"
  load_balancer_type  = "BreadthFirst"
}' > main.tf

