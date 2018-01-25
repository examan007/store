## Store
Basic store catalogue
## Dependency
 1. Maven
 2. Postgresql
## Database
Presuming configured Postgresql with psql access by permitted particular user.
 ``` bash
cd <project directory>
psql -f scripts/create_store.sql
psql -f scripts/populate_store.sql
```
## Build
``` bash
cd <project directory>
mvn verify
```
## Test
``` bash
cd <project directory>
chmod 755 scripts/run.sh
scripts/run.sh
```

