# Create the bucket to store our terraform state files
resource "aws_s3_bucket" "terraform-state-storage-s3" {
    bucket = "spoofedpacket-terraform-remote-state"
    versioning {
        enabled = true
    }
    lifecycle {
        prevent_destroy = true
    }
    tags {
        Name = "S3 Remote Terraform State Store"
    }      
}
