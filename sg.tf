resource "aws_security_group" "firstsg" {

    vpc_id      = "vpc-ae8855ca"
    name        = "Terraform Enterprise test"
    description = "Terraform Enterprise test"

    tags {
        Name  = "Terraform Enterprise fairgate 2"
    }
}

resource "aws_security_group_rule" "httpin" {
  description       = "HTTP"
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = "${aws_security_group.firstsg.id}"
}

