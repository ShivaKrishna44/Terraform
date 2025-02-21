/* data sources are used to query existing information from the provider. */

data "aws_ami" "joindevops" {  /* data source block */
    most_recent      = true
    owners           = ["973714476881"]
    filter {
        name   = "name"
        values = ["RHEL-9-DevOps-Practice"]
    }

    filter {
        name   = "root-device-type"
        values = ["ebs"]
    }

    filter {
        name   = "virtualization-type"
        values = ["hvm"]
    }
}

data "aws_vpc" "default" {
  default = true
}

output  "ami_id" {
  value       = data.aws_ami.joindevops.id /*getting id of AMI */
}

output "default_vpc_id" {
    value = data.aws_vpc.default.id /* getting default VPC id */
}