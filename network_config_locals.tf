locals {
  vpc = {
    vpc_cidr = "10.0.0.0/16"
    vpc_name = "aws-lab"
  }
  public_subnet = {
    subnet_name       = "public"
    subnet_cidr       = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
    availability_zone = ["us-east-1a", "us-east-1b", "us-east-1c"]
  }
  private_subnet = {
    subnet_name       = "private"
    subnet_cidr       = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
    availability_zone = ["us-east-1a", "us-east-1b", "us-east-1c"]
  }
  internetgw = {
    internet_gateway_name = "internet-gateway"
  }
  eip = {
    eip_name = "eip"
  }
  natgw1 = {
    nat_gateway_name  = "nat-gateway"
    connectivity_type = "public"
  }
  public_route_table = {
    route_table_name = "public-route-table"
    route = [
      {
        cidr_block                = "0.0.0.0/0"
        gateway_id                = module.internetgw.id
        nat_gateway_id            = ""
        network_interface_id      = ""
        transit_gateway_id        = ""
        vpc_endpoint_id           = ""
        vpc_peering_connection_id = ""
        local_gateway_id      = ""
      }
    ]
  }
  private_route_table = {
    route_table_name = "private-route-table"
    route = [
      {
        cidr_block                = "0.0.0.0/0"
        nat_gateway_id            = module.natgw1.id
        gateway_id                = ""
        network_interface_id      = ""
        transit_gateway_id        = ""
        vpc_endpoint_id           = ""
        vpc_peering_connection_id = ""
        local_gateway_id      = ""
      }
    ]
  }
}