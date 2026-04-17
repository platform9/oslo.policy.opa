package identity.delete_credential

import data.keystone_lib

# Delete credential.
# DELETE  /v3/credentials/{credential_id}
# Intended scope(s): system, domain, project
# Target attrs: target.credential.encrypted_blob, target.credential.extra, target.credential.id, target.credential.key_hash, target.credential.project_id, target.credential.type, target.credential.user_id
# "identity:delete_credential": "(rule:admin_required) or user_id:%(target.credential.user_id)s"

allow if {
	# rule:admin_required
	keystone_lib.admin_required
}

allow if {
	# user_id:%(target.credential.user_id)s
	input.credentials.user_id == input.target["target.credential.user_id"]
}
