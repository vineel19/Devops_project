resource "aws_security_group" "test_sg" {
name="${var.name}_security_group"
description="Allow Routes to the instances"
vpc_id="${var.vpc_id}"

ingress {
from_port=80
to_port=80
protocol="tcp"

//Example CIDR of an instance that should route the incoming traffic. We can modify the CIDR based on requirement

cidr_blocks=["10.0.0.0/0"] 
}

egress {

from_port=0
to_port=0
protocol="-1"

//Example CIDR of an instance that should route the outgoing traffic. We can modify the CIDR based on requirement

cidr_blocks=["10.0.0.0/0"]

}
}