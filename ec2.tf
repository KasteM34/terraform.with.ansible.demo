resource "aws_instance" "web_server" {
  ami 				                    = "${data.aws_ami.amazon_ami.id}"
  instance_type 		              = "${var.instance_type}"
  key_name 			                  = "${var.key_name}"
  subnet_id	 		                  = "${var.instance_subnet}"
  associate_public_ip_address     = true
  security_groups 		            = ["${aws_security_group.security_group_instances.id}"]

  tags {
    Name 	= "ec2-web-server"
  }

  user_data       = "${file("scripts/userdata.sh")}"
}