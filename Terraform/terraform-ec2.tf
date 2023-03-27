Terraform for creating an EC2 instance in AWS:
----------------------------------------------------

provider "aws" { 
  region     = "us-west-2" 
  access_key = "AKIARZ4BVPWG7XZMX5LQ" 
  secret_key = "0+GwtI0W00Xodo1oDE9HT8JwN0/iPJC5SyEiqC0X" 
} 
 
resource "aws_instance" "example" { 
  ami           = "ami-0ceecbb0f30a902a6" 
  instance_type = "t2.micro" 
  tags = {
    Name = "HelloWorld"
  }
  }
