# Avatar Creation Info  
  
## Default Avatar Parameters  
 

|  Name      |  Type  |  
|:----------:|:------:|  
|MovementX   |  Float |  
|MovementY   |  Float |  
|Grounded    |  Bool  |  
|Emote       |  Int   |  
|CancelEmote |  Bool  |  
|GestureLeft |  Int   |  
|GestureRight|  Int   |  
|Toggle      |  Int   |  
|Sitting     |  Bool  |  
|Crouching   |  Bool  |  
|Prone       |  Bool  |  
|Flying      |  Bool  |  
  
Thanks to [kafeijao](https://github.com/kafeijao), for the tools to see this info in a quick and easy way. 

---  

## bHaptics

Setup restrictions:
- The game object that has the CVR Haptic Area Chest on it, MUST be fully upright compared to world space (not the bone it is on)![image](https://user-images.githubusercontent.com/31048789/193452833-f6a5b663-6a0d-4edd-8701-d1f62bc1742e.png)
- You can't toggle the game object (if you do it won't work)
- You can't re-size the game object (relative to your avatar), size changes will get ignored.

---  

## Game Object Dropdown  

In order to make a game object dropdown such as this  
  
![image](https://user-images.githubusercontent.com/31048789/181918217-12f11516-d376-41d2-b9bc-6c1f1493d7e8.png)  
  
function correctly, you must go to the end of the list of the `Advanced Settings` section and click the `CreateAnimator` then the `Attach created Override to Avatar`, this should link up all the relevent animations.  
  
Once setup it should show up in the Advanced Avatars section on the menu eg.  
![image](https://user-images.githubusercontent.com/31048789/181918593-12547e32-e833-4d34-8a19-1e7a97ab7462.png)  
![image](https://user-images.githubusercontent.com/31048789/181919270-d273506c-9207-4f03-9815-3885e3d1c21a.png)  
![image](https://user-images.githubusercontent.com/31048789/181919284-c963f614-66d5-4d87-b7d8-5f2b153d3821.png)  
![image](https://user-images.githubusercontent.com/31048789/181919300-8eacac71-4f96-47a5-80e2-24eae98ea28a.png)  

## Issues

**Issue:** some animations are not working as expected  
**Protential fix(s):**  

1. If you remove a section that uses a genrated animator overide set, its a good idea to delete all the generated animator override/animator/animation files and let them be recreated. The files to remove should be at the following path `Assets/AdvancedSettings.Generated/<avatarname>`  
![image](https://user-images.githubusercontent.com/31048789/182020927-75350a7e-206c-4f6d-8a09-239aad9781f4.png)  
2. Clear and re-add parameters in animation paths (commonly is needed when you swap a variable's type ie float>bool), note you can test this in editor by pressing the play button at the top of the unity interface and changing the parameter state in the animator to see if it responds correctly)). The console output in play mode can help in finding these 'broken' links ![image](https://user-images.githubusercontent.com/31048789/182023553-029b0573-5931-49fa-ab6d-87ccaae652eb.png)
