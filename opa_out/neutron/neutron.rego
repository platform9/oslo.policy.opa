package neutron_lib

# Domain membership: caller and target resource belong to the same domain.
# target.domain_id is populated by the service enforcement layer.
same_domain if {
	input.credentials.system_scope == "all"
}

same_domain if {
	input.credentials.project_domain_id == input.target.domain_id
}

same_domain if {
	input.credentials.domain_id == input.target.domain_id
}

context_is_admin if {
	"admin" in input.credentials.roles
	same_domain
}

service_api if {
	"service" in input.credentials.roles
}

owner if {
	input.target.tenant_id == input.credentials.tenant_id
	same_domain
}

admin_or_owner if {
	# rule:context_is_admin
	context_is_admin
}

admin_or_owner if {
	# rule:owner
	owner
}

context_is_advsvc if {
	"advsvc" in input.credentials.roles
}

admin_or_network_owner if {
	# rule:context_is_admin
	context_is_admin
}

admin_or_network_owner if {
	# tenant_id:%(network:tenant_id)s
	input.target["network:tenant_id"] == input.credentials.tenant_id
	same_domain
}

admin_owner_or_network_owner if {
	# rule:owner
	owner
}

admin_owner_or_network_owner if {
	# rule:admin_or_network_owner
	admin_or_network_owner
}

network_owner if {
	input.target["network:tenant_id"] == input.credentials.tenant_id
	same_domain
}

admin_only if {
	context_is_admin
}

regular_user if {}

shared if {
	input.target["networks:shared"] == true
}

dflt if {
	admin_or_owner
}

admin_or_ext_parent_owner if {
	# rule:context_is_admin
	context_is_admin
}

admin_or_ext_parent_owner if {
	# tenant_id:%(ext_parent:tenant_id)s
	input.target["ext_parent:tenant_id"] == input.credentials.tenant_id
	same_domain
}

ext_parent_owner if {
	input.target["ext_parent:tenant_id"] == input.credentials.tenant_id
	same_domain
}

sg_owner if {
	input.target["security_group:tenant_id"] == input.credentials.tenant_id
	same_domain
}

shared_address_groups if {
	input.target.shared
}

shared_address_scopes if {
	input.target.shared
}

get_flavor_service_profile if {
	# rule:admin_only
	admin_only
}

get_flavor_service_profile if {
	reader_and_creds_project_id_eq_input_project_id
}

# (role:reader and project_id:%(project_id)s)
reader_and_creds_project_id_eq_input_project_id if {
	"reader" in input.credentials.roles
	input.credentials.project_id == input.target.project_id
	same_domain
}

external if {
	input.target["router:external"]
}

network_device if {
	regex.match("^network:", input.target.device_owner)
}

admin_or_data_plane_int if {
	# rule:context_is_admin
	context_is_admin
}

admin_or_data_plane_int if {
	# role:data_plane_integrator
	"data_plane_integrator" in input.credentials.roles
}

shared_qos_policy if {
	input.target.shared
}

restrict_wildcard if {
	not_field_rbac_policy_target_tenant_any_and_not_field_rbac_policy_target_project_any
}

restrict_wildcard if {
	# rule:admin_only
	admin_only
}

# (not field:rbac_policy:target_tenant:* and not field:rbac_policy:target_project:*)
not_field_rbac_policy_target_tenant_any_and_not_field_rbac_policy_target_project_any if {
	not input.target.target_tenant == "*"
	not input.target.target_project == "*"
}

admin_or_sg_owner if {
	# rule:context_is_admin
	context_is_admin
}

admin_or_sg_owner if {
	# tenant_id:%(security_group:tenant_id)s
	input.target["security_group:tenant_id"] == input.credentials.tenant_id
	same_domain
}

admin_owner_or_sg_owner if {
	# rule:owner
	owner
}

admin_owner_or_sg_owner if {
	# rule:admin_or_sg_owner
	admin_or_sg_owner
}

shared_security_group if {
	input.target.shared
}

rule_dflt_sg if {
	input.target.belongs_to_default_sg
}

external_network if {
	input.target["router:external"]
}

shared_subnetpools if {
	input.target.shared
}

create_vpnservice if {
	# rule:admin_only
	admin_only
}

create_vpnservice if {
	member_and_creds_project_id_eq_input_project_id
}

# (role:member and project_id:%(project_id)s)
member_and_creds_project_id_eq_input_project_id if {
	"member" in input.credentials.roles
	input.credentials.project_id == input.target.project_id
	same_domain
}

