module "tfplan-functions" {
    source = "../common-functions/tfplan-functions/tfplan-functions.sentinel"
}

module "tfstate-functions" {
    source = "../common-functions/tfstate-functions/tfstate-functions.sentinel"
}

module "tfconfig-functions" {
    source = "../common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}

module "azure-functions" {
    source = "../azure-functions/azure-functions.sentinel"
}

policy "enforce-minimum-tls" {
    source = "./azure-sql-tls.sentinel"
    enforcement_level = "advisory"
}