// Output ID of sg_plex Security Group we made
output "security_group_id_plex" {
  value = "${openstack_compute_secgroup_v2.main_security_group.id}"
}
