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
| allocated\_storage | Allocated storage | `number` | `null` | no |
| backup\_retention\_period | Backup retention period | `number` | `7` | no |
| backup\_window | Backup window | `string` | `"04:00-05:00"` | no |
| ca\_cert\_identifier | Ca cert identifier | `string` | `"rds-ca-2019"` | no |
| copy\_tags\_to\_snapshot | Copy tags to snapshot | `bool` | `false` | no |
| deletion\_protection | Deletion protection | `bool` | `false` | no |
| enabled\_cloudwatch\_logs\_exports | Enabled Cloudwatch Logs Exports | `list(string)` | <pre>[<br>  "error"<br>]</pre> | no |
| engine\_name | Engine name | `string` | `""` | no |
| engine\_version | Engine Version | `string` | `""` | no |
| family | Parameter group family | `string` | `""` | no |
| identifier | Instance name | `string` | `""` | no |
| instance\_class | Instance class | `string` | `""` | no |
| kms\_key\_id | KMS Key ID | `string` | `""` | no |
| license\_model | License model of the DB instance | `string` | `"general-public-license"` | no |
| maintenance\_window | Maintenance Window | `string` | `"tue:06:00-tue:08:00"` | no |
| major\_engine\_version | Major engine version | `string` | `""` | no |
| max\_allocated\_storage | Max allocated storage | `number` | `null` | no |
| multi\_az | Multi AZ | `bool` | `false` | no |
| password | DB Password | `string` | `""` | no |
| port | Port | `number` | `3306` | no |
| publicly\_accessible | Publicly accessible | `bool` | `false` | no |
| skip\_final\_snapshot | Skip final snapshot | `bool` | `false` | no |
| storage\_encrypted | Storage encrypted | `bool` | `false` | no |
| storage\_type | Storage type | `string` | `"gp2"` | no |
| subnet\_ids | Subnet IDs | `list(string)` | <pre>[<br>  ""<br>]</pre> | no |
| username | DB Username | `string` | `"dbmaster"` | no |
| vpc\_security\_group\_ids | VPC Security Group IDs | `list(string)` | <pre>[<br>  ""<br>]</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| endpoint | n/a |

<!--- END_TF_DOCS --->
