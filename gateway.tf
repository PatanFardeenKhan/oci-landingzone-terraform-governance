data "oci_core_services" "all_services" {
  filter {
    name   = "name"
    values = ["All .* Services In Oracle Services Network"]
    regex  = true
  }
}

# --- 2. GATEWAYS FOR PROJECT VCN ---
resource "oci_core_nat_gateway" "natgw_prod_proj" {
  compartment_id = "ocid1.compartment.oc21..aaaaaaaa5vkcgintnzxjuc4lriyflieu2xz26jvn7lgpvmp2vnacsn2l26ma" 
  vcn_id         = "ocid1.vcn.oc21.me-dcc-doha-1.amaaaaaai3hixtqaleiotvfolvg565i5osrv4zhxnwqtrnmodptzbhmjbdaq"
  display_name   = "natgw-prod-proj"
}

resource "oci_core_service_gateway" "sgw_prod_proj" {
  compartment_id = "ocid1.compartment.oc21..aaaaaaaa5vkcgintnzxjuc4lriyflieu2xz26jvn7lgpvmp2vnacsn2l26ma"
  vcn_id         = "ocid1.vcn.oc21.me-dcc-doha-1.amaaaaaai3hixtqaleiotvfolvg565i5osrv4zhxnwqtrnmodptzbhmjbdaq"
  display_name   = "sgw-prod-proj"
  services {
    service_id = data.oci_core_services.all_services.services[0].id
  }
}

# --- 3. GATEWAYS FOR EBS-MOME VCN ---
resource "oci_core_nat_gateway" "natgw_prod_ebs_mome" {
  compartment_id = "ocid1.compartment.oc21..aaaaaaaa5vkcgintnzxjuc4lriyflieu2xz26jvn7lgpvmp2vnacsn2l26ma"
  vcn_id         = "ocid1.vcn.oc21.me-dcc-doha-1.amaaaaaai3hixtqacwlvv5edo2sz4nysysy4vqise6lszwonu6x37s4zb6sa" 
  display_name   = "natgw-prod-ebs-mome"
}

resource "oci_core_service_gateway" "sgw_prod_ebs_mome" {
  compartment_id = "ocid1.compartment.oc21..aaaaaaaa5vkcgintnzxjuc4lriyflieu2xz26jvn7lgpvmp2vnacsn2l26ma"
  vcn_id         = "ocid1.vcn.oc21.me-dcc-doha-1.amaaaaaai3hixtqacwlvv5edo2sz4nysysy4vqise6lszwonu6x37s4zb6sa"
  display_name   = "sgw-prod-ebs-mome"
  services {
    service_id = data.oci_core_services.all_services.services[0].id
  }
}

# --- 4. GATEWAYS FOR EBS-PARRE VCN ---
resource "oci_core_nat_gateway" "natgw_prod_ebs_parre" {
  compartment_id = "ocid1.compartment.oc21..aaaaaaaa5vkcgintnzxjuc4lriyflieu2xz26jvn7lgpvmp2vnacsn2l26ma"
  vcn_id         = "ocid1.vcn.oc21.me-dcc-doha-1.amaaaaaai3hixtqao7ldiydbnk7rtzzrl3uprloeg5vyz23pckf4atq7oola"
  display_name   = "natgw-prod-ebs-parre"
}

resource "oci_core_service_gateway" "sgw_prod_ebs_parre" {
  compartment_id = "ocid1.compartment.oc21..aaaaaaaa5vkcgintnzxjuc4lriyflieu2xz26jvn7lgpvmp2vnacsn2l26ma"
  vcn_id         = "ocid1.vcn.oc21.me-dcc-doha-1.amaaaaaai3hixtqao7ldiydbnk7rtzzrl3uprloeg5vyz23pckf4atq7oola"
  display_name   = "sgw-prod-ebs-parre"
  services {
    service_id = data.oci_core_services.all_services.services[0].id
  }
}