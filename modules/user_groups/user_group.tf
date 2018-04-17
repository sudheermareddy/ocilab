resource "oci_identity_user" "user" {
    count = "${var.user_count}"
    name = "${format("${var.user_name_prefix}%d", count.index + 1)}"
    description = "User managed with Terraform"
}

resource "oci_identity_ui_password" "ui_pwd" {
    count = "${var.user_count}"
    user_id = "${element(oci_identity_user.user.*.id, count.index)}"
}

resource "oci_identity_user_group_membership" "t" {
    count = "${var.user_count}"
    compartment_id = "${var.compartment_ocid}"
    user_id = "${element(oci_identity_user.user.*.id, count.index)}"
    group_id = "${var.group_ocid}"
}
