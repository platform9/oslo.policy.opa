package identity_create_domain_config_test

import data.identity.create_domain_config

test_create_domain_config_0 if create_domain_config.allow with input as {"credentials": {"roles": ["admin"]}}
test_create_domain_config_1 if create_domain_config.allow with input as {"credentials": {"is_admin": 1}}
