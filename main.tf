provider "oci" {
  tenancy_ocid     = "ocid1.tenancy.oc1..aaaaaaaaa3qmjxr43tjexx75r6gwk6vjw22ermohbw2vbxyhczksgjir7xdq"
  user_ocid        = "ocid1.user.oc1..aaaaaaaafaq7vh72xyy3gj47vooic6hi7a2w2tvkzplgcjlohe7aawa4n6ea"
  fingerprint      = "65:a4:ea:9a:6b:fc:60:70:10:88:35:9b:70:18:d4:f5"
  private_key_path = "private-key.pem"
  region           = "us-ashburn-1"
}

resource "oci_core_instance" "test" {
  availability_domain = "your-ad"
  compartment_id      = var.compartment_ocid
  shape               = "VM.Standard.E2.1.Micro"

  create_vnic_details {
    subnet_id = var.subnet_ocid
  }

  source_details {
    source_type = "image"
    source_id   = "your-image-id"
  }

  metadata = {
    ssh_authorized_keys = file(var.ssh_key_path)
  }
}
