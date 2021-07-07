#!/bin/bash

# shellcheck source=../env/db.env
source env/db.env
bin/mysql <config/sql/set_default_website.sql
