# outputs.tf

output "dummy" {
    value = var.dummy
    sensitive = false
}

output "account_region" {
    value = var.account.region
    sensitive = false
}
