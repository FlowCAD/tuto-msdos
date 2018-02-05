@echo off
title test 3.1 - Unzip
cd C:\
echo Creation du dossier output
md output
set output = "C:\output"

echo Localisation dans le fichier input
cd C:/input

echo ___________________________________________                                             
echo Lancement de la decompression des KMZ ?
Pause

FOR %%d IN (*) DO unzip %%d -d %output%

echo ___________________________________________                                                                  
echo La decompression est achevee pour le fichier %%d ... >> "C:\output\log.txt"
echo ... et pour le dossier (*) >> "C:\output\log.txt"

Pause
exit
