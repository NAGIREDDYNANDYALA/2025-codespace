provider "aws" {
  region = var.region
}

resource "aws_instance" "advanced" {
  ami = "ami-0453ec754f44f9a4a"
  #instance_type = var.instance_type_list[0] # list variables
  instance_type = var.instance_type_map["Dev"] # Map variables
  count = 3
  tags = {
    "Name" = "Advanced-${count.index}"
  }
}