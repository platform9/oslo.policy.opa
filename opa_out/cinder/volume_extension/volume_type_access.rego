package volume_extension.volume_type_access

import data.lib

# Adds the boolean field 'os-volume-type-access:is_public' to the
# responses for these API calls.  The ability to make these calls is
# governed by other policies.
# GET  /types
# GET  /types/{type_id}
# POST  /types
#"volume_extension:volume_type_access": "rule:xena_system_admin_or_project_member"


allow if {
  lib.xena_system_admin_or_project_member
}

