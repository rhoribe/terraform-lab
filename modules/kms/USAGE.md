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
| deletion\_window\_in\_days | The number of days to wait before deleting the resource | `number` | `7` | no |
| description | Description of the resource | `string` | `"A resource"` | no |
| name | Name of the resource | `string` | `"MyResource"` | no |

## Outputs

| Name | Description |
|------|-------------|
| arn | n/a |
| key\_id | n/a |

<!--- END_TF_DOCS --->
