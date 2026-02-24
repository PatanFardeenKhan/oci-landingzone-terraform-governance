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
