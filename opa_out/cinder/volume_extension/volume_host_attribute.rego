package volume_extension.volume_host_attribute

import data.cinder_lib

# List or show volume with host attribute.
# GET  /volumes/{volume_id}
# GET  /volumes/detail
# "volume_extension:volume_host_attribute": "rule:admin_api"

allow if {
	cinder_lib.admin_api
}
