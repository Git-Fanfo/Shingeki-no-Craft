tag @s add event
tellraw @s [{"text":"The village is under attack!","color":"red"}]
execute summon pillager run function snc:ent/pill/summon/1
execute summon pillager run function snc:ent/pill/summon/1
execute summon pillager run function snc:ent/pill/summon/1
execute summon pillager run function snc:ent/pill/summon/1
execute summon pillager run function snc:ent/pill/summon/1
function snc:ent/pill/vehicle/summon/willy
execute summon vindicator run function snc:ent/pill/summon/general

spreadplayers ~ ~ 30 35 true @e[tag=marleyan,tag=!vehicle_m,sort=nearest,limit=8]