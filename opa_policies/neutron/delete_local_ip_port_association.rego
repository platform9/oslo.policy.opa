package delete_local_ip_port_association

import data.neutron_lib

# Delete a Local IP port association
# DELETE  /local_ips/{local_ip_id}/port_associations/{fixed_port_id}
# Intended scope(s): project
# Target attrs: description, domain_id, id, ip_mode, local_ip_address, local_port_id, name, network_id, project_id
# "delete_local_ip_port_association": "(rule:admin_only) or (role:member and rule:ext_parent_owner)"

allow if {
	# rule:admin_only
	neutron_lib.admin_only
}

allow if {
	member_and_ext_parent_owner
}

# (role:member and rule:ext_parent_owner)
member_and_ext_parent_owner if {
	"member" in input.credentials.roles
	neutron_lib.ext_parent_owner
}
