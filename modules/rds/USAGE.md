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
| allocated\_storage | Allocated storage | `number` | n/a | yes |
| backup\_retention\_period | Backup retention period | `number` | n/a | yes |
| backup\_window | Backup window | `string` | n/a | yes |
| ca\_cert\_identifier | Ca cert identifier | `string` | n/a | yes |
| copy\_tags\_to\_snapshot | Copy tags to snapshot | `bool` | n/a | yes |
| deletion\_protection | Deletion protection | `bool` | n/a | yes |
| enabled\_cloudwatch\_logs\_exports | Enabled Cloudwatch Logs Exports | `list(string)` | n/a | yes |
| engine\_name | Engine name | `string` | n/a | yes |
| engine\_version | Engine Version | `string` | n/a | yes |
| family | Parameter group family | `string` | n/a | yes |
| identifier | Instance name | `string` | n/a | yes |
| instance\_class | Instance class | `string` | n/a | yes |
| kms\_key\_id | KMS Key ID | `string` | n/a | yes |
| license\_model | License model of the DB instance | `string` | n/a | yes |
| maintenance\_window | Maintenance Window | `string` | n/a | yes |
| major\_engine\_version | Major engine version | `string` | n/a | yes |
| max\_allocated\_storage | Max allocated storage | `number` | n/a | yes |
| multi\_az | Multi AZ | `bool` | n/a | yes |
| password | DB Password | `string` | n/a | yes |
| port | Port | `number` | n/a | yes |
| publicly\_accessible | Publicly accessible | `bool` | n/a | yes |
| skip\_final\_snapshot | Skip final snapshot | `bool` | n/a | yes |
| storage\_encrypted | Storage encrypted | `bool` | n/a | yes |
| storage\_type | Storage type | `string` | n/a | yes |
| subnet\_ids | Subnet IDs | `list(string)` | n/a | yes |
| username | DB Username | `string` | n/a | yes |
| vpc\_security\_group\_ids | VPC Security Group IDs | `list(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| endpoint | n/a |

<!--- END_TF_DOCS --->
