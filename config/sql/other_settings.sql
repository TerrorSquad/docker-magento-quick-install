USE magento;

REPLACE INTO core_config_data (scope_id, path, value)
VALUES
    (0, 'web/secure/use_in_adminhtml', 1);

REPLACE INTO core_config_data (scope_id, path, value)
VALUES
    (0, 'web/cookie/cookie_domain', 'magento.test');

REPLACE INTO core_config_data (scope_id, path, value)
VALUES
    (0, 'web/secure/use_in_frontend', 1);

REPLACE INTO core_config_data (scope_id, path, value)
VALUES
    (0, 'web/secure/use_in_adminhtml', 1);

REPLACE INTO core_config_data (scope_id, path, value)
VALUES
    (0, 'admin/security/session_lifetime', 31536000);

REPLACE INTO core_config_data (scope_id, path, value)
VALUES
    (
        0,
        'twofactorauth/general/disabled_users',
        'g.ninkovic@youweagency.com'
    );
