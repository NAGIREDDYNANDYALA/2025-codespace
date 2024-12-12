resource "aws_instance" "Launched-by-IAC" {
  ami                    = "ami-0453ec754f44f9a4a"
  instance_type          = "t2.micro"
  key_name               = aws_key_pair.my-key-pair.key_name
  vpc_security_group_ids = [aws_security_group.web_sg.id]
  depends_on             = [aws_security_group.web_sg]
  tags = {
    "Env" = "Dev"
  }
}
