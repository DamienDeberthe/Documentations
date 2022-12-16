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

## Connect in command line

Authenciate:
```bash
az login
```

Create service account:
```bash
az ad sp create-for-rbac --name <service_principal_name> --role Contributor --scopes /subscriptions/<subscription_id>
```

Logout:
```bash
az logout
```

Collect the values and create a file with variables like that:
```bash
export ARM_CLIENT_ID="<CLIENT_ID_APP_ID>"
export ARM_CLIENT_SECRET="<CLIENT_SECRET>"
export ARM_SUBSCRIPTION_ID="<SUBSCRIPTION_ID"
export ARM_TENANT_ID="<TENANT_ID>"
```
You can copy it to <code>~/.bashrc</code> for example.

### Debug

Test to connect with service account with az command:
```bash
az login --service-principal -u "<CLIENT_ID_APP_ID>" -p "<CLIENT_SECRET>" --tenant "<TENANT_ID>"
```

---

## Sources
* Azure good example: https://learn.microsoft.com/fr-fr/azure/virtual-machines/linux/quick-create-terraform
* Variables: https://upcloud.com/resources/tutorials/terraform-variables