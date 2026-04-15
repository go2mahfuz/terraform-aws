module "vpc" {
  source = "../../modules/vpc"

  name           = "dev-vpc"
  cidr_block     = "10.0.0.0/16"
  public_subnet  = "10.0.1.0/24"
}

module "ec2" {
  source = "../../modules/ec2"

  name           = "dev-ec2"
  ami            = "ami-0495a76ecf381a767"
  instance_type  = "t3.micro"
  subnet_id      = module.vpc.subnet_id
}

module "s3" {
  source = "../../modules/s3"

  bucket_name = "dev-mahfuz-bucket-8433"
}