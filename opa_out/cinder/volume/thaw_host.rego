package volume.thaw_host

import data.lib

# Thaw a backend host.
# PUT  /os-services/thaw
#"volume:thaw_host": "rule:admin_api"


allow if {
  lib.admin_api
}

