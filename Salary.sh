#!/bin/bash
echo "Enter the basic salary: "
read basic_salary
if [ $basic_salary -lt 1500 ]
then
HRA=$(echo "scale=2; $basic_salary * 0.10" | bc)
DA=$(echo "scale=2; $basic_salary * 0.90" | bc)
else
HRA=500
DA=$(echo "scale=2; $basic_salary * 0.98" | bc)
fi
gross_salary=$(echo "scale=2; $basic_salary + $HRA + $DA" | bc)
echo "Gross Salary: Rs.$gross_salary"
