#!/bin/bash


#<img loading="lazy" src="https://www.stuba.sk/img1/images/image_216ad0c88cedb71.jpeg" alt="STU má štyroch nových profesorov, vymenoval ich prezident" class="news-item-img" >


a="nic"

if [ $# -gt 0 ]; then
	url=$1
	
	a=$(curl $url | 
		grep  'img'|
		#grep 'src="[^"data"]"'
		#grep -o 'src="((/images[^"]\*)|(https://[^"]\*))" '
		grep -o 'src="[^"]\+"' |
		grep -o 'https://[^"]\+"')
	echo $a | sed -E 's/ /\n/g' | sed 's/"//g' |
		while read LINE
		do
			curl -sO $LINE 
			
		
		done	
	
	
			

else
	echo "nezadali ste url"
fi







