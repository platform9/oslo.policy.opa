package volume.attachment_delete

import data.lib

# Delete attachment.
# DELETE  /attachments/{attachment_id}
#"volume:attachment_delete": "rule:xena_system_admin_or_project_member"


allow if {
  lib.xena_system_admin_or_project_member
}