get_tap_mirror if {
	# rule:admin_only
	admin_only
}

get_tap_mirror if {
	reader_and_creds_project_id_eq_input_project_id
}

# (role:reader and project_id:%(project_id)s)
reader_and_creds_project_id_eq_input_project_id if {
	"reader" in input.credentials.roles
	input.credentials.project_id == input.target.project_id
	same_domain
}

create_tap_service if {
	admin_or_owner
}

delete_vpnservice if {
	# rule:admin_only
	admin_only
}

delete_vpnservice if {
	member_and_creds_project_id_eq_input_project_id
}

# (role:member and project_id:%(project_id)s)
member_and_creds_project_id_eq_input_project_id if {
	"member" in input.credentials.roles
	input.credentials.project_id == input.target.project_id
	same_domain
}

create_ikepolicy if {
	# rule:admin_only
	admin_only
}

create_ikepolicy if {
	member_and_creds_project_id_eq_input_project_id
}

# (role:member and project_id:%(project_id)s)
member_and_creds_project_id_eq_input_project_id if {
	"member" in input.credentials.roles
	input.credentials.project_id == input.target.project_id
	same_domain
}

delete_ipsecpolicy if {
	# rule:admin_only
	admin_only
}

delete_ipsecpolicy if {
	member_and_creds_project_id_eq_input_project_id
}

# (role:member and project_id:%(project_id)s)
member_and_creds_project_id_eq_input_project_id if {
	"member" in input.credentials.roles
	input.credentials.project_id == input.target.project_id
	same_domain
}

delete_ikepolicy if {
	# rule:admin_only
	admin_only
}

delete_ikepolicy if {
	member_and_creds_project_id_eq_input_project_id
}

# (role:member and project_id:%(project_id)s)
member_and_creds_project_id_eq_input_project_id if {
	"member" in input.credentials.roles
	input.credentials.project_id == input.target.project_id
	same_domain
}

get_ikepolicy if {
	# rule:admin_only
	admin_only
}

get_ikepolicy if {
	member_and_creds_project_id_eq_input_project_id
}

# (role:member and project_id:%(project_id)s)
member_and_creds_project_id_eq_input_project_id if {
	"member" in input.credentials.roles
	input.credentials.project_id == input.target.project_id
	same_domain
}

get_endpoint_group if {
	# rule:admin_only
	admin_only
}

get_endpoint_group if {
	member_and_creds_project_id_eq_input_project_id
}

# (role:member and project_id:%(project_id)s)
member_and_creds_project_id_eq_input_project_id if {
	"member" in input.credentials.roles
	input.credentials.project_id == input.target.project_id
	same_domain
}

create_tap_mirror if {
	# rule:admin_only
	admin_only
}

create_tap_mirror if {
	member_and_creds_project_id_eq_input_project_id
}

# (role:member and project_id:%(project_id)s)
member_and_creds_project_id_eq_input_project_id if {
	"member" in input.credentials.roles
	input.credentials.project_id == input.target.project_id
	same_domain
}

create_ipsecpolicy if {
	# rule:admin_only
	admin_only
}

create_ipsecpolicy if {
	member_and_creds_project_id_eq_input_project_id
}

# (role:member and project_id:%(project_id)s)
member_and_creds_project_id_eq_input_project_id if {
	"member" in input.credentials.roles
	input.credentials.project_id == input.target.project_id
	same_domain
}

delete_tap_mirror if {
	# rule:admin_only
	admin_only
}

delete_tap_mirror if {
	member_and_creds_project_id_eq_input_project_id
}

# (role:member and project_id:%(project_id)s)
member_and_creds_project_id_eq_input_project_id if {
	"member" in input.credentials.roles
	input.credentials.project_id == input.target.project_id
	same_domain
}

get_tap_flow if {
	admin_or_owner
}

update_endpoint_group if {
	# rule:admin_only
	admin_only
}

update_endpoint_group if {
	member_and_creds_project_id_eq_input_project_id
}

# (role:member and project_id:%(project_id)s)
member_and_creds_project_id_eq_input_project_id if {
	"member" in input.credentials.roles
	input.credentials.project_id == input.target.project_id
	same_domain
}

update_ipsec_site_connection if {
	# rule:admin_only
	admin_only
}

update_ipsec_site_connection if {
	member_and_creds_project_id_eq_input_project_id
}

# (role:member and project_id:%(project_id)s)
member_and_creds_project_id_eq_input_project_id if {
	"member" in input.credentials.roles
	input.credentials.project_id == input.target.project_id
	same_domain
}

