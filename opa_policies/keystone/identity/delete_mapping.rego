package identity.delete_mapping

import data.keystone_lib

# Delete a federated mapping.
# DELETE  /v3/OS-FEDERATION/mappings/{mapping_id}
# Intended scope(s): system, project
# "identity:delete_mapping": "rule:admin_required"

allow if {
	keystone_lib.admin_required
}
