package volume_extension.volume_tenant_attribute

import data.lib

# List or show volume with tenant attribute.
# GET  /volumes/{volume_id}
# GET  /volumes/detail
#"volume_extension:volume_tenant_attribute": "rule:xena_system_admin_or_project_reader"


allow if {
  lib.xena_system_admin_or_project_reader
}

