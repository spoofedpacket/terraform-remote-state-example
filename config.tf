# Configure our default region
provider "aws" {
    region = "eu-west-1"
}

# Tell terraform to use our S3 bucket to store state files
# instead of keeping them locally. Use a seperate state file
# (key) per environment/component
terraform {
    backend "s3" {
        encrypt = true
        bucket = "spoofedpacket-terraform-remote-state"
        region = "eu-west-1"
        dynamodb_table = "spoofedpacket-terraform-remote-state-lock"
        key = "mgmt/remote-state/terraform.tfstate" # Path to file (in S3)
    }
}
