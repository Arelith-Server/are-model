#!/bin/bash

for filename in ./*.tga; do	
	[ -e "$filename" ] || continue
	result=$(identify -format %[opaque] $filename)

#	echo $result

	if [ $result = "False" ]; then		
		# echo "It was true"
		echo $filename
		echo "It was false" 
		#mv $filename ./lossy_keep
	fi
	#echo $(identify -format %[opaque] $filename)
done