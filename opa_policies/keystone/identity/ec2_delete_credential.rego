package identity.ec2_delete_credential

import data.keystone_lib

# Delete ec2 credential.
# DELETE  /v3/users/{user_id}/credentials/OS-EC2/{credential_id}
# Intended scope(s): system, project
# "identity:ec2_delete_credential": "(rule:admin_required) or user_id:%(target.credential.user_id)s"

allow if {
	# rule:admin_required
	keystone_lib.admin_required
}

allow if {
	# user_id:%(target.credential.user_id)s
	input.credentials.user_id == input.target["target.credential.user_id"]
}
