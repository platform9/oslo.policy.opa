package identity.create_domain_config

import data.keystone_lib

# Create domain configuration.
# PUT  /v3/domains/{domain_id}/config
# Intended scope(s): system, project
# "identity:create_domain_config": "rule:admin_required"

allow if {
	keystone_lib.admin_required
}
