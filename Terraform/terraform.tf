# terraform.tf
terraform {
  required_providers {
    oci = {
      source  = "hashicorp/oci"
      version = ">= 5.0.0"
    }
  }
}


terraform {
  backend "http" {
    address = "https://objectstorage.us-ashburn-1.oraclecloud.com/p/o8pHI3gNq6TM5r7p61IiJcB8fbILY7rhQlHSdfaaWDdOfQwYi6kdnEb3LUczRSlc/n/ociateam/b/github-actions-test/o/terraform.tfstate"
    update_method = "PUT"
  }
}