#!/bin/sh
# Generate data.csv

data_dir="data"

# All the dmpcas files
dmpcas="${data_dir}/dmpcas.*"

# Header
echo length,GFP,box,time,mean-ee-length,sd-ee-length > data.csv

for f in $dmpcas ; do
	length=$(echo $f | cut -d "." -f 2)
	tag=$(echo $f | cut -d "." -f 3)
	has_GFP="FALSE"
	if [ "$tag" = "GFP" ]; then
		has_GFP="TRUE"
	fi
	box=$(echo $f | cut -d "." -f 4)
	time=$(echo $f | cut -d "." -f 5)

	mean=$(sed '75!d' $f | tr -s " " | cut -d " " -f 1)
	sd=$(sed '75!d' $f | tr -s " " | cut -d " " -f 2)

	echo $length,$has_GFP,$box,$time,$mean,$sd >> data.csv
done
