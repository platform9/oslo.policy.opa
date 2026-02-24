package volume_extension.types_extra_specs.read_sensitive

import data.lib

# Include extra_specs fields that may reveal sensitive information
# about the deployment that should not be exposed to end users in
# various volume-type responses that show extra_specs. The ability to
# make these calls is governed by other policies.
# GET  /types
# GET  /types/{type_id}
# GET  /types/{type_id}/extra_specs
# GET  /types/{type_id}/extra_specs/{extra_spec_key}
#"volume_extension:types_extra_specs:read_sensitive": "rule:admin_api"


allow if {
  lib.admin_api
}

