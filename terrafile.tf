module "servers" {
  source = "./servers"
  servers = 1
}

output "ip_address" {
  value = module.servers.ip_address
}