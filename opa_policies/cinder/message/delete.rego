package message.delete

import data.cinder_lib

# Delete message.
# DELETE  /messages/{message_id}
# "message:delete": "rule:xena_system_admin_or_project_member"

allow if {
	cinder_lib.xena_system_admin_or_project_member
}
