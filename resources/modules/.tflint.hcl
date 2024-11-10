plugin "aws" {
  enabled = true
  version = "0.34.0"
  source  = "github.com/terraform-linters/tflint-ruleset-aws"
}

config {
  call_module_type = "all"
  force            = false
}

rule "terraform_required_version" {
  enabled = true
}

rule "terraform_required_providers" {
  enabled = true
}

rule "aws_resource_missing_tags" {
  enabled = true
  tags = [
    "Environment",
    "Project",
    "Owner"
  ]
}
