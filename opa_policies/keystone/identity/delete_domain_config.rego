package identity.delete_domain_config

import data.keystone_lib

# Delete domain configuration for either a domain, specific group or a
# specific option in a group.
# DELETE  /v3/domains/{domain_id}/config
# DELETE  /v3/domains/{domain_id}/config/{group}
# DELETE  /v3/domains/{domain_id}/config/{group}/{option}
# Intended scope(s): system, project
# "identity:delete_domain_config": "rule:admin_required"

allow if {
	keystone_lib.admin_required
}
