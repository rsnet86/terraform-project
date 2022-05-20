# Design a 3 Tier AWS VPC with NAT Gateways using Terraform

Terraform module which creates VPC resources on AWS.
![Screenshot from 2022-05-20 22-04-10](https://user-images.githubusercontent.com/61878628/169572974-574d0898-057b-47ba-b253-df034b6e8a2b.png)

## Usage

Execute Terraform Commands

```bash
  # Working Folder
terraform-project/vpc

# Terraform Initialize
terraform init

# Terraform Validate
terraform validate

# Terraform plan
terraform plan

# Terraform Apply
terraform apply -auto-approve
Observation:
1) Verify VPC
2) Verify Subnets
3) Verify IGW
4) Verify Public Route for Public Subnets
5) Verify no public route for private subnets
6) Verify NAT Gateway and Elastic IP for NAT Gateway
7) Verify NAT Gateway route for Private Subnets
8) Verify no public route or no NAT Gateway route to Database Subnets
9) Verify Tags
```

# Clean-Up

#Terraform Destroy
```terraform destroy -auto-approve ```

#Delete Files

```rm -rf .terraform*```

```rm -rf terraform.tfstate```
