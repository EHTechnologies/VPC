resource "aws_subnet" "${var.project_name}_pub_sub_net" {
    cidr_block=var.pub_sub_net_cidr
    vpc_id=aws_vpc.eht_vpc.id
    availability_zone=var.pub_sub_net_az
  
 tags={
     Name=var.sub_net_name
     Environment=var.environment_name
     project=var.project_name
 }
}

resource "aws_subnet" "${var.project_name}_pvt_sub_net" {
    cidr_block=var.pvt_sub_net_cidr
    vpc_id=aws_vpc.eht_vpc.id
    availability_zone=var.pvt_sub_net_az
  
 tags={
     Name=var.sub_net_name
     Environment=var.environment_name
     project=var.project_name
 }
}
