# Terraform

Terraform permit to create Infrastructure As Code (IAS) in cloud.

## Organization

Folder organization:
```bash
terraform/
├── main.tf      # Contain
├── outputs.tf   # Ouput
├── providers.tf # Module installed
└── variables.tf # Variables
```


## Commands

Init repo:
```bash
terraform init
```

Plan for test:
```bash
terraform plan
```

Apply config:
```bash
terraform apply
terraform apply -auto-approve
```

## Sources
Source: https://learn.microsoft.com/fr-fr/azure/virtual-machines/linux/quick-create-terraform
