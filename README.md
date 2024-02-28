
<p align="center"> <img src="https://user-images.githubusercontent.com/50652676/62349836-882fef80-b51e-11e9-99e3-7b974309c7e3.png" width="100" height="100"></p>


<h1 align="center">
    Terraform Azure Resource-group
</h1>

<p align="center" style="font-size: 1.2rem;">
    Terraform module to create Resource-group resource on Azure.
     </p>

<p align="center">

<a href="https://www.terraform.io">
  <img src="https://img.shields.io/badge/Terraform-v1.7.4-green" alt="Terraform">
</a>
<a href="https://github.com/slovink/terraform-azure-resource-group/blob/master/LICENSE">
  <img src="https://img.shields.io/badge/License-APACHE-blue.svg" alt="Licence">
</a>


# Resource-group example

The root folder of this repo shows an example of how to create a resource-group module, and create new Resource-group resource.

After this example you should have a new resource group.

## How do you run this example?

To run this example, apply the Terraform templates:

1. Install [Terraform](https://www.terraform.io/), minimum version: `1.0.0`.
1. Set the environment variables specified at the top of the file, and fill in any other variables
   that don't have a default.
1. Run `terraform init`.
1. Run `terraform apply`.






## Prerequisites

This module has a few dependencies:

- [Terraform 1.x.x](https://learn.hashicorp.com/terraform/getting-started/install.html)
- [Go](https://golang.org/doc/install)






### Simple Example
Here is an example of how you can use this module in your inventory structure:
  ```hcl

module "resource_group" {
  source       = "git@github.com:slovink/terraform-azure-resource-group.git?ref=1.0.0"
  environment  = "tested"
  label_order  = ["name", "environment", ]
  name         = "example"
  location     = "North Europe"
}

  ```

## Examples


**IMPORTANT:** Since the `master` branch used in `source` varies based on new modifications, we suggest that you use the release versions [here](https://github.com/slovink/terraform-azure-resource-group/releases).





## License
This project is licensed under the MIT License - see the [LICENSE](https://github.com/slovink/terraform-azure-resource-group/blob/dev/LICENSE) file for details.



## Feedback
If you come accross a bug or have any feedback, please log it in our [issue tracker](https://github.com/slovink/terraform-azure-resource-group/issues), or feel free to drop us an email at [contact@slovink.com](contact@slovink.com).

If you have found it worth your time, go ahead and give us a ★ on [our GitHub](https://github.com/slovink/terraform-azure-resource-group)!

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.7.4 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >=3.87.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >=3.87.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_labels"></a> [labels](#module\_labels) | git::git@github.com:slovink/terraform-azure-labels.git | 1.0.0 |

## Resources

| Name | Type |
|------|------|
| [azurerm_resource_group.default](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_business_unit"></a> [business\_unit](#input\_business\_unit) | Top-level division of your company that owns the subscription or workload that the resource belongs to. In smaller organizations, this tag might represent a single corporate or shared top-level organizational element. | `string` | `"Corp"` | no |
| <a name="input_create"></a> [create](#input\_create) | Used when creating the Resource Group. | `string` | `"90m"` | no |
| <a name="input_delete"></a> [delete](#input\_delete) | Used when deleting the Resource Group. | `string` | `"90m"` | no |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | Flag to control the module creation. | `bool` | `true` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment (e.g. `prod`, `dev`, `staging`). | `string` | `""` | no |
| <a name="input_label_order"></a> [label\_order](#input\_label\_order) | Label order, e.g. `name`,`application`. | `list(any)` | `[]` | no |
| <a name="input_location"></a> [location](#input\_location) | Location where resource should be created. | `string` | `""` | no |
| <a name="input_managedby"></a> [managedby](#input\_managedby) | slovink | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | Name  (e.g. `app` or `cluster`). | `string` | `""` | no |
| <a name="input_read"></a> [read](#input\_read) | Used when retrieving the Resource Group. | `string` | `"5m"` | no |
| <a name="input_repository"></a> [repository](#input\_repository) | Terraform current module repo | `string` | `"https://github.com/slovink/terraform-azure-resource-group"` | no |
| <a name="input_update"></a> [update](#input\_update) | Used when updating the Resource Group. | `string` | `"90m"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_resource_group_id"></a> [resource\_group\_id](#output\_resource\_group\_id) | The ID of the Resource Group. |
| <a name="output_resource_group_location"></a> [resource\_group\_location](#output\_resource\_group\_location) | The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created. |
| <a name="output_resource_group_name"></a> [resource\_group\_name](#output\_resource\_group\_name) | The Name which should be used for this Resource Group. Changing this forces a new Resource Group to be created. |
| <a name="output_tags"></a> [tags](#output\_tags) | A mapping of tags which should be assigned to the Resource Group. |
<!-- END_TF_DOCS -->
