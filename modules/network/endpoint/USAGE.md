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
| route\_table\_id | Route Table ID | `string` | n/a | yes |
| service\_name | Serivice Name | `string` | n/a | yes |
| vpc\_endpoint\_type | VPC Endpoint Type | `string` | n/a | yes |
| vpc\_id | VPC ID | `string` | n/a | yes |
| vpce\_name | VPC Endpoint Name | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| arn | n/a |
| id | n/a |

<!--- END_TF_DOCS --->
