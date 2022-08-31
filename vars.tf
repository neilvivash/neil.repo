# Creating a Variable for ami of type map


variable "ec2_ami" {
  type = map

  default = {
    eu-west-2 = "ami-00785f4835c6acf64"
    eu-west-1 = "ami-09e2d756e7d78558d"
    
  }
}

# Creating a Variable for region

variable "region" {
  default = eu-west-2
}


# Creating a Variable for instance_type
variable "instance_type" {    
  type = string
}
