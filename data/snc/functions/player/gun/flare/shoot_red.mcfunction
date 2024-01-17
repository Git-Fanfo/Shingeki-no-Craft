# Shot
summon snowball ^ ^ ^1 {Tags:["not_mov","motion_flare","red","projectile"],Item:{id:"minecraft:arrow",Count:1b,tag:{CustomModelData:1}}}
#summon snowball ~ ~ ~ {Tags:["not_mov","motion_red","projectile"],Passengers:[{id:"minecraft:armor_stand",Small:1b,Marker:1b,Invisible:1b,Tags:["bullet","red"]}],Item:{id:"minecraft:arrow",Count:1b,tag:{CustomModelData:1}}}

#data modify entity @e[tag=turret,sort=nearest,limit=1] Rotation set from entity @s Rotation

#data modify entity @e[type=arrow,tag=motion_red,sort=nearest,limit=1] Owner set from entity @s UUID

playsound minecraft:aot.bullet_flare player @a[distance=..15] ~ ~ ~ 1 1
advancement grant @s only snc:survey/flare/shoot

clear @s carrot_on_a_stick{red:1b} 1
function snc:give/item/survey_corps/flare/blank