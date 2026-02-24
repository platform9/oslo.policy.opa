package volume_extension_capabilities_test

import data.volume_extension.capabilities

test_capabilities_0 if capabilities.allow with input as {"credentials": {"is_admin": true}}
test_capabilities_1 if capabilities.allow with input as {"credentials": {"roles": ["admin"], "is_admin_project": true}}
