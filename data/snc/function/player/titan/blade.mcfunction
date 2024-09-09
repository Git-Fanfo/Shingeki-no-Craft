execute as @e[tag=hurtbox,distance=..6,sort=nearest,limit=1] run function snc:titans/kill

scoreboard players add @s Titan_Kill_Count 1
function snc:logic/advancements/kill_count