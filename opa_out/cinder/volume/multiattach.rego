package volume.multiattach

import data.lib

# Create multiattach capable volume.
# POST  /volumes
#"volume:multiattach": "rule:xena_system_admin_or_project_member"


allow if {
  lib.xena_system_admin_or_project_member
}

