# Shot
#summon snowball ^-1 ^-.8 ^1.5 {NoGravity:1b,Tags:["not_mov","motion_spe","projectile"],Passengers:[{id:"minecraft:armor_stand",Small:1b,Marker:1b,Invisible:1b,Tags:["bullet","spear"],Pose:{LeftArm:[0.0f,0.1f,0.0f],Head:[0f,.1f,0f]},HandItems:[{id:"minecraft:player_head", Count:1b, components:{"custom_model_data":1, SkullOwner:{Id: [I;1,1,1,1]}}},{}],ArmorItems:[{},{},{},{id:'minecraft:arrow',Count:1b,components:{"custom_model_data":1}}]}],Item:{id:"minecraft:arrow",Count:1b,components:{"custom_model_data":1}}}

data modify entity @e[tag=spear,sort=nearest,limit=1] Rotation set from entity @s Rotation

## Spawn armor stand with a player's head initialized with id and custom_model_data=1
## Copy ID from @s
## Transfer the ID from @s

# Saving UUID from the player into a minecraft player's head that is being holding by the armorstand (Lol)
data modify entity @e[tag=spear,sort=nearest,limit=1] HandItems[0].tag.SkullOwner.Id set from entity @s UUID
#data modify entity @e[tag=motion_spe,sort=nearest,limit=1] Owner set from entity @s UUID

#effect give @s speed 1 4 true
#effect give @s slowness 1 4 true

#particle minecraft:block gold_block ^ ^-.2 ^1.8 0 0 0 10 1 force
#playsound minecraft:aot.bullet_shoot player @a[distance=..15] ~ ~ ~ 1 1
playsound minecraft:aot.impulse player @a[distance=..15] ~ ~ ~

#particle dust 0.945 0.827 0.145 1 ^ ^-.4 ^3.1 .1 .1 .1 2 1 force
#particle dust 0.855 0.427 0.176 1 ^ ^-.4 ^3.3 .2 .2 .2 2 1 force
#particle dust 0 0 0 1.5 ^ ^1.5 ^3.5 0 0 0 1 10 force