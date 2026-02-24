package volume_extension_volume_tenant_attribute_test

import data.volume_extension.volume_tenant_attribute

test_volume_tenant_attribute_0 if volume_tenant_attribute.allow with input as {"credentials": {"roles": ["admin"]}}
test_volume_tenant_attribute_1 if volume_tenant_attribute.allow with input as {"credentials": {"roles": ["reader"], "project_id": "foo"}, "target": {"project_id": "foo"}}
