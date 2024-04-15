kill

## See snc:player/gun/select_bullet
summon firework_rocket ~ ~ ~ {Owner:[I;1,1,1,1],Tags:["bullet","water"],LifeTime:1,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;15128877,12908280]}]}}}}

# Get the UUID from the player that shoot the projectile
data modify entity @e[type=firework_rocket,sort=nearest,limit=1] Owner set from entity @s HandItems[0].tag.SkullOwner.Id
execute as @e[tag=!hurtbox,distance=..4] run damage @s 10 fireworks
execute as @e[tag=transform,distance=..15] run damage @s 20 fireworks
#fill ^-1 ^ ^ ^1 ^ ^ fire

playsound minecraft:item.totem.use player @a ~ ~ ~ 4 0
particle minecraft:flash ~ ~ ~ 1 1 1 5 15 force
particle flame ~ ~ ~ 1 1 1 .2 300 force
particle campfire_cosy_smoke ~ ~ ~ .7 .7 .7 0 150 force