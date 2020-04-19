terraform {

backend "s3" {

bucket="Remotebackendbucket"

key="terraform/dev/terraform_dev.tfstate"

region="us-east-1"

}

}
