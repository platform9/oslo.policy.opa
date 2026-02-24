package volume.retype

import data.lib

# Retype a volume.
# POST  /volumes/{volume_id}/action (os-retype)
#"volume:retype": "rule:xena_system_admin_or_project_member"


allow if {
  lib.xena_system_admin_or_project_member
}

