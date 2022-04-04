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
| egress | Egress Rules | `any` | `[]` | no |
| ingress | Ingress Rules | `any` | `[]` | no |
| sg\_description | Security Group descritpion | `string` | `""` | no |
| sg\_name | Security Group Name | `string` | `""` | no |
| vpc\_id | VPC ID | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| id | n/a |

<!--- END_TF_DOCS --->
