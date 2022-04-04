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
| route | Route Dynamic block | `any` | `[]` | no |
| route\_table\_name | Route Table Name | `string` | `""` | no |
| subnet\_id | Subnets Ids | `list(any)` | `[]` | no |
| vpc\_id | The VPC id | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| id | n/a |

<!--- END_TF_DOCS --->