update_tap_mirror if {
	# rule:admin_only
	admin_only
}

update_tap_mirror if {
	member_and_creds_project_id_eq_input_project_id
}

# (role:member and project_id:%(project_id)s)
member_and_creds_project_id_eq_input_project_id if {
	"member" in input.credentials.roles
	input.credentials.project_id == input.target.project_id
	same_domain
}

create_ipsec_site_connection if {
	# rule:admin_only
	admin_only
}

create_ipsec_site_connection if {
	member_and_creds_project_id_eq_input_project_id
}

# (role:member and project_id:%(project_id)s)
member_and_creds_project_id_eq_input_project_id if {
	"member" in input.credentials.roles
	input.credentials.project_id == input.target.project_id
	same_domain
}

delete_ipsec_site_connection if {
	# rule:admin_only
	admin_only
}

delete_ipsec_site_connection if {
	member_and_creds_project_id_eq_input_project_id
}

# (role:member and project_id:%(project_id)s)
member_and_creds_project_id_eq_input_project_id if {
	"member" in input.credentials.roles
	input.credentials.project_id == input.target.project_id
	same_domain
}

global_admin if {
	"admin" in input.credentials.roles
	input.credentials.domain_id == "default"
	same_domain
}

delete_tap_service if {
	admin_or_owner
}

update_ikepolicy if {
	# rule:admin_only
	admin_only
}

update_ikepolicy if {
	member_and_creds_project_id_eq_input_project_id
}

# (role:member and project_id:%(project_id)s)
member_and_creds_project_id_eq_input_project_id if {
	"member" in input.credentials.roles
	input.credentials.project_id == input.target.project_id
	same_domain
}

get_tap_service if {
	admin_or_owner
}

update_ipsecpolicy if {
	# rule:admin_only
	admin_only
}

update_ipsecpolicy if {
	member_and_creds_project_id_eq_input_project_id
}

# (role:member and project_id:%(project_id)s)
member_and_creds_project_id_eq_input_project_id if {
	"member" in input.credentials.roles
	input.credentials.project_id == input.target.project_id
	same_domain
}

create_tap_flow if {
	admin_or_owner
}

get_vpnservice if {
	# rule:admin_only
	admin_only
}

get_vpnservice if {
	member_and_creds_project_id_eq_input_project_id
}

# (role:member and project_id:%(project_id)s)
member_and_creds_project_id_eq_input_project_id if {
	"member" in input.credentials.roles
	input.credentials.project_id == input.target.project_id
	same_domain
}

delete_endpoint_group if {
	# rule:admin_only
	admin_only
}

delete_endpoint_group if {
	member_and_creds_project_id_eq_input_project_id
}

# (role:member and project_id:%(project_id)s)
member_and_creds_project_id_eq_input_project_id if {
	"member" in input.credentials.roles
	input.credentials.project_id == input.target.project_id
	same_domain
}

delete_tap_flow if {
	admin_or_owner
}

get_ipsecpolicy if {
	# rule:admin_only
	admin_only
}

get_ipsecpolicy if {
	member_and_creds_project_id_eq_input_project_id
}

# (role:member and project_id:%(project_id)s)
member_and_creds_project_id_eq_input_project_id if {
	"member" in input.credentials.roles
	input.credentials.project_id == input.target.project_id
	same_domain
}

create_endpoint_group if {
	# rule:admin_only
	admin_only
}

create_endpoint_group if {
	member_and_creds_project_id_eq_input_project_id
}

# (role:member and project_id:%(project_id)s)
member_and_creds_project_id_eq_input_project_id if {
	"member" in input.credentials.roles
	input.credentials.project_id == input.target.project_id
	same_domain
}

update_tap_flow if {
	admin_or_owner
}

update_vpnservice if {
	# rule:admin_only
	admin_only
}

update_vpnservice if {
	member_and_creds_project_id_eq_input_project_id
}

# (role:member and project_id:%(project_id)s)
member_and_creds_project_id_eq_input_project_id if {
	"member" in input.credentials.roles
	input.credentials.project_id == input.target.project_id
	same_domain
}

get_ipsec_site_connection if {
	# rule:admin_only
	admin_only
}

get_ipsec_site_connection if {
	member_and_creds_project_id_eq_input_project_id
}

# (role:member and project_id:%(project_id)s)
member_and_creds_project_id_eq_input_project_id if {
	"member" in input.credentials.roles
	input.credentials.project_id == input.target.project_id
	same_domain
}

update_tap_service if {
	admin_or_owner
}
