package volume_extension.volume_type_encryption.update

import data.cinder_lib

# Update volume type encryption.
# PUT  /types/{type_id}/encryption/{encryption_id}
# "volume_extension:volume_type_encryption:update": "rule:admin_api"

allow if {
	cinder_lib.admin_api
}
