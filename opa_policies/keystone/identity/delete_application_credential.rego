package identity.delete_application_credential

import data.keystone_lib

# Delete an application credential.
# DELETE  /v3/users/{user_id}/application_credentials/{application_credential_id}
# Intended scope(s): system, project
# "identity:delete_application_credential": "rule:admin_or_owner"

allow if {
	keystone_lib.admin_or_owner
}
