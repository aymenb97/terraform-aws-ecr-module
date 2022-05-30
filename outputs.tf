output "repo_uri" {
  description = "URI of the Repo"
  value       = aws_ecr_repository.this.repository_url

}
output "repo_arn" {
  description = "ARN of the Repo"
  value       = aws_ecr_repository.this.arn
}
