package identity.delete_identity_provider

import data.keystone_lib

# Delete identity provider.
# DELETE  /v3/OS-FEDERATION/identity_providers/{idp_id}
# Intended scope(s): system, project
# "identity:delete_identity_provider": "rule:admin_required"

allow if {
	keystone_lib.admin_required
}
