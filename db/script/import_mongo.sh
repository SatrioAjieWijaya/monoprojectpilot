#!/bin/bash
if [ -z $1 ]; then
	echo "::error::Need argument path"
	exit 1
fi

path=$1

for file in $(find $path -name '*.json'); do
	col=$(basename $file .json)
	echo "Importing collections '$col' from $file"
	mongoimport --host=localhost --port=27017 --username=$DB_USERNAME --password=$DB_PASSWORD --authenticationDatabase=admin --db=proteuscore --collections=$col --file=$file --jsonArray
	# mongoimport mongodb://$DB_USER:$DB_PASSWORD@localhost:27017/?authSource=proteuscore --db=proteuscore --collections=$col --file=$file --jsonArray
done
