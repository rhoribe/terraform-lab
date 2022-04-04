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
| availability\_zone\_name | Availability zone | `string` | n/a | yes |
| creation\_token | Creation token | `string` | n/a | yes |
| encrypted | Ecrypted | `bool` | `false` | no |
| kms\_key\_id | KMS Key ID | `string` | n/a | yes |
| name | Name | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| arn | n/a |
| id | n/a |

<!--- END_TF_DOCS --->
