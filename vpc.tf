resource "aws_vpc" "eht_vpc" {
    cidr_block=var.cidr_block
    enable_dns_hostnames="true"
    enable_dns_support="true"

    tags=merge(
        {
            Name=var.vpc_name
            Environment=var.environment
            project=var.project_name
        }
    )
  
}
