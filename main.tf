terraform {
  required_version = ">= 1.0"
}

resource "terraform_data" "ci_demo" {
  input = "Network Automation CI Lab"
}

output "lab_message" {
  value = terraform_data.ci_demo.output
}

resource "local_file" "report" {
    filename = "report.txt"
    content = "managed by terraform"
}