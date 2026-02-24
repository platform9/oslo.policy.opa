package volume_extension.volume_actions.unreserve

import data.lib

# Unmark volume as reserved.
# POST  /volumes/{volume_id}/action (os-unreserve)
#"volume_extension:volume_actions:unreserve": "rule:xena_system_admin_or_project_member"


allow if {
  lib.xena_system_admin_or_project_member
}

