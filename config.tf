provider "aws" {
    region = "eu-west-1"
}

terraform {
    backend "s3" {
        encrypt = true
        bucket = "spoofedpacket-terraform-remote-state"
        region = "eu-west-1"
        dynamodb_table = "spoofedpacket-terraform-remote-state-lock"
        key = "mgmt/remote-state/terraform.tfstate"
    }
}
