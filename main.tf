provider "aws" {
    access_key = "${var.access_key}"
    secret_key = "${var.secret_key}"
    region = "ca-central-1"
}

resource "aws_instance" "ec2_instance" {
    ami = "${var.ami_id_ubuntu}"
    count = "${var.number_of_instances}"
    subnet_id = "${var.subnet_id}"
    instance_type = "${var.instance_type}"
    key_name = "${var.ami_key_pair_name}"
    user_data = "${file("userdata.sh")}"
    tags = {
        Name = "${var.instance_name}"
    }
} 

output "instance_ip_addr" {
 value = ["${aws_instance.ec2_instance.*.public_ip}"]
}