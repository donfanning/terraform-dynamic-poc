provider "aws" {
  region = "${var.region}"
}

resource "aws_instance" "dynamic_environment" {
  ami = "${var.ami}" 
  instance_type = "${var.instance_type}" 
  tags {
    name = "ec2_instance_${var.dynamic_env_id}"
  }
  vpc_id = "${var.vpc_id}"
}
