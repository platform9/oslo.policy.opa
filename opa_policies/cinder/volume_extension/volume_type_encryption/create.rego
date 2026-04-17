package volume_extension.volume_type_encryption.create

import data.cinder_lib

# Create volume type encryption.
# POST  /types/{type_id}/encryption
# "volume_extension:volume_type_encryption:create": "rule:admin_api"

allow if {
	cinder_lib.admin_api
}
