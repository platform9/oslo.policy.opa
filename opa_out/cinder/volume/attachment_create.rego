package volume.attachment_create

import data.lib

# Create attachment.
# POST  /attachments
#"volume:attachment_create": "rule:xena_system_admin_or_project_member"


allow if {
  lib.xena_system_admin_or_project_member
}

