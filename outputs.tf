output "repo_uri" {
  value = aws_ecr_repository.this.repository_url

}
output "repo_arn" {
  value = aws_ecr_repository.this.arn
}
