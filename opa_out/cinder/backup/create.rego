package backup.create

import data.lib

# Create backup.
# POST  /backups
#"backup:create": "rule:xena_system_admin_or_project_member"


allow if {
  lib.xena_system_admin_or_project_member
}

