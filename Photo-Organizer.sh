#!/bin/bash         

# init parameters
PAR=$2
MAP=$1

#Change naar directory die meegegeven wordt in parameter 1
cd $MAP

#list van alleen files hierdoor sorteer je alleen de files en niet al bestaande folders.
files=$(ls -p | grep -v / )


#Als parameter 2 gelijk is aan maand, sorteer de mappen op maand.
if [ $PAR == 'maand' ];then

#maakt nieuwe folder op basis van modified date
	for x in $files; do
		d=$(date -r "$x" +%m-%Y)
		mkdir -p "$d"
			
#Controleert of succesvol is gekopieerd.
			if cp -- "$x" "$d/"; then
				rm $x
				echo "Code: $?  Het kopieren van $x was succesvol!"
			else
				echo "Error Code: $? Er is iets misgegaan.."
			fi
	done
	echo "Het is met succes uitgevoerd!"
fi



#Als parameter 2 gelijk is aan week, sorteer de mappen dan op week.
if [ $PAR == 'week' ];then


#maakt nieuwe folder op basis van modified date
	for x in $files; do
		d=$(date -r "$x" +%V-%Y)
		mkdir -p "$d"

#Controleert of succesvol is gekopieerd
			if cp -- "$x" "$d/"; then
				rm $x
				echo "Code: $?  Het kopieren van $x was succesvol!"
			else
				echo "Error Code: $? Er is iets misgegaan.."
			fi		
	done
	echo "Het is met succes uitgevoerd!"
fi
