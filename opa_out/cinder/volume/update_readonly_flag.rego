package volume.update_readonly_flag

import data.lib

# Update a volume's readonly flag.
# POST  /volumes/{volume_id}/action (os-update_readonly_flag)
#"volume:update_readonly_flag": "rule:xena_system_admin_or_project_member"


allow if {
  lib.xena_system_admin_or_project_member
}

