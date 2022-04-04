# Usage
<!--- BEGIN_TF_DOCS --->

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |
| random | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| length | n/a | `number` | n/a | yes |
| min\_lower | n/a | `number` | n/a | yes |
| min\_numeric | n/a | `number` | n/a | yes |
| min\_upper | n/a | `number` | n/a | yes |
| name | n/a | `string` | n/a | yes |
| recovery\_window\_in\_days | n/a | `number` | n/a | yes |
| special | n/a | `bool` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| secret\_string | n/a |

<!--- END_TF_DOCS --->
