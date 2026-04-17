package create_security_group_rule

import data.neutron_lib

# Create a security group rule
# POST  /security-group-rules
# Intended scope(s): project
# Target attrs: belongs_to_default_sg, domain_id, normalized_cidr, remote_address_group_id, security_group:tenant_id
# "create_security_group_rule": "(rule:admin_only) or (role:member and rule:sg_owner)"

allow if {
	# rule:admin_only
	neutron_lib.admin_only
}

allow if {
	member_and_sg_owner
}

# (role:member and rule:sg_owner)
member_and_sg_owner if {
	"member" in input.credentials.roles
	neutron_lib.sg_owner
}
