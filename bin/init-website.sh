#!/bin/bash

# shellcheck source=../env/db.env
source env/db.env
bin/mysql <config/sql/set_default_website.sql
bin/generate-base-urls-sql-setter >config/sql/base_urls_setter.sql
bin/mysql <config/sql/base_urls_setter.sql
