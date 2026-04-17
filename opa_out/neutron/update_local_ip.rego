package update_local_ip

import data.neutron_lib

# Update a Local IP
# PUT  /local-ips/{id}
# Intended scope(s): project
# Target attrs: description, domain_id, ext_parent:tenant_id, id, ip_mode, local_ip_address, local_port_id, name, network_id, project_id
# "update_local_ip": "(rule:admin_only) or (role:member and project_id:%(project_id)s)"

allow if {
	# rule:admin_only
	neutron_lib.admin_only
}

allow if {
	member_and_creds_project_id_eq_input_project_id
}

# (role:member and project_id:%(project_id)s)
member_and_creds_project_id_eq_input_project_id if {
	"member" in input.credentials.roles
	input.credentials.project_id == input.target.project_id
	neutron_lib.same_domain
}
