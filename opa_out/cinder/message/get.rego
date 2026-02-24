package message.get

import data.lib

# Show message.
# GET  /messages/{message_id}
#"message:get": "rule:xena_system_admin_or_project_reader"


allow if {
  lib.xena_system_admin_or_project_reader
}

