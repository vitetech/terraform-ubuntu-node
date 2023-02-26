variable "access_key" {
        description = "Access key to AWS console"
}

variable "secret_key" {
        description = "Secret key to AWS console"
}

variable "instance_name" {
        description = "Name of the instance to be created"
        default = "Ubuntu Node"
}

variable "instance_type" {
        default = "t2.micro"
}

variable "subnet_id" {
        description = "The VPC subnet the instance(s) will be created in"
        default = "subnet-094decf920260ce74"
}

variable "ami_id" {
        description = "The AMI to use"
        default = "ami-092e716d46cd65cac"
}

variable "ami_id_ubuntu" {
        description = "The AMI to use"
        default = "ami-00842a994f5018db8"
}

variable "number_of_instances" {
        description = "number of instances to be created"
        default = 1
}

variable "ami_key_pair_name" {
        default = "controller_key"
}