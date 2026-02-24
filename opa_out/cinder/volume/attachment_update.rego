package volume.attachment_update

import data.lib

# Update attachment.
# PUT  /attachments/{attachment_id}
#"volume:attachment_update": "rule:xena_system_admin_or_project_member"


allow if {
  lib.xena_system_admin_or_project_member
}

