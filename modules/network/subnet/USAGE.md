# Usage
<!--- BEGIN_TF_DOCS --->

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| availability\_zone | Availability zone | `list(any)` | n/a | yes |
| subnet\_cidr | Subnet cidr block | `list(any)` | n/a | yes |
| subnet\_name | Subnet name | `string` | n/a | yes |
| vpc\_id | The VPC id | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| availability\_zone | n/a |
| id | n/a |
| subnet\_cidr | n/a |

<!--- END_TF_DOCS --->
