variable "resource_group_name" {
}

variable "location" {
}

variable "common_tags" {
}

variable "load_balancer_name" {
}

variable "linux_vm_nics" {
}

variable "lb_rule_properties" {
  type = map(string)
  default = {
    protocol      = "Tcp"
    frontend_port = 80
    backend_port  = 80
  }
}
