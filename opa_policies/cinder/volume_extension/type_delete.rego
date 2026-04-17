package volume_extension.type_delete

import data.cinder_lib

# Delete volume type.
# DELETE  /types
# "volume_extension:type_delete": "rule:admin_api"

allow if {
	cinder_lib.admin_api
}
