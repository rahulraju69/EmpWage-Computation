#!/bin/bash -x

isPartTime=1
isFullTime=2
totalSal=0
empRatePerHrs=20
numWorkingDays=20

for ((day=1; day<=numworkingdays; day++))
do

empCheck=$(( RANDOM%3 ))

case $empCheck in
        $isPartTime)
                empHrs=4 ;;

        $isFullTime)
                empHrs=8 ;;

        *)
                empHrs=0 ;;
esac
sal=$(( $empHrs*$empRatePerHrs ))
totalSal=$(($totalSal+$sal))
done



