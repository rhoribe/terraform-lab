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
| egress | Egress Rules | `any` | n/a | yes |
| ingress | Ingress Rules | `any` | n/a | yes |
| sg\_description | Security Group descritpion | `string` | n/a | yes |
| sg\_name | Security Group Name | `string` | n/a | yes |
| vpc\_id | VPC ID | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| id | n/a |

<!--- END_TF_DOCS --->
