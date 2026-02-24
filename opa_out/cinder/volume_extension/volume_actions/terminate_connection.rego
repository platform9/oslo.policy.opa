package volume_extension.volume_actions.terminate_connection

import data.lib

# Terminate volume attachment.
# POST  /volumes/{volume_id}/action (os-terminate_connection)
#"volume_extension:volume_actions:terminate_connection": "rule:xena_system_admin_or_project_member"


allow if {
  lib.xena_system_admin_or_project_member
}

