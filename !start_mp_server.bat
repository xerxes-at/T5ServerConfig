@echo off
::name of the config file the server should use.
set cfg=dedicated.cfg
::name of the server shown in the title of the cmd window
set name=TDM 1
::Port used by the server
set port=28960
::first map the server should run
set map=mp_nuked
::mod to load
::set mod=mods/<ModNameHere>
set mod=

title RektT5 - %name% - Server restarter
echo Visit getrektby.us / Join the Discord (HqjQFCp) for NEWS and Updates!
echo Server "%name%" will load %cfg% and listen on port %port% UDP!
echo To shut down the server close this window first!
echo (%date%)  -  (%time%) %name% server start.
:server
start /wait /abovenormal t5m.exe -mp -console +set dedicated 2 +set net_port %port% +set fs_game "%mod%" +exec %cfg% +map %map%
echo (%date%)  -  (%time%) WARNING: %name% server closed or dropped... server restarts.
goto server