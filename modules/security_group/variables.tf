variable "security_group_name" {
  default     = "tf-modules-security-group-name"
  description = "The security group name."
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Additional tags for the security group."
}


variable "security_ingress_rules" {
  description = "List of ingress rules"
  type = list(object({
    action      = string
    cidr_block  = string
    protocol    = string
    port        = string
    description = string
  }))
  default = [
    {
      action      = "ACCEPT"
      cidr_block  = "10.4.0.0/22"
      protocol    = "TCP"
      port        = "80-90"
      description = "A:Allow Ips and 80-90"
    }
  ]
}

variable "security_egress_rules" {
  description = "List of egress rules"
  type = list(object({
    action      = string
    cidr_block  = string
    protocol    = string
    port        = string
    description = string
  }))
  default = [
    {
      action      = "ACCEPT"
      cidr_block  = "0.0.0.0/0"
      protocol    = "ALL"
      port        = "ALL"
      description = "Allow all outbound traffic"
    }
  ]
}
