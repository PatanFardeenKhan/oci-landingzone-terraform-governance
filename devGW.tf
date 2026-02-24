data "oci_core_services" "all_services" {
  filter {
    name   = "name"
    values = ["All .* Services In Oracle Services Network"]
    regex  = true
  }
}

# --- 2. GATEWAYS FOR DEV VCN ---
resource "oci_core_nat_gateway" "natgw_dev_proj" {
  compartment_id = "ocid1.compartment.oc21..aaaaaaaadf2lvp6gqht3hxbjczfew74wrmpjb2qpuoj5iajoah4abnzpntua"
  vcn_id         = "ocid1.vcn.oc21.me-dcc-doha-1.amaaaaaai3hixtqapf2hdml2cl2wm3bacn22rx7qyymvz3bhwd2ovhk6v5eq"
  display_name   = "natgw-dev-proj"
}

resource "oci_core_service_gateway" "sgw_dev_proj" {
  compartment_id = "ocid1.compartment.oc21..aaaaaaaadf2lvp6gqht3hxbjczfew74wrmpjb2qpuoj5iajoah4abnzpntua"
  vcn_id         = "ocid1.vcn.oc21.me-dcc-doha-1.amaaaaaai3hixtqapf2hdml2cl2wm3bacn22rx7qyymvz3bhwd2ovhk6v5eq"
  display_name   = "sgw-dev-proj"
  services {
    service_id = data.oci_core_services.all_services.services[0].id
  }
}

# --- 3. GATEWAYS FOR EBS-MOME VCN ---
resource "oci_core_nat_gateway" "natgw_dev_ebs_mome" {
  compartment_id = "ocid1.compartment.oc21..aaaaaaaadf2lvp6gqht3hxbjczfew74wrmpjb2qpuoj5iajoah4abnzpntua"
  vcn_id         = "ocid1.vcn.oc21.me-dcc-doha-1.amaaaaaai3hixtqadpdgudj7c6bkthc43uobky4gsm5igss7dww2evzjshjq" 
  display_name   = "natgw-dev-ebs-mome"
}

resource "oci_core_service_gateway" "sgw_dev_ebs_mome" {
  compartment_id = "ocid1.compartment.oc21..aaaaaaaadf2lvp6gqht3hxbjczfew74wrmpjb2qpuoj5iajoah4abnzpntua"
  vcn_id         = "ocid1.vcn.oc21.me-dcc-doha-1.amaaaaaai3hixtqadpdgudj7c6bkthc43uobky4gsm5igss7dww2evzjshjq"
  display_name   = "sgw-dev-ebs-mome"
  services {
    service_id = data.oci_core_services.all_services.services[0].id
  }
}

# --- 4. GATEWAYS FOR EBS-PARRE VCN ---
resource "oci_core_nat_gateway" "natgw_dev_ebs_parre" {
  compartment_id = "ocid1.compartment.oc21..aaaaaaaadf2lvp6gqht3hxbjczfew74wrmpjb2qpuoj5iajoah4abnzpntua"
  vcn_id         = "ocid1.vcn.oc21.me-dcc-doha-1.amaaaaaai3hixtqap45wcjfeoaheeroqu7yltq4metarmgniw25pisk4slwa"
  display_name   = "natgw-dev-ebs-parre"
}

resource "oci_core_service_gateway" "sgw_dev_ebs_parre" {
  compartment_id = "ocid1.compartment.oc21..aaaaaaaadf2lvp6gqht3hxbjczfew74wrmpjb2qpuoj5iajoah4abnzpntua"
  vcn_id         = "ocid1.vcn.oc21.me-dcc-doha-1.amaaaaaai3hixtqap45wcjfeoaheeroqu7yltq4metarmgniw25pisk4slwa"
  display_name   = "sgw-dev-ebs-parre"
  services {
    service_id = data.oci_core_services.all_services.services[0].id
  }
}