data "oci_core_services" "all_services" {
  filter {
    name   = "name"
    values = ["All .* Services In Oracle Services Network"]
    regex  = true
  }
}

# --- 2. GATEWAYS FOR UAT VCN ---
resource "oci_core_nat_gateway" "natgw_test_proj" {
  compartment_id = "ocid1.compartment.oc21..aaaaaaaapkxtzee6kw7svpo5xeu6dnjonsu6z3woo6gsj6tmxja42r2vhabq"
  vcn_id         = "ocid1.vcn.oc21.me-dcc-doha-1.amaaaaaai3hixtqaijnn7ojm4ivqhlzfbdt37pa5owukb4z2smejcbhfsxaq"
  display_name   = "natgw-test-proj"
}

resource "oci_core_service_gateway" "sgw_test_proj" {
  compartment_id = "ocid1.compartment.oc21..aaaaaaaapkxtzee6kw7svpo5xeu6dnjonsu6z3woo6gsj6tmxja42r2vhabq"
  vcn_id         = "ocid1.vcn.oc21.me-dcc-doha-1.amaaaaaai3hixtqaijnn7ojm4ivqhlzfbdt37pa5owukb4z2smejcbhfsxaq"
  display_name   = "sgw-test-proj"
  services {
    service_id = data.oci_core_services.all_services.services[0].id
  }
}

# --- 3. GATEWAYS FOR EBS-MOME VCN ---
resource "oci_core_nat_gateway" "natgw_test_ebs_mome" {
  compartment_id = "ocid1.compartment.oc21..aaaaaaaapkxtzee6kw7svpo5xeu6dnjonsu6z3woo6gsj6tmxja42r2vhabq"
  vcn_id         = "ocid1.vcn.oc21.me-dcc-doha-1.amaaaaaai3hixtqa5ey7fhgpyvlcpw44tczpb7w5yooy2jlssfy37yij7sga" 
  display_name   = "natgw-test-ebs-mome"
}

resource "oci_core_service_gateway" "sgw_test_ebs_mome" {
  compartment_id = "ocid1.compartment.oc21..aaaaaaaapkxtzee6kw7svpo5xeu6dnjonsu6z3woo6gsj6tmxja42r2vhabq"
  vcn_id         = "ocid1.vcn.oc21.me-dcc-doha-1.amaaaaaai3hixtqa5ey7fhgpyvlcpw44tczpb7w5yooy2jlssfy37yij7sga"
  display_name   = "sgw-test-ebs-mome"
  services {
    service_id = data.oci_core_services.all_services.services[0].id
  }
}

# --- 4. GATEWAYS FOR EBS-PARRE VCN ---
resource "oci_core_nat_gateway" "natgw_test_ebs_parre" {
  compartment_id = "ocid1.compartment.oc21..aaaaaaaapkxtzee6kw7svpo5xeu6dnjonsu6z3woo6gsj6tmxja42r2vhabq"
  vcn_id         = "ocid1.vcn.oc21.me-dcc-doha-1.amaaaaaai3hixtqa2fmgihemtyxn5ujg2eexmxndg5oiods247gd3ikiypiq"
  display_name   = "natgw-test-ebs-parre"
}

resource "oci_core_service_gateway" "sgw_test_ebs_parre" {
  compartment_id = "ocid1.compartment.oc21..aaaaaaaapkxtzee6kw7svpo5xeu6dnjonsu6z3woo6gsj6tmxja42r2vhabq"
  vcn_id         = "ocid1.vcn.oc21.me-dcc-doha-1.amaaaaaai3hixtqa2fmgihemtyxn5ujg2eexmxndg5oiods247gd3ikiypiq"
  display_name   = "sgw-test-ebs-parre"
  services {
    service_id = data.oci_core_services.all_services.services[0].id
  }
}