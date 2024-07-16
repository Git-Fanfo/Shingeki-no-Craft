tag @s add event
tellraw @s [{"text":"An horde of titans is attacking!","color":"red"}]
function snc:api/summon/titan/1
function snc:api/summon/titan/2
function snc:api/summon/titan/3
function snc:api/summon/titan/4
function snc:api/summon/titan/6
function snc:api/summon/titan/7

spreadplayers ~ ~ 30 35 true @e[tag=ai,sort=nearest,limit=6]