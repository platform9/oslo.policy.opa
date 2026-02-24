package volume_extension.volume_actions.roll_detaching

import data.lib

# Roll back volume status to 'in-use'.
# POST  /volumes/{volume_id}/action (os-roll_detaching)
#"volume_extension:volume_actions:roll_detaching": "rule:xena_system_admin_or_project_member"


allow if {
  lib.xena_system_admin_or_project_member
}

