data modify entity @e[tag=spear,sort=nearest,limit=1] Rotation set from entity @s Rotation

## Spawn armor stand with a player's head initialized with id and custom_model_data=1
## Copy ID from @s
## Transfer the ID from @s

# Saving UUID from the player into a minecraft player's head that is being holding by the armorstand (Lol)
data modify entity @e[tag=spear,sort=nearest,limit=1] HandItems[0].tag.SkullOwner.Id set from entity @s UUID
#data modify entity @e[tag=motion_spe,sort=nearest,limit=1] Owner set from entity @s UUID

#effect give @s speed 1 4 true
#effect give @s slowness 1 4 true

playsound minecraft:aot.impulse player @a[distance=..15] ~ ~ ~