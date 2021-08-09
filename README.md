# zoneminder - (marvambass/zoneminder) (+ optional tls) on debian, apache2 [x86 + arm]

_maintained by MarvAmBass_

## What is it

This Dockerfile (available as ___marvambass/zoneminder___) gives you a ready to use zonminder installation with optional tls.

Note: This container only supports `mysql` / `mariadb` database servers.
There is no internal mysql-server available - so you need to setup a seconds container for that (take a look at `docker-compose.yml`)

View in Docker Registry [marvambass/zoneminder](https://hub.docker.com/r/marvambass/zoneminder)

View in GitHub [MarvAmBass/docker-zoneminder](https://github.com/MarvAmBass/docker-zoneminder)

This Dockerfile is based on the [marvambass/apache2-ssl-secure](https://registry.hub.docker.com/u/marvambass/apache2-ssl-secure/) `debian:10` based image.

## Changelogs

* 2021-08-09
    * initial commit
    * healthchecks
    * multiarch build

## How to use

This container needs a database, so take a look at the `docker-compose.yml`

## Environment variables and defaults

* __ZM\_DB\_HOST__
 * host of mysql db
 * default: `db`

* __ZM\_DB\_NAME__
 * name of the mysql zoneminder database
 * default: `zm`

* __ZM\_DB\_USER__
 * username of the mysql database for zoneminder
 * default: `zmuser`

* __ZM\_DB\_PASS__
 * username of the mysql database for zoneminder
 * default: `zmpass`

* __ZM\_DB\_SSL\_CA\_CERT__
 * default: _not set_

* __ZM\_DB\_SSL\_CLIENT\_KEY__
 * default: _not set_

* __ZM\_DB\_SSL\_CLIENT\_CERT__
 * default: _not set_

### BASEIMAGE: Environment variables and defaults

* __DISABLE\_TLS__
 * default: not set - if set yo any value `https` and the `HSTS_HEADERS_*` will be disabled

* __HSTS\_HEADERS\_ENABLE__
 * default: not set - if set to any value the HTTP Strict Transport Security will be activated on SSL Channel

* __HSTS\_HEADERS\_ENABLE\_NO\_SUBDOMAINS__
 * default: not set - if set together with __HSTS\_HEADERS\_ENABLE__ and set to any value the HTTP Strict Transport Security will be deactivated on subdomains

