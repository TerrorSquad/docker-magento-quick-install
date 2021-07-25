SELECT JSON_ARRAYAGG(
        JSON_OBJECT('name', name, 'code', code, 'store_id', store_id)
    )
from magento.store;