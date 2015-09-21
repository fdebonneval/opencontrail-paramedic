# Create bastion
resource "openstack_compute_instance_v2" "bastion" {
  name = "bastion"
  network {
    uuid = "${openstack_networking_network_v2.north.id}"
  }
  floating_ip = "${openstack_networking_floatingip_v2.floating-00.address}"
  image_id = "ae3082cb-fac1-46b1-97aa-507aaa8f184f"
  flavor_id = "17"
  key_pair = "foucault"
  security_groups = ["${openstack_compute_secgroup_v2.sg-icmp-ssh.name}"]
  count = 1
}
