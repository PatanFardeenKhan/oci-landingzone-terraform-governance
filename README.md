# oci-landingzone-terraform-governance
Terraform-based OCI landing zone automating compartment hierarchy, IAM policy governance, networking foundations, and Cloud Guard enablement across dev, test, and production environments. Demonstrates Infrastructure as Code for standardized governance, environment isolation, and continuous security monitoring.
OCI Landing Zone Governance using Terraform
Overview

**This project demonstrates Infrastructure as Code implementation for Oracle Cloud Infrastructure (OCI) governance. Terraform was used to automate compartment hierarchy creation, IAM policy configuration, networking foundations, and Cloud Guard enablement across multiple environments (dev, test, production).
**
**Objectives**
  Establish standardized compartment structure
  Implement role-based IAM governance
  Configure foundational networking
  Enable Cloud Guard for continuous security monitoring
  Promote repeatable infrastructure provisioning using Terraform

**Key Components**

    1. Compartment Provisioning
    
    Landing zone compartments
    
    Environment segregation (dev/test/prod)
    
    Security, platform, network compartments
    
    2. IAM Policy Automation
    
    Network admin policies
    
    Platform admin policies
    
    Security admin policies
    
    Tenancy-level governance policies
    
    3. Network Configuration
    
    VCN creation
    
    Subnet segmentation (app, db, infra, lb)
    
    Route tables and security lists
    
    4. Cloud Guard Enablement
    
    Enabled at tenancy level
    
    Detector recipes configured
    
    Continuous security posture monitoring
    
**Tools Used**
    
    Oracle Cloud Infrastructure (OCI)
    Terraform
    OCI Resource Manager
    IAM
    Cloud Guard
    
**Execution Steps**
    Configure OCI provider
    Define compartments and policies using Terraform
    Apply network configuration templates
    Deploy using Terraform apply / Resource Manager stack
    Enable Cloud Guard and validate monitoring
    
**Outcomes** 
    Automated governance baseline
    Reduced manual configuration effort
    Consistent environment provisioning
    Improved security visibility
    
**Learnings**
    OCI IAM policy structure and compartment hierarchy 
    Infrastructure as Code lifecycle
    Security monitoring using Cloud Guard
    Multi-environment landing zone design

**Future Enhancements**
    Responder recipes automation
    Notifications integration
    Tagging strategy standardization
    CI/CD pipeline for Terraform

## Screenshots

### Compartments Hierarchy
These screenshots show the automated compartment structure across environments.

![Compartments 1](https://github.com/user-attachments/assets/d82aac48-3ed5-4075-95bc-820cc71ffec5)
![Compartments 2](https://github.com/user-attachments/assets/da01a105-d762-4055-aa15-968c0e48c330)

---

### IAM Policies
Screenshots demonstrating role-based IAM policy configuration for network, platform, and security teams.

![Policies 1](https://github.com/user-attachments/assets/95a340de-0b54-42ed-9705-eaafdb054ff7)
![Policies 2](https://github.com/user-attachments/assets/af9959af-ff64-42b7-9305-8b19b65a889c)

---

### Cloud Guard Dashboard
Cloud Guard enabled at tenancy level for continuous security monitoring.

![Cloud Guard](https://github.com/user-attachments/assets/0aeae2c5-4401-42b2-ba9c-cb13c5f38ce8)

---

### Terraform Deployment Success
Terraform stack execution showing successful resource provisioning.

![Terraform 1](https://github.com/user-attachments/assets/f5214b4e-4c1e-4e79-ac30-e0cba558ee0d)
![Terraform 2](https://github.com/user-attachments/assets/61714d65-760d-4c91-b9e9-9b869222dd1d)

---

### VCN and Subnets
VCN creation and subnet segmentation for multi-tier architecture.

![VCN 1](https://github.com/user-attachments/assets/b6d9f586-053a-447d-ba61-273ec32466a5)
![VCN 2](https://github.com/user-attachments/assets/9fad335b-8dc5-431e-bbdc-cddf22b6abdb)
![VCN 3](https://github.com/user-attachments/assets/9b22076e-de7f-46dd-81af-b6c7b6b3a20c)
![VCN 4](https://github.com/user-attachments/assets/391cfaf1-a408-4202-b303-90130def0d4d)
