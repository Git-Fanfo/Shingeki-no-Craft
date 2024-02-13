summon shulker ~ ~ ~ {NoAI:1b,Health:1024f,Silent:1b,Color:14b,Tags:["collision","shifter","cart","cart.hitbox"],Attributes:[{Name:generic.max_health,Base:1024},{Name:generic.scale,Base:3}]}

summon item_display ~ ~ ~ {item_display:"head",Tags:["aj.cart.root"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[5.3f,5.3f,5.3f]},item:{id:"minecraft:turtle_scute",Count:1b,tag:{CustomModelData:37}}}
## Delete?
scoreboard players set action cart_vars 40
scoreboard players set $mask cart_vars 0