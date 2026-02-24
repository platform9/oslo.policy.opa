package volume_extension_access_types_qos_specs_id_test

import data.volume_extension.access_types_qos_specs_id

test_access_types_qos_specs_id_0 if access_types_qos_specs_id.allow with input as {"credentials": {"is_admin": true}}
test_access_types_qos_specs_id_1 if access_types_qos_specs_id.allow with input as {"credentials": {"roles": ["admin"], "is_admin_project": true}}
