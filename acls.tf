#Create VPC Network access control list
resource "aws_network_acl" "My_VPC_Public_ACL" {
  vpc_id =  aws_vpc.Main.id 
  subnet_ids = [ aws_subnet.publicsubnets.id ]# allow ingress port 22


# allow icmp (ping)
ingress {
    protocol   = "icmp"
    rule_no    = 10
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }


# allow ingress port 22
ingress {
    protocol   = "tcp"
    rule_no    = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 22
    to_port    = 22
  }

# allow ingress port 443
  ingress {
    protocol   = "tcp"
    rule_no    = 110
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 443
    to_port    = 443
  }

  
# allow ingress port 80
  ingress {
    protocol   = "tcp"
    rule_no    = 200
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 80
    to_port    = 80
  }
  
# allow ingress ephemeral ports
  ingress {
    protocol   = "tcp"
    rule_no    = 300
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 1024
    to_port    = 65535
  }

# allow egress
  egress {
    protocol   = -1 
    rule_no    = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0 
    to_port    = 0
  }
  
tags = {
    Name = "My VPC Public ACL"
}
}
#end resource
