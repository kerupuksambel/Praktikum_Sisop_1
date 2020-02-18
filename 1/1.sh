# sub a

a=`awk -F ',' '
	BEGIN {
		max=0
	}

	{ arr[$13] = arr[$13] + $20; max = max + 1 }

	END {
		for(key in arr)
			if(arr[key] == 0)
				delete arr[key]

		min_val = 999999
		min_key

		for(key in arr){
			if(min_val > arr[key]){
				min_key = key
				min_val = arr[key]
			}
		}

		print min_val
		print min_key
	}
' Sample-Superstore.csv`

echo $a