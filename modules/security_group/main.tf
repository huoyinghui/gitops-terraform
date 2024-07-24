resource "tencentcloud_security_group" "sg" {
  name = var.security_group_name
  tags = var.tags
}

resource "tencentcloud_security_group_rule_set" "sg_rules" {
  security_group_id = tencentcloud_security_group.sg.id
  # ingress           = var.security_ingress_rules
  # egress            = var.security_egress_rules
 dynamic "ingress" {
    for_each = var.security_ingress_rules
    content {
      cidr_block  = ingress.value.cidr_block
      protocol    = ingress.value.protocol
      action      = ingress.value.action
      description = ingress.value.description
      port        = ingress.value.port
    }
  }

}