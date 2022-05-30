# terraform-ecr-module

Terraform module to create an ECR registry to store docker images.

## Features:
- Creates an ECR Repository that you can use to store your Docker images, Open Container Initiative (OCI) images, and OCI compatible artifcats.
- You can push/pull container images to the created repository. You can use these images locally or you can use them in Amazon ECS task definitions and Amazon EKS pod specifications.

## Usage:
Specify the name of the Repository in the `repo_name` and `image_tag_mutability` to either `MUTABLE` or `IMMUTABLE`.
Navigate to the `example` directory then

```shell
$terraform init
```

```shell
$terraform plan
```

```shell
$terraform apply
```

To push your docker image to the created repository:

1. Retrieve the URI of the created Docker Repository (You can find in in the outputs of the module).

2. Authenticate your docker client to the Amazon ECR Registry to which you intend to push your image using the following command:

```
aws ecr get-login-password --region region | docker login --username AWS --password-stdin aws_account_id.dkr.ecr.region.amazonaws.com
```
3. Identify your local images to pish 

```
docker images
```

4. Tag your image with the Amazon ECR registry, repostiory, and optional image tag name.

```
docker tag <image-id> aws_account_id.dkr.ecr.region.amazonaws.com/my-repository:tag
```

5. Push the image

```
docker push aws_account_id.dkr.ecr.region.amazonaws.com/my-repository:tag
```
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
| <a name="output_repo_arn"></a> [repo\_arn](#output\_repo\_arn) | ARN of the Repo |
| <a name="output_repo_uri"></a> [repo\_uri](#output\_repo\_uri) | URI of the Repo |
