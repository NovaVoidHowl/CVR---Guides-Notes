# Application Connections

## Outbound
Common connections that show up in the logs and what they are trying to link to.  

| IP/hostname 	|  Port 	|      Target     	|
|:-----------:	|:-----:	|:---------------:	|
|  localhost  	| 15881 	| bHaptics player 	|

## Inbound
| IP/hostname 	|  Port/target 	|      Target     	|
|:-----------:	|:-----:	|:---------------:	|
|  localhost  	| http://localhost:9444/ 	| Cohtml Debug interface 	|


## Notes
The cohtml debugger sometimes does not work if a copy of HttpServer.WindowsDesktop.dll is not in the root dir of the game.
You can a copy from '\ChilloutVR_Data\Plugins\x86_64' under the game's root dir
