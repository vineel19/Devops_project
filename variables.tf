variable "ami" {
  type = "map"

  default = {
    "us-east-1" = "ami-04169656fea786776"
    "us-west-1" = "ami-006fce2a9625b177f"
  }
}

variable "instance_count" {
  default = "5"
}

variable "instance_tags" {
  type = "list"
  default = ["Terraform-test-1", "Terraform-test-2", "Terraform-test-3", "Terraform-test-4", "Terraform-test-5"]
}

variable "subnet_id" {
  default ""
}

variable "vpc_id" {
  default = ""
}


variable "instance_type" {
  default = "t2.nano"
}

variable "aws_region" {
  type = "list"
  default = ["us-east-1", "us-west-1"]
}
