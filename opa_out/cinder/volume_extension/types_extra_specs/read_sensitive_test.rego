package volume_extension_types_extra_specs_read_sensitive_test

import data.volume_extension.types_extra_specs.read_sensitive

test_read_sensitive_0 if read_sensitive.allow with input as {"credentials": {"is_admin": true}}
test_read_sensitive_1 if read_sensitive.allow with input as {"credentials": {"roles": ["admin"], "is_admin_project": true}}
