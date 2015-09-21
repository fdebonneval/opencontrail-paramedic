output "lb-floatingip" {
  value = "neutron floatingip-associate ${openstack_networking_floatingip_v2.floating-00.id} [VM_PORT_ID]"
}
