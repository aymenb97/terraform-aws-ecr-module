## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_ecr_repository.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_repository) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_image_tag_mutability"></a> [image\_tag\_mutability](#input\_image\_tag\_mutability) | Enable tag mutability to prevent image tags from being overwritten | `string` | n/a | yes |
| <a name="input_repo_name"></a> [repo\_name](#input\_repo\_name) | Name of the Repository | `string` | n/a | yes |
| <a name="input_scan_on_push"></a> [scan\_on\_push](#input\_scan\_on\_push) | Enable ECR image scanning to help identofy software vulnerabilities in your container images. | `bool` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags | `map(any)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_repo_arn"></a> [repo\_arn](#output\_repo\_arn) | n/a |
| <a name="output_repo_uri"></a> [repo\_uri](#output\_repo\_uri) | n/a |
