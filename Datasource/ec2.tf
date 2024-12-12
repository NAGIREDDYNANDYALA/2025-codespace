#defning Datasources
data "aws_availability_zones" "avilable" {

}
#accessing data sources
#aws_availability_zone = data.aws_availability_zones.avilable.names[1]

# Defing datasources for AMI'S
data "aws_ami" "latest-linux" {
  most_recent = true
  owners      = ["137112412989"]

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-*"] # Broaden the pattern
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

# accessing datasources 
# ami = data.aws_ami.latest-linux.id
resource "aws_instance" "datasources_instance" {
  ami           = data.aws_ami.latest-linux.id
  instance_type = "t2.micro"
  provisioner "local-exec" {
    command = "echo aws_instance.datasources_instance.private_ip >> instance_private_ip.txt"
  }
  availability_zone = data.aws_availability_zones.avilable.names[1]

  tags = {
    Name = "terrafom-ec2"
  }
}
output "public_ip" {
    value = aws_instance.datasources_instance.public_ip
}