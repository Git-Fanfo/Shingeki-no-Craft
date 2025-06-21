kill

summon firework_rocket ~ ~ ~ {Owner:[I;1,1,1,1],Tags:["snc.projectile","snc.break.hardening","snc.spear"],LifeTime:1,FireworksItem:{id:"minecraft:arrow",count:1,components:{"minecraft:item_model":"item/blank","minecraft:fireworks":{explosions:[{shape:"large_ball",colors:[I;15128877,12908280]}]}}}}
# Get the UUID from the player that shoot the projectile
data modify entity @n[type=firework_rocket] Owner set from entity @s item.components."minecraft:profile".id

playsound minecraft:item.totem.use player @a ~ ~ ~ 4 0
particle minecraft:flash ~ ~ ~ 1 1 1 5 15 force
particle flame ~ ~ ~ 1 1 1 .2 300 force
particle cloud ~ ~ ~ .7 .7 .7 .1 150 force