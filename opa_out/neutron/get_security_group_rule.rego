package get_security_group_rule

import data.neutron_lib

# Get a security group rule
# GET  /security-group-rules
# GET  /security-group-rules/{id}
# Intended scope(s): project
# Target attrs: belongs_to_default_sg, domain_id, normalized_cidr, remote_address_group_id, security_group:tenant_id
# "get_security_group_rule": "(rule:admin_only) or (role:reader and rule:sg_owner)"

allow if {
	# rule:admin_only
	neutron_lib.admin_only
}

allow if {
	reader_and_sg_owner
}

# (role:reader and rule:sg_owner)
reader_and_sg_owner if {
	"reader" in input.credentials.roles
	neutron_lib.sg_owner
}
