package message.get

import data.cinder_lib

# Show message.
# GET  /messages/{message_id}
# "message:get": "rule:xena_system_admin_or_project_reader"

allow if {
	cinder_lib.xena_system_admin_or_project_reader
}
