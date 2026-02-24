package volume_extension.types_extra_specs.index

import data.lib

# List type extra specs.
# GET  /types/{type_id}/extra_specs
#"volume_extension:types_extra_specs:index": "rule:xena_system_admin_or_project_reader"


allow if {
  lib.xena_system_admin_or_project_reader
}

