@ECHO OFF

del *.obj *.pdb *.exe *.ilk *.ini

if [%1] == [] (SET a= "SDL_Test") else (SET a= %1)

cl -I ..\include -I ..\deps\imgui\include -I ..\deps\sdl2\include /c ..\src\*.cpp /D _CRT_NONSTDC_NO_WARNINGS /D _CRT_SECURE_NO_WARNINGS
cl /Fe:%a%.exe *.obj /link /libpath:..\deps\imgui\lib imgui.lib /libpath:..\deps\sdl2\lib\x64 SDL2.lib SDL2main.lib /subsystem:windows shell32.lib