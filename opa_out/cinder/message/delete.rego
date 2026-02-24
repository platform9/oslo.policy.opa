package message.delete

import data.lib

# Delete message.
# DELETE  /messages/{message_id}
#"message:delete": "rule:xena_system_admin_or_project_member"


allow if {
  lib.xena_system_admin_or_project_member
}

