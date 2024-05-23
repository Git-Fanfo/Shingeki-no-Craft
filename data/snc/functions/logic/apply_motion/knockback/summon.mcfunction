ride @s dismount
summon snowball ^ ^ ^1 {Tags:["not_mov","snc.projectile","snc.knockback"],Item:{id:"minecraft:arrow",Count:1b,components:{"custom_model_data":1}}}
$scoreboard players set @e[type=snowball,tag=snc.knockback,sort=nearest,limit=1] snc.knockback $(knockback)
scoreboard players set @s snc.knockback -1