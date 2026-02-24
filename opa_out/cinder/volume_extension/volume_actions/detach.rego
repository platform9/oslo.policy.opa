package volume_extension.volume_actions.detach

import data.lib

# Clear attachment metadata.
# POST  /volumes/{volume_id}/action (os-detach)
#"volume_extension:volume_actions:detach": "rule:xena_system_admin_or_project_member"


allow if {
  lib.xena_system_admin_or_project_member
}

