package volume_extension.volume_actions.reserve

import data.lib

# Mark volume as reserved.
# POST  /volumes/{volume_id}/action (os-reserve)
#"volume_extension:volume_actions:reserve": "rule:xena_system_admin_or_project_member"


allow if {
  lib.xena_system_admin_or_project_member
}

