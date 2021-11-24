resource "azurerm_kubernetes_cluster" "ecommercek8s" {
  name                = "${var.name}"
  location            = "${var.location}"
  resource_group_name = "${var.resource_group_name}"
  dns_prefix          = "${var.dnsprefix}"

  role_based_access_control {
    enabled = true
  }


  addon_profile {
    http_application_routing {
      enabled = true
    }
  }

  default_node_pool {
    name       = "default"
    node_count = 3
    vm_size    = "Standard_D2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Production"
  }
}