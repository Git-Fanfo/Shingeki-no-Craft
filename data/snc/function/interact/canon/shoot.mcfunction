scoreboard players set @s projectile 100
data modify entity @s Pose.Head[0] set value -30f

scoreboard players add @a[distance=..4] earthquake 6
effect give @a[distance=..5] speed 1 3 true

particle minecraft:flash ^ ^.4 ^2.7 0 0 0 1 2 force
summon snowball ^ ^.4 ^2.7 {Tags:["not_mov","motion_can","snc.projectile"],Passengers:[{id:"minecraft:item_display",teleport_duration:1,item_display:"thirdperson_righthand",Tags:["snc.projectile","snc.canon"],item:{id:"minecraft:player_head", count:1, components:{"item_model":"people/item/canon/bullet", "profile":{id:[I;1,1,1,0]}}}}],Item:{id:"minecraft:arrow", count:1b, components:{"item_model":"item/blank"}}}
execute on vehicle on target run data modify entity @e[tag=snc.canon,sort=nearest,limit=1] item.tag.SkullOwner.Id set from entity @s UUID