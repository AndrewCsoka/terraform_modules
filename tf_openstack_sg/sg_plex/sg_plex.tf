//
// Module: tf_openstack_sg/sg_plex
//
//

resource "openstack_compute_secgroup_v2" "plex_security_group" {
  name        = "${var.security_group_name}"
  description = "tf-sg-${var.security_group_name}"
  region      = "${var.region}"

  rule {
    from_port   = 3005
    to_port     = 3005
    ip_protocol = "tcp"
    cidr        = "${var.access_cidr}"
  }

  rule {
    from_port   = 8324
    to_port     = 8324
    ip_protocol = "tcp"
    cidr        = "${var.access_cidr}"
  }

  rule {
    from_port   = 1900
    to_port     = 1900
    ip_protocol = "udp"
    cidr        = "${var.access_cidr}"
  }

  rule {
    from_port   = 32410
    to_port     = 32410
    ip_protocol = "udp"
    cidr        = "${var.access_cidr}"
  }

  rule {
    from_port   = 32400
    to_port     = 32400
    ip_protocol = "tcp"
    cidr        = "${var.access_cidr}"
  }

  rule {
    from_port   = 32412
    to_port     = 32414
    ip_protocol = "udp"
    cidr        = "${var.access_cidr}"
  }

  rule {
    from_port   = 32469
    to_port     = 32469
    ip_protocol = "tcp"
    cidr        = "${var.access_cidr}"
  }

}
