# Resource Group/Location
variable "location" {
    type = string
    default = "East US"
}
variable "resource_group" {
    type = string
}

variable "dnsprefix" {
    type = string
}
variable "cluster_name" {
    type = string
}