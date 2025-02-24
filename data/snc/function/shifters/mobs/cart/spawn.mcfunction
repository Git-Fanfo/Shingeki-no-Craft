#summon shulker ~ ~ ~ {NoAI:1b,Health:1024f,Silent:1b,Color:14b,Tags:["collision","shifter","cart","cart.hitbox"],attributes:[{id:"max_health",base:1024},{id:"scale",base:3}]}

kill 0000007f-0000-007f-0000-008000000001
summon item_display ~ ~ ~ {UUID:[I;127,127,128,1],teleport_duration: 1,Tags:["collision","shifter","cart","aj.cart.locator.consume"]}
summon item_display ~ ~ ~ {teleport_duration: 1,item_display:"head",Tags:["aj.cart.root"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[5.3f,5.3f,5.3f]},item:{id:"minecraft:turtle_scute",Count:1b,components:{"item_model":"shifters/cart/born/1"}}}
## Delete?
scoreboard players set action cart_vars 40
execute unless score $mask cart_vars matches 1 run scoreboard players set $mask cart_vars 0
scoreboard players set walk cart_vars 20
scoreboard players set idle cart_vars 40