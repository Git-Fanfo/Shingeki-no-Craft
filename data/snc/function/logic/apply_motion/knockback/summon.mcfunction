ride @s dismount
summon snowball ^ ^ ^ {Tags:["not_mov","snc.knockback"],Passengers:[{id:"minecraft:item_display",Tags:["snc.projectile","snc.knockback","snc.sticky"]}],Item:{id:"minecraft:arrow",count:1b,components:{"item_model":"item/blank"}}}
$scoreboard players set @e[type=snowball,tag=snc.knockback,sort=nearest,limit=1] snc.knockback $(knockback)
scoreboard players set @s snc.knockback -1