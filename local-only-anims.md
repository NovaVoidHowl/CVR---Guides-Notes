# Local only animation  

To create animations that a local only we need a local parameter that can be driven using the `CVR parameter Stream` script object

---

So to start create the local param,  I used `#DeviceMode`.  
This is used to limit when an action will trigger and due to the `#` it will only ever update localy.  
Next have the advanced settings tool update the ASS overrides files (or the new local param won't show up).  
The param should now be in the list and selectable as in the following image.  
    
![image](https://user-images.githubusercontent.com/31048789/185802121-9bacb4d1-18c2-4284-af61-84bc55e7cd90.png)  
  
With that in place, you can now read that var in any animation layer, to limit actions to local; by saying that the animation requires that to be greater than -1 (in this case)  
   
![image](https://user-images.githubusercontent.com/31048789/185802245-5e7b2afa-7c2e-43a7-af73-aae3ec54033f.png)  
  
---
## Note  
 You need to set the default of the local param in the animators to -1 in the above example too (defualt is 0)
