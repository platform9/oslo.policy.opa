package volume_extension.volume_image_metadata.set

import data.cinder_lib

# Set image metadata for a volume
# POST  /volumes/{volume_id}/action (os-set_image_metadata)
# "volume_extension:volume_image_metadata:set": "rule:xena_system_admin_or_project_member"

allow if {
	cinder_lib.xena_system_admin_or_project_member
}
