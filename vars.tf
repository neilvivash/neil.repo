# Creating a Variable for ami of type map


variable "ec2_ami" {
  type = map

  default = {
    eu-west-2 = "ami-0bb712bfc5b5ce8f9"
    
  }
}

# Creating a Variable for region

variable "aws_region" {
  type = string
  default = "eu-west-2"
}


# Creating a Variable for instance_type
variable "instance_type" {    
  type = string
}
