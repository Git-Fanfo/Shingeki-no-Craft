execute store result score @e[tag=snc.spear,sort=nearest,limit=1] snc.rotation_x run data get entity @s Rotation[0]
## Spawn armor stand with a player's head initialized with id and custom_model_data=1
## Copy ID from @s
## Transfer the ID from @s

# Saving UUID from the player into a minecraft player's head that is being holding by the armorstand (Lol)
## data modify entity @e[tag=snc.spear,sort=nearest,limit=1] HandItems[0].tag.SkullOwner.Id set from entity @s UUID
#data modify entity @e[tag=motion_spe,sort=nearest,limit=1] Owner set from entity @s UUID
#effect give @s speed 1 4 true
#effect give @s slowness 1 4 true

playsound minecraft:entity.lightning_bolt.thunder player @a ~ ~ ~ 5 2
playsound minecraft:entity.lightning_bolt.thunder player @a ~ ~ ~ 5 2
particle minecraft:flash ^ ^ ^1 0 0 0 1 2 force