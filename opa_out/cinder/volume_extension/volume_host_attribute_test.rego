package volume_extension_volume_host_attribute_test

import data.volume_extension.volume_host_attribute

test_volume_host_attribute_0 if volume_host_attribute.allow with input as {"credentials": {"is_admin": true}}
test_volume_host_attribute_1 if volume_host_attribute.allow with input as {"credentials": {"roles": ["admin"], "is_admin_project": true}}
