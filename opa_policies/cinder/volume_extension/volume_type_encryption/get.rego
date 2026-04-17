package volume_extension.volume_type_encryption.get

import data.cinder_lib

# Show a volume type's encryption type, show an encryption specs item.
# GET  /types/{type_id}/encryption
# GET  /types/{type_id}/encryption/{key}
# "volume_extension:volume_type_encryption:get": "rule:admin_api"

allow if {
	cinder_lib.admin_api
}
