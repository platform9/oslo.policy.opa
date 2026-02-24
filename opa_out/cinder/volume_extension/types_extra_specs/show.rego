package volume_extension.types_extra_specs.show

import data.lib

# Show one specified type extra specs.
# GET  /types/{type_id}/extra_specs/{extra_spec_key}
#"volume_extension:types_extra_specs:show": "rule:xena_system_admin_or_project_reader"


allow if {
  lib.xena_system_admin_or_project_reader
}

