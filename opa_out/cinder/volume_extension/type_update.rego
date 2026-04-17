package volume_extension.type_update

import data.cinder_lib

# Update volume type.
# PUT  /types
# "volume_extension:type_update": "rule:admin_api"

allow if {
	cinder_lib.admin_api
}
