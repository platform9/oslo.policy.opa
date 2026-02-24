package identity_delete_domain_config_test

import data.identity.delete_domain_config

test_delete_domain_config_0 if delete_domain_config.allow with input as {"credentials": {"roles": ["admin"]}}
test_delete_domain_config_1 if delete_domain_config.allow with input as {"credentials": {"is_admin": 1}}
