package message.get_all

import data.cinder_lib

# List messages.
# GET  /messages
# "message:get_all": "rule:xena_system_admin_or_project_reader"

allow if {
	cinder_lib.xena_system_admin_or_project_reader
}
