#!/bin/bash
if [ $1 == "repackage" ]; then
  repackage=true
else
  repackage=false
fi

publisher_jar=publisher.jar
input_cache_path=./input-cache/
echo Checking internet connection...
curl -sSf tx.fhir.org > /dev/null

if [ $? -eq 0 ]; then
	echo "Online"
	txoption=""
else
	echo "Offline"
	txoption="-tx n/a"
fi

echo "$txoption"

publisher=$input_cache_path/$publisher_jar
if test -f "$publisher"; then
	java -jar $publisher -ig . $txoption $*
	publisher_ran=true
else
	publisher=../$publisher_jar
	if test -f "$publisher"; then
		java -jar $publisher -ig . $txoption $*
		publisher_ran=true
    else
		echo IG Publisher NOT FOUND in input-cache or parent folder.  Please run _updatePublisher.  Aborting...
	fi
fi

if [ "$publisher_ran" = true ] && [ "$repackage" = true ]; then
	echo "Repackaging to include examples ..."
	cd ./output
	tar -xzvf package.tgz
	cp package/example/* package/
	tar -czvf package.tgz package
	rm -R package
	cd ..
	echo "Done!"
fi
