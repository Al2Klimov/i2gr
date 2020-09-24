provider "openstack" {
	auth_url = "${var.openstack_auth_url}"
	tenant_name = "${var.openstack_tenant_name}"
	user_name = "${var.openstack_user_name}"
	password = "${var.openstack_password}"
}
