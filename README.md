# SDL Template ft. ImGui

## Versions

| Library | Version                                                                 |
| ------- | ----------------------------------------------------------------------- |
| SDL2    | [2.24.2](https://github.com/libsdl-org/SDL/releases/tag/release-2.24.2) |
| ImGui   | [v1.89](https://github.com/ocornut/imgui/releases/tag/v1.89)            |

## Instructions

- Remove comments to '.vscode' line in .gitignore
- Change default .exe name in compiling scripts
- Remove this README.md

## Compilation

There will be two options in the 'Run and Debug' menu of VSCode. The option selected will be executed from F5:

- Compile with console: The program will show a terminal where printfs will appear and more.
- Compile without console: The terminal is ommited and only the main window will be shown.

### Executable name

If you want to change the executable name when compiling from VSCode:

- By default, the executable will have the same name as the Workspace folder you are working. If you change the name of said folder, the executable name will also change.
- If you want a different name:
  - Change the compiler scripts
  - Change every ocurrence of '${workspaceFolderBasename}' to the desired name in the launch.json & tasks.json files (preferred)
