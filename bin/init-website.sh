#!/bin/bash

# shellcheck source=../env/db.env
source env/db.env
bin/setup-domain-multistore
bin/mysql <config/sql/elastic_search_setter.sql
bin/mysql <config/sql/other_settings.sql
