output "client_certificate" {
  value = "${azurerm_kubernetes_cluster.ecommercek8s.kube_config.0.client_certificate}"
}

output "kube_config" {
  value = "${azurerm_kubernetes_cluster.ecommercek8s.kube_config_raw}"

  sensitive = true
}

output "k8s_name" {
  value = "${azurerm_kubernetes_cluster.ecommercek8s.name}"
}