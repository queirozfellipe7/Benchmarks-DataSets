#!/bin/bash

cd OpenMP/linear-algebra/kernels/syr2k
pwd

output=$(./jouleit.sh -l)
output="$output;INPUT"
output=${output//$'\n'/,}
echo $output >> output_syr2k.csv 

for i in `seq 800 8 4000`; do
	gcc -O2 -I../../../utilities syr2k.c ../../../utilities/polybench.c -o syr2k_acc -DNI=${i} -DNJ=${i} -DNK=${i} -DNL=${i} -DNM=${i} -fopenmp
	output=$(./jouleit.sh -c ./syr2k_acc -n)
	output="$output;$i"
	output=${output//$'\n'/,}
	echo $output >> output_syr2k.csv
	echo $output

done
mv output_syr2k.csv   ../../../../../data
cd -

cd OpenMP/linear-algebra/kernels/syrk
pwd

output=$(./jouleit.sh -l)
output="$output;INPUT"
output=${output//$'\n'/,}
echo $output >> output_syrk.csv 

for i in `seq 800 8 4000`; do
	gcc -O2 -I../../../utilities syrk.c ../../../utilities/polybench.c -o syrk_acc -DNI=${i} -DNJ=${i} -fopenmp
	output=$(./jouleit.sh -c ./syrk_acc -n)
	output="$output;$i"
	output=${output//$'\n'/,}
	echo $output >> output_syrk.csv
	echo $output
done
mv output_syrk.csv   ../../../../../data
cd -

