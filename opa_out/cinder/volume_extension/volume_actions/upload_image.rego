package volume_extension.volume_actions.upload_image

import data.cinder_lib

# Upload a volume to image.
# POST  /volumes/{volume_id}/action (os-volume_upload_image)
# "volume_extension:volume_actions:upload_image": "rule:xena_system_admin_or_project_member"

allow if {
	cinder_lib.xena_system_admin_or_project_member
}
