variable "bucket_name" {}

variable "acl_value" {
    default = "private"
}

provider "aws" {
    access_key = "${var.aws_access_key}"
    secret_key = "${var.aws_secret_key}"
    region = "${var.region}"
}

module "s3" 
    #bucket name should be unique
    bucket_name = "my-bucket"       
}

variable "aws_access_key" {
default = “AKIARZ4BVPWG7XZMX5LQ”
}
variable "aws_secret_key" {
default = “0+GwtI0W00Xodo1oDE9HT8JwN0/iPJC5SyEiqC0X”
 }
variable "region" {
    default = "us-west-2"
}