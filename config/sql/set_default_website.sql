UPDATE core_config_data ccd
SET ccd.value = 'https://magento.test/'
WHERE ccd.path = 'web/secure/base_url'
    AND scope_id IN (0, 1);
UPDATE core_config_data ccd
SET ccd.value = 'https://magento.test/'
WHERE ccd.path = 'web/secure/base_link_url'
    AND scope_id = 1;
UPDATE core_config_data ccd
SET ccd.value = 'http://magento.test/'
WHERE ccd.path = 'web/unsecure/base_url'
    AND scope_id IN (0, 1);
UPDATE core_config_data ccd
SET ccd.value = 'http://magento.test/'
WHERE ccd.path = 'web/unsecure/base_link_url'
    AND scope_id = 1;