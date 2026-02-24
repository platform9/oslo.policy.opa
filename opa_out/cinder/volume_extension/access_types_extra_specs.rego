package volume_extension.access_types_extra_specs

import data.lib

# Include the volume type's extra_specs attribute in the volume type
# list or show requests.  The ability to make these calls is governed
# by other policies.
# GET  /types/{type_id}
# GET  /types
#"volume_extension:access_types_extra_specs": "rule:xena_system_admin_or_project_reader"


allow if {
  lib.xena_system_admin_or_project_reader
}

