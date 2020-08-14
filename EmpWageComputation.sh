#!/bin/bash -x
#CONSTANT
isPartTime=1
isFullTime=2
maxHrsInMonth=10
empRatePerHrs=20
numWorkingDays=20
#VARIABLES
totalEmpHrs=0;
totalWorkingDays=0;
while [[ $totalEmpHrs -lt $maxHrsInMonth && $totalWorkingDays -lt $numWorkingDays ]]
do
((totalWorkingDays++))
empCheck=$(( RANDOM%3 ))

case $empCheck in
        $isPartTime)
                empHrs=4 ;;

        $isFullTime)
                empHrs=8 ;;

        *)
                empHrs=0 ;;
esac
totalEmpHrs=$(($totalEmpHrs+$empHrs))
done
totalSalary=$(($totalEmpHrs*$empRatePerHrs))


