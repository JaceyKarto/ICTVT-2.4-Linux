#!/bin/bash         

# init parameters
PAR=$2
MAP=$1

#Change naar directory die meegegeven wordt in parameter 1
cd $MAP

#Als parameter 2 gelijk is aan maand, sorteer de mappen op maand.
if [ $PAR == 'maand' ];then

#maakt nieuwe folder op basis van modified date
	for x in *; do
		d=$(date -r "$x" +%m-%Y)
		mkdir -p "$d"
		cp -- "$x" "$d/"
	done
	echo "Het is met succes uitgevoerd!"
fi

#Als parameter 2 gelijk is aan week, sorteer de mappen dan op week.
if [ $PAR == 'week' ];then

#maakt nieuwe folder op basis van modified date
	for x in *; do
		d=$(date -r "$x" +%V-%Y)
		mkdir -p "$d"
		cp -- "$x" "$d/"
	done
	echo "Het is met succes uitgevoerd!"
fi
