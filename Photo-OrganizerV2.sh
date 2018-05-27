#!/bin/bash         

# init parameters
PAR=$2
MAP=$1


#Change naar directory die meegegeven wordt in parameter 1
cd $MAP




#Voor maanden
##################################################################################
#Als parameter 2 gelijk is aan maand, sorteer de mappen op maand.
if [ $PAR == 'maand' ];then

#Maak een map genaamd Maand aan als die er nog niet is
if [ ! -d "Maand" ]; then
  mkdir -p "Maand" 
fi

#Maak een hoofdmap genaamd Week aan als die er nog niet is
if [ ! -d "Week" ]; then
  mkdir -p "Week" 
fi

#list van alleen files hierdoor sorteer je alleen de files en niet al bestaande folders.
files=$(ls -p | grep -v / )

#moved alle files eerst naar de Maand map
	for x in $files; do
		mv "$x" Maand
 	done

##################################################################################
cd "$MAP/Maand"

#list van alleen files hierdoor sorteer je alleen de files en niet al bestaande folders.
files=$(ls -p | grep -v / )

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









#Voor Weken
##################################################################################
#Als parameter 2 gelijk is aan week, sorteer de mappen dan op week.
if [ $PAR == 'week' ];then

#Maak een map genaamd Maand aan als die er nog niet is
if [ ! -d "Maand" ]; then
  mkdir -p "Maand" 
fi

#Maak een hoofdmap genaamd Week aan als die er nog niet is
if [ ! -d "Week" ]; then
  mkdir -p "Week" 
fi

#list van alleen files hierdoor sorteer je alleen de files en niet al bestaande folders.
files=$(ls -p | grep -v / )

#moved alle files eerst naar de week map
	for x in $files; do
		mv "$x" Week
 	done


##################################################################################
cd "$MAP/Week"


#list van alleen files hierdoor sorteer je alleen de files en niet al bestaande folders.
files=$(ls -p | grep -v / )

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
