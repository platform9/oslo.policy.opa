package limits_extension.used_limits

import data.lib

# Show limits with used limit attributes.
# GET  /limits
#"limits_extension:used_limits": "rule:xena_system_admin_or_project_reader"


allow if {
  lib.xena_system_admin_or_project_reader
}

