module "ecr" {
  source               = "../"
  repo_name            = "nginx_demo"
  image_tag_mutability = "MUTABLE"
  scan_on_push         = true
  tags = {
    env = "dev"
  }
}
output "repo_uri" {
  value = module.ecr.repo_uri
}
output "repo_arn" {
  value = module.ecr.repo_arn
}
