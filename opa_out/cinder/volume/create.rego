package volume.create

import data.lib

# Create volume.
# POST  /volumes
#"volume:create": "rule:xena_system_admin_or_project_member"


allow if {
  lib.xena_system_admin_or_project_member
}

