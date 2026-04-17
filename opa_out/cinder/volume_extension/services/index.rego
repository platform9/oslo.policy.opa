package volume_extension.services.index

import data.cinder_lib

# List all services.
# GET  /os-services
# "volume_extension:services:index": "rule:admin_api"

allow if {
	cinder_lib.admin_api
}
