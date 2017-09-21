// Output ID of sg_plex Security Group we made
output "security_group_id_plex" {
  value = "${aws_security_group.main_security_group.id}"
}
