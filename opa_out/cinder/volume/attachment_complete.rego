package volume.attachment_complete

import data.lib

# Mark a volume attachment process as completed (in-use)
# POST  /attachments/{attachment_id}/action (os-complete)
#"volume:attachment_complete": "rule:xena_system_admin_or_project_member"


allow if {
  lib.xena_system_admin_or_project_member
}

