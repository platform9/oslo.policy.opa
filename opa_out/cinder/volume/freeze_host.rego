package volume.freeze_host

import data.lib

# Freeze a backend host.
# PUT  /os-services/freeze
#"volume:freeze_host": "rule:admin_api"


allow if {
  lib.admin_api
}

