#!/bin/bash

# 从 source superset 导入 target superset

basePath=$(cd `dirname $0`;pwd)

tables=(
"tables"
"table_columns"
"sql_metrics"
"slices"
"slice_user"
"dashboards"
"dashboard_user"
"dashboard_slices"
)

sourceDb="source/superset.db"
targetDb="target/superset.db"

# cd .
docker-compose stop superset

cd ${basePath}

for table in ${tables[@]}
do
    sqlite3 ${targetDb} "DROP table ${table}"
    sqlite3 ${sourceDb} ".dump ${table}" > ${table}.sql
    sqlite3 ${targetDb} ".read ${table}.sql"
    rm "./${table}.sql"
done

rm "${sourceDb}"

# cd .
docker-compose start superset

echo -e "Have Done."