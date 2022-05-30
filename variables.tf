variable "repo_name" {
  description = "Name of the Repository"
  type        = string
}
variable "image_tag_mutability" {
  description = "Enable tag mutability to prevent image tags from being overwritten"
  type        = string

}
variable "tags" {
  description = "Tags"
  type        = map(any)

}
variable "scan_on_push" {
  type        = bool
  description = "Enable ECR image scanning to help identofy software vulnerabilities in your container images."

}
