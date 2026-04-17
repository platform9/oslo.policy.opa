package identity.authorize_request_token

import data.keystone_lib

# Authorize OAUTH1 request token.
# PUT  /v3/OS-OAUTH1/authorize/{request_token_id}
# Intended scope(s): project
# "identity:authorize_request_token": "rule:admin_required"

allow if {
	keystone_lib.admin_required
}
