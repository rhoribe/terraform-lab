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
| block\_public\_acls | Block Public ACLs | `bool` | n/a | yes |
| block\_public\_policy | Block Public Policys | `bool` | n/a | yes |
| bucket | Buckect Name | `string` | n/a | yes |
| ignore\_public\_acls | Ignore Public ACLs | `bool` | n/a | yes |
| restrict\_public\_buckets | Restrict Public Buckets | `bool` | n/a | yes |
| tags | Tags | `map(any)` | n/a | yes |
| versioning\_status | Bucket Versioning Status | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| arn | n/a |
| bucket | n/a |

<!--- END_TF_DOCS --->
