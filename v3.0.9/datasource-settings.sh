#!/bin/sh
sed -e "s/%(password)s/${PG_ENV_POSTGRES_PASSWORD}/" \
    -e "s/%(host)s/${PG_PORT_5432_TCP_ADDR}/" \
    -e "s/%(port)s/${PG_PORT_5432_TCP_PORT}/" \
    -e "s/%(user)s/${PG_ENV_POSTGRES_USER}/" \
    -e "s/%(dbname)s/${PG_ENV_POSTGRES_DB}/" \
    -e "s/%(estimate_extent)s/false/" \
    -e "s/%(extent)s/-20037508,-19929239,20037508,19929239/" \
    /usr/local/src/mapnik-style/inc/datasource-settings.xml.inc.template > /usr/local/src/mapnik-style/inc/datasource-settings.xml.inc
