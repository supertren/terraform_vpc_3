# terraform-vpc

Terraform, Infrastructure as Code
Script to create AM VPC


![vpc](https://user-images.githubusercontent.com/43068656/195033072-be8f6a66-1796-45db-856f-db87e865e52a.jpg)

It creates;
* 1 VPC,
* 1 public subnet,
* 1 Internet Gateway,
* 1 private subnet,
* 1 Nat Gateway,
* 1 Security Group,
* 1 acl

After cloning the repo, just run these commands:

```
(update provider.tf file)
terraform init
terraform plan -out terraform.out
terraform apply terraform.out
```
