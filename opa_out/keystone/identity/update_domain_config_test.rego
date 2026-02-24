package identity_update_domain_config_test

import data.identity.update_domain_config

test_update_domain_config_0 if update_domain_config.allow with input as {"credentials": {"roles": ["admin"]}}
test_update_domain_config_1 if update_domain_config.allow with input as {"credentials": {"is_admin": 1}}
