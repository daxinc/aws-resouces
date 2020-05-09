resource "aws_instance" "bastion" {
  ami           = "ami-0323c3dd2da7fb37d"
  instance_type = "t2.micro"
  key_name      = "daxin-ppk"

  subnet_id = aws_subnet.public[0].id
  vpc_security_group_ids = [
    "sg-022feb065834e38fa"
  ]

  tags = {
    Name = "bastion"
  }
  
}