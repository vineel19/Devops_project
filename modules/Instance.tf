resource "aws_key_pair" "terraform-demo" {
  key_name   = "terraform-demo"
  public_key = "${file("terraform-demo.pub")}"
}

resource "aws_instance" "my-instance" {
  count         = "${var.instance_count}"
  ami           = "${lookup(var.ami,var.aws_region)}"
  instance_type = "${var.instance_type}"
  subnet_id     = ["${aws_subnet.private.id}"]
  vpc_security_group_ids = ["${aws_security_group.test_sg.id}"]
  key_name      = "${aws_key_pair.terraform-demo.key_name}"

  tags = {
    Name  = "${element(var.instance_tags, count.index)}"
  }
}