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
    Name = "jenkinsagent"
  }
}

resource "aws_key_pair" "key" {
  key_name   = "sample"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDGgtaxLiRSk78o/AJ88yv1yKviW+62/CFJga+S1RG4FglLhjUvBZd/r4qXHJxqgPiaN/pUUxuuB+0d4Yk5kUEZUl0FCK8qWmeCkKlFYTEcSLDhNlTJZWyeC9oO4WE2SC96SfXitfJWs9MRQvSWZ90k10EEqr3KKsA3QfQbwX1Wbg4ZSxlI81kTi642JoIdEUUA9503ppm0I3wJLTea2rGVvfYULxP/mKD3/GZT45ZyPoUuVt1HYCXPMSdvvsv7xG5B6li6KrDshphy46mS1WKwjg9bwmOQcgdOz9jvMCux0HbRDYnAEsa5da0AxR85A4/zsitYCoX0vvLa9Y/CIl02Keg1X2mAbGJMPHdkTbN0mJca1vElvzvUcNV7fh4eIMxoi4zNGwG7X09LgRON5vJaGeMggVgg0aQFTGTqD2D+xiXfmTqv74vCSgVtBXXmDJDMzZSfXYTpRZQYcnGFpVYWzREv0DCNTCsKcHucq1qGT37KpBbMOLaR+qMBiYLCFG8= india@DESKTOP-21T3K2E"

}