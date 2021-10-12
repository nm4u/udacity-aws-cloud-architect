# TODO: Designate a cloud provider, region, and credentials
provider "aws" {
  access_key = "******"
  secret_key = "******"
  token = "***********"
  region = "us-east-1"
}

# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "Udacity-T2" {
  ami           = "ami-087c17d1fe0178315"
  count         = "4"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0edcedccd9e9fdf93"
  tags = {
    Name = "Udacity-T2"
  }
}


# TODO: provision 2 m4.large EC2 instances named Udacity M4
 resource "aws_instance" "Udacity-M4" {
   ami           = "ami-087c17d1fe0178315"
   count         = "2"
   instance_type = "m4.large"
   subnet_id     = "subnet-0edcedccd9e9fdf93"
   tags = {
     Name = "Udacity-M4"
   }
}