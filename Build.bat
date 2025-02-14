dotnet nuget add source "%~dp0LocalNugetSource" --name LocalNugetSource

"bin/godot.windows.editor.double.x86_64.mono.exe" --headless --generate-mono-glue modules/mono/glue

"./modules/mono/build_scripts/build_assemblies.py" --godot-output-dir="./bin" --push-nupkgs-local LocalNugetSource --precision=double

pause