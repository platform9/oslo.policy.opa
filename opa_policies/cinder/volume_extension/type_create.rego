package volume_extension.type_create

import data.cinder_lib

# Create volume type.
# POST  /types
# "volume_extension:type_create": "rule:admin_api"

allow if {
	cinder_lib.admin_api
}
