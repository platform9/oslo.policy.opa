package volume_extension.capabilities

import data.cinder_lib

# Show backend capabilities.
# GET  /capabilities/{host_name}
# "volume_extension:capabilities": "rule:admin_api"

allow if {
	cinder_lib.admin_api
}
