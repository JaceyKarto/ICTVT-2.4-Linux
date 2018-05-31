# ICTVT 2.4 Linux Network Services

Linux weekopdracht 2 Foto's sorteren

Dit script maakt het mogelijk om foto's te sorteren/verplaatsen in en naar (nieuwe) mappen.
De mappen kunnen op weeknummer of maand gesorteerd worden.

# Verschil tussen versie 1 en versie 2:
Het verschil tussen versie 1 en versie 2 is dat bij versie 2 wordt gekeken of er in de directory al een folder genaamd "Maand" of "Week" te vinden is. Als dit niet het geval is dan worden de mappen aangemaakt. Vervolgens wordt aan de hand van de gegeven parameter (Maand of Week) in de bijbehorende map, nieuwe mappen gemaakt waar de foto's op maandnummer of weeknummer worden gesorteerd. 

Versie 2 geeft hierdoor een overzichtelijker en gebruiksvriendelijke structuur in de directories. 

# Parameters
Het script kent twee parameters namelijk:
1. De directory waar de foto's staan die gesorteerd moeten worden.
2. En waarop de folders gesorteerd moeten worden, namelijk per week of per maand.

# Installatie
Klik op de volgende link op het script te downloaden:

Voor versie 1:
``https://github.com/JaceyKarto/ICTVT-2.4-Linux/Photo-Organizer.sh ``

Voor versie 2:
``https://github.com/JaceyKarto/ICTVT-2.4-Linux/Photo-OrganizerV2.sh ``

Geef de juiste permissions met het commando:
`` chmod +x Photo-Organizer.sh `` 

Versie 2:
`` chmod +x Photo-OrganizerV2.sh `` 


# Syntax: 
Voor versie 1:
`` ./Photo-Organizer.sh map(waar foto's staan) week/maand (waar de folders op gesorteerd moeten worden)``

Voor versie 2:
`` ./Photo-OrganizerV2.sh map(waar foto's staan) week/maand (waar de folders op gesorteerd moeten worden)``
