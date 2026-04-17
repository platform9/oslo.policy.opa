package volume_extension.volume_image_metadata.show

import data.cinder_lib

# Include a volume's image metadata in volume detail responses.  The
# ability to make these calls is governed by other policies.
# GET  /volumes/detail
# GET  /volumes/{volume_id}
# "volume_extension:volume_image_metadata:show": "rule:xena_system_admin_or_project_reader"

allow if {
	cinder_lib.xena_system_admin_or_project_reader
}
