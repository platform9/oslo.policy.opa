package identity.authorize_request_token

import data.lib

# Authorize OAUTH1 request token.
# PUT  /v3/OS-OAUTH1/authorize/{request_token_id}
# Intended scope(s): project
#"identity:authorize_request_token": "rule:admin_required"


allow if {
  lib.admin_required
}

