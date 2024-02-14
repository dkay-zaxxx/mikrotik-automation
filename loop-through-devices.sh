#!/bin/bash

routeros_py_script="./routeros.py"
device_database="./device-db.txt"

read_array=$'\n' read -d '' -r -a txt_lines < "$device_database"

predetermined_content="0.0.0.0"
search_content="$predetermined_content"

for (( counter=0; counter<${#txt_lines[@]}; counter++)); do
	line_content="${txt_lines[$counter]}"
	echo -e "logging into switch ${line_content}"
	sed -i "s/$search_content/$line_content/g" "${routeros_py_script}"
	python2.7 "$routeros_py_script"
	search_content="$line_content"

done

sed -i "s/$search_content/0.0.0.0/g" "${routeros_py_script}"

echo -e "done"
