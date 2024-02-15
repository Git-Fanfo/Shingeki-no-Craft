$function snc:shifters/transfer/lose with storage minecraft:$(shifter)
$execute as @e[tag=consume,type=villager,sort=nearest,limit=1] run tag @s add $(shifter)