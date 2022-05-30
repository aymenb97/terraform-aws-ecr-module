variable "repo_name" {
  description = "Name of the Repository"
  type        = string
}
variable "image_tag_mutability" {
  type = string

}
variable "tags" {
  description = "Tags"
  type        = map(any)

}
variable "scan_on_push" {
  type        = bool
  description = "value"

}
