locals {
  ## Private Subnets
  #private_subnet_ids = { for k, v in module.vpc["main"].private_subnets : k => tomap({ "id" = v.id, "availability_zone" = v.availability_zone }) }
  #private_subnet_ids = [for k, v in module.vpc["main"].private_subnets : v.id]
  subnet_ids = {
    public = "subnet-091b2024261b704f3"
  }

}

