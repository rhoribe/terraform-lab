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
| ami | AMI to use | `string` | n/a | yes |
| associate\_public\_ip\_address | Associate Public IP | `bool` | n/a | yes |
| encrypted | Ecrypted Volume | `bool` | n/a | yes |
| iam\_instance\_profile | IAM Instance Profile | `string` | n/a | yes |
| instance\_name | EC2 instance name | `string` | n/a | yes |
| instance\_type | Type of EC2 | `string` | n/a | yes |
| key\_name | Key Name | `string` | n/a | yes |
| kms\_key\_id | KMS Key ID | `string` | n/a | yes |
| subnet\_id | subnet id | `string` | n/a | yes |
| user\_data | User Data | `string` | n/a | yes |
| volume\_size | Volume Size | `number` | n/a | yes |
| volume\_type | Volume Type | `string` | n/a | yes |
| vpc\_security\_group\_ids | VPC Security Groups | `list(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| id | n/a |
| private\_ip | n/a |
| public\_ip | n/a |

<!--- END_TF_DOCS --->
