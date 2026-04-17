package volume_extension.volume_image_metadata.remove

import data.cinder_lib

# Remove specific image metadata from a volume
# POST  /volumes/{volume_id}/action (os-unset_image_metadata)
# "volume_extension:volume_image_metadata:remove": "rule:xena_system_admin_or_project_member"

allow if {
	cinder_lib.xena_system_admin_or_project_member
}
