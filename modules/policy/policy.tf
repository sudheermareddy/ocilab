resource "oci_identity_policy" "p" {
  name = "${var.group_name}-policy"
  description = "automated terraform users policy"
  compartment_id = "${var.compartment_ocid}"
  statements = [
    
    "Allow group ${var.group_name} to ${var.role} virtual-network-family in compartment ${var.compartment_name}"
    
  ]
}

