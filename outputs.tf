output "usernames_list" {
    value = ["${module.user_groups.user_name}"]
}

output "ui_passwords_list" {
   value = ["${join(",", formatlist("%q", module.user_groups.user_ui_password))}"]
}


output "user_ocids" {
    value = ["${module.user_groups.user_ocids}"]
}

output "tenancy_name" {
    value = ["${var.tenancy_name}"]
}

output "compartment_name" {
    value = ["${var.compartment_name}"]
}
