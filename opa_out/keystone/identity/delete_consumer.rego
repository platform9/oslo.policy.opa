package identity.delete_consumer

import data.lib

# Delete OAUTH1 consumer.
# DELETE  /v3/OS-OAUTH1/consumers/{consumer_id}
# Intended scope(s): system, project
#"identity:delete_consumer": "rule:admin_required"


allow if {
  lib.admin_required
}

