package workers.cleanup

import data.lib

# Clean up workers.
# POST  /workers/cleanup
#"workers:cleanup": "rule:admin_api"


allow if {
  lib.admin_api
}

