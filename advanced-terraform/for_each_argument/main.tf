# what is For_each 
# the meta arguments accepts a map or set of strings and creates an instance for each item in that map
provider "aws" {
  region = "us-east-1"
}
data "aws_availability_zones" "available" {
  state = "available"
}

resource "aws_instance" "for-each-argument" {
  ami = "ami-0453ec754f44f9a4a"
  instance_type = "t2.micro"
  for_each = toset(data.aws_availability_zones.available.names)
  availability_zone = each.key
  tags = {
    "Name" = "for_each_ec2-${each.value}"
  }
}