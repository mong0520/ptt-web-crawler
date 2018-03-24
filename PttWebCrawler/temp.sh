#!/bin/bash
for number in {501..2400..100}
do
    end=$(($number + 99))  
    python3 crawler.py -b Beauty -i $number $end > /dev/null 2>&1 &
done

python3 crawler.py -b Beauty -i 2401 2430 > /dev/null 2>&1  &
