<<<<<<< HEAD
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }


  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "eu-west-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0e34bbddc66def5ac"
  instance_type = "t2.micro"


  tags = {
    name = "ExampleAppserverInstance"

  }
}
=======
resource "aws_instance" "my-machine" {
  # Creates four identical aws ec2 instances
  count = 4     
  
  # All four instances will have the same ami and instance_type
  ami = lookup(var.ec2_ami,var.region) 
  instance_type = var.instance_type # 
  tags = {
    # The count.index allows you to launch a resource 
    # starting with the distinct index number 0 and corresponding to this instance.
    Name = "my-machine-${count.index}"
  }
}
>>>>>>> 6daaaeb (first push to new set up)
