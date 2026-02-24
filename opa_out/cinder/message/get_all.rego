package message.get_all

import data.lib

# List messages.
# GET  /messages
#"message:get_all": "rule:xena_system_admin_or_project_reader"


allow if {
  lib.xena_system_admin_or_project_reader
}

