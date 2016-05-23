
mod_tile & renderd server, with a leafletjs map.

## Usage
    POSTGREDB_DOCKER="osmdb"
    docker run --rm -t -i --link ${POSTGREDB_DOCKER}:pg osmtw/modtile
