package volume_extension.type_get

import data.lib

# Get one specific volume type.
# GET  /types/{type_id}
#"volume_extension:type_get": "rule:xena_system_admin_or_project_reader"


allow if {
  lib.xena_system_admin_or_project_reader
}

