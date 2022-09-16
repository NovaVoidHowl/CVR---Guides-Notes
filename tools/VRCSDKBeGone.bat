@echo off
echo. 
echo Welcome to VRC SDK Be Gone, version 1.0
echo.
echo This script removes VRC SDK files from unity projects, 
echo Note you should deleate the VRC components from the 'Packages' section in unity first, this script just cleans up the 'left overs'  
echo Run this script at your own risk I accept no responsablity for what it may do to your system
echo.
echo ---
echo.

echo Checking for unity project files
if exist Assets\ (
   echo ...
   if exist ProjectSettings\ (
     echo verifyed
   ) else (
    echo.
    echo ERROR unity project detection failed
    echo "Please put this script to the root of your project folder (the folder that contains the 'ProjectSettings' one)"
    echo.
    set /p DUMMY=Hit ENTER to exit
    GOTO:exitpoint
   )
) else (
  echo.
  echo ERROR unity project detection failed
  echo "Please put this script to the root of your project folder (the folder that contains the 'Assets' one)"
  echo.
  set /p DUMMY=Hit ENTER to exit
  GOTO:exitpoint
)

echo.
echo ________________________________________________________
echo Ready to remove components
echo !!!! WARNING this process is destructive make a backup first !!!!
set "reply=y"
set /p "reply= Proceed ? [y|n]: "
if /i not "%reply%" == "y" (
  echo.
  echo Process Aborted
  GOTO:exitpoint
)

echo Purging csproj files
echo.
del VRC.SDK3A.Editor.csproj
del VRC.SDK3A.csproj
del VRC.SDKBase.Editor.BuildPipeline.csproj
del VRC.SDKBase.csproj
del VRC.SDKBase.Editor.csproj
del VRC.SDKBase.Editor.ShaderStripping.csproj
del com.vrchat.core.vpm-resolver.Editor.csproj
del Packages\vpm-manifest.json

echo.
echo Pruging VRC unity utils
del Assets\VRCWelcome.unity
del Assets\VRCWelcome.unity.meta

echo.
echo Purging VRC folders
echo.
RMDIR /S /Q ProjectSettings\Packages\com.vrchat.base
RMDIR /S /Q ProjectSettings\Packages\com.vrchat.avatars
RMDIR /S /Q ProjectSettings\Packages\com.vrchat.core.vpm-resolver

echo removed all project files
echo.
echo Purging refrences

PowerShell -NoProfile -ExecutionPolicy Bypass -Command "(get-content Library\EditorOnlyScriptingSettings.json) -Replace 'VRC_SDK_VRCSDK3;','' | set-content  Library\EditorOnlyScriptingSettings.json"
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "(get-content Library\EditorOnlyScriptingSettings.json) -Replace 'VRC_SDK_VRCSDK3','' | set-content  Library\EditorOnlyScriptingSettings.json"
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "(get-content ProjectSettings\ProjectSettings.asset) -Replace 'VRC_SDK_VRCSDK3','' | set-content  ProjectSettings\ProjectSettings.asset"

PowerShell -NoProfile -ExecutionPolicy Bypass -Command "(get-content ProjectSettings\ProjectSettings.asset) -Replace 'templatePackageId: com.vrchat.template.base@1.0.0','' | set-content  ProjectSettings\ProjectSettings.asset"
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "(get-content ProjectSettings\ProjectSettings.asset) -Replace 'templateDefaultScene: Assets/VRCWelcome.unity','' | set-content  ProjectSettings\ProjectSettings.asset"




echo Cleaning .gitignore files
move  Packages\.gitignore Packages\.gitignore-old
type Packages\.gitignore-old | findstr /v com.vrchat > Packages\.gitignore
ECHO #ignore old ignore file >> Packages\.gitignore
ECHO .gitignore-old >>  Packages\.gitignore

echo Cleaning CurrentLayout-default.dwlt files

move  Library\CurrentLayout-default.dwlt Library\CurrentLayout-default.dwlt-old
type Library\CurrentLayout-default.dwlt-old | findstr /v com.vrchat > Library\CurrentLayout-default.dwlt
del Library\CurrentLayout-default.dwlt-old

move Library\BurstCache\JIT\CacheManifest.json Library\BurstCache\JIT\CacheManifest.json-old


:exitpoint
echo.
echo.
echo -----