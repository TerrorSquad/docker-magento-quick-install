USE magento;
-- Standard ElasticSearch settings
REPLACE INTO core_config_data (value, path, scope, scope_id)
VALUES ('elasticsearch', 'catalog/search/elasticsearch7_server_hostname', 'default', 0);
-- Smile Elastic Suite settings
REPLACE INTO core_config_data (value, path, scope, scope_id)
VALUES ('elasticsearch:9200', 'smile_elasticsuite_core_base_settings/es_client/servers', 'default', 0);
REPLACE INTO core_config_data (value, path, scope, scope_id)
VALUES (0, 'smile_elasticsuite_core_base_settings/es_client/enable_https_mode', 'default', 0);
REPLACE INTO core_config_data (value, path, scope, scope_id)
VALUES (0, 'smile_elasticsuite_core_base_settings/es_client/enable_http_auth', 'default', 0);
REPLACE INTO core_config_data (value, path, scope, scope_id)
VALUES (0, 'smile_elasticsuite_core_base_settings/es_client/enable_debug_mode', 'default', 0);
REPLACE INTO core_config_data (value, path, scope, scope_id)
VALUES (1, 'smile_elasticsuite_core_base_settings/es_client/connection_timeout', 'default', 0);
REPLACE INTO core_config_data (value, path, scope, scope_id)
VALUES ('magento2', 'smile_elasticsuite_core_base_settings/indices_settings/alias', 'default', 0);
REPLACE INTO core_config_data (value, path, scope, scope_id)
VALUES ('{{YYYYMMdd}}_{{HHmmss}}', 'smile_elasticsuite_core_base_settings/indices_settings/indices_pattern', 'default', 0);
REPLACE INTO core_config_data (value, path, scope, scope_id)
VALUES (1, 'smile_elasticsuite_core_base_settings/indices_settings/number_of_shards', 'default', 0);
REPLACE INTO core_config_data (value, path, scope, scope_id)
VALUES ( 0, 'smile_elasticsuite_core_base_settings/indices_settings/number_of_replicas', 'default', 0);
-- VSBridge settings
REPLACE INTO core_config_data (value, path, scope, scope_id)
VALUES ('elasticsearch', 'vsbridge_indexer_settings/es_client/host', 'default', 0);
REPLACE INTO core_config_data (value, path, scope, scope_id)
VALUES ('9200', 'vsbridge_indexer_settings/es_client/port', 'default', 0);
