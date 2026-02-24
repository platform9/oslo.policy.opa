package volume_extension.volume_actions.initialize_connection

import data.lib

# Initialize volume attachment.
# POST  /volumes/{volume_id}/action (os-initialize_connection)
#"volume_extension:volume_actions:initialize_connection": "rule:xena_system_admin_or_project_member"


allow if {
  lib.xena_system_admin_or_project_member
}

