# Networks creation
resource "openstack_networking_network_v2" "north" {
  name = "north"
  admin_state_up = "true"
}

resource "openstack_networking_subnet_v2" "subnet-north" {
  network_id = "${openstack_networking_network_v2.north.id}"
  cidr = "10.10.10.0/24"
  ip_version = 4
}

resource "openstack_networking_router_v2" "router-north" {
  name = "router-north"
  admin_state_up = "true"
  external_gateway = "6ea98324-0f14-49f6-97c0-885d1b8dc517"
}

resource "openstack_networking_router_interface_v2" "router-north" {
    router_id = "${openstack_networking_router_v2.router-north.id}"
    subnet_id = "${openstack_networking_subnet_v2.subnet-north.id}"
}

resource "openstack_networking_floatingip_v2" "floating-00" {
  region = "fr1"
  pool = "public"
}
