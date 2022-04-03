#!/bin/bash 

#c=$(mpstat -u | grep "all" | awk '{print $12}')
#cpu_sys=$(mpstat -u | grep "all" | awk '{print $5}')
#cpu_iowait=$(mpstat -u | grep "all" | awk '{print $6}')
#cpu_soft=$(mpstat -u | grep "all" | awk '{print $8}')
#Cpu=$((100+cpu_sys+cpu_soft ))

#echo -e " $Cpu %"
#cpu=$(echo "scale=2;(100-$c)" | bc)

#echo '100.098*(1+0.22)'
#echo -e " $cpu%"
#echo -e "scale=2;(100-$(mpstat -u | grep "all" | awk '{print $12}'))"

#resultado=$((num1 / num2))
#echo $resultado

#echo "$num1" / "$num2" | bc

#resultado=$(echo $num1/$num2 | bc -l)

#cpu=$(echo "100" - "$c" | bc -l)

#cpu= $(("100"-$c))
#echo -e " $cpu %"