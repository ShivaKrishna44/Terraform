resource "aws_instance" "this" {
  ami                    = "ami-09c813fb71547fc4f" # This is our devops-practice AMI ID
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  instance_type          = "t3.micro" /* Instance type */
  tags = { 
    Name    = "terraform-demo" /* Name of the instance */
    Purpose = "terraform-practice" /*purpose */
  }
} 

resource "aws_security_group" "allow_tls" { /* Resource block for security group */
  name        = "allow_tls" /* Name of the security group */
  description = "Allow TLS inbound traffic and all outbound traffic"

  ingress {
    from_port   = 22 /*Allow port 22*/
    to_port     = 22 
    protocol    = "tcp" 
    cidr_blocks = ["0.0.0.0/0"] /*Allow all IPs to connect */
  }

  egress {
    from_port   = 0 /* Allow all ports */
    to_port     = 0 /* Allow all ports */
    protocol    = "-1"   /*all protocols allowed*/
    cidr_blocks = ["0.0.0.0/0"] /* Allow all IPs to connect */
  }

  tags = {
    Name = "allow_tls" /* Name of the security group */
  }
}