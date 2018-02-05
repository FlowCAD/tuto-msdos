@echo off
title test 3.2 - Unzip
rem Automatisation pour décompresser des KMZ et vérification par le comptage des fichiers créés
rem _______________________________________________________________________________________________


rem 1) Création du dossier de sortie
cd C:/
echo Creation du dossier output
md output
echo ___________________________________________

rem 2) Le batch va chercher le dossier où sont localisés les kmz
echo Localisation dans le fichier input
cd C:/input
echo ___________________________________________

rem 3) Décompression...+ log
echo Lancement de la decompression des KMZ
Pause

FOR %%a IN (*) DO unzip %%a -d "C:/output" >> C:\output\logfile.txt
                                                                                                                           
echo La decompression est achevee, le LOG a ete cree
echo ___________________________________________   

rem 4) Comptage
echo Verification de la creation des fichiers
Pause
for /r "c:\output\" %%a in (*.kml*) do set /a comptkml+=1
for /r "c:\output\files" %%a in (*.jpg*) do set /a comptjpg+=1
echo Il y a %comptkml% fichiers KML et %comptjpg% fichiers JPG
cd C:/ 
echo ___________________________________________   

Pause
exit
