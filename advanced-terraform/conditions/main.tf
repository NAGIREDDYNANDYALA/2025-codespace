provider "aws" {
  region = var.region
}
#defining condions
resource "aws_instance" "condions" {
  ami = ""
  instance_type = "t2.micro"
  count = var.environment == "Dev" ? 2 : 1
}


#terraform plan -var="environment=Prod" = try this command it shows you the plan 