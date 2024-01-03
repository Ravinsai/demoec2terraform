provider "aws" {
  region     = "ap-south-1"
}


resource "aws_instance" "server" {
  ami           = "ami-03f4878755434977f"
  instance_type = "t2.micro"
  subnet_id = "subnet-07056ba67edeec87c"
  security_groups = ["sg-0f37dab191780c9f1"]
  key_name = aws_key_pair.key.id

  tags = {
    Name = "jenkinsmaster"
  }
}
