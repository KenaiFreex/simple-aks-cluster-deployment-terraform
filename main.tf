module "azurerm_kubernetes_cluster"{
  source               = "./modules/azurerm_kubernetes_cluster"
  name                 =  "${var.cluster_name}"
  location             = "${var.location}"
  resource_group_name  = "${var.resource_group}"
  dnsprefix            = "${var.dnsprefix}"
}
