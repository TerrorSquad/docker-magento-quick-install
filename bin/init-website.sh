#!/bin/bash

# shellcheck source=../env/db.env
source env/db.env
bin/mysql <config/sql/set_default_website.sql
bin/generate-store-setters >config/sql/store_setters.sql
bin/mysql <config/sql/store_setters.sql
bin/update-nginx-config

bin/mysql <config/sql/elastic_search_setter.sql
bin/mysql <config/sql/other_settings.sql
