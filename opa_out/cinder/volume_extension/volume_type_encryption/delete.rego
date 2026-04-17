package volume_extension.volume_type_encryption.delete

import data.cinder_lib

# Delete volume type encryption.
# DELETE  /types/{type_id}/encryption/{encryption_id}
# "volume_extension:volume_type_encryption:delete": "rule:admin_api"

allow if {
	cinder_lib.admin_api
}
