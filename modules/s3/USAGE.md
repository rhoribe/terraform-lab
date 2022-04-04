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
| block\_public\_acls | Block Public ACLs | `bool` | `true` | no |
| block\_public\_policy | Block Public Policys | `bool` | `true` | no |
| bucket | Buckect Name | `string` | `""` | no |
| ignore\_public\_acls | Ignore Public ACLs | `bool` | `true` | no |
| restrict\_public\_buckets | Restrict Public Buckets | `bool` | `true` | no |
| tags | Tags | `map(any)` | `{}` | no |
| versioning\_status | Bucket Versioning Status | `string` | `"Suspended"` | no |

## Outputs

| Name | Description |
|------|-------------|
| arn | n/a |
| bucket | n/a |

<!--- END_TF_DOCS --->
