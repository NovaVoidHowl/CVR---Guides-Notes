# Migration Notes VRC to ChilloutVR



> ⚠️ Work In Progress ⚠️
---


## VRC SDK removal
After running any conversion tools you can follow this cleanup procedure to flush out the VRC SDK  
**Make a backup of your project !**  
.  
.  
.  
.  
.  
Close unity, and deleate the Library folder in the project  
go to the folder 'Project Settings'  
remove the file 'QualitySettings.asset'  
open the file 'ProjectSettings.asset' and remove all refrences to `VRC_SDK_VRCSDK3` (if its the only item on the line remove the whole line)  
open the file 'EditorOnlyScriptingSettings.json' and remove all refrences to `VRC_SDK_VRCSDK3` (this should relate to what you found in the above file)
check all '.sln' files in your main project folder and get rid of refs to VRC packages in there
check all '.csproj' files in your main project folder and get rid of refs to VRC packages in there
