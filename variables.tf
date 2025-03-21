variable "tenancy_ocid" {
  type = string
}

variable "user_ocid" {
  type = string
}

variable "fingerprint" {
  type = string
}

variable "private_key_path" {
  type = string
}

variable "region" {
  type = string
}

variable "compartment_ocid" {
  type = string
}

variable "vcn_display_name" {
  type    = string
  default = "mytf-test-vcn"
}

variable "vcn_cidr_block" {
  type    = string
  default = "10.0.0.0/16"
}
