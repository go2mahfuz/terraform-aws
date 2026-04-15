resource "aws_instance" "first_instance_by_terraform" {
  ami           = "ami-0495a76ecf381a767"
  instance_type = "t3.micro"

  tags = {
    Name = "demo-ec2"
  }
}

resource "aws_s3_bucket" "bucket" {
    bucket = "mahfuz-unique-demo-bucket-4437"
}