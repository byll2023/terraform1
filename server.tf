resource "aws_instance" "my_Ec2" {
  ami           = var.ami
  instance_type = var.instance-type
  subnet_id = aws_subnet.pub-sub-vpc.id
  key_name = var.keypair
  


   tags = {
    Name        = "serverEc2"
    Env         = "production"
  }


}