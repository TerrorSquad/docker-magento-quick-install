USE magento;
-- Standard ElasticSearch settings
UPDATE core_config_data ccd
SET ccd.value = 'elasticsearch'
WHERE ccd.path = 'catalog/search/elasticsearch7_server_hostname';
-- Smile Elastic Suite settings
UPDATE core_config_data ccd
SET ccd.value = 'elasticsearch:9200'
WHERE ccd.path = 'smile_elasticsuite_core_base_settings/es_client/servers';
UPDATE core_config_data ccd
SET ccd.value = 0
WHERE ccd.path = 'smile_elasticsuite_core_base_settings/es_client/enable_https_mode';
UPDATE core_config_data ccd
SET ccd.value = 0
WHERE ccd.path = 'smile_elasticsuite_core_base_settings/es_client/enable_http_auth';
UPDATE core_config_data ccd
SET ccd.value = 0
WHERE ccd.path = 'smile_elasticsuite_core_base_settings/es_client/enable_debug_mode';
UPDATE core_config_data ccd
SET ccd.value = 1
WHERE ccd.path = 'smile_elasticsuite_core_base_settings/es_client/connection_timeout';
UPDATE core_config_data ccd
SET ccd.value = 'magento2'
WHERE ccd.path = 'smile_elasticsuite_core_base_settings/indices_settings/alias';
UPDATE core_config_data ccd
SET ccd.value = '{{YYYYMMdd}}_{{HHmmss}}'
WHERE ccd.path = 'smile_elasticsuite_core_base_settings/indices_settings/indices_pattern';
UPDATE core_config_data ccd
SET ccd.value = 1
WHERE ccd.path = 'smile_elasticsuite_core_base_settings/indices_settings/number_of_shards';
UPDATE core_config_data ccd
SET ccd.value = 0
WHERE ccd.path = 'smile_elasticsuite_core_base_settings/indices_settings/number_of_replicas';
-- VSBridge settings
UPDATE core_config_data ccd
SET ccd.value = 'elasticsearch'
WHERE ccd.path = 'vsbridge_indexer_settings/es_client/host';
UPDATE core_config_data ccd
SET ccd.value = '9200'
WHERE ccd.path = 'vsbridge_indexer_settings/es_client/port';