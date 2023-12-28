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

resource "aws_key_pair" "key" {
  key_name   = "sample1"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDGFZMlH7Wn09QVR5nQh8JqcPgigd9lWStQ+C+Mb6BzcXOPZKKDbrTSaF/NEq9z5P5oVpR3Uptxwz/XYyxqCQy0knyiohtW7np+kxEsxe6ON1t/37Nsy4gKVcT912V7WENMBm7CTSb1pa0lsseR6asUWjtuCQfc1Jlu7Rp9vLgzfBNVCwQgbQlj39yHxeeQrKr1b6pmjYZzXABlsY4dQfg/KO6ocTRV3E5utQpTT+MAxGTK+acFkfxo8hhA0jLiShU+8D84D7Uj+QD4Np/E/vAg4vHpXH923Sa3NRGYY0GMwG7n3/kB3FZYI/p/Objkg0zywS+rXj8XRFwWYqcmMZq513VP8+ZaNZeMYBzWTxhvmEXiDXFe8nV5yUnriFyn5Dz86fC97LjPQTNbykwn3XVRiV3xH8fNWphwco0P7aoDRuonjM7COlzfP+Wr/RmrC2taZnmk9sN2b6fse8NfHdMiQa11WSeAHHlae84dvWdBo8GuEoWRUiHCaxjN/NKY3Ec= india@DESKTOP-21T3K2E"


}