package identity.create_mapping

import data.keystone_lib

# Create a new federated mapping containing one or more sets of rules.
# PUT  /v3/OS-FEDERATION/mappings/{mapping_id}
# Intended scope(s): system, project
# "identity:create_mapping": "rule:admin_required"

allow if {
	keystone_lib.admin_required
}
