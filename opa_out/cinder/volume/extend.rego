package volume.extend

import data.lib

# Extend a volume.
# POST  /volumes/{volume_id}/action (os-extend)
#"volume:extend": "rule:xena_system_admin_or_project_member"


allow if {
  lib.xena_system_admin_or_project_member
}

