package volume_extension.hosts

import data.lib

# List, update or show hosts for a project.
# GET  /os-hosts
# PUT  /os-hosts/{host_name}
# GET  /os-hosts/{host_id}
#"volume_extension:hosts": "rule:admin_api"


allow if {
  lib.admin_api
}

