variable "openstack_auth_url" {
	description = "The endpoint url to connect to OpenStack."
	default = "https://cloud.netways.de:5000/v3/"
}

variable "openstack_tenant_name" {
	description = "The name of the Tenant."
	#default = ""
}

variable "openstack_user_name" {
	description = "The username for the Tenant."
	#default = "aklimov"
}

variable "openstack_password" {
	description = "The password for the Tenant."
}

variable "tenant_network" {
	description = "The network to be used."
	#default = ""
}

variable "openstack_keypair" {
	description = "The keypair to be used."
	#default = ""
}

variable "openstack_image" {
	#default = "a330eb9c-b947-431f-bfbe-825345f4f619"
}
