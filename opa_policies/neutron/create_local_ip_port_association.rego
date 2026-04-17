package create_local_ip_port_association

import data.neutron_lib

# Create a Local IP port association
# POST  /local_ips/{local_ip_id}/port_associations
# Intended scope(s): project
# Target attrs: domain_id, project_id, user_id
# "create_local_ip_port_association": "(rule:admin_only) or (role:member and rule:ext_parent_owner)"

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
