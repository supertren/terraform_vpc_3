# Create the Outside access Security Group
  resource "aws_security_group" "My_VPC_Outside_access_Security_Group" {
  vpc_id       = aws_vpc.Main.id
  name         = "My VPC Outside access Security Group"
  description  = "My VPC Outside access Security Group"
  
# allow ingress of port 22
  ingress {
    cidr_blocks = ["0.0.0.0/0"]  
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
  } 
 
# allow ingress of port 80 
  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
  }

# allow ingress of port 443
  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
  }

# allow egress of all ports
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
   Name = "My VPC Outside access Security Group"
   Description = "My VPC Outside access Security Group"
}
} 
# end resource
