# Idea for an init script

1. Generating store mappings
    Fetch stores from `stores` table - store_id, code
    Generate mappings for all stores

    Something like this should be the result

        map $http_host $MAGE_RUN_CODE {
        default nl;           // store_id: 1
        magento.test nl;      // store_id: 1
        magento-de.test de;   // this one and the next ones should come from a for loop
        magento-be.test be;   // pattern is `magento-code.test code`
        magento-nl.test nl;
        magento-com.test en;
        }

    After generating the map above, add it to the beginning of the default.conf file.

2. Setting the default settings in `core_config_data`

    - Set the base URLs (both unsecure and secure)
        - For the admin panel - use variables here e.g. {{base_url}}static/
        - links
        - static
        - media
        - other stores

    - Set the `web/secure/use_in_adminhtml` to 1
