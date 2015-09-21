resource "openstack_compute_secgroup_v2" "sg-icmp-ssh" {
  name = "sg-icmp-ssh"
  description = "ICMP and SSH Security groups"
  rule {
    ip_protocol = "tcp"
    from_port = "22"
    to_port = "22"
    cidr = "0.0.0.0/0"
  }
  rule {
    ip_protocol = "icmp"
    from_port = "-1"
    to_port = "-1"
    cidr = "0.0.0.0/0"
  }
}
