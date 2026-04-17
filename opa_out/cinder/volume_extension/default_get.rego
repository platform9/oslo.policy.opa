package volume_extension.dflt_get

import data.cinder_lib

# Get default types.
# GET  /default-types/{project-id}
# "volume_extension:default_get": "rule:admin_api"

allow if {
	cinder_lib.admin_api
}
