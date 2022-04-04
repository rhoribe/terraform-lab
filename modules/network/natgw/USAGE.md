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
| allocation\_id | EIP allocation\_id | `string` | n/a | yes |
| connectivity\_type | Connectivity type | `string` | n/a | yes |
| nat\_gateway\_name | Nat GW  Name | `string` | n/a | yes |
| subnet\_id | Subnet Id | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| id | n/a |

<!--- END_TF_DOCS --->
