- name: Create main.tf (Simulated)
  run: |
    if [ "$SIMULATE_TERRAFORM" = "true" ]; then
      cat <<EOF > main.tf
resource "azurerm_virtual_desktop_host_pool" "example" {
  name                = "example-host-pool"
  location            = "East US"
  resource_group_name = "existing-resource-group"
  friendly_name       = "Example Host Pool"
  type                = "Pooled"
  load_balancer_type  = "BreadthFirst"  # Ensure this is a valid value
}
EOF
    fi

