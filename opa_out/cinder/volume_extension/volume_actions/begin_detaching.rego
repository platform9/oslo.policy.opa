package volume_extension.volume_actions.begin_detaching

import data.cinder_lib

# Begin detach volumes.
# POST  /volumes/{volume_id}/action (os-begin_detaching)
# "volume_extension:volume_actions:begin_detaching": "rule:xena_system_admin_or_project_member"

allow if {
	cinder_lib.xena_system_admin_or_project_member
}
