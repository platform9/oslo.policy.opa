package volume_extension.volume_actions.attach

import data.cinder_lib

# Add attachment metadata.
# POST  /volumes/{volume_id}/action (os-attach)
# "volume_extension:volume_actions:attach": "rule:xena_system_admin_or_project_member"

allow if {
	cinder_lib.xena_system_admin_or_project_member
}
