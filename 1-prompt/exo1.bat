@echo off
title test 1 - Prompt
color 02


echo test de commentaire
pause

set /p prenom=Quel est votre prenom?:
set /p nom=Quel est votre nom?:
set /p age=Quel est votre age?:

echo Je sais que vous avez %age% et que vous vous appelez %prenom%%nom%
pause
