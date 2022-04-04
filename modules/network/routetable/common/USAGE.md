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
| route | Route Dynamic block | `any` | n/a | yes |
| route\_table\_name | Route Table Name | `string` | n/a | yes |
| subnet\_id | Subnets Ids | `list(any)` | n/a | yes |
| vpc\_id | The VPC id | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| id | n/a |

<!--- END_TF_DOCS --->
