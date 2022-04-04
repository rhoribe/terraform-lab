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
| length | n/a | `number` | `16` | no |
| min\_lower | n/a | `number` | `3` | no |
| min\_numeric | n/a | `number` | `3` | no |
| min\_upper | n/a | `number` | `3` | no |
| name | n/a | `string` | `"password"` | no |
| recovery\_window\_in\_days | n/a | `number` | `0` | no |
| special | n/a | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| secret\_string | n/a |

<!--- END_TF_DOCS --->
