# Terraform

Terraform permit to create Infrastructure As Code (IAS) in cloud.

## Organization

Folder organization:
```bash
terraform/
├── main.tf      # Contain Terraform code.
├── outputs.tf   # Contain output to display at the end of apply.
├── providers.tf # Backend to initialize provider plugin.
└── variables.tf # Variables to use for Terraform code.
```


## Commands

Init repo:
```bash
terraform init
```

Plan for test code:
```bash
terraform plan
```

Apply Terraform infra:
```bash
terraform apply
terraform apply -auto-approve
```

Destroy Terraform infra:
```bash
terraform destroy
terraform destroy -auto-approve
```

## Sources
Source: https://learn.microsoft.com/fr-fr/azure/virtual-machines/linux/quick-create-terraform
