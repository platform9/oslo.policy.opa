package volume_extension.type_get_all

import data.lib

# List volume types.
# GET  /types/
#"volume_extension:type_get_all": "rule:xena_system_admin_or_project_reader"


allow if {
  lib.xena_system_admin_or_project_reader
}

