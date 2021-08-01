SELECT JSON_ARRAYAGG(
        JSON_OBJECT(
            'name',
            name,
            'code',
            code,
            'store_id',
            store_id,
            'is_active',
            is_active
        )
    )
from magento.store;