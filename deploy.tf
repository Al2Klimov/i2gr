resource "openstack_compute_instance_v2" "YOUR_PREFIX_HERE-helper" {
	name = "YOUR_PREFIX_HERE-helper"
	image_name = "CentOS 7"
	flavor_name = "s1.large"
	block_device {
		uuid = "${var.openstack_image}"
		source_type = "image"
		boot_index = 0
		destination_type = "volume"
		volume_size = 75
		delete_on_termination = true
	}
	network {
		name = "${var.tenant_network}"
	}
	security_groups = [ "default" ]
	key_pair = "${var.openstack_keypair}"
}

resource "openstack_compute_instance_v2" "YOUR_PREFIX_HERE-master" {
	count = 2
	name = "YOUR_PREFIX_HERE-master${count.index + 1}"
	image_name = "CentOS 7"
	flavor_name = "s1.xxlarge"
	block_device {
		uuid = "${var.openstack_image}"
		source_type = "image"
		boot_index = 0
		destination_type = "volume"
		volume_size = 75
		delete_on_termination = true
	}
	network {
		name = "${var.tenant_network}"
	}
	security_groups = [ "default" ]
	key_pair = "${var.openstack_keypair}"
}
