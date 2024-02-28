resource "aws_instance" "example" {
  ami           = "ami-0e5f882be1900e43b"  # Use a valid AMI ID
  instance_type = "t2.micro"
  

  tags = {
    Name = "remote-example-instance"
  }
}

