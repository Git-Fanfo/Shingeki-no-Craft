execute store result score @n[tag=snc.spear] snc.rotation_x run data get entity @s Rotation[0]
## Spawn armor stand with a player's head initialized with id
## Copy ID from @s
## Transfer the ID from @s

# Saving UUID from the player into a minecraft player's head that is being holding by the armorstand (Lol)
data modify entity @n[tag=snc.spear] item.components."minecraft:profile".id set from entity @s UUID
#data modify entity @n[tag=motion_spe] Owner set from entity @s UUID
#effect give @s speed 1 4 true
#effect give @s slowness 1 4 true

playsound minecraft:entity.lightning_bolt.thunder player @a ~ ~ ~ 5 2
playsound minecraft:entity.lightning_bolt.thunder player @a ~ ~ ~ 5 2
particle minecraft:flash ^ ^ ^1 0 0 0 1 2 force