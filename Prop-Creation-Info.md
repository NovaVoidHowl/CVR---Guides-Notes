# Prop Creation Info  

> ⚠️ Work In Progress ⚠️
---

## Pickup Props  

Ensure that a box, sphere or capsule collider (appropriately sized) exist on the same object as the 'CVR Pickup Object' component, or pick up will be difficult if not impossible.  
Note: the collider does not have to be set to impact with players, you can use the 'Is Trigger' option too.  
![image](https://user-images.githubusercontent.com/31048789/190142339-220073ca-b51a-4880-a9d1-9f0397c14078.png)  

## Common Issues  

**Issue:** 'Spawnable' control option in 'interact' saying not detected  
![spawnable-not-detected](https://user-images.githubusercontent.com/31048789/206769341-de0e5ce9-edd1-4c2b-a53a-2deaf7658e7e.PNG)

**Potential fix(s):**  

- Ensure that the root object of the prop is enable in the hierarchy.  
